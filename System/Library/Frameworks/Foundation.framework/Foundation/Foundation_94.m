unint64_t lazy protocol witness table accessor for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSDecimal(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized NSDecimal.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656E6F707865 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746167654E7369 && a2 == 0xEA00000000006576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6361706D6F437369 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61737369746E616DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal._multiply(by:roundingMode:)(NSDecimal *__return_ptr retstr, NSDecimal *by, NSRoundingMode roundingMode)
{
  v58 = v4;
  v8 = v3;
  v81 = v5;
  v69 = HIDWORD(v5);
  v70 = v6;
  v71 = v5;
  v68 = HIWORD(v5);
  v82 = v6;
  v65 = v6 >> 16;
  v67 = HIDWORD(v6);
  v66 = HIWORD(v6);
  v84 = HIWORD(v7);
  v85 = v7;
  v83 = v7;
  if (!_So9NSDecimala__length_getter(&v81))
  {
    LODWORD(v81) = v71;
    WORD2(v81) = v69;
    HIWORD(v81) = v68;
    LOWORD(v82) = v70;
    WORD1(v82) = v65;
    WORD2(v82) = v67;
    HIWORD(v82) = v66;
    LOWORD(v83) = v85;
    HIWORD(v83) = v84;
    if (_So9NSDecimala__isNegative_getter(&v81))
    {
      goto LABEL_41;
    }
  }

  v81 = by;
  v11 = WORD1(v8);
  v82 = roundingMode;
  v12 = roundingMode >> 16;
  v83 = v8;
  if (!_So9NSDecimala__length_getter(&v81))
  {
    v81 = by;
    v82 = roundingMode;
    v83 = v8;
    if (_So9NSDecimala__isNegative_getter(&v81))
    {
      goto LABEL_41;
    }
  }

  v62 = roundingMode >> 48;
  v63 = by >> 48;
  v59 = roundingMode >> 32;
  v60 = roundingMode >> 16;
  v61 = WORD1(v8);
  LODWORD(v81) = v71;
  WORD2(v81) = v69;
  HIWORD(v81) = v68;
  LOWORD(v82) = v70;
  WORD1(v82) = v65;
  WORD2(v82) = v67;
  HIWORD(v82) = v66;
  LOWORD(v83) = v85;
  HIWORD(v83) = v84;
  if (!_So9NSDecimala__length_getter(&v81))
  {
    return;
  }

  v81 = by;
  v57 = by >> 32;
  v82 = roundingMode;
  rawValue = v8;
  v83 = v8;
  if (!_So9NSDecimala__length_getter(&v81))
  {
    return;
  }

  NSDecimal.asVariableLengthInteger()(v71, v70, v85);
  v15 = v14;
  NSDecimal.asVariableLengthInteger()(by, roundingMode, rawValue);
  v17._rawValue = v16;
  v18 = *(v15 + 16);
  v56 = rawValue;
  v55 = by;
  if (v18 && (v19 = v16[2]) != 0)
  {
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_111;
    }

    if (v20 >= 16)
    {
      rawValue = 16;
    }

    else
    {
      rawValue = v18 + v19;
    }

    if (v20 < 0)
    {
      goto LABEL_112;
    }

    v11 = roundingMode;
    by = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *&by->_mantissa[6] = rawValue;
    roundingMode = &by[1]._mantissa[4];
    bzero(&by[1]._mantissa[4], 2 * rawValue);
    v22 = 0;
    v20 = v17._rawValue + 32;
    do
    {
      v23 = 0;
      v24 = 0;
      v25 = v22++;
      do
      {
        v27 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (v27 >= rawValue)
        {
          if (v23)
          {
            goto LABEL_53;
          }

          v23 = *(v20 + 2 * v25);
          if (*(v20 + 2 * v25))
          {
            v23 = *(v15 + 2 * v24 + 32);
            if (*(v15 + 2 * v24 + 32))
            {
              goto LABEL_53;
            }
          }
        }

        else
        {
          if (v27 < 0)
          {
            goto LABEL_104;
          }

          if (v27 >= *&by->_mantissa[6])
          {
            goto LABEL_105;
          }

          v26 = v23 + *(roundingMode + 2 * v27) + *(v15 + 2 * v24 + 32) * *(v20 + 2 * v25);
          v23 = HIWORD(v26);
          *(roundingMode + 2 * v27) = v26;
        }

        ++v24;
      }

      while (v18 != v24);
      if (v23)
      {
        v28 = __OFADD__(v18, v25);
        v29 = v18 + v25;
        if (v28)
        {
          goto LABEL_113;
        }

        if (v29 >= rawValue)
        {
LABEL_53:
          lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
          swift_allocError();
          *v43 = 0;
          swift_willThrow();

          goto LABEL_99;
        }

        if (v29 < 0)
        {
          goto LABEL_114;
        }

        if (v29 >= *&by->_mantissa[6])
        {
          goto LABEL_115;
        }

        *(roundingMode + 2 * v29) = v23;
      }
    }

    while (v22 != v19);
    v30 = *&by->_mantissa[6];
    v31 = v69;
    v32 = v63;
    LOWORD(roundingMode) = v11;
    v53 = by;
    if (v30)
    {
      v33 = v30 + 15;
      do
      {
        if (*(by + v33))
        {
          break;
        }

        *&by->_mantissa[6] = v33 - 16;
        --v33;
      }

      while (v33 != 15);
    }
  }

  else
  {

    v53 = MEMORY[0x1E69E7CC0];
    v31 = v69;
    v32 = HIWORD(by);
  }

  v54 = roundingMode;

  v81 = 0;
  v82 = NSRoundPlain;
  v83 = 0;
  v72 = v71;
  v73 = v31;
  v74 = v68;
  v75 = v70;
  v76 = v65;
  v77 = v67;
  v78 = v66;
  v79 = v85;
  v80 = v84;
  isNegative_getter = _So9NSDecimala__isNegative_getter(&v72);
  v15 = v55;
  v72 = v55;
  v73 = v57;
  v74 = v32;
  v75 = roundingMode;
  roundingMode = v59;
  v76 = v60;
  v77 = v59;
  v78 = v62;
  v79 = v56;
  v11 = v61;
  v80 = v61;
  v36 = isNegative_getter != _So9NSDecimala__isNegative_getter(&v72);
  _So9NSDecimala__isNegative_setter(v36, &v81);
  v72 = v71;
  v73 = v69;
  v74 = v68;
  v75 = v70;
  v76 = v65;
  v77 = v67;
  v78 = v66;
  v79 = v85;
  v80 = v84;
  v37 = _So9NSDecimala__exponent_getter(&v72);
  v72 = v55;
  v73 = v57;
  v74 = v63;
  v75 = v54;
  v76 = v60;
  v77 = v59;
  v78 = v62;
  v79 = v56;
  v80 = v61;
  v12 = _So9NSDecimala__exponent_getter(&v72) + v37;
  by = v53;
  v38 = *&v53->_mantissa[6];
  if (v38 <= 8)
  {
    v17._rawValue = v53;
    goto LABEL_98;
  }

  v19 = v64;
  if (v38 == 9)
  {
    v11 = 0;
    LODWORD(by) = 0;
    v40 = 0;
    roundingMode = v39;
    v17._rawValue = v39;
  }

  else
  {
    v85 = v12;
    v12 = 0;
    LODWORD(by) = 0;
    v40 = 0;
    roundingMode = v39;
    rawValue = v39;
    do
    {
      if (by)
      {
        v40 = 1;
      }

      v44 = specialized static NSDecimal._integerDivideByShort(_:_:)(rawValue, 0x2710u);
      if (v64)
      {
        goto LABEL_92;
      }

      v17._rawValue = v44;
      by = v45;

      v11 = v12 + 4;
      if (__OFADD__(v12, 4))
      {
        goto LABEL_110;
      }

      v15 = *(v17._rawValue + 2);
      v12 += 4;
      rawValue = v17._rawValue;
    }

    while (v15 > 9);
    v12 = v85;
    if (v15 != 9)
    {
      goto LABEL_62;
    }
  }

  rawValue = v17._rawValue;
  do
  {
    if (by)
    {
      v40 = 1;
    }

    v41 = specialized static NSDecimal._integerDivideByShort(_:_:)(rawValue, 0xAu);
    if (v64)
    {
      goto LABEL_92;
    }

    v17._rawValue = v41;
    by = v42;

    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_109;
    }

    v15 = *(v17._rawValue + 2);
    ++v11;
    rawValue = v17._rawValue;
  }

  while (v15 > 8);
  v11 = v20;
LABEL_62:
  if (v40)
  {
    if (!by || by == 5)
    {
      by = (by + 1);
    }

    v46 = roundingMode;
  }

  else
  {
    v46 = roundingMode;
    if (!by)
    {
      goto LABEL_79;
    }
  }

  if (v58 <= 1)
  {
    if (v58)
    {
      goto LABEL_79;
    }

LABEL_78:
    if (by <= 4)
    {
      goto LABEL_79;
    }

LABEL_80:
    if (!v15)
    {
      roundingMode = v12;
      by = MEMORY[0x1E69E7CC0];
      v12 = *(MEMORY[0x1E69E7CC0] + 16);
      v47 = 1;
LABEL_86:
      if (v12 == v47)
      {

        lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
        swift_allocError();
        *v51 = 0;
        swift_willThrow();
LABEL_92:

LABEL_99:

        return;
      }

      v20 = *by[1]._mantissa;
      rawValue = v12 + 1;
      if (v12 >= v20 >> 1)
      {
        goto LABEL_120;
      }

      while (1)
      {
        *&by->_mantissa[6] = rawValue;
        by[1]._mantissa[v12 + 4] = 1;
        if (*&by->_mantissa[6] >= v15)
        {
LABEL_93:
        }

        else
        {
          v21 = specialized static NSDecimal._integerDivideByShort(_:_:)(by, 0xAu);
          if (v19)
          {

            goto LABEL_92;
          }

LABEL_106:
          rawValue = v21;

          v28 = __OFADD__(v11++, 1);
          if (v28)
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
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
            goto LABEL_119;
          }
        }

        v12 = roundingMode;
LABEL_95:
        v20 = 0xFFFFFFFF80000000;
        if (v11 < 0xFFFFFFFF80000000)
        {
          goto LABEL_117;
        }

        v20 = 0x7FFFFFFFLL;
        if (v11 > 0x7FFFFFFF)
        {
          goto LABEL_118;
        }

        v28 = __OFADD__(v12, v11);
        v12 = (v12 + v11);
        if (!v28)
        {
LABEL_98:
          NSDecimal.copyVariableLengthInteger(_:)(v17);
          v19 = v52;
          if (v52)
          {
            goto LABEL_99;
          }

          rawValue = *(v17._rawValue + 2);

          v20 = HIDWORD(rawValue);
          if (!HIDWORD(rawValue))
          {
            _So9NSDecimala__length_setter(rawValue, &v81);
            _So9NSDecimala__isCompact_setter_0(0, &v81);
            if (v12 < 128)
            {
              _So9NSDecimala__exponent_setter(v12, &v81);
              NSDecimal.compact()();
              return;
            }

LABEL_41:
            lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
            swift_allocError();
            *v34 = 0;
            swift_willThrow();
            return;
          }

          goto LABEL_116;
        }

LABEL_119:
        __break(1u);
LABEL_120:
        by = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), rawValue, 1, by);
      }
    }

LABEL_81:
    roundingMode = v12;
    rawValue = v46;
    v47 = v15 + 1;
    by = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *&by->_mantissa[6] = v15;
    bzero(&by[1]._mantissa[4], 2 * v15);
    v48 = 0;
    v49 = 1;
    do
    {
      v50 = v49 + *(v17._rawValue + v48 + 16);
      v49 = HIWORD(v50);
      by[1]._mantissa[v48++ + 4] = v50;
    }

    while (v15 != v48);
    v12 = v15;
    if (v50 < 0x10000)
    {
      goto LABEL_93;
    }

    goto LABEL_86;
  }

  if (v58 == 2)
  {
    goto LABEL_80;
  }

  if (v58 != 3)
  {
LABEL_79:

    goto LABEL_95;
  }

  if (by != 5)
  {
    goto LABEL_78;
  }

  if (v15)
  {
    if ((*(v17._rawValue + 16) & 1) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  __break(1u);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal._round(scale:roundingMode:)(NSDecimal *__return_ptr retstr, Swift::Int scale, NSRoundingMode roundingMode)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  *&v58 = v3;
  *(&v58 + 1) = v4;
  v59 = v5;
  v11 = _So9NSDecimala__exponent_getter(&v58);
  v12 = scale + v11;
  if (__OFADD__(scale, v11))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  if (scale == 0x7FFF || (v12 & 0x8000000000000000) == 0)
  {
    return;
  }

  v13 = -v12;
  if (__OFSUB__(0, v12))
  {
    goto LABEL_67;
  }

  *&v58 = v8;
  *(&v58 + 1) = v7;
  v59 = v6;
  v14 = _So9NSDecimala__exponent_getter(&v58);
  if (__OFADD__(v14, v13))
  {
    goto LABEL_68;
  }

  v60 = roundingMode;
  v53 = v14;
  v54 = v12;
  v55 = v14 - v12;
  *(&v58 + 1) = v7;
  v59 = v6;
  v15 = HIDWORD(v8);
  if (v13 < 5)
  {
    v24 = 0;
    v17 = 0;
LABEL_16:
    LODWORD(v26) = v58;
    v27 = WORD2(v58);
    LOWORD(v28) = WORD3(v58);
    do
    {
      if (v24)
      {
        v17 = 1;
      }

      NSDecimal._divide(by:)(v15, 0xAu);
      if (v33)
      {
        goto LABEL_63;
      }

      *(&v58 + 1) = v30;
      v27 = WORD2(v29);
      LODWORD(v26) = v29;
      v59 = v31;
      v28 = HIWORD(v29);
      if (__OFSUB__(v13--, 1))
      {
        *&v58 = v29;
        __break(1u);
        goto LABEL_66;
      }

      v15 = HIDWORD(v29);
      v24 = v32;
    }

    while (v13);
    *&v58 = v29;
    if (v17)
    {
      if (v32 == 5 || !v32)
      {
        v24 = v32 + 1;
      }
    }

    else if (!v32)
    {
      goto LABEL_54;
    }

    *&v56 = v8;
    *(&v56 + 1) = v7;
    v57 = v6;
    if (_So9NSDecimala__isNegative_getter(&v56))
    {
      v35 = v60;
      if (v60)
      {
        if (v60 != NSRoundDown)
        {
          if (v60 != NSRoundBankers)
          {
            goto LABEL_49;
          }

          v35 = (v27 & 1) == 0 && (v24 == 5);
          if (v24 < 5 || v35)
          {
            goto LABEL_49;
          }
        }
      }

      else if (v24 < 5)
      {
LABEL_49:
        v56 = v58;
        v57 = v59;
        v41 = _So9NSDecimala__length_getter(&v56);
        v42 = v55;
        if (!v41)
        {
          _So9NSDecimala__isNegative_setter(v41, &v58);
        }

        goto LABEL_55;
      }

      NSDecimal._add(_:)(v35, 1u);
      if (v40)
      {
        return;
      }

      *&v58 = v37;
      *(&v58 + 1) = v38;
      v59 = v39;
      goto LABEL_49;
    }

    v36 = v60;
    if (v60)
    {
      if (v60 != NSRoundUp)
      {
        if (v60 != NSRoundBankers)
        {
          goto LABEL_54;
        }

        v36 = (v27 & 1) == 0 && (v24 == 5);
        if (v24 < 5 || v36)
        {
          goto LABEL_54;
        }
      }

LABEL_52:
      NSDecimal._add(_:)(v36, 1u);
      if (v46)
      {
        return;
      }

      *&v58 = v43;
      *(&v58 + 1) = v44;
      v59 = v45;
      goto LABEL_54;
    }

    if (v24 >= 5)
    {
      goto LABEL_52;
    }

LABEL_54:
    v42 = v55;
LABEL_55:
    _So9NSDecimala__isCompact_setter_0(0, &v58);
    if (v42 >= 128)
    {
      v26 = v58;
      v47 = WORD2(v58);
      LOWORD(v28) = WORD3(v58);
      v48 = v53 - v54 + 1;
      while (1)
      {
        NSDecimal._multiply(byShort:)((v26 | (v47 << 32)), 0xAu);
        if (v52)
        {
          break;
        }

        *(&v58 + 1) = v50;
        v47 = WORD2(v49);
        v26 = v49;
        --v48;
        v59 = v51;
        v28 = HIWORD(v49);
        if (v48 <= 128)
        {
          *&v58 = v49;
          v42 = 127;
          goto LABEL_61;
        }
      }

      v27 = v47;
LABEL_63:
      LODWORD(v58) = v26;
      WORD2(v58) = v27;
      WORD3(v58) = v28;
      return;
    }

    if (v42 < 0xFFFFFFFF80000000)
    {
      goto LABEL_69;
    }

LABEL_61:
    _So9NSDecimala__exponent_setter(v42, &v58);
    NSDecimal.compact()();
    return;
  }

  v16 = 0;
  v17 = 0;
  v18 = v13;
  while (1)
  {
    NSDecimal._divide(by:)(v15, 0x2710u);
    if (v23)
    {
      break;
    }

    v24 = v22;
    if (v16)
    {
      v17 = 1;
    }

    *(&v58 + 1) = v20;
    v13 = v18 - 4;
    v16 = v22;
    v59 = v21;
    v15 = HIDWORD(v19);
    v25 = v18 <= 8;
    v18 -= 4;
    if (v25)
    {
      goto LABEL_16;
    }
  }
}

uint64_t NSDecimal.doubleValue.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v22 = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v23 = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v24 = a3;
  if (_So9NSDecimala__length_getter(&v22))
  {
    LODWORD(v22) = v5;
    WORD2(v22) = v6;
    HIWORD(v22) = v7;
    LOWORD(v23) = v4;
    WORD1(v23) = v8;
    WORD2(v23) = v9;
    HIWORD(v23) = v10;
    LOWORD(v24) = v3;
    HIWORD(v24) = v11;
    v12 = _So9NSDecimala__length_getter(&v22);
    if (v12 <= 8)
    {
      if (!v12)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 8;
    }

    v14 = 0.0;
    if (v12 != 1)
    {
      do
      {
        if (v12 == 7)
        {
          v15 = v3;
        }

        else
        {
          v15 = v11;
        }

        if (v12 == 5)
        {
          v16 = v9;
        }

        else
        {
          v16 = v10;
        }

        if (v12 <= 6)
        {
          v15 = v16;
        }

        if (v12 == 3)
        {
          v17 = v4;
        }

        else
        {
          v17 = v8;
        }

        if (v12 == 2)
        {
          v17 = v7;
        }

        if (v12 <= 4)
        {
          v15 = v17;
        }

        v14 = v14 * 65536.0 + v15;
        --v12;
      }

      while (v12 != 1);
      v14 = v14 * 65536.0;
    }

    for (i = v14 + v6; ; i = 0.0)
    {
      LODWORD(v22) = v5;
      WORD2(v22) = v6;
      HIWORD(v22) = v7;
      LOWORD(v23) = v4;
      WORD1(v23) = v8;
      WORD2(v23) = v9;
      HIWORD(v23) = v10;
      LOWORD(v24) = v3;
      HIWORD(v24) = v11;
      if ((_So9NSDecimala__exponent_getter(&v22) & 0x80000000) != 0)
      {
        LODWORD(v22) = v5;
        WORD2(v22) = v6;
        HIWORD(v22) = v7;
        LOWORD(v23) = v4;
        WORD1(v23) = v8;
        WORD2(v23) = v9;
        HIWORD(v23) = v10;
        LOWORD(v24) = v3;
        HIWORD(v24) = v11;
        result = _So9NSDecimala__exponent_getter(&v22);
        if (result > 0)
        {
          __break(1u);
          return result;
        }

        if (!result)
        {
          break;
        }

        v20 = result;
        while (v20 >= result)
        {
          i = i / 10.0;
          if (__CFADD__(v20++, 1))
          {
            goto LABEL_4;
          }
        }

        __break(1u);
      }

      else
      {
        LODWORD(v22) = v5;
        WORD2(v22) = v6;
        HIWORD(v22) = v7;
        LOWORD(v23) = v4;
        WORD1(v23) = v8;
        WORD2(v23) = v9;
        HIWORD(v23) = v10;
        LOWORD(v24) = v3;
        HIWORD(v24) = v11;
        v19 = _So9NSDecimala__exponent_getter(&v22);
        if ((v19 & 0x80000000) == 0)
        {
          for (; v19; --v19)
          {
            i = i * 10.0;
          }

          break;
        }
      }

      __break(1u);
LABEL_39:
      ;
    }
  }

LABEL_4:
  LODWORD(v22) = v5;
  WORD2(v22) = v6;
  HIWORD(v22) = v7;
  LOWORD(v23) = v4;
  WORD1(v23) = v8;
  WORD2(v23) = v9;
  HIWORD(v23) = v10;
  LOWORD(v24) = v3;
  HIWORD(v24) = v11;
  return _So9NSDecimala__isNegative_getter(&v22);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal.copyVariableLengthInteger(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2 <= 8)
  {
    _So9NSDecimala__length_setter(*(a1._rawValue + 2), v1);
    if (v2 <= 3)
    {
      if (v2 > 1)
      {
        if (v2 == 2)
        {
          *(v1 + 4) = *(a1._rawValue + 8);
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
        }

        else
        {
          v8 = *(a1._rawValue + 18);
          *(v1 + 4) = *(a1._rawValue + 8);
          *(v1 + 8) = v8;
          *(v1 + 10) = 0;
          *(v1 + 18) = 0;
        }
      }

      else if (v2)
      {
        *(v1 + 4) = *(a1._rawValue + 16);
        *(v1 + 6) = 0;
        *(v1 + 12) = 0;
      }

      else
      {
        *(v1 + 12) = 0;
        *(v1 + 4) = 0;
      }
    }

    else if (v2 <= 5)
    {
      if (v2 == 4)
      {
        *(v1 + 4) = *(a1._rawValue + 4);
        *(v1 + 12) = 0;
      }

      else
      {
        v9 = *(a1._rawValue + 20);
        *(v1 + 4) = *(a1._rawValue + 4);
        *(v1 + 12) = v9;
        *(v1 + 14) = 0;
        *(v1 + 18) = 0;
      }
    }

    else if (v2 == 6)
    {
      v7 = *(a1._rawValue + 10);
      *(v1 + 4) = *(a1._rawValue + 4);
      *(v1 + 12) = v7;
    }

    else if (v2 == 7)
    {
      v5 = *(a1._rawValue + 10);
      v6 = *(a1._rawValue + 22);
      *(v1 + 4) = *(a1._rawValue + 4);
      *(v1 + 12) = v5;
      *(v1 + 16) = v6;
    }

    else
    {
      *(v1 + 4) = *(a1._rawValue + 2);
    }
  }

  else
  {
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }
}

uint64_t specialized static NSDecimal._integerMultiply(lhs:rhs:maxResultLength:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_45;
  }

  if (v3 + v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v3 + v4;
  }

  if (v5 < 0)
  {
    goto LABEL_46;
  }

  if (v5)
  {
    v6 = result;
    v7 = a2;
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = v5;
    bzero((v8 + 32), 2 * v5);
    a2 = v7;
    result = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v10 = a2 + 32;
  v11 = result + 32;
  v12 = v8 + 32;
  while (2)
  {
    if (v9 == v4)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      break;
    }

    v13 = 0;
    v14 = 0;
    v15 = v9 + 1;
    do
    {
      if (v3 == v14)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v16 = v14 + v9;
      if (__OFADD__(v14, v9))
      {
        goto LABEL_41;
      }

      if (v16 >= v5)
      {
        if (v13)
        {
          goto LABEL_38;
        }

        v13 = *(v10 + 2 * v9);
        if (*(v10 + 2 * v9))
        {
          v13 = *(v11 + 2 * v14);
          if (*(v11 + 2 * v14))
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (v16 >= *(v8 + 16))
        {
          goto LABEL_43;
        }

        v17 = v13 + *(v12 + 2 * v16) + *(v11 + 2 * v14) * *(v10 + 2 * v9);
        v13 = HIWORD(v17);
        *(v12 + 2 * v16) = v17;
      }

      ++v14;
    }

    while (v3 != v14);
    if (!v13)
    {
      goto LABEL_32;
    }

    v18 = __OFADD__(v3, v9);
    v19 = v3 + v9;
    if (v18)
    {
      goto LABEL_47;
    }

    if (v19 >= v5)
    {
LABEL_38:
      lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
      swift_allocError();
      *v22 = 0;
      swift_willThrow();

      return v8;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

    if (v19 < *(v8 + 16))
    {
      *(v12 + 2 * v19) = v13;
LABEL_32:
      v9 = v15;
      if (v15 != v4)
      {
        continue;
      }

      v20 = *(v8 + 16);
      if (v20)
      {
        v21 = v20 + 15;
        do
        {
          if (*(v8 + 2 * v21))
          {
            break;
          }

          *(v8 + 16) = v21 - 16;
          --v21;
        }

        while (v21 != 15);
      }

      return v8;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t specialized static NSDecimal._integerCompare(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 < v2)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return -1;
  }

  v5 = a1 + 30;
  result = 1;
  while (v2)
  {
    v6 = *(v5 + 2 * v2);
    v7 = *(a2 + 30 + 2 * v2);
    if (v7 < v6)
    {
      return result;
    }

    --v2;
    if (v6 < v7)
    {
      return -1;
    }
  }

  return 0;
}

uint64_t specialized static NSDecimal._integerDivideByShort(_:_:)(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v5 = *(a1 + 16);
    v2 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v5);
    v12 = v2;
    v6 = 0;
    if (v5)
    {
      v7 = a1 + 30;
      while (!HIWORD(v6))
      {
        v8 = *(v7 + 2 * v5) | (v6 << 16);
        if ((v8 / a2) >> 16)
        {
          goto LABEL_14;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        }

        if (v5 > *(v2 + 16))
        {
          goto LABEL_15;
        }

        *(v2 + 2 * v5 + 30) = v8 / a2;
        v6 = v8 % a2;
        if (!--v5)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v12 = v2;
    }

    while (1)
    {
      v11 = *(v2 + 16);
      if (!v11 || *(v2 + 2 * v11 + 30))
      {
        break;
      }

      if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
      {
        specialized Array.remove(at:)(*(v12 + 16) - 1);
      }

      v2 = v12;
    }
  }

  else
  {
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  return v2;
}

uint64_t specialized static NSDecimal._integerDivide(dividend:divisor:maxResultLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    return v4;
  }

  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    if (v6 < v5)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = MEMORY[0x1E69E7CC0];
    for (i = *(a1 + 16); i; --i)
    {
      v21 = *(a1 + 30 + 2 * i);
      v22 = *(a2 + 30 + 2 * i);
      if (v22 < v21)
      {
        break;
      }

      if (v21 < v22)
      {
        return v4;
      }
    }
  }

  v7 = (a2 + 32);
  if (v5 == 1)
  {
    v8 = specialized static NSDecimal._integerDivideByShort(_:_:)(a1, *v7);
    if (!v3)
    {
      return v8;
    }

    return v4;
  }

  v10 = a2;
  LODWORD(v11) = 0x10000 / (v7[v5 - 1] + 1);
  if (!v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v14 + 16) = v6;
  bzero((v14 + 32), 2 * v6);
  LODWORD(v15) = 0;
  for (j = 0; j != v6; ++j)
  {
    v17 = v15 + v11 * *(a1 + 32 + 2 * j);
    LODWORD(v15) = HIWORD(v17);
    *(v14 + 2 * j + 32) = v17;
  }

  if (v17 < 0x10000)
  {
    goto LABEL_22;
  }

  v18 = *(v14 + 24);
  v19 = v6 + 1;
  if (v6 < v18 >> 1)
  {
    goto LABEL_15;
  }

LABEL_129:
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19, 1, v14);
LABEL_15:
  *(v14 + 16) = v19;
  *(v14 + 2 * v6 + 32) = v15;
LABEL_22:
  v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v15 + 16) = v5;
  bzero((v15 + 32), 2 * v5);
  LODWORD(v23) = 0;
  v24 = 32;
  do
  {
    v25 = v23 + v11 * *(v10 + v24);
    LODWORD(v23) = HIWORD(v25);
    *(v15 + v24) = v25;
    v24 += 2;
    --v5;
  }

  while (v5);
  if (v25 >= 0x10000)
  {
    v11 = *(v15 + 16);
    v26 = *(v15 + 24);
    v5 = v11 + 1;
    if (v11 >= v26 >> 1)
    {
LABEL_127:
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v5, 1, v15);
    }

    *(v15 + 16) = v5;
    *(v15 + 2 * v11 + 32) = v23;
  }

  v68 = *(v14 + 16);
  if (v68 == v6)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v14);
    }

    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    v68 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v68, 1, v14);
    }

    *(v14 + 16) = v68;
    *(v14 + 2 * v28 + 32) = 0;
  }

  v6 = *(v15 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_120;
  }

  while (1)
  {
    v23 = *(v15 + 16);
    v29 = *(v15 + 24);
    v11 = v23 + 1;
    if (v23 >= v29 >> 1)
    {
      v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v23 + 1, 1, v15);
      v26 = a3;
      v15 = v64;
    }

    else
    {
      v26 = a3;
    }

    *(v15 + 16) = v11;
    v10 = v15 + 32;
    *(v15 + 32 + 2 * v23) = 0;
    if (v6 - 1 > v23)
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v30 = v10 + 2 * v6;
    if (v6 < 2)
    {
      v70 = 0;
    }

    else
    {
      v70 = *(v30 - 4);
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_123;
    }

    v19 = *(v14 + 16);
    v31 = v19 - v6;
    v71 = *(v30 - 2);
    v67 = v19 - v6;
    if (v26)
    {
      v5 = v26;
      a3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(a3 + 16) = v5;
      bzero((a3 + 32), 2 * v5);
      v31 = v19 - v6;
      v69 = v15;
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
      a3 = MEMORY[0x1E69E7CC0];
      v69 = v15;
      if ((v31 & 0x8000000000000000) != 0)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }
    }

    v66 = a3;
    if (v19 == v6)
    {
      break;
    }

    v18 = v71;
    if (!v71)
    {
      __break(1u);
      goto LABEL_129;
    }

    v11 = 0;
    v15 = v68 - v6;
    v65 = a3 + 32;
    v5 = v68 + ~v6;
    a3 = v6 + 1;
LABEL_52:
    if (v11 == v31)
    {
      goto LABEL_108;
    }

    v26 = v68 - v11;
    if (v68 == v11)
    {
      goto LABEL_109;
    }

    v35 = v68 - v11 - 1;
    v36 = *(v14 + 16);
    if (v35 >= v36)
    {
      goto LABEL_110;
    }

    if (v26 - 2 >= v36)
    {
      goto LABEL_111;
    }

    v37 = v14 + 32;
    v38 = *(v14 + 32 + 2 * (v26 - 2)) | (*(v14 + 32 + 2 * v35) << 16);
    LODWORD(v23) = v38 / v71;
    v39 = v38 % v71;
    if (v23 == 0x10000)
    {
      goto LABEL_60;
    }

    v40 = v70 * v23;
    if ((v40 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_116;
    }

    if (v26 - 3 < v36)
    {
      if ((*(v37 + 2 * (v26 - 3)) | (v39 << 16)) < v40)
      {
LABEL_60:
        v41 = v23 != 0;
        LODWORD(v23) = v23 - 1;
        if (!v41)
        {
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v42 = v39 + v71;
        if (v42 < 0x10000)
        {
          if (v23 == 0x10000)
          {
            goto LABEL_67;
          }

          v43 = v70 * v23;
          if ((v43 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_125;
          }

          v26 -= 3;
          if (v26 >= v36)
          {
            goto LABEL_126;
          }

          v26 = *(v37 + 2 * v26) | (v42 << 16);
          if (v26 < v43)
          {
LABEL_67:
            v41 = v23 != 0;
            LODWORD(v23) = v23 - 1;
            if (!v41)
            {
              goto LABEL_124;
            }
          }
        }
      }

      if (v6 < *(v69 + 16))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        }

        v44 = 0;
        v45 = 0;
        v46 = v11 + 1;
        v47 = v14 + 32;
        v48 = 1;
        while (1)
        {
          v49 = *(v10 + 2 * v45) * v23;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v41 = __CFADD__(v49, v44);
          v50 = v49 + v44;
          if (v41)
          {
            goto LABEL_98;
          }

          v51 = v15 + v45;
          if (__OFADD__(v15, v45))
          {
            goto LABEL_99;
          }

          v52 = __OFSUB__(v51, v11);
          v53 = v51 - v11;
          if (v52)
          {
            goto LABEL_100;
          }

          v54 = v53 - 1;
          if (__OFSUB__(v53, 1))
          {
            goto LABEL_101;
          }

          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_102;
          }

          if (v54 >= *(v14 + 16))
          {
            goto LABEL_103;
          }

          ++v45;
          v44 = HIWORD(v50);
          v55 = v48 - v50 + *(v47 + 2 * v54) + 0xFFFF;
          v48 = HIWORD(v55);
          *(v47 + 2 * v54) = v55;
          if (a3 == v45)
          {
            if (!v48)
            {
              v41 = v23 != 0;
              LODWORD(v23) = v23 - 1;
              if (!v41)
              {
                goto LABEL_118;
              }

              if (v6 <= *(v69 + 16))
              {
                v56 = 0;
                v57 = 0;
                while (1)
                {
                  v58 = v15 + v57;
                  if (__OFADD__(v15, v57))
                  {
                    goto LABEL_104;
                  }

                  v52 = __OFSUB__(v58, v11);
                  v59 = v58 - v11;
                  if (v52)
                  {
                    goto LABEL_105;
                  }

                  v52 = __OFSUB__(v59, 1);
                  v60 = v59 - 1;
                  if (v52)
                  {
                    goto LABEL_106;
                  }

                  if (v60 >= *(v14 + 16))
                  {
                    goto LABEL_107;
                  }

                  v61 = v57 + 1;
                  v62 = v56 + *(v10 + 2 * v57) + *(v47 + 2 * v60);
                  v56 = HIWORD(v62);
                  *(v47 + 2 * v60) = v62;
                  v57 = v61;
                  if (v6 == v61)
                  {
                    goto LABEL_91;
                  }
                }
              }

              goto LABEL_119;
            }

LABEL_91:
            v31 = v67;
            if (WORD1(v23))
            {
              goto LABEL_113;
            }

            v63 = v67 + ~v11;
            if (v63 >= *(v66 + 16))
            {
              goto LABEL_114;
            }

            *(v65 + 2 * v63) = v23;
            --v5;
            ++v11;
            if (v46 != v67)
            {
              goto LABEL_52;
            }

            goto LABEL_44;
          }
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v15);
  }

LABEL_44:
  v4 = v66;
  v32 = *(v66 + 16);
  if (v32)
  {
    v33 = v32 + 15;
    do
    {
      if (*(v66 + 2 * v33))
      {
        break;
      }

      *(v66 + 16) = v33 - 16;
      --v33;
    }

    while (v33 != 15);
  }

  return v4;
}

void specialized static NSDecimal._integerMultiplyByPowerOfTen(lhs:power:maxResultLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {

    return;
  }

  v7 = a2;
  if (a2 < 0)
  {
    v7 = -a2;
    if (__OFSUB__(0, a2))
    {
      goto LABEL_108;
    }
  }

  if (v7 < 39)
  {
    v11 = a1;
    v13 = v7;
LABEL_51:
    if (v13 <= 0x26)
    {
      v28 = outlined read-only object #39 of one-time initialization function for powerOfTen[v13 + 4];
      if (a2 < 0)
      {

        specialized static NSDecimal._integerDivide(dividend:divisor:maxResultLength:)(v11, v28, a3);
        if (v3)
        {
LABEL_64:

          goto LABEL_65;
        }

LABEL_66:

        return;
      }

      v29 = *(v11 + 16);
      if (!v29)
      {
        goto LABEL_65;
      }

      v30 = *(v28 + 16);
      if (!v30)
      {
        goto LABEL_65;
      }

      if (__OFADD__(v29, v30))
      {
        goto LABEL_112;
      }

      if (v29 + v30 < a3)
      {
        a3 = v29 + v30;
      }

      if (a3 < 0)
      {
        goto LABEL_113;
      }

      if (a3)
      {
        v31 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v31 + 16) = a3;
        bzero((v31 + 32), 2 * a3);
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v33 = 0;
      v34 = v28 + 32;
      v35 = v31 + 32;
      while (2)
      {
        if (v33 != v30)
        {
          v36 = 0;
          v37 = 0;
          v38 = v33 + 1;
          do
          {
            if (v29 == v37)
            {
              goto LABEL_101;
            }

            v40 = v37 + v33;
            if (__OFADD__(v37, v33))
            {
              goto LABEL_102;
            }

            if (v40 >= a3)
            {
              if (v36)
              {
                goto LABEL_95;
              }

              v36 = *(v34 + 2 * v33);
              if (*(v34 + 2 * v33))
              {
                v36 = *(v11 + 2 * v37 + 32);
                if (*(v11 + 2 * v37 + 32))
                {
                  goto LABEL_95;
                }
              }
            }

            else
            {
              if (v40 < 0)
              {
                goto LABEL_103;
              }

              if (v40 >= *(v31 + 16))
              {
                goto LABEL_104;
              }

              v39 = v36 + *(v35 + 2 * v40) + *(v11 + 2 * v37 + 32) * *(v34 + 2 * v33);
              v36 = HIWORD(v39);
              *(v35 + 2 * v40) = v39;
            }

            ++v37;
          }

          while (v29 != v37);
          if (!v36)
          {
LABEL_89:
            v33 = v38;
            if (v38 != v30)
            {
              continue;
            }

            v42 = *(v31 + 16);
            if (v42)
            {
              v43 = v42 + 15;
              do
              {
                if (*(v31 + 2 * v43))
                {
                  break;
                }

                *(v31 + 16) = v43 - 16;
                --v43;
              }

              while (v43 != 15);
            }

            goto LABEL_66;
          }

          v24 = __OFADD__(v29, v33);
          v41 = v29 + v33;
          if (v24)
          {
            goto LABEL_114;
          }

          if (v41 >= a3)
          {
LABEL_95:
            lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
            swift_allocError();
            *v44 = 0;
            swift_willThrow();

            goto LABEL_65;
          }

          if (v41 < 0)
          {
            goto LABEL_115;
          }

          if (v41 < *(v31 + 16))
          {
            *(v35 + 2 * v41) = v36;
            goto LABEL_89;
          }

LABEL_116:
          __break(1u);
          return;
        }

        break;
      }

LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v8 = MEMORY[0x1E69E7CC0];
  while ((a2 & 0x8000000000000000) == 0)
  {
    v9 = *(a1 + 16);
    if (!v9)
    {

      v11 = v8;
      goto LABEL_19;
    }

    if (__OFADD__(v9, 8))
    {
      goto LABEL_106;
    }

    if (v9 + 8 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v9 + 8;
    }

    if (v10 < 0)
    {
      goto LABEL_107;
    }

    if (v10)
    {
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v11 + 16) = v10;
      bzero((v11 + 32), 2 * v10);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v15 = 0;
    v16 = v11 + 32;
    v17 = v9 - 1;
    while (2)
    {
      v18 = 0;
      v19 = 0;
      v20 = v15 + 1;
      while (1)
      {
        v21 = v18 + v15;
        if (__OFADD__(v18, v15))
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (v21 >= v10)
        {
          if (v19 || outlined read-only object #38 of one-time initialization function for powerOfTen[v15 + 16] && *(a1 + 2 * v18 + 32))
          {
            goto LABEL_61;
          }

          if (v17 == v18)
          {
            goto LABEL_24;
          }

          v19 = 0;
          goto LABEL_26;
        }

        if (v21 < 0)
        {
          goto LABEL_99;
        }

        v22 = *(v11 + 16);
        if (v21 >= v22)
        {
          goto LABEL_100;
        }

        v23 = v19 + *(v16 + 2 * v21) + *(a1 + 2 * v18 + 32) * outlined read-only object #38 of one-time initialization function for powerOfTen[v15 + 16];
        v19 = HIWORD(v23);
        *(v16 + 2 * v21) = v23;
        if (v17 == v18)
        {
          break;
        }

LABEL_26:
        if (v9 == ++v18)
        {
          goto LABEL_98;
        }
      }

      if (v23 < 0x10000)
      {
        goto LABEL_24;
      }

      v24 = __OFADD__(v9, v15);
      v25 = v9 + v15;
      if (v24)
      {
        goto LABEL_110;
      }

      if (v25 >= v10)
      {
LABEL_61:
        lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
        swift_allocError();
        *v32 = 0;
        swift_willThrow();
        goto LABEL_64;
      }

      if (v25 >= v22)
      {
        goto LABEL_111;
      }

      *(v16 + 2 * v25) = HIWORD(v23);
LABEL_24:
      v15 = v20;
      if (v20 != 8)
      {
        continue;
      }

      break;
    }

    v26 = *(v11 + 16);
    if (v26)
    {
      v27 = v26 + 15;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        if (*(v11 + 2 * v27))
        {
          break;
        }

        *(v11 + 16) = v27 - 16;
        --v27;
      }

      while (v27 != 15);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

LABEL_17:

LABEL_19:
    v13 = v7 - 38;
    a1 = v11;
    v14 = v7 <= 76;
    v7 -= 38;
    if (v14)
    {
      goto LABEL_51;
    }
  }

  v12 = specialized static NSDecimal._integerDivide(dividend:divisor:maxResultLength:)(a1, outlined read-only object #38 of one-time initialization function for powerOfTen, a3);
  if (!v3)
  {
    v11 = v12;
    goto LABEL_17;
  }

LABEL_65:
}

uint64_t specialized static NSDecimal._normalize(a:b:roundingMode:)(__int128 *a1, __int128 *a2)
{
  v183 = *a1;
  v184 = *(a1 + 4);
  v5 = _So9NSDecimala__exponent_getter(&v183);
  v183 = *a2;
  v184 = *(a2 + 4);
  v6 = _So9NSDecimala__exponent_getter(&v183);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    return v7 & 1;
  }

  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (v7 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (v7 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = (v6 - v5);
  }

  v11 = v9 + 2;
  v12 = *(v9 + 4);
  v13 = *(v9 + 12);
  v14 = vmovl_u16(v12).u64[0];
  v15 = vceqz_s32(vand_s8(v14, 0xFFFF0000FFFFLL));
  v16 = v15.i8[0];
  v174 = v13;
  v179 = v12;
  v170 = v14;
  if (v15.i8[0])
  {
    if (v15.i8[4])
    {
      if (!*&vext_s8(v12, v13, 4uLL))
      {
        v17 = vmovl_u16(v13);
        v18 = vceqz_s32(*&vextq_s8(v17, v17, 8uLL));
        if (v18.i8[0] & 1) != 0 && (v18.i8[4])
        {
          v19 = MEMORY[0x1E69E7CC0];
          goto LABEL_50;
        }
      }

LABEL_18:
      if (!v12.i16[2])
      {
        if (vext_s8(v12, v13, 6uLL))
        {
          v20 = 0;
        }

        else
        {
          v20 = v13.u16[3] == 0;
        }

        if (v20)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_181218E20;
          *(v19 + 32) = v179.i16[0];
          goto LABEL_50;
        }

        goto LABEL_28;
      }

LABEL_26:
      if (v12.i16[3])
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }
  }

  else if (v15.i8[4])
  {
    goto LABEL_18;
  }

  if (v12.i16[2])
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v12.i16[3])
  {
LABEL_29:
    if (!v13.i16[0])
    {
      goto LABEL_30;
    }

LABEL_35:
    if (!v13.i16[1])
    {
      goto LABEL_39;
    }

LABEL_36:
    if (!v13.i16[2])
    {
      if (!v13.i16[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_18121C7A0;
        *(v19 + 32) = v179;
        *(v19 + 40) = v174.i32[0];
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (!*&v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_181215ED0;
    *(v19 + 32) = v179.i32[0];
    goto LABEL_50;
  }

LABEL_34:
  if (v13.i16[0])
  {
    goto LABEL_35;
  }

  v23.i32[0] = v13.u16[1];
  v23.i32[1] = v13.u16[2];
  v24 = vceqz_s32(vand_s8(v23, 0xFFFF0000FFFFLL));
  if ((v24.i8[0] & 1) != 0 && (v24.i8[4] & 1) != 0 && !v13.i16[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_18121D6B0;
    *(v19 + 32) = v179.i32[0];
    *(v19 + 36) = v179.i16[2];
    goto LABEL_50;
  }

LABEL_30:
  if (v13.i16[1])
  {
    goto LABEL_36;
  }

  v21 = vmovl_u16(v13);
  *v21.i8 = vceqz_s32(*&vextq_s8(v21, v21, 8uLL));
  if (v21.i32[0] & v21.i32[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_18121D6C0;
    *(v19 + 32) = v179;
    goto LABEL_50;
  }

LABEL_39:
  if (!v13.i16[2])
  {
    if (v13.i16[3])
    {
      goto LABEL_41;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1812354D0;
    *(v19 + 32) = v179;
    *(v19 + 40) = v174.i16[0];
    goto LABEL_50;
  }

LABEL_40:
  if (v13.i16[3])
  {
LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v19 = swift_allocObject();
    *&v22 = v179;
    *(&v22 + 1) = v174;
    *(v19 + 16) = xmmword_1812354C0;
    *(v19 + 32) = v22;
    goto LABEL_50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18122CFA0;
  *(v19 + 32) = v179;
  *(v19 + 40) = v174.i32[0];
  *(v19 + 44) = v174.i16[2];
LABEL_50:
  v169 = v10;
  if (v10 >= 0x27)
  {
    while (1)
    {
      v25 = specialized static NSDecimal._integerMultiply(lhs:rhs:maxResultLength:)(v19, outlined read-only object #38 of one-time initialization function for powerOfTen, 8);
      if (v2)
      {
        break;
      }

      v26 = v25;

      v27 = v10 - 38;
      v19 = v26;
      v28 = v10 > 0x4C;
      v10 -= 38;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_71:
    v173 = vceqz_s32(vand_s8(v170, 0xFFFF0000FFFFLL)).i8[4];

    if (v16)
    {
      v42 = v174;
      v41 = v179.i32[1];
      if (v173)
      {
        if (!*&vext_s8(v179, v174, 4uLL))
        {
          v43 = vmovl_u16(v174);
          v44 = vceqz_s32(*&vextq_s8(v43, v43, 8uLL));
          if (v44.i8[0] & 1) != 0 && (v44.i8[4])
          {
            v45 = (8 - *(MEMORY[0x1E69E7CC0] + 16)) * 4.81647993;
            goto LABEL_102;
          }
        }

LABEL_78:
        if (!v41)
        {
          v46 = v42;
          v46.i16[3] = HIWORD(v41);
          if (!*&v46 && !v42.i16[3])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
            v47 = swift_allocObject();
            *(v47 + 16) = xmmword_181218E20;
            *(v47 + 32) = v179.i16[0];
            v45 = 33.7153595;
            goto LABEL_102;
          }

          goto LABEL_85;
        }

        goto LABEL_83;
      }
    }

    else
    {
      v42 = v174;
      v41 = v179.i32[1];
      if (v173)
      {
        goto LABEL_78;
      }
    }

    if (!v41)
    {
LABEL_85:
      if (HIWORD(v41))
      {
LABEL_86:
        if (!v42.i16[0])
        {
LABEL_93:
          if (v42.i16[1])
          {
LABEL_94:
            if (!v42.i16[2])
            {
              if (!v42.i16[3])
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                v48 = swift_allocObject();
                *(v48 + 16) = xmmword_18121C7A0;
                *(v48 + 32) = v179;
                *(v48 + 40) = v174.i32[0];
                v45 = 9.63295986;
                goto LABEL_102;
              }

              goto LABEL_100;
            }

            goto LABEL_99;
          }

          if (!v42.i32[1])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
            v100 = swift_allocObject();
            *(v100 + 16) = xmmword_18121D6C0;
            *(v100 + 32) = v179;
            v45 = 19.2659197;
            goto LABEL_102;
          }

LABEL_98:
          if (!v42.i16[2])
          {
            if (v42.i16[3])
            {
              goto LABEL_100;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_1812354D0;
            *(v82 + 32) = v179;
            *(v82 + 40) = v174.i16[0];
            v45 = 14.4494398;
            goto LABEL_102;
          }

LABEL_99:
          if (v42.i16[3])
          {
LABEL_100:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
            v49 = swift_allocObject();
            *&v50 = v179;
            *(&v50 + 1) = v174;
            *(v49 + 16) = xmmword_1812354C0;
            *(v49 + 32) = v50;
            v45 = 0.0;
            goto LABEL_102;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_18122CFA0;
          *(v51 + 32) = v179;
          *(v51 + 40) = v174.i32[0];
          *(v51 + 44) = v174.i16[2];
          v45 = 4.81647993;
LABEL_102:

          v52 = floor(v45);
          if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v52 > -9.22337204e18)
          {
            if (v52 < 9.22337204e18)
            {
              v166 = v9;
              v168 = v8;
              v180 = v52;
              v54 = (v8 + 4);
              v53 = *(v8 + 2);
              v55 = v8 + 6;
              v56 = *(v8 + 3);
              v57 = v8 + 8;
              v58 = *(v8 + 4);
              v59 = v8 + 10;
              v60 = *(v8 + 5);
              v61 = v54[1];
              v171 = v55;
              if (v53)
              {
                if (!v56)
                {
                  goto LABEL_107;
                }
              }

              else if (!v56)
              {
                v64 = vdup_lane_s32(v61, 0);
                v64.i16[0] = v58;
                v64.i16[1] = v60;
                if (!*&v64)
                {
                  v65 = vmovl_u16(v61);
                  v66 = vceqz_s32(*&vextq_s8(v65, v65, 8uLL));
                  if (v66.i8[0] & 1) != 0 && (v66.i8[4])
                  {
                    v63 = MEMORY[0x1E69E7CC0];
                    goto LABEL_136;
                  }
                }

LABEL_107:
                if (!v58)
                {
                  v62 = v54[1];
                  v62.i16[3] = v60;
                  if (!*&v62 && !v61.i16[3])
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                    result = swift_allocObject();
                    v63 = result;
                    *(result + 16) = xmmword_181218E20;
                    *(result + 32) = v53;
                    goto LABEL_136;
                  }

                  goto LABEL_115;
                }

                goto LABEL_113;
              }

              if (!v58)
              {
LABEL_115:
                if (v60)
                {
LABEL_116:
                  if (!v61.i16[0])
                  {
LABEL_127:
                    if (v61.i16[1])
                    {
LABEL_128:
                      if (!v61.i16[2])
                      {
                        v175 = v54[1];
                        if (!v61.i16[3])
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                          result = swift_allocObject();
                          v63 = result;
                          *(result + 16) = xmmword_18121C7A0;
                          *(result + 32) = v53;
                          *(result + 34) = v56;
                          *(result + 36) = v58;
                          *(result + 38) = v60;
                          *(result + 40) = v175.i32[0];
                          goto LABEL_136;
                        }

                        goto LABEL_134;
                      }

                      goto LABEL_133;
                    }

                    if (!v61.i32[1])
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                      result = swift_allocObject();
                      v63 = result;
                      *(result + 16) = xmmword_18121D6C0;
                      *(result + 32) = v53;
                      *(result + 34) = v56;
                      *(result + 36) = v58;
                      *(result + 38) = v60;
                      goto LABEL_136;
                    }

LABEL_132:
                    if (!v61.i16[2])
                    {
                      v175 = v54[1];
                      if (v61.i16[3])
                      {
                        goto LABEL_134;
                      }

                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                      result = swift_allocObject();
                      v63 = result;
                      *(result + 16) = xmmword_1812354D0;
                      *(result + 32) = v53;
                      *(result + 34) = v56;
                      *(result + 36) = v58;
                      *(result + 38) = v60;
                      *(result + 40) = v175.i16[0];
                      goto LABEL_136;
                    }

LABEL_133:
                    v175 = v54[1];
                    if (v61.i16[3])
                    {
LABEL_134:
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                      result = swift_allocObject();
                      v63 = result;
                      *(result + 16) = xmmword_1812354C0;
                      *(result + 32) = v53;
                      *(result + 34) = v56;
                      *(result + 36) = v58;
                      *(result + 38) = v60;
                      *(result + 40) = v175;
                      goto LABEL_136;
                    }

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                    result = swift_allocObject();
                    v63 = result;
                    *(result + 16) = xmmword_18122CFA0;
                    *(result + 32) = v53;
                    *(result + 34) = v56;
                    *(result + 36) = v58;
                    *(result + 38) = v60;
                    *(result + 40) = v175.i32[0];
                    *(result + 44) = v175.i16[2];
LABEL_136:
                    v67 = v180 - v169;
                    if (!__OFSUB__(v180, v169))
                    {
                      if (!v67)
                      {
                        v70 = v168;
                        goto LABEL_151;
                      }

                      v68 = v180 - v169;
                      if (v67 < 0)
                      {
                        v68 = v169 - v180;
                        if (__OFSUB__(0, v67))
                        {
                          goto LABEL_317;
                        }
                      }

                      if (v68 >= 39)
                      {
                        v69 = v63;
                        do
                        {
                          v63 = specialized static NSDecimal._integerMultiply(lhs:rhs:maxResultLength:)(v69, outlined read-only object #38 of one-time initialization function for powerOfTen, 8);
                          v68 -= 38;

                          v69 = v63;
                        }

                        while ((v68 + 38) > 0x4C);
LABEL_146:
                        v71 = outlined read-only object #39 of one-time initialization function for powerOfTen[v68 + 4];

                        if (v67 < 0)
                        {
                          v72 = specialized static NSDecimal._integerDivide(dividend:divisor:maxResultLength:)(v63, v71, 8);
                        }

                        else
                        {
                          v72 = specialized static NSDecimal._integerMultiply(lhs:rhs:maxResultLength:)(v63, v71, 8);
                        }

                        v70 = v168;
                        v73 = v72;

                        v63 = v73;
LABEL_151:
                        v74 = *(v63 + 16);
                        if (v74 > 8)
                        {
                          goto LABEL_152;
                        }

                        result = _So9NSDecimala__length_setter(*(v63 + 16), v70);
                        if (v74 > 3)
                        {
                          if (v74 > 5)
                          {
                            if (v74 == 6)
                            {
                              v101 = *(v63 + 16);
                              if (!v101)
                              {
LABEL_318:
                                __break(1u);
                                goto LABEL_319;
                              }

                              if (v101 == 1)
                              {
LABEL_326:
                                __break(1u);
                                goto LABEL_327;
                              }

                              if (v101 < 3)
                              {
LABEL_333:
                                __break(1u);
                                goto LABEL_334;
                              }

                              if (v101 == 3)
                              {
LABEL_339:
                                __break(1u);
                                goto LABEL_340;
                              }

                              if (v101 < 5)
                              {
LABEL_344:
                                __break(1u);
                                goto LABEL_345;
                              }

                              if (v101 == 5)
                              {
LABEL_348:
                                __break(1u);
                                goto LABEL_349;
                              }

                              v102 = *(v63 + 32);
                              v103 = *(v63 + 34);
                              v104 = *(v63 + 36);
                              v105 = *(v63 + 38);
                              v106 = *(v63 + 40);

                              *(v168 + 2) = v102;
                              *(v168 + 3) = v103;
                              *(v168 + 4) = v104;
                              *(v168 + 5) = v105;
                              v70 = v168;
                              *(v168 + 3) = v106;
                              *(v168 + 4) = 0;
                            }

                            else if (v74 == 7)
                            {
                              v76 = *(v63 + 16);
                              if (!v76)
                              {
LABEL_322:
                                __break(1u);
                                goto LABEL_323;
                              }

                              if (v76 == 1)
                              {
LABEL_329:
                                __break(1u);
                                goto LABEL_330;
                              }

                              if (v76 < 3)
                              {
LABEL_335:
                                __break(1u);
                                goto LABEL_336;
                              }

                              if (v76 == 3)
                              {
LABEL_340:
                                __break(1u);
                                goto LABEL_341;
                              }

                              if (v76 < 5)
                              {
LABEL_345:
                                __break(1u);
                                goto LABEL_346;
                              }

                              if (v76 == 5)
                              {
LABEL_349:
                                __break(1u);
                                goto LABEL_350;
                              }

                              if (v76 < 7)
                              {
LABEL_351:
                                __break(1u);
                                goto LABEL_352;
                              }

                              v77 = *(v63 + 32);
                              v78 = *(v63 + 34);
                              v79 = *(v63 + 36);
                              v80 = *(v63 + 38);
                              v81 = *(v63 + 40);
                              v176 = *(v63 + 42);

                              *(v168 + 2) = v77;
                              *(v168 + 3) = v78;
                              *(v168 + 4) = v79;
                              *(v168 + 5) = v80;
                              v70 = v168;
                              *(v168 + 6) = v81;
                              *(v168 + 14) = v176;
                              *(v168 + 9) = 0;
                            }

                            else
                            {
                              v111 = *(v63 + 16);
                              if (!v111)
                              {
LABEL_323:
                                __break(1u);
                                goto LABEL_324;
                              }

                              if (v111 == 1)
                              {
LABEL_330:
                                __break(1u);
                                goto LABEL_331;
                              }

                              if (v111 < 3)
                              {
LABEL_336:
                                __break(1u);
                                goto LABEL_337;
                              }

                              if (v111 == 3)
                              {
LABEL_341:
                                __break(1u);
                                goto LABEL_342;
                              }

                              if (v111 < 5)
                              {
LABEL_346:
                                __break(1u);
                                goto LABEL_347;
                              }

                              if (v111 == 5)
                              {
LABEL_350:
                                __break(1u);
                                goto LABEL_351;
                              }

                              if (v111 < 7)
                              {
LABEL_352:
                                __break(1u);
                                goto LABEL_353;
                              }

                              if (v111 == 7)
                              {
LABEL_353:
                                __break(1u);
                                goto LABEL_354;
                              }

                              v112 = *(v63 + 32);
                              v113 = *(v63 + 34);
                              v114 = *(v63 + 36);
                              v115 = *(v63 + 38);
                              v116 = *(v63 + 40);
                              v178 = *(v63 + 42);
                              v172 = *(v63 + 44);

                              *(v168 + 2) = v112;
                              *(v168 + 3) = v113;
                              *(v168 + 4) = v114;
                              *(v168 + 5) = v115;
                              v70 = v168;
                              *(v168 + 6) = v116;
                              *(v168 + 7) = v178;
                              *(v168 + 4) = v172;
                            }

                            goto LABEL_224;
                          }

                          v86 = v166;
                          if (v74 == 4)
                          {
                            v87 = *(v63 + 16);
                            if (!v87)
                            {
LABEL_324:
                              __break(1u);
                              goto LABEL_325;
                            }

                            if (v87 == 1)
                            {
LABEL_331:
                              __break(1u);
                              goto LABEL_332;
                            }

                            if (v87 < 3)
                            {
LABEL_337:
                              __break(1u);
                              goto LABEL_338;
                            }

                            if (v87 == 3)
                            {
LABEL_342:
                              __break(1u);
                              goto LABEL_343;
                            }

                            v88 = *(v63 + 32);
                            v89 = *(v63 + 34);
                            v90 = *(v63 + 36);

                            *(v70 + 2) = v88;
                            *(v70 + 3) = v89;
                            *(v70 + 2) = v90;
                            *(v70 + 12) = 0;
                          }

                          else
                          {
                            v128 = *(v63 + 16);
                            if (!v128)
                            {
LABEL_325:
                              __break(1u);
                              goto LABEL_326;
                            }

                            if (v128 == 1)
                            {
LABEL_332:
                              __break(1u);
                              goto LABEL_333;
                            }

                            if (v128 < 3)
                            {
LABEL_338:
                              __break(1u);
                              goto LABEL_339;
                            }

                            if (v128 == 3)
                            {
LABEL_343:
                              __break(1u);
                              goto LABEL_344;
                            }

                            if (v128 < 5)
                            {
LABEL_347:
                              __break(1u);
                              goto LABEL_348;
                            }

                            v129 = *(v63 + 32);
                            v130 = *(v63 + 34);
                            v131 = *(v63 + 36);
                            v132 = *(v63 + 38);

                            *(v168 + 2) = v129;
                            *(v168 + 3) = v130;
                            *(v168 + 4) = v131;
                            *(v168 + 10) = v132;
                            v70 = v168;
                            *(v168 + 14) = 0;
                            *(v168 + 9) = 0;
                          }

LABEL_225:
                          result = _So9NSDecimala__length_setter(v74, v70);
                          if (v67 >= 0xFFFFFFFF80000000)
                          {
                            if (v67 <= 0x7FFFFFFF)
                            {
                              v183 = *v70;
                              v184 = *(v70 + 4);
                              v117 = _So9NSDecimala__exponent_getter(&v183);
                              v118 = __OFSUB__(v117, v67);
                              result = (v117 - v67);
                              if (!v118)
                              {
                                _So9NSDecimala__exponent_setter(result, v70);
                                _So9NSDecimala__isCompact_setter_0(0, v70);
                                v183 = *v70;
                                v184 = *(v70 + 4);
                                if (!_So9NSDecimala__length_getter(&v183))
                                {
                                  v183 = *v86;
                                  v184 = *(v86 + 4);
                                  v127 = _So9NSDecimala__exponent_getter(&v183);
                                  _So9NSDecimala__exponent_setter(v127, v70);
LABEL_236:
                                  LOBYTE(v7) = 1;
                                  return v7 & 1;
                                }

                                v119 = *(v86 + 2);
                                v120 = *(v86 + 3);
                                v121 = *(v86 + 4);
                                v122 = *(v86 + 5);
                                v123 = *(v86 + 12);
                                if (v119)
                                {
                                  v124 = v180;
                                  if (!*(v86 + 3))
                                  {
                                    goto LABEL_231;
                                  }
                                }

                                else
                                {
                                  v124 = v180;
                                  if (!*(v86 + 3))
                                  {
                                    v133 = vdup_lane_s32(v123, 0);
                                    v133.i32[0] = *(v86 + 2);
                                    if (!*&v133)
                                    {
                                      v134 = vmovl_u16(v123);
                                      v135 = vceqz_s32(*&vextq_s8(v134, v134, 8uLL));
                                      if (v135.i8[0] & 1) != 0 && (v135.i8[4])
                                      {
                                        v126 = MEMORY[0x1E69E7CC0];
                                        goto LABEL_298;
                                      }
                                    }

LABEL_231:
                                    if (!*(v86 + 4))
                                    {
                                      v125 = *(v86 + 12);
                                      HIWORD(v125) = *(v86 + 5);
                                      if (!v125 && !v123.i16[3])
                                      {
                                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                                        v126 = swift_allocObject();
                                        *(v126 + 16) = xmmword_181218E20;
                                        *(v126 + 32) = v119;
                                        goto LABEL_298;
                                      }

                                      goto LABEL_241;
                                    }

                                    goto LABEL_239;
                                  }
                                }

                                if (!*(v86 + 4))
                                {
LABEL_241:
                                  if (*(v86 + 5))
                                  {
LABEL_242:
                                    if (!v123.i16[0])
                                    {
LABEL_289:
                                      if (v123.i16[1])
                                      {
LABEL_290:
                                        if (!v123.i16[2])
                                        {
                                          v182 = *(v86 + 12);
                                          if (!v123.i16[3])
                                          {
                                            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                                            v126 = swift_allocObject();
                                            *(v126 + 16) = xmmword_18121C7A0;
                                            *(v126 + 32) = v119;
                                            *(v126 + 34) = v120;
                                            *(v126 + 36) = v121;
                                            *(v126 + 38) = v122;
                                            *(v126 + 40) = v182;
                                            goto LABEL_298;
                                          }

                                          goto LABEL_296;
                                        }

                                        goto LABEL_295;
                                      }

                                      if (!v123.i32[1])
                                      {
                                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                                        v126 = swift_allocObject();
                                        *(v126 + 16) = xmmword_18121D6C0;
                                        *(v126 + 32) = v119;
                                        *(v126 + 34) = v120;
                                        *(v126 + 36) = v121;
                                        *(v126 + 38) = v122;
                                        goto LABEL_298;
                                      }

LABEL_294:
                                      if (!v123.i16[2])
                                      {
                                        v182 = *(v86 + 12);
                                        if (v123.i16[3])
                                        {
                                          goto LABEL_296;
                                        }

                                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                                        v126 = swift_allocObject();
                                        *(v126 + 16) = xmmword_1812354D0;
                                        *(v126 + 32) = v119;
                                        *(v126 + 34) = v120;
                                        *(v126 + 36) = v121;
                                        *(v126 + 38) = v122;
                                        *(v126 + 40) = v182;
                                        goto LABEL_298;
                                      }

LABEL_295:
                                      v182 = *(v86 + 12);
                                      if (v123.i16[3])
                                      {
LABEL_296:
                                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                                        v126 = swift_allocObject();
                                        *(v126 + 16) = xmmword_1812354C0;
                                        *(v126 + 32) = v119;
                                        *(v126 + 34) = v120;
                                        *(v126 + 36) = v121;
                                        *(v126 + 38) = v122;
                                        *(v126 + 40) = v182;
                                        goto LABEL_298;
                                      }

                                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                                      v126 = swift_allocObject();
                                      *(v126 + 16) = xmmword_18122CFA0;
                                      *(v126 + 32) = v119;
                                      *(v126 + 34) = v120;
                                      *(v126 + 36) = v121;
                                      *(v126 + 38) = v122;
                                      *(v126 + 40) = v182;
                                      *(v126 + 44) = WORD2(v182);
LABEL_298:
                                      specialized static NSDecimal._integerMultiplyByPowerOfTen(lhs:power:maxResultLength:)(v126, v124, 8);
                                      v161._rawValue = v160;

                                      NSDecimal.copyVariableLengthInteger(_:)(v161);
                                      if (v162)
                                      {

                                        return v7 & 1;
                                      }

                                      v163 = *(v161._rawValue + 2);

                                      if (!HIDWORD(v163))
                                      {
                                        result = _So9NSDecimala__length_setter(v163, v86);
                                        if (v124 >= 0xFFFFFFFF80000000)
                                        {
                                          if (v124 <= 0x7FFFFFFF)
                                          {
                                            v183 = *v86;
                                            v184 = *(v86 + 4);
                                            v164 = _So9NSDecimala__exponent_getter(&v183);
                                            v118 = __OFSUB__(v164, v124);
                                            result = (v164 - v124);
                                            if (!v118)
                                            {
                                              _So9NSDecimala__exponent_setter(result, v86);
                                              _So9NSDecimala__isCompact_setter_0(0, v86);
                                              goto LABEL_236;
                                            }

                                            goto LABEL_357;
                                          }

LABEL_356:
                                          __break(1u);
LABEL_357:
                                          __break(1u);
                                          goto LABEL_358;
                                        }

LABEL_355:
                                        __break(1u);
                                        goto LABEL_356;
                                      }

LABEL_354:
                                      __break(1u);
                                      goto LABEL_355;
                                    }

                                    goto LABEL_286;
                                  }

                                  if (!*&v123)
                                  {
                                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                                    v126 = swift_allocObject();
                                    *(v126 + 16) = xmmword_181215ED0;
                                    *(v126 + 32) = v119;
                                    *(v126 + 34) = v120;
                                    goto LABEL_298;
                                  }

LABEL_285:
                                  if (!v123.i16[0])
                                  {
                                    if (!((v123.i16[1] | v123.i16[2]) | v123.i16[3]))
                                    {
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                                      v126 = swift_allocObject();
                                      *(v126 + 16) = xmmword_18121D6B0;
                                      *(v126 + 32) = v119;
                                      *(v126 + 34) = v120;
                                      *(v126 + 36) = v121;
                                      goto LABEL_298;
                                    }

                                    goto LABEL_289;
                                  }

LABEL_286:
                                  if (v123.i16[1])
                                  {
                                    goto LABEL_290;
                                  }

                                  goto LABEL_294;
                                }

LABEL_239:
                                if (*(v86 + 5))
                                {
                                  goto LABEL_242;
                                }

                                goto LABEL_285;
                              }

                              goto LABEL_316;
                            }

LABEL_315:
                            __break(1u);
LABEL_316:
                            __break(1u);
LABEL_317:
                            __break(1u);
                            goto LABEL_318;
                          }

LABEL_314:
                          __break(1u);
                          goto LABEL_315;
                        }

                        if (v74 > 1)
                        {
                          if (v74 != 2)
                          {
                            v108 = *(v63 + 16);
                            if (!v108)
                            {
LABEL_321:
                              __break(1u);
                              goto LABEL_322;
                            }

                            if (v108 == 1)
                            {
LABEL_328:
                              __break(1u);
                              goto LABEL_329;
                            }

                            if (v108 < 3)
                            {
LABEL_334:
                              __break(1u);
                              goto LABEL_335;
                            }

                            v109 = *(v63 + 32);
                            v110 = *(v63 + 34);
                            v177 = *(v63 + 36);

                            v54->i16[0] = v109;
                            *v171 = v110;
                            *v57 = v177;
                            *v59 = 0;
                            *(v59 + 8) = 0;
                            v86 = v166;
                            v70 = v168;
                            goto LABEL_225;
                          }

                          v83 = *(v63 + 16);
                          if (!v83)
                          {
LABEL_319:
                            __break(1u);
                            goto LABEL_320;
                          }

                          if (v83 == 1)
                          {
LABEL_327:
                            __break(1u);
                            goto LABEL_328;
                          }

                          v84 = *(v63 + 32);
                          v85 = *(v63 + 34);

                          v54->i16[0] = v84;
                          *v171 = v85;
                          *v57 = 0;
                          *(v57 + 8) = 0;
                        }

                        else if (v74)
                        {
                          if (!*(v63 + 16))
                          {
LABEL_320:
                            __break(1u);
                            goto LABEL_321;
                          }

                          v107 = *(v63 + 32);

                          v54->i16[0] = v107;
                          *v171 = 0;
                          *(v171 + 6) = 0;
                        }

                        else
                        {

                          *v54 = 0;
                          v54[1] = 0;
                        }

LABEL_224:
                        v86 = v166;
                        goto LABEL_225;
                      }

                      if (v68 <= 0x26)
                      {
                        goto LABEL_146;
                      }

LABEL_313:
                      __break(1u);
                      goto LABEL_314;
                    }

LABEL_312:
                    __break(1u);
                    goto LABEL_313;
                  }

                  goto LABEL_124;
                }

                if (!*&v61)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                  result = swift_allocObject();
                  v63 = result;
                  *(result + 16) = xmmword_181215ED0;
                  *(result + 32) = v53;
                  *(result + 34) = v56;
                  goto LABEL_136;
                }

LABEL_123:
                if (!v61.i16[0])
                {
                  if (!((v61.i16[1] | v61.i16[2]) | v61.i16[3]))
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                    result = swift_allocObject();
                    v63 = result;
                    *(result + 16) = xmmword_18121D6B0;
                    *(result + 32) = v53;
                    *(result + 34) = v56;
                    *(result + 36) = v58;
                    goto LABEL_136;
                  }

                  goto LABEL_127;
                }

LABEL_124:
                if (v61.i16[1])
                {
                  goto LABEL_128;
                }

                goto LABEL_132;
              }

LABEL_113:
              if (v60)
              {
                goto LABEL_116;
              }

              goto LABEL_123;
            }

LABEL_311:
            __break(1u);
            goto LABEL_312;
          }

          __break(1u);
          goto LABEL_311;
        }

        goto LABEL_90;
      }

      if (!*&v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_181215ED0;
        *(v99 + 32) = v179.i32[0];
        v45 = 28.8988796;
        goto LABEL_102;
      }

LABEL_89:
      if (!v42.i16[0])
      {
        if (!((v42.i16[1] | v42.i16[2]) | v42.i16[3]))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
          v98 = swift_allocObject();
          *(v98 + 16) = xmmword_18121D6B0;
          *(v98 + 32) = v179.i32[0];
          *(v98 + 36) = v179.i16[2];
          v45 = 24.0823996;
          goto LABEL_102;
        }

        goto LABEL_93;
      }

LABEL_90:
      if (v42.i16[1])
      {
        goto LABEL_94;
      }

      goto LABEL_98;
    }

LABEL_83:
    if (HIWORD(v41))
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  v26 = v19;
  v27 = v10;
LABEL_55:
  v29 = outlined read-only object #39 of one-time initialization function for powerOfTen[v27 + 4];

  v30 = specialized static NSDecimal._integerMultiply(lhs:rhs:maxResultLength:)(v26, v29, 8);
  if (v2)
  {

    goto LABEL_71;
  }

  v31 = v30;

  v32 = *(v31 + 16);
  if (v32 > 8)
  {
LABEL_152:

    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    *v75 = 0;
    swift_willThrow();
    return v7 & 1;
  }

  result = _So9NSDecimala__length_setter(*(v31 + 16), v9);
  if (v32 <= 3)
  {
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v91 = *(v31 + 16);
        if (!v91)
        {
LABEL_359:
          __break(1u);
          goto LABEL_360;
        }

        if (v91 == 1)
        {
LABEL_367:
          __break(1u);
          goto LABEL_368;
        }

        v92 = *(v31 + 32);
        v93 = *(v31 + 34);

        *v11 = v92;
        *(v9 + 3) = v93;
        *(v9 + 1) = 0;
        *(v9 + 4) = 0;
      }

      else
      {
        v143 = *(v31 + 16);
        if (!v143)
        {
LABEL_361:
          __break(1u);
          goto LABEL_362;
        }

        if (v143 == 1)
        {
LABEL_368:
          __break(1u);
          goto LABEL_369;
        }

        if (v143 < 3)
        {
LABEL_374:
          __break(1u);
          goto LABEL_375;
        }

        v144 = *(v31 + 32);
        v145 = *(v31 + 34);
        v146 = *(v31 + 36);

        *v11 = v144;
        *(v9 + 3) = v145;
        *(v9 + 4) = v146;
        *(v9 + 10) = 0;
        *(v9 + 9) = 0;
      }
    }

    else if (v32)
    {
      if (!*(v31 + 16))
      {
LABEL_360:
        __break(1u);
        goto LABEL_361;
      }

      v142 = *(v31 + 32);

      *v11 = v142;
      *(v9 + 6) = 0;
      *(v9 + 12) = 0;
    }

    else
    {

      *v11 = 0;
      *(v9 + 12) = 0;
    }

LABEL_283:
    _So9NSDecimala__length_setter(v32, v9);
    v183 = *v8;
    v184 = *(v8 + 4);
    v159 = _So9NSDecimala__exponent_getter(&v183);
    _So9NSDecimala__exponent_setter(v159, v9);
    _So9NSDecimala__isCompact_setter_0(0, v9);
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (v32 <= 5)
  {
    if (v32 == 4)
    {
      v94 = *(v31 + 16);
      if (!v94)
      {
LABEL_364:
        __break(1u);
        goto LABEL_365;
      }

      if (v94 == 1)
      {
LABEL_371:
        __break(1u);
        goto LABEL_372;
      }

      if (v94 < 3)
      {
LABEL_377:
        __break(1u);
        goto LABEL_378;
      }

      if (v94 == 3)
      {
LABEL_382:
        __break(1u);
        goto LABEL_383;
      }

      v95 = *(v31 + 32);
      v96 = *(v31 + 34);
      v97 = *(v31 + 36);

      *(v9 + 2) = v95;
      *(v9 + 3) = v96;
      *(v9 + 2) = v97;
      *(v9 + 12) = 0;
    }

    else
    {
      v154 = *(v31 + 16);
      if (!v154)
      {
LABEL_365:
        __break(1u);
        goto LABEL_366;
      }

      if (v154 == 1)
      {
LABEL_372:
        __break(1u);
        goto LABEL_373;
      }

      if (v154 < 3)
      {
LABEL_378:
        __break(1u);
        goto LABEL_379;
      }

      if (v154 == 3)
      {
LABEL_383:
        __break(1u);
        goto LABEL_384;
      }

      if (v154 < 5)
      {
LABEL_387:
        __break(1u);
        goto LABEL_388;
      }

      v155 = *(v31 + 32);
      v156 = *(v31 + 34);
      v157 = *(v31 + 36);
      v158 = *(v31 + 38);

      *(v9 + 2) = v155;
      *(v9 + 3) = v156;
      *(v9 + 4) = v157;
      *(v9 + 10) = v158;
      *(v9 + 14) = 0;
      *(v9 + 9) = 0;
    }

    goto LABEL_283;
  }

  v167 = v8;
  if (v32 == 6)
  {
    v136 = *(v31 + 16);
    if (!v136)
    {
LABEL_358:
      __break(1u);
      goto LABEL_359;
    }

    if (v136 == 1)
    {
LABEL_366:
      __break(1u);
      goto LABEL_367;
    }

    if (v136 < 3)
    {
LABEL_373:
      __break(1u);
      goto LABEL_374;
    }

    if (v136 == 3)
    {
LABEL_379:
      __break(1u);
      goto LABEL_380;
    }

    if (v136 < 5)
    {
LABEL_384:
      __break(1u);
      goto LABEL_385;
    }

    if (v136 == 5)
    {
LABEL_388:
      __break(1u);
      goto LABEL_389;
    }

    v137 = *(v31 + 32);
    v138 = *(v31 + 34);
    v139 = *(v31 + 36);
    v140 = *(v31 + 38);
    v141 = *(v31 + 40);

    *(v9 + 2) = v137;
    *(v9 + 3) = v138;
    *(v9 + 4) = v139;
    *(v9 + 5) = v140;
    *(v9 + 3) = v141;
    *(v9 + 4) = 0;
    goto LABEL_276;
  }

  v165 = v9;
  if (v32 == 7)
  {
    v34 = *(v31 + 16);
    if (!v34)
    {
LABEL_362:
      __break(1u);
      goto LABEL_363;
    }

    if (v34 == 1)
    {
LABEL_369:
      __break(1u);
      goto LABEL_370;
    }

    if (v34 < 3)
    {
LABEL_375:
      __break(1u);
      goto LABEL_376;
    }

    if (v34 == 3)
    {
LABEL_380:
      __break(1u);
      goto LABEL_381;
    }

    if (v34 < 5)
    {
LABEL_385:
      __break(1u);
      goto LABEL_386;
    }

    if (v34 == 5)
    {
LABEL_389:
      __break(1u);
      goto LABEL_390;
    }

    if (v34 < 7)
    {
LABEL_391:
      __break(1u);
      goto LABEL_392;
    }

    v35 = *(v31 + 32);
    v36 = *(v31 + 34);
    v37 = *(v31 + 36);
    v38 = *(v31 + 38);
    v39 = *(v31 + 40);
    v40 = *(v31 + 42);

    *(v165 + 2) = v35;
    *(v165 + 3) = v36;
    *(v165 + 4) = v37;
    *(v165 + 5) = v38;
    *(v165 + 6) = v39;
    *(v165 + 14) = v40;
    v9 = v165;
    *(v165 + 9) = 0;
    goto LABEL_276;
  }

  v147 = *(v31 + 16);
  if (!v147)
  {
LABEL_363:
    __break(1u);
    goto LABEL_364;
  }

  if (v147 == 1)
  {
LABEL_370:
    __break(1u);
    goto LABEL_371;
  }

  if (v147 < 3)
  {
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  if (v147 == 3)
  {
LABEL_381:
    __break(1u);
    goto LABEL_382;
  }

  if (v147 < 5)
  {
LABEL_386:
    __break(1u);
    goto LABEL_387;
  }

  if (v147 == 5)
  {
LABEL_390:
    __break(1u);
    goto LABEL_391;
  }

  if (v147 < 7)
  {
LABEL_392:
    __break(1u);
    goto LABEL_393;
  }

  if (v147 != 7)
  {
    v148 = *(v31 + 32);
    v149 = *(v31 + 34);
    v150 = *(v31 + 36);
    v151 = *(v31 + 38);
    v152 = *(v31 + 40);
    v153 = *(v31 + 42);
    v181 = *(v31 + 44);

    *(v165 + 2) = v148;
    *(v165 + 3) = v149;
    *(v165 + 4) = v150;
    *(v165 + 5) = v151;
    *(v165 + 6) = v152;
    *(v165 + 7) = v153;
    v9 = v165;
    *(v165 + 4) = v181;
LABEL_276:
    v8 = v167;
    goto LABEL_283;
  }

LABEL_393:
  __break(1u);
  return result;
}

uint64_t specialized NSDecimal._divide(by:roundingMode:)(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v67 = *MEMORY[0x1E69E9840];
  *&v65 = a4;
  *(&v65 + 1) = a5;
  v66 = a6;
  if (!_So9NSDecimala__length_getter(&v65))
  {
    *&v65 = v9;
    *(&v65 + 1) = v8;
    v66 = v7;
    if (_So9NSDecimala__isNegative_getter(&v65))
    {
      goto LABEL_15;
    }
  }

  *&v65 = a1;
  *(&v65 + 1) = a2;
  v66 = a3;
  if (!_So9NSDecimala__length_getter(&v65))
  {
    *&v65 = a1;
    *(&v65 + 1) = a2;
    v66 = a3;
    if (_So9NSDecimala__isNegative_getter(&v65))
    {
      goto LABEL_15;
    }
  }

  *&v65 = a1;
  *(&v65 + 1) = a2;
  v66 = a3;
  if (!_So9NSDecimala__length_getter(&v65))
  {
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    v27 = 2;
    goto LABEL_17;
  }

  *&v65 = v9;
  *(&v65 + 1) = v8;
  v66 = v7;
  if (!_So9NSDecimala__length_getter(&v65))
  {
    return 0;
  }

  *&v65 = v9;
  *(&v65 + 1) = v8;
  v66 = v7;
  *&v63 = a1;
  *(&v63 + 1) = a2;
  v64 = a3;
  v61 = v65;
  v62 = v7;
  v13 = _So9NSDecimala__exponent_getter(&v61);
  v61 = v63;
  v62 = v64;
  v14 = v13 - _So9NSDecimala__exponent_getter(&v61);
  v15 = HIDWORD(v9);
  v16 = HIWORD(v9);
  if (v14 >= 19)
  {
    result = specialized static NSDecimal._normalize(a:b:roundingMode:)(&v65, &v63);
    if (v6)
    {
      return result;
    }

    v61 = v65;
    v62 = v66;
    if (_So9NSDecimala__length_getter(&v61) && (v61 = v63, v62 = v64, _So9NSDecimala__length_getter(&v61)))
    {
      LODWORD(v9) = v65;
      LOWORD(v15) = WORD2(v65);
      v16 = WORD3(v65);
      v8 = *(&v65 + 1);
      v7 = v66;
    }

    else
    {
      *&v65 = v9;
      *(&v65 + 1) = v8;
      v66 = v7;
      *&v63 = a1;
      *(&v63 + 1) = a2;
      v64 = a3;
    }
  }

  NSDecimal.asVariableLengthInteger()(v9 | (v15 << 32) | (v16 << 48), v8, v7);
  v18 = v17;
  v19 = *(v17 + 16);
  if (!v19)
  {

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  if (__OFADD__(v19, 8))
  {
    goto LABEL_80;
  }

  if ((v19 + 8) >= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v19 + 8;
  }

  v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v21 + 16) = v20;
  v22 = v21 + 32;
  bzero((v21 + 32), 2 * v20);
  v23 = 0;
  v24 = v19 - 1;
  do
  {
    v29 = 0;
    v30 = 0;
    v31 = v23 + 1;
    v32 = &outlined read-only object #38 of one-time initialization function for powerOfTen[v23];
    while (1)
    {
      v33 = v29 + v23;
      if (__OFADD__(v29, v23))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
      }

      if (v33 >= v20)
      {
        if (v30 || v32[16] && *(v18 + 2 * v29 + 32))
        {
          goto LABEL_44;
        }

        if (v24 == v29)
        {
          goto LABEL_25;
        }

        v30 = 0;
        goto LABEL_27;
      }

      if (v33 < 0)
      {
        goto LABEL_77;
      }

      v34 = *(v21 + 16);
      if (v33 >= v34)
      {
        goto LABEL_78;
      }

      v35 = v30 + *(v22 + 2 * v33) + *(v18 + 2 * v29 + 32) * v32[16];
      v30 = HIWORD(v35);
      *(v22 + 2 * v33) = v35;
      if (v24 == v29)
      {
        break;
      }

LABEL_27:
      if (v19 == ++v29)
      {
        goto LABEL_76;
      }
    }

    if (v35 < 0x10000)
    {
      goto LABEL_25;
    }

    v36 = __OFADD__(v19, v23);
    v37 = v19 + v23;
    if (v36)
    {
      goto LABEL_82;
    }

    if (v37 >= v20)
    {
LABEL_44:
      lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
    }

    if (v37 >= v34)
    {
      goto LABEL_83;
    }

    *(v22 + 2 * v37) = HIWORD(v35);
LABEL_25:
    v23 = v31;
  }

  while (v31 != 8);
  v57 = *(v21 + 16);
  if (v57)
  {
    v58 = v57 + 15;
    do
    {
      if (*(v21 + 2 * v58))
      {
        break;
      }

      *(v21 + 16) = v58 - 16;
      --v58;
    }

    while (v58 != 15);
  }

LABEL_46:
  NSDecimal.asVariableLengthInteger()(v63, *(&v63 + 1), v64);
  v40 = specialized static NSDecimal._integerDivide(dividend:divisor:maxResultLength:)(v21, v39, *(v21 + 16));
  if (v6)
  {
  }

  v41._rawValue = v40;

  v42 = *(v41._rawValue + 2);
  if (v42 <= 8)
  {
    v43 = 0;
  }

  else
  {

    if (v42 == 9)
    {
      v43 = 0;
      rawValue = v41._rawValue;
      goto LABEL_52;
    }

    v47 = 0;
    v48 = v41._rawValue;
    do
    {
      rawValue = specialized static NSDecimal._integerDivideByShort(_:_:)(v48, 0x2710u);

      v43 = v47 + 4;
      if (__OFADD__(v47, 4))
      {
        goto LABEL_81;
      }

      v49 = *(rawValue + 16);
      v47 += 4;
      v48 = rawValue;
    }

    while (v49 > 9);
    if (v49 == 9)
    {
LABEL_52:
      v45 = rawValue;
      do
      {
        rawValue = specialized static NSDecimal._integerDivideByShort(_:_:)(v45, 0xAu);

        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_79;
        }

        ++v43;
        v45 = rawValue;
      }

      while (*(rawValue + 16) > 8uLL);
      v43 = v46;
    }

    v41._rawValue = rawValue;
  }

  v61 = 0uLL;
  v62 = 0;
  NSDecimal.copyVariableLengthInteger(_:)(v41);
  if (v50)
  {
  }

  v51 = *(v41._rawValue + 2);

  if (HIDWORD(v51))
  {
    goto LABEL_84;
  }

  _So9NSDecimala__length_setter(v51, &v61);
  v59 = v65;
  v60 = v66;
  isNegative_getter = _So9NSDecimala__isNegative_getter(&v59);
  v59 = v63;
  v60 = v64;
  v53 = isNegative_getter != _So9NSDecimala__isNegative_getter(&v59);
  _So9NSDecimala__isNegative_setter(v53, &v61);
  v59 = v65;
  v60 = v66;
  v54 = _So9NSDecimala__exponent_getter(&v59);
  v59 = v63;
  v60 = v64;
  v55 = (v54 - _So9NSDecimala__exponent_getter(&v59)) - 38;
  v56 = v55 + v43;
  if (__OFADD__(v55, v43))
  {
    goto LABEL_85;
  }

  if (v56 > -129)
  {
    if (v56 < 128)
    {
      _So9NSDecimala__exponent_setter(v56, &v61);
      _So9NSDecimala__isCompact_setter_0(0, &v61);
      NSDecimal.compact()();
      return v61;
    }

LABEL_15:
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
  swift_allocError();
  v27 = 1;
LABEL_17:
  *v26 = v27;
  return swift_willThrow();
}

char *specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (!*(a1 + 24))
  {
    goto LABEL_6;
  }

  outlined init with take of Any(a1, v69);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v3;
  v9 = v68;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v12 = v68[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v4 = v11;
    if (v68[3] < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
      v16 = v68;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v4 & 1) != (v17 & 1))
      {
        a1 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_6:
        outlined destroy of TermOfAddress?(a1, &_sypSgMd);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          memset(v69, 0, sizeof(v69));
          return outlined destroy of TermOfAddress?(v69, &_sypSgMd);
        }

        v21 = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v5;
        if (v21)
        {
          v23 = *v5;
LABEL_9:

          outlined init with take of Any((*(v23 + 56) + 32 * v18), v69);
          specialized _NativeDictionary._delete(at:)(v18, v23);
          *v5 = v23;
          return outlined destroy of TermOfAddress?(v69, &_sypSgMd);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
        v44 = static _DictionaryStorage.copy(original:)();
        v23 = v44;
        if (!*(v22 + 16))
        {
LABEL_50:

          goto LABEL_9;
        }

        result = (v44 + 64);
        v45 = ((1 << *(v23 + 32)) + 63) >> 6;
        if (v23 != v22 || result >= v22 + 64 + 8 * v45)
        {
          result = memmove(result, (v22 + 64), 8 * v45);
        }

        v46 = 0;
        *(v23 + 16) = *(v22 + 16);
        v47 = 1 << *(v22 + 32);
        v48 = -1;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        v49 = (v47 + 63) >> 6;
        v50 = v48 & *(v22 + 64);
        if (v50)
        {
          do
          {
            v51 = __clz(__rbit64(v50));
            v66 = (v50 - 1) & v50;
LABEL_48:
            v54 = v51 | (v46 << 6);
            v55 = 16 * v54;
            v56 = (*(v22 + 48) + 16 * v54);
            v58 = *v56;
            v57 = v56[1];
            v59 = 32 * v54;
            outlined init with copy of Any(*(v22 + 56) + 32 * v54, v69);
            v60 = (*(v23 + 48) + v55);
            *v60 = v58;
            v60[1] = v57;
            outlined init with take of Any(v69, (*(v23 + 56) + v59));

            v50 = v66;
          }

          while (v66);
        }

        v52 = v46;
        while (1)
        {
          v46 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_52;
          }

          if (v46 >= v49)
          {
            goto LABEL_50;
          }

          v53 = *(v22 + 64 + 8 * v46);
          ++v52;
          if (v53)
          {
            v51 = __clz(__rbit64(v53));
            v66 = (v53 - 1) & v53;
            goto LABEL_48;
          }
        }
      }

LABEL_12:
      if (v4)
      {
LABEL_13:
        v24 = v10;

        v25 = (*(v16 + 56) + 32 * v24);
        __swift_destroy_boxed_opaque_existential_1(v25);
        result = outlined init with take of Any(v69, v25);
LABEL_34:
        *v5 = v16;
        return result;
      }

LABEL_33:
      result = specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a3, v69, v16);
      goto LABEL_34;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v16 = v68;
      goto LABEL_12;
    }
  }

  v62 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v27 = static _DictionaryStorage.copy(original:)();
  v16 = v27;
  if (!v68[2])
  {
LABEL_32:

    v10 = v62;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

  result = (v27 + 64);
  v28 = (v68 + 8);
  v29 = ((1 << *(v16 + 32)) + 63) >> 6;
  v61 = v68 + 8;
  if (v16 != v68 || result >= &v28[8 * v29])
  {
    result = memmove(result, v28, 8 * v29);
  }

  v30 = 0;
  *(v16 + 16) = v68[2];
  v31 = 1 << *(v9 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v9[8];
  v34 = (v31 + 63) >> 6;
  v63 = v34;
  if (v33)
  {
    do
    {
      v35 = __clz(__rbit64(v33));
      v65 = (v33 - 1) & v33;
LABEL_30:
      v38 = v35 | (v30 << 6);
      v39 = 16 * v38;
      v40 = (v9[6] + 16 * v38);
      v41 = v40[1];
      v64 = *v40;
      v42 = 32 * v38;
      outlined init with copy of Any(v9[7] + 32 * v38, v67);
      v43 = (*(v16 + 48) + v39);
      *v43 = v64;
      v43[1] = v41;
      outlined init with take of Any(v67, (*(v16 + 56) + v42));

      v34 = v63;
      v33 = v65;
    }

    while (v65);
  }

  v36 = v30;
  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v34)
    {
      goto LABEL_32;
    }

    v37 = v61[v30];
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v65 = (v37 - 1) & v37;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

char *specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v73 = *v4;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    v15 = *(v12 + 16);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v5 = v14;
      if (*(v12 + 24) < v18)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
        v19 = v73;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
        if ((v5 & 1) != (v20 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_6;
        }

LABEL_12:
        if (v5)
        {
          goto LABEL_13;
        }

        goto LABEL_31;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v12;
        goto LABEL_12;
      }
    }

    v70 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v29 = static _DictionaryStorage.copy(original:)();
    v19 = v29;
    if (*(v12 + 16))
    {
      result = (v29 + 64);
      v30 = (v12 + 64);
      v31 = ((1 << *(v19 + 32)) + 63) >> 6;
      if (v19 != v12 || result >= &v30[8 * v31])
      {
        result = memmove(result, v30, 8 * v31);
      }

      v32 = 0;
      *(v19 + 16) = *(v12 + 16);
      v33 = 1 << *(v12 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v12 + 64);
      v36 = (v33 + 63) >> 6;
      v71 = v36;
      if (v35)
      {
        do
        {
          v37 = __clz(__rbit64(v35));
          v72 = (v35 - 1) & v35;
LABEL_28:
          v40 = 16 * (v37 | (v32 << 6));
          v41 = (*(v12 + 48) + v40);
          v43 = *v41;
          v42 = v41[1];
          v44 = (*(v12 + 56) + v40);
          v45 = *v44;
          v46 = v44[1];
          v47 = (*(v19 + 48) + v40);
          *v47 = v43;
          v47[1] = v42;
          v48 = (*(v19 + 56) + v40);
          *v48 = v45;
          v48[1] = v46;

          v36 = v71;
          v35 = v72;
        }

        while (v72);
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
          goto LABEL_30;
        }

        v39 = *(v12 + 64 + 8 * v32);
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v72 = (v39 - 1) & v39;
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_30:

    v13 = v70;
    if (v5)
    {
LABEL_13:
      v27 = v13;

      v28 = (*(v19 + 56) + 16 * v27);
      *v28 = a1;
      v28[1] = a2;

      goto LABEL_32;
    }

LABEL_31:
    result = specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v19);
    goto LABEL_32;
  }

LABEL_6:
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    return result;
  }

  v25 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v6;
  if ((v25 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v49 = static _DictionaryStorage.copy(original:)();
    v19 = v49;
    if (!*(v26 + 16))
    {
LABEL_49:

      goto LABEL_9;
    }

    result = (v49 + 64);
    v50 = v26 + 64;
    v51 = ((1 << *(v19 + 32)) + 63) >> 6;
    if (v19 != v26 || result >= v50 + 8 * v51)
    {
      result = memmove(result, (v26 + 64), 8 * v51);
    }

    v52 = 0;
    *(v19 + 16) = *(v26 + 16);
    v53 = 1 << *(v26 + 32);
    v54 = *(v26 + 64);
    v55 = -1;
    if (v53 < 64)
    {
      v55 = ~(-1 << v53);
    }

    v56 = v55 & v54;
    v57 = (v53 + 63) >> 6;
    if ((v55 & v54) != 0)
    {
      do
      {
        v58 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
LABEL_47:
        v61 = 16 * (v58 | (v52 << 6));
        v62 = (*(v26 + 48) + v61);
        v64 = *v62;
        v63 = v62[1];
        v65 = (*(v26 + 56) + v61);
        v66 = *v65;
        v67 = v65[1];
        v68 = (*(v19 + 48) + v61);
        *v68 = v64;
        v68[1] = v63;
        v69 = (*(v19 + 56) + v61);
        *v69 = v66;
        v69[1] = v67;
      }

      while (v56);
    }

    v59 = v52;
    while (1)
    {
      v52 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v52 >= v57)
      {
        goto LABEL_49;
      }

      v60 = *(v50 + 8 * v52);
      ++v59;
      if (v60)
      {
        v58 = __clz(__rbit64(v60));
        v56 = (v60 - 1) & v60;
        goto LABEL_47;
      }
    }

LABEL_51:
    __break(1u);
    return result;
  }

  v19 = *v6;
LABEL_9:

  result = specialized _NativeDictionary._delete(at:)(v21, v19);
LABEL_32:
  *v6 = v19;
  return result;
}

uint64_t static CocoaError.error(_:userInfo:url:)(int64_t *a1, uint64_t a2, __int128 *a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *a3;
  v74 = *a3;
  if (a2)
  {
    v3 = a2;
    v71 = *a1;
    if (*(a2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v6 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC8];
    }

    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 64);
    v10 = (v7 + 63) >> 6;

    v12 = 0;
    if (!v9)
    {
LABEL_10:
      while (1)
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v4 >= v10)
        {

          goto LABEL_22;
        }

        v9 = *(v3 + 64 + 8 * v4);
        ++v12;
        if (v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    while (1)
    {
      v4 = v12;
LABEL_13:
      v13 = __clz(__rbit64(v9)) | (v4 << 6);
      outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v13, &v86);
      outlined init with copy of Any(*(v3 + 56) + 32 * v13, v88 + 8);
      v84[0] = v88[0];
      v84[1] = v88[1];
      v85 = v89;
      v83[0] = v86;
      v83[1] = v87;
      outlined init with copy of AnyHashable(v83, &v77);
      if (!swift_dynamicCast())
      {
        break;
      }

      v9 &= v9 - 1;
      outlined init with copy of Any(v84 + 8, v79);
      outlined destroy of TermOfAddress?(v83, &_ss11AnyHashableV3key_yp5valuetMd);
      v80 = v76;
      outlined init with take of Any(v79, v81);
      v14 = v80;
      outlined init with take of Any(v81, v82);
      outlined init with take of Any(v82, &v80);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v14, *(&v14 + 1));
      if (v15)
      {
        *(*(v6 + 48) + 16 * v11) = v14;
        v16 = v11;

        v17 = (*(v6 + 56) + 32 * v16);
        __swift_destroy_boxed_opaque_existential_1(v17);
        v11 = outlined init with take of Any(&v80, v17);
        v12 = v4;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (*(v6 + 16) >= *(v6 + 24))
        {
          goto LABEL_69;
        }

        *(v6 + 64 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v6 + 48) + 16 * v11) = v14;
        v11 = outlined init with take of Any(&v80, (*(v6 + 56) + 32 * v11));
        v18 = *(v6 + 16);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_70;
        }

        *(v6 + 16) = v20;
        v12 = v4;
        if (!v9)
        {
          goto LABEL_10;
        }
      }
    }

    outlined destroy of TermOfAddress?(v83, &_ss11AnyHashableV3key_yp5valuetMd);

    v6 = MEMORY[0x1E69E7CC8];
LABEL_22:
    v4 = v71;
    *&v5 = v74;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  if (!v5)
  {
    goto LABEL_66;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSURL");
  swift_unknownObjectRetain();
  v22 = @"NSURL";
  v23 = v22;
  if (!isTaggedPointer)
  {
    goto LABEL_29;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v22);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_41;
    case 0x16:
      v30 = [(__CFString *)v23 UTF8String];
      if (!v30)
      {
        __break(1u);
        goto LABEL_91;
      }

      v31 = String.init(utf8String:)(v30);
      if (v32)
      {
        goto LABEL_42;
      }

      __break(1u);
LABEL_41:
      LOWORD(v80) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v32)
      {
        [(__CFString *)v23 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v10 = *(&v83[0] + 1);
        v9 = *&v83[0];
        goto LABEL_58;
      }

LABEL_42:
      v9 = v31;
      v10 = v32;

      goto LABEL_58;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v10 = v25;

      goto LABEL_58;
  }

LABEL_29:
  LOBYTE(v83[0]) = 0;
  *&v86 = 0;
  LOBYTE(v80) = 0;
  LOBYTE(v78) = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v27 = v23;
    v28 = String.init(_nativeStorage:)();
    if (v29)
    {
      v9 = v28;
      v10 = v29;

      goto LABEL_58;
    }

    *&v86 = [(__CFString *)v27 length];
    if (!v86)
    {

      v9 = 0;
      v10 = 0xE000000000000000;
      goto LABEL_58;
    }

    goto LABEL_48;
  }

  if (!v86)
  {

    v9 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_58;
  }

  if (v78 != 1)
  {
    if (v80)
    {
      if (LOBYTE(v83[0]) != 1)
      {
        IsCF = [(__CFString *)v23 lengthOfBytesUsingEncoding:4];
      }

      MEMORY[0x1EEE9AC00](IsCF);
      v35 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v10 = v36;
      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v9 = v35;

        goto LABEL_58;
      }
    }

LABEL_48:
    v9 = String.init(_cocoaString:)();
    v10 = v33;
    goto LABEL_58;
  }

  if (v83[0])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v9 = String.init<A>(_immortalCocoaString:count:encoding:)();
  v10 = v34;
LABEL_58:
  *(&v87 + 1) = &type metadata for URL;
  v86 = v74;
  outlined init with take of Any(&v86, v83);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v6;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  v40 = *(v6 + 16);
  v41 = (v39 & 1) == 0;
  v19 = __OFADD__(v40, v41);
  v42 = v40 + v41;
  if (v19)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  LOBYTE(v3) = v39;
  if (*(v6 + 24) >= v42)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = v6;
      if (v39)
      {
        goto LABEL_62;
      }

      goto LABEL_65;
    }

LABEL_72:
    v72 = v4;
    v67 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v51 = static _DictionaryStorage.copy(original:)();
    v43 = v51;
    if (*(v6 + 16))
    {
      v52 = (v51 + 64);
      v53 = (v6 + 64);
      v54 = ((1 << *(v43 + 32)) + 63) >> 6;
      if (v43 != v6 || v52 >= &v53[8 * v54])
      {
        memmove(v52, v53, 8 * v54);
      }

      v55 = 0;
      *(v43 + 16) = *(v6 + 16);
      v56 = 1 << *(v6 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v6 + 64);
      v59 = (v56 + 63) >> 6;
      v68 = v59;
      if (v58)
      {
        do
        {
          v60 = __clz(__rbit64(v58));
          v75 = (v58 - 1) & v58;
LABEL_85:
          v63 = v60 | (v55 << 6);
          v69 = 16 * v63;
          v64 = (*(v6 + 48) + 16 * v63);
          v65 = v64[1];
          v70 = *v64;
          v73 = 32 * v63;
          outlined init with copy of Any(*(v6 + 56) + 32 * v63, &v80);
          v66 = (*(v43 + 48) + v69);
          *v66 = v70;
          v66[1] = v65;
          outlined init with take of Any(&v80, (*(v43 + 56) + v73));

          v59 = v68;
          v58 = v75;
        }

        while (v75);
      }

      v61 = v55;
      while (1)
      {
        v55 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
        }

        if (v55 >= v59)
        {
          break;
        }

        v62 = *(v6 + 64 + 8 * v55);
        ++v61;
        if (v62)
        {
          v60 = __clz(__rbit64(v62));
          v75 = (v62 - 1) & v62;
          goto LABEL_85;
        }
      }
    }

    v11 = v67;
    v4 = v72;
    if (v3)
    {
      goto LABEL_62;
    }

    goto LABEL_65;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
  v43 = v78;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  if ((v3 & 1) == (v44 & 1))
  {
    if (v3)
    {
LABEL_62:
      v45 = v11;

      v46 = (*(v43 + 56) + 32 * v45);
      __swift_destroy_boxed_opaque_existential_1(v46);
      outlined init with take of Any(v83, v46);
LABEL_66:
      v47 = objc_allocWithZone(NSError);
      v48 = @"NSCocoaErrorDomain";
      v49 = [v47 initWithDomain:v48 code:v4 userInfo:_NativeDictionary.bridged()()];

      swift_unknownObjectRelease();
      return v49;
    }

LABEL_65:
    specialized _NativeDictionary._insert(at:key:value:)(v11, v9, v10, v83, v43);
    goto LABEL_66;
  }

LABEL_91:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void __swiftcall CocoaError.init(_nsError:)(Foundation::CocoaError *__return_ptr retstr, NSError *_nsError)
{
  v4 = [(NSError *)_nsError domain];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v35) = 0;
    if (__CFStringIsCF())
    {

      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_22;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_22;
    }

    if ([(NSString *)v13 length])
    {
      v10 = String.init(_cocoaString:)();
      v12 = v19;
      goto LABEL_21;
    }

LABEL_20:
    v10 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v12 = v11;

      goto LABEL_22;
    }

    goto LABEL_7;
  }

  v16 = [(NSString *)v8 UTF8String];
  if (!v16)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v17 = String.init(utf8String:)(v16);
  if (!v18)
  {
    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [(NSString *)v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v35;
      v12 = v36;
      goto LABEL_21;
    }
  }

  v10 = v17;
  v12 = v18;

LABEL_21:
LABEL_22:
  v20 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v21 = @"NSCocoaErrorDomain";
  v22 = v21;
  if (!v20)
  {
    goto LABEL_27;
  }

  v23 = _objc_getTaggedPointerTag(v21);
  if (!v23)
  {
    goto LABEL_34;
  }

  if (v23 != 22)
  {
    if (v23 == 2)
    {
      MEMORY[0x1EEE9AC00](v23);
      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;

      goto LABEL_40;
    }

LABEL_27:
    if (__CFStringIsCF())
    {
      v24 = 0;

      v26 = 0xE000000000000000;
    }

    else
    {
      v27 = v22;
      v28 = String.init(_nativeStorage:)();
      if (v29)
      {
        v24 = v28;
        v26 = v29;
      }

      else if ([(__CFString *)v27 length])
      {
        v24 = String.init(_cocoaString:)();
        v26 = v33;
      }

      else
      {

        v24 = 0;
        v26 = 0xE000000000000000;
      }
    }

    goto LABEL_40;
  }

  v30 = [(__CFString *)v22 UTF8String];
  if (!v30)
  {
    __break(1u);
    goto LABEL_47;
  }

  v31 = String.init(utf8String:)(v30);
  if (v32)
  {
LABEL_35:
    v24 = v31;
    v26 = v32;

    goto LABEL_40;
  }

  __break(1u);
LABEL_34:
  _CFIndirectTaggedPointerStringGetContents();
  v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v32)
  {
    goto LABEL_35;
  }

  [(__CFString *)v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v24 = v35;
  v26 = v36;
LABEL_40:
  if (v10 == v24 && v12 == v26)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      __break(1u);
    }
  }

  retstr->_nsError.super.isa = _nsError;
}

id static CocoaError.errorDomain.getter()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v1 = @"NSCocoaErrorDomain";
  v2 = v1;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v1);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v4;
        }

        goto LABEL_6;
      }

      result = [(__CFString *)v2 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        if (v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      return v13;
    }

LABEL_13:
    v11 = result;

    return v11;
  }

LABEL_6:
  if (__CFStringIsCF())
  {

    return 0;
  }

  v6 = v2;
  v7 = String.init(_nativeStorage:)();
  if (v8)
  {
    v9 = v7;

    return v9;
  }

  if (![(__CFString *)v6 length])
  {

    return 0;
  }

  return String.init(_cocoaString:)();
}

uint64_t protocol witness for _BridgedStoredNSError.init(_nsError:) in conformance CocoaError@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v7 == v8)
  {
    goto LABEL_7;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_7:
  }

  *a2 = a1;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CocoaError()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static _ErrorCodeProtocol.~= infix(_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v23[1] = a1;
  v24 = v5;
  MEMORY[0x1EEE9AC00](a1);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v25 = a2;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v18 = swift_dynamicCast();
  v19 = *(v13 + 56);
  if (v18)
  {
    v19(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    _BridgedStoredNSError.code.getter(AssociatedTypeWitness, AssociatedConformanceWitness, v7);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v24 + 8))(v7, a3);
    (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v19(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v9);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t CocoaError.filePath.getter()
{
  v1 = *v0;
  v2 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_22:
    v4 = MEMORY[0x1E69E7CC8];
    if (*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  swift_unknownObjectRetain();
  v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v3)
  {
    v4 = v3;
    goto LABEL_19;
  }

  v5 = [v2 count];
  if (!v5)
  {

    goto LABEL_22;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v7, v8, v2, v6);
  if (result < 0 || v6 < result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  *(v4 + 16) = result;
  if (result)
  {
    v10 = result - 1;
    v11 = v4 + 64;
    do
    {
      while (1)
      {
        if ((*(v11 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
        {
          goto LABEL_10;
        }

        v16 = (*(v4 + 48) + 16 * v10);
        v17 = *v16;
        v18 = v16[1];

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = *(v4 + 48) + 16 * v10;

        outlined destroy of String(v22);
        result = __swift_destroy_boxed_opaque_existential_1(*(v4 + 56) + 32 * v10);
        v23 = *(v4 + 16);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v24)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        *(v4 + 16) = v25;

LABEL_10:
        if (--v10 < 0)
        {
          goto LABEL_18;
        }
      }

      *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (v10 < v19)
      {
        *(*(v4 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v10);
        v12 = *(v4 + 56);
        v13 = (v12 + 32 * v10);
        v14 = v13[1];
        v15 = (v12 + 32 * v19);
        *v15 = *v13;
        v15[1] = v14;
        goto LABEL_10;
      }

      if (v19 == v10)
      {
        goto LABEL_10;
      }

      v26 = *(v4 + 48);
      v27 = (v26 + 16 * v19);
      v28 = (v26 + 16 * v10);
      v29 = *v27;
      v30 = v27[1];
      v31 = v28[1];
      *v27 = *v28;
      v27[1] = v31;
      *v28 = v29;
      v28[1] = v30;
      v32 = *(v4 + 56);
      v33 = (v32 + 32 * v19);
      v34 = (v32 + 32 * v10);
      outlined init with take of Any(v33, &v63);
      outlined init with take of Any(v34, v33);
      outlined init with take of Any(&v63, v34);
    }

    while ((v10 & 0x8000000000000000) == 0);
  }

LABEL_18:

LABEL_19:

  if (*(v4 + 16))
  {
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v35 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_24;
  }

LABEL_23:
  v35 = MEMORY[0x1E69E7CC8];
LABEL_24:
  v36 = 1 << *(v4 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v4 + 64);
  v39 = (v36 + 63) >> 6;
  v40 = v35 + 64;

  v41 = 0;
  while (v38)
  {
LABEL_35:
    v45 = __clz(__rbit64(v38)) | (v41 << 6);
    v46 = (*(v4 + 48) + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    outlined init with copy of Any(*(v4 + 56) + 32 * v45, v70);
    *&v69 = v48;
    *(&v69 + 1) = v47;
    v67[2] = v69;
    v68[0] = v70[0];
    v68[1] = v70[1];
    v67[0] = v69;

    swift_dynamicCast();
    outlined init with take of Any(v68, v62);
    v63 = v59;
    v64 = v60;
    v65 = v61;
    outlined init with take of Any(v62, v66);
    v59 = v63;
    v60 = v64;
    v61 = v65;
    outlined init with take of Any(v66, v67);
    result = AnyHashable._rawHashValue(seed:)(*(v35 + 40));
    v49 = -1 << *(v35 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v40 + 8 * (v50 >> 6))) == 0)
    {
      v52 = 0;
      v53 = (63 - v49) >> 6;
      while (++v51 != v53 || (v52 & 1) == 0)
      {
        v54 = v51 == v53;
        if (v51 == v53)
        {
          v51 = 0;
        }

        v52 |= v54;
        v55 = *(v40 + 8 * v51);
        if (v55 != -1)
        {
          v42 = __clz(__rbit64(~v55)) + (v51 << 6);
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v42 = __clz(__rbit64((-1 << v50) & ~*(v40 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v38 &= v38 - 1;
    *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v43 = *(v35 + 48) + 40 * v42;
    *v43 = v59;
    *(v43 + 16) = v60;
    *(v43 + 32) = v61;
    result = outlined init with take of Any(v67, (*(v35 + 56) + 32 * v42));
    ++*(v35 + 16);
  }

  while (1)
  {
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v44 >= v39)
    {
      break;
    }

    v38 = *(v4 + 64 + 8 * v44);
    ++v41;
    if (v38)
    {
      v41 = v44;
      goto LABEL_35;
    }
  }

  *&v59 = @"NSFilePath";
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
  lazy protocol witness table accessor for type NSString and conformance NSObject();
  v56 = @"NSFilePath";
  AnyHashable.init<A>(_:)();
  if (*(v35 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(&v63), (v58 & 1) != 0))
  {
    outlined init with copy of Any(*(v35 + 56) + 32 * v57, &v59);
    outlined destroy of AnyHashable(&v63);

    if (swift_dynamicCast())
    {
      return v69;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(&v63);
    return 0;
  }
}

void CocoaError.stringEncoding.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  v5 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!v5)
  {
    v7 = [v4 count];
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v6 = static _DictionaryStorage.allocate(capacity:)();
      v9 = *(v6 + 48);
      v10 = *(v6 + 56);

      v11 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v9, v10, v4, v8);
      if (v11 < 0 || v8 < v11)
      {
        goto LABEL_55;
      }

      *(v6 + 16) = v11;
      if (!v11)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = v11 - 1;
      v13 = v6 + 64;
      while (1)
      {
        while (1)
        {
          if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
          {
            goto LABEL_10;
          }

          v18 = (*(v6 + 48) + 16 * v12);
          v19 = *v18;
          v20 = v18[1];

          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
          v23 = v22;

          if ((v23 & 1) == 0)
          {
            break;
          }

          v24 = *(v6 + 48) + 16 * v12;

          outlined destroy of String(v24);
          __swift_destroy_boxed_opaque_existential_1(*(v6 + 56) + 32 * v12);
          v25 = *(v6 + 16);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v26)
          {
            goto LABEL_54;
          }

          *(v6 + 16) = v27;

LABEL_10:
          if (--v12 < 0)
          {
            goto LABEL_18;
          }
        }

        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (v12 < v21)
        {
          *(*(v6 + 48) + 16 * v21) = *(*(v6 + 48) + 16 * v12);
          v14 = *(v6 + 56);
          v15 = (v14 + 32 * v12);
          v16 = v15[1];
          v17 = (v14 + 32 * v21);
          *v17 = *v15;
          v17[1] = v16;
          goto LABEL_10;
        }

        if (v21 == v12)
        {
          goto LABEL_10;
        }

        v28 = *(v6 + 48);
        v29 = (v28 + 16 * v21);
        v30 = (v28 + 16 * v12);
        v31 = *v29;
        v32 = v29[1];
        v33 = v30[1];
        *v29 = *v30;
        v29[1] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = *(v6 + 56);
        v35 = (v34 + 32 * v21);
        v36 = (v34 + 32 * v12);
        outlined init with take of Any(v35, &v69);
        outlined init with take of Any(v36, v35);
        outlined init with take of Any(&v69, v36);
        if (v12 < 0)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v6 = MEMORY[0x1E69E7CC8];
    goto LABEL_22;
  }

  v6 = v5;
LABEL_19:

LABEL_22:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v37 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC8];
  }

  v38 = 1 << *(v6 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(v6 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = v37 + 64;

  v43 = 0;
  while (v40)
  {
LABEL_36:
    v47 = __clz(__rbit64(v40)) | (v43 << 6);
    v48 = (*(v6 + 48) + 16 * v47);
    v50 = *v48;
    v49 = v48[1];
    outlined init with copy of Any(*(v6 + 56) + 32 * v47, v76);
    *&v75 = v50;
    *(&v75 + 1) = v49;
    v73[2] = v75;
    v74[0] = v76[0];
    v74[1] = v76[1];
    v73[0] = v75;

    swift_dynamicCast();
    outlined init with take of Any(v74, v68);
    v69 = *v65;
    v70 = v66;
    v71 = v67;
    outlined init with take of Any(v68, v72);
    *v65 = v69;
    v66 = v70;
    v67 = v71;
    outlined init with take of Any(v72, v73);
    v51 = AnyHashable._rawHashValue(seed:)(*(v37 + 40));
    v52 = -1 << *(v37 + 32);
    v53 = v51 & ~v52;
    v54 = v53 >> 6;
    if (((-1 << v53) & ~*(v42 + 8 * (v53 >> 6))) == 0)
    {
      v55 = 0;
      v56 = (63 - v52) >> 6;
      while (++v54 != v56 || (v55 & 1) == 0)
      {
        v57 = v54 == v56;
        if (v54 == v56)
        {
          v54 = 0;
        }

        v55 |= v57;
        v58 = *(v42 + 8 * v54);
        if (v58 != -1)
        {
          v44 = __clz(__rbit64(~v58)) + (v54 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_53;
    }

    v44 = __clz(__rbit64((-1 << v53) & ~*(v42 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    v40 &= v40 - 1;
    *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v45 = *(v37 + 48) + 40 * v44;
    *v45 = *v65;
    *(v45 + 16) = v66;
    *(v45 + 32) = v67;
    outlined init with take of Any(v73, (*(v37 + 56) + 32 * v44));
    ++*(v37 + 16);
  }

  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v46 >= v41)
    {

      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
      lazy protocol witness table accessor for type NSString and conformance NSObject();
      v59 = @"NSStringEncoding";
      AnyHashable.init<A>(_:)();
      if (*(v37 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(&v69), (v61 & 1) != 0))
      {
        outlined init with copy of Any(*(v37 + 56) + 32 * v60, v77);
        outlined destroy of AnyHashable(&v69);

        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
        v62 = a1;
        if (swift_dynamicCast())
        {
          v63 = [@"NSStringEncoding" unsignedIntegerValue];

          v64 = 0;
LABEL_51:
          *v62 = v63;
          *(v62 + 8) = v64;
          return;
        }
      }

      else
      {

        outlined destroy of AnyHashable(&v69);
        v62 = a1;
      }

      v63 = 0;
      v64 = 1;
      goto LABEL_51;
    }

    v40 = *(v6 + 64 + 8 * v46);
    ++v43;
    if (v40)
    {
      v43 = v46;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t CocoaError.underlying.getter()
{
  v1 = *v0;
  v2 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_22:
    v4 = MEMORY[0x1E69E7CC8];
    if (*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  swift_unknownObjectRetain();
  v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v3)
  {
    v4 = v3;
    goto LABEL_19;
  }

  v5 = [v2 count];
  if (!v5)
  {

    goto LABEL_22;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v7, v8, v2, v6);
  if (result < 0 || v6 < result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  *(v4 + 16) = result;
  if (result)
  {
    v10 = result - 1;
    v11 = v4 + 64;
    do
    {
      while (1)
      {
        if ((*(v11 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
        {
          goto LABEL_10;
        }

        v16 = (*(v4 + 48) + 16 * v10);
        v17 = *v16;
        v18 = v16[1];

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = *(v4 + 48) + 16 * v10;

        outlined destroy of String(v22);
        result = __swift_destroy_boxed_opaque_existential_1(*(v4 + 56) + 32 * v10);
        v23 = *(v4 + 16);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v24)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        *(v4 + 16) = v25;

LABEL_10:
        if (--v10 < 0)
        {
          goto LABEL_18;
        }
      }

      *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (v10 < v19)
      {
        *(*(v4 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v10);
        v12 = *(v4 + 56);
        v13 = (v12 + 32 * v10);
        v14 = v13[1];
        v15 = (v12 + 32 * v19);
        *v15 = *v13;
        v15[1] = v14;
        goto LABEL_10;
      }

      if (v19 == v10)
      {
        goto LABEL_10;
      }

      v26 = *(v4 + 48);
      v27 = (v26 + 16 * v19);
      v28 = (v26 + 16 * v10);
      v29 = *v27;
      v30 = v27[1];
      v31 = v28[1];
      *v27 = *v28;
      v27[1] = v31;
      *v28 = v29;
      v28[1] = v30;
      v32 = *(v4 + 56);
      v33 = (v32 + 32 * v19);
      v34 = (v32 + 32 * v10);
      outlined init with take of Any(v33, &v63);
      outlined init with take of Any(v34, v33);
      outlined init with take of Any(&v63, v34);
    }

    while ((v10 & 0x8000000000000000) == 0);
  }

LABEL_18:

LABEL_19:

  if (*(v4 + 16))
  {
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v35 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_24;
  }

LABEL_23:
  v35 = MEMORY[0x1E69E7CC8];
LABEL_24:
  v36 = 1 << *(v4 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v4 + 64);
  v39 = (v36 + 63) >> 6;
  v40 = v35 + 64;

  v41 = 0;
  while (v38)
  {
LABEL_35:
    v45 = __clz(__rbit64(v38)) | (v41 << 6);
    v46 = (*(v4 + 48) + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    outlined init with copy of Any(*(v4 + 56) + 32 * v45, v70);
    *&v69 = v48;
    *(&v69 + 1) = v47;
    v67[2] = v69;
    v68[0] = v70[0];
    v68[1] = v70[1];
    v67[0] = v69;

    swift_dynamicCast();
    outlined init with take of Any(v68, v62);
    v63 = v59;
    v64 = v60;
    v65 = v61;
    outlined init with take of Any(v62, v66);
    v59 = v63;
    v60 = v64;
    v61 = v65;
    outlined init with take of Any(v66, v67);
    result = AnyHashable._rawHashValue(seed:)(*(v35 + 40));
    v49 = -1 << *(v35 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v40 + 8 * (v50 >> 6))) == 0)
    {
      v52 = 0;
      v53 = (63 - v49) >> 6;
      while (++v51 != v53 || (v52 & 1) == 0)
      {
        v54 = v51 == v53;
        if (v51 == v53)
        {
          v51 = 0;
        }

        v52 |= v54;
        v55 = *(v40 + 8 * v51);
        if (v55 != -1)
        {
          v42 = __clz(__rbit64(~v55)) + (v51 << 6);
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v42 = __clz(__rbit64((-1 << v50) & ~*(v40 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v38 &= v38 - 1;
    *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v43 = *(v35 + 48) + 40 * v42;
    *v43 = v59;
    *(v43 + 16) = v60;
    *(v43 + 32) = v61;
    result = outlined init with take of Any(v67, (*(v35 + 56) + 32 * v42));
    ++*(v35 + 16);
  }

  while (1)
  {
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v44 >= v39)
    {
      break;
    }

    v38 = *(v4 + 64 + 8 * v44);
    ++v41;
    if (v38)
    {
      v41 = v44;
      goto LABEL_35;
    }
  }

  *&v59 = @"NSUnderlyingError";
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
  lazy protocol witness table accessor for type NSString and conformance NSObject();
  v56 = @"NSUnderlyingError";
  AnyHashable.init<A>(_:)();
  if (*(v35 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(&v63), (v58 & 1) != 0))
  {
    outlined init with copy of Any(*(v35 + 56) + 32 * v57, &v59);
    outlined destroy of AnyHashable(&v63);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (swift_dynamicCast())
    {
      return v69;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(&v63);
    return 0;
  }
}

char *CocoaError.underlyingErrors.getter()
{
  v1 = *v0;
  v177 = MEMORY[0x1E69E7CC0];
  v160 = v1;
  v2 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_22:
    v4 = MEMORY[0x1E69E7CC8];
    v22 = *(MEMORY[0x1E69E7CC8] + 16);
    if (v22)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  swift_unknownObjectRetain();
  v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v3)
  {
    v4 = v3;
    goto LABEL_19;
  }

  v5 = [v2 count];
  if (!v5)
  {

    goto LABEL_22;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v7, v8, v2, v6);
  if ((result & 0x8000000000000000) == 0 && v6 >= result)
  {
    *(v4 + 16) = result;
    if (!result)
    {
LABEL_18:

LABEL_19:

      v22 = *(v4 + 16);
      if (v22)
      {
LABEL_20:
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
        v36 = static _DictionaryStorage.allocate(capacity:)();
LABEL_24:
        v37 = 1 << *(v4 + 32);
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        else
        {
          v38 = -1;
        }

        v39 = v38 & *(v4 + 64);
        v40 = (v37 + 63) >> 6;
        v41 = v36 + 64;

        v2 = 0;
        while (1)
        {
          if (!v39)
          {
            do
            {
              v26 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                __break(1u);
LABEL_150:
                __break(1u);
                goto LABEL_151;
              }

              if (v26 >= v40)
              {

                *&v161 = @"NSUnderlyingError";
                type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
                lazy protocol witness table accessor for type NSString and conformance NSObject();
                v55 = @"NSUnderlyingError";
                AnyHashable.init<A>(_:)();
                if (!*(v36 + 16) || (v56 = specialized __RawDictionaryStorage.find<A>(_:)(&v165), (v57 & 1) == 0))
                {

                  outlined destroy of AnyHashable(&v165);
                  goto LABEL_50;
                }

                outlined init with copy of Any(*(v36 + 56) + 32 * v56, v176);
                outlined destroy of AnyHashable(&v165);

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_50;
                }

                v4 = v161;
                v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
                v2 = v23[2];
                v26 = v23[3];
                v22 = (v2 + 1);
                if (v2 >= v26 >> 1)
                {
                  goto LABEL_158;
                }

                goto LABEL_48;
              }

              v39 = *(v4 + 64 + 8 * v26);
              ++v2;
            }

            while (!v39);
            v2 = v26;
          }

          v44 = __clz(__rbit64(v39)) | (v2 << 6);
          v45 = (*(v4 + 48) + 16 * v44);
          v47 = *v45;
          v46 = v45[1];
          outlined init with copy of Any(*(v4 + 56) + 32 * v44, &v174);
          *&v173 = v47;
          *(&v173 + 1) = v46;
          v170 = v173;
          v171 = v174;
          v172 = v175;
          v169[0] = v173;

          swift_dynamicCast();
          outlined init with take of Any(&v171, v164);
          v165 = v161;
          v166 = v162;
          v167 = v163;
          outlined init with take of Any(v164, v168);
          v161 = v165;
          v162 = v166;
          v163 = v167;
          outlined init with take of Any(v168, v169);
          v22 = &v161;
          v48 = AnyHashable._rawHashValue(seed:)(*(v36 + 40));
          v49 = -1 << *(v36 + 32);
          v50 = v48 & ~v49;
          v26 = v50 >> 6;
          if (((-1 << v50) & ~*(v41 + 8 * (v50 >> 6))) != 0)
          {
            v42 = __clz(__rbit64((-1 << v50) & ~*(v41 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v51 = 0;
            v52 = (63 - v49) >> 6;
            do
            {
              if (++v26 == v52 && (v51 & 1) != 0)
              {
                while (1)
                {
                  __break(1u);
LABEL_153:
                  __break(1u);
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
                  while (2)
                  {
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v22, 1, v23);
LABEL_48:
                    v23[2] = v22;
                    v23[v2 + 4] = v4;
                    v177 = v23;
LABEL_50:
                    v58 = v160;
                    v59 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
                    swift_unknownObjectRelease();
                    if (v59)
                    {
                      swift_unknownObjectRetain();
                      v60 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
                      if (v60)
                      {
                        v61 = v60;
                        goto LABEL_68;
                      }

                      v62 = [v59 count];
                      if (v62)
                      {
                        v63 = v62;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
                        v61 = static _DictionaryStorage.allocate(capacity:)();
                        v64 = *(v61 + 48);
                        v65 = *(v61 + 56);

                        result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v64, v65, v59, v63);
                        if ((result & 0x8000000000000000) != 0 || v63 < result)
                        {
                          goto LABEL_160;
                        }

                        *(v61 + 16) = result;
                        if (!result)
                        {
LABEL_67:

LABEL_68:

                          v22 = *(v61 + 16);
                          if (!v22)
                          {
                            goto LABEL_72;
                          }

                          goto LABEL_69;
                        }

                        v4 = (result - 1);
                        v2 = v61 + 64;
                        while (1)
                        {
                          if ((*(v2 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4))
                          {
                            goto LABEL_59;
                          }

                          v70 = (*(v61 + 48) + 16 * v4);
                          v71 = *v70;
                          v72 = v70[1];

                          v73 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v72);
                          v75 = v74;

                          if (v75)
                          {
                            break;
                          }

                          *(v2 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
                          if (v4 < v73)
                          {
                            *(*(v61 + 48) + 16 * v73) = *(*(v61 + 48) + 16 * v4);
                            v66 = *(v61 + 56);
                            v67 = (v66 + 32 * v73);
                            v68 = (v66 + 32 * v4);
                            v69 = v68[1];
                            *v67 = *v68;
                            v67[1] = v69;
LABEL_59:
                            if ((--v4 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_67;
                            }

                            continue;
                          }

                          if (v73 == v4)
                          {
                            goto LABEL_59;
                          }

                          v77 = *(v61 + 48);
                          v78 = (v77 + 16 * v73);
                          v79 = (v77 + 16 * v4);
                          v80 = *v78;
                          v81 = v78[1];
                          v82 = v79[1];
                          *v78 = *v79;
                          v78[1] = v82;
                          *v79 = v80;
                          v79[1] = v81;
                          v83 = *(v61 + 56);
                          v84 = (v83 + 32 * v73);
                          v85 = (v83 + 32 * v4);
                          outlined init with take of Any(v84, &v165);
                          outlined init with take of Any(v85, v84);
                          outlined init with take of Any(&v165, v85);
                          if ((v4 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_67;
                          }
                        }

                        v22 = (*(v61 + 48) + 16 * v4);

                        outlined destroy of String(v22);
                        __swift_destroy_boxed_opaque_existential_1(*(v61 + 56) + 32 * v4);
                        v76 = *(v61 + 16);
                        v25 = __OFSUB__(v76, 1);
                        v26 = v76 - 1;
                        if (v25)
                        {
                          continue;
                        }

                        *(v61 + 16) = v26;

                        goto LABEL_59;
                      }
                    }

                    break;
                  }

                  v61 = MEMORY[0x1E69E7CC8];
                  v22 = *(MEMORY[0x1E69E7CC8] + 16);
                  if (!v22)
                  {
LABEL_72:
                    v86 = MEMORY[0x1E69E7CC8];
                    goto LABEL_73;
                  }

LABEL_69:
                  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
                  v86 = static _DictionaryStorage.allocate(capacity:)();
LABEL_73:
                  v87 = 1 << *(v61 + 32);
                  v2 = -1;
                  if (v87 < 64)
                  {
                    v88 = ~(-1 << v87);
                  }

                  else
                  {
                    v88 = -1;
                  }

                  v4 = v88 & *(v61 + 64);
                  v89 = (v87 + 63) >> 6;
                  v90 = v86 + 64;

                  v91 = 0;
LABEL_79:
                  if (v4)
                  {
                    goto LABEL_84;
                  }

                  while (1)
                  {
                    v26 = v91 + 1;
                    if (__OFADD__(v91, 1))
                    {
                      goto LABEL_150;
                    }

                    if (v26 >= v89)
                    {
                      break;
                    }

                    v4 = *(v61 + 64 + 8 * v26);
                    ++v91;
                    if (v4)
                    {
                      v91 = v26;
LABEL_84:
                      v94 = __clz(__rbit64(v4)) | (v91 << 6);
                      v95 = (*(v61 + 48) + 16 * v94);
                      v97 = *v95;
                      v96 = v95[1];
                      outlined init with copy of Any(*(v61 + 56) + 32 * v94, &v174);
                      *&v173 = v97;
                      *(&v173 + 1) = v96;
                      v170 = v173;
                      v171 = v174;
                      v172 = v175;
                      v169[0] = v173;

                      swift_dynamicCast();
                      outlined init with take of Any(&v171, v164);
                      v165 = v161;
                      v166 = v162;
                      v167 = v163;
                      outlined init with take of Any(v164, v168);
                      v161 = v165;
                      v162 = v166;
                      v163 = v167;
                      outlined init with take of Any(v168, v169);
                      v22 = &v161;
                      v98 = AnyHashable._rawHashValue(seed:)(*(v86 + 40));
                      v99 = -1 << *(v86 + 32);
                      v100 = v98 & ~v99;
                      v26 = v100 >> 6;
                      if (((-1 << v100) & ~*(v90 + 8 * (v100 >> 6))) == 0)
                      {
                        v101 = 0;
                        v102 = (63 - v99) >> 6;
                        while (++v26 != v102 || (v101 & 1) == 0)
                        {
                          v103 = v26 == v102;
                          if (v26 == v102)
                          {
                            v26 = 0;
                          }

                          v101 |= v103;
                          v104 = *(v90 + 8 * v26);
                          if (v104 != -1)
                          {
                            v92 = __clz(__rbit64(~v104)) + (v26 << 6);
                            goto LABEL_78;
                          }
                        }

                        goto LABEL_153;
                      }

                      v92 = __clz(__rbit64((-1 << v100) & ~*(v90 + 8 * (v100 >> 6)))) | v100 & 0x7FFFFFFFFFFFFFC0;
LABEL_78:
                      v4 &= v4 - 1;
                      *(v90 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
                      v93 = *(v86 + 48) + 40 * v92;
                      *v93 = v161;
                      *(v93 + 16) = v162;
                      *(v93 + 32) = v163;
                      outlined init with take of Any(v169, (*(v86 + 56) + 32 * v92));
                      ++*(v86 + 16);
                      goto LABEL_79;
                    }
                  }

                  result = [objc_allocWithZone(NSString) initWithBytesNoCopy:"NSMultipleUnderlyingErrorsKey" length:29 encoding:1 freeWhenDone:0];
                  if (!result)
                  {
                    goto LABEL_162;
                  }

                  v105 = result;
                  v106 = [objc_allocWithZone(NSString) initWithString_];

                  *&v161 = v106;
                  AnyHashable.init<A>(_:)();
                  if (*(v86 + 16) && (v107 = specialized __RawDictionaryStorage.find<A>(_:)(&v165), (v108 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v86 + 56) + 32 * v107, v176);
                    outlined destroy of AnyHashable(&v165);

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Error_pGMd);
                    if (swift_dynamicCast())
                    {
                      specialized Array.append<A>(contentsOf:)(v161);
                    }
                  }

                  else
                  {

                    outlined destroy of AnyHashable(&v165);
                  }

                  v109 = v160;
                  v110 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
                  swift_unknownObjectRelease();
                  if (v110)
                  {
                    swift_unknownObjectRetain();
                    v111 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
                    if (v111)
                    {
                      v112 = v111;
                      goto LABEL_117;
                    }

                    v113 = [v110 count];
                    if (v113)
                    {
                      v114 = v113;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
                      v112 = static _DictionaryStorage.allocate(capacity:)();
                      v115 = *(v112 + 48);
                      v116 = *(v112 + 56);

                      result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v115, v116, v110, v114);
                      if ((result & 0x8000000000000000) != 0 || v114 < result)
                      {
                        goto LABEL_161;
                      }

                      *(v112 + 16) = result;
                      if (!result)
                      {
LABEL_116:

LABEL_117:

                        v22 = *(v112 + 16);
                        if (v22)
                        {
                          goto LABEL_118;
                        }

                        goto LABEL_121;
                      }

                      v4 = (result - 1);
                      v2 = v112 + 64;
                      while (1)
                      {
                        if ((*(v2 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4))
                        {
                          goto LABEL_108;
                        }

                        v121 = (*(v112 + 48) + 16 * v4);
                        v122 = *v121;
                        v123 = v121[1];

                        v124 = specialized __RawDictionaryStorage.find<A>(_:)(v122, v123);
                        v126 = v125;

                        if (v126)
                        {
                          break;
                        }

                        *(v2 + ((v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v124;
                        if (v4 < v124)
                        {
                          *(*(v112 + 48) + 16 * v124) = *(*(v112 + 48) + 16 * v4);
                          v117 = *(v112 + 56);
                          v118 = (v117 + 32 * v124);
                          v119 = (v117 + 32 * v4);
                          v120 = v119[1];
                          *v118 = *v119;
                          v118[1] = v120;
LABEL_108:
                          if ((--v4 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_116;
                          }

                          continue;
                        }

                        if (v124 == v4)
                        {
                          goto LABEL_108;
                        }

                        v128 = *(v112 + 48);
                        v129 = (v128 + 16 * v124);
                        v130 = (v128 + 16 * v4);
                        v131 = *v129;
                        v132 = v129[1];
                        v133 = v130[1];
                        *v129 = *v130;
                        v129[1] = v133;
                        *v130 = v131;
                        v130[1] = v132;
                        v134 = *(v112 + 56);
                        v135 = (v134 + 32 * v124);
                        v136 = (v134 + 32 * v4);
                        outlined init with take of Any(v135, &v165);
                        outlined init with take of Any(v136, v135);
                        outlined init with take of Any(&v165, v136);
                        if ((v4 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_116;
                        }
                      }

                      v22 = (*(v112 + 48) + 16 * v4);

                      outlined destroy of String(v22);
                      __swift_destroy_boxed_opaque_existential_1(*(v112 + 56) + 32 * v4);
                      v127 = *(v112 + 16);
                      v25 = __OFSUB__(v127, 1);
                      v26 = v127 - 1;
                      if (v25)
                      {
                        goto LABEL_157;
                      }

                      *(v112 + 16) = v26;

                      goto LABEL_108;
                    }
                  }

                  v112 = MEMORY[0x1E69E7CC8];
                  v22 = *(MEMORY[0x1E69E7CC8] + 16);
                  if (v22)
                  {
LABEL_118:
                    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
                    v137 = static _DictionaryStorage.allocate(capacity:)();
                    goto LABEL_122;
                  }

LABEL_121:
                  v137 = MEMORY[0x1E69E7CC8];
LABEL_122:
                  v138 = 1 << *(v112 + 32);
                  v2 = -1;
                  if (v138 < 64)
                  {
                    v139 = ~(-1 << v138);
                  }

                  else
                  {
                    v139 = -1;
                  }

                  v4 = v139 & *(v112 + 64);
                  v140 = (v138 + 63) >> 6;
                  v141 = v137 + 64;

                  v142 = 0;
                  while (v4)
                  {
LABEL_133:
                    v145 = __clz(__rbit64(v4)) | (v142 << 6);
                    v146 = (*(v112 + 48) + 16 * v145);
                    v148 = *v146;
                    v147 = v146[1];
                    outlined init with copy of Any(*(v112 + 56) + 32 * v145, &v174);
                    *&v173 = v148;
                    *(&v173 + 1) = v147;
                    v170 = v173;
                    v171 = v174;
                    v172 = v175;
                    v169[0] = v173;

                    swift_dynamicCast();
                    outlined init with take of Any(&v171, v164);
                    v165 = v161;
                    v166 = v162;
                    v167 = v163;
                    outlined init with take of Any(v164, v168);
                    v161 = v165;
                    v162 = v166;
                    v163 = v167;
                    outlined init with take of Any(v168, v169);
                    v22 = &v161;
                    v149 = AnyHashable._rawHashValue(seed:)(*(v137 + 40));
                    v150 = -1 << *(v137 + 32);
                    v151 = v149 & ~v150;
                    v26 = v151 >> 6;
                    if (((-1 << v151) & ~*(v141 + 8 * (v151 >> 6))) == 0)
                    {
                      v152 = 0;
                      v153 = (63 - v150) >> 6;
                      while (++v26 != v153 || (v152 & 1) == 0)
                      {
                        v154 = v26 == v153;
                        if (v26 == v153)
                        {
                          v26 = 0;
                        }

                        v152 |= v154;
                        v155 = *(v141 + 8 * v26);
                        if (v155 != -1)
                        {
                          v143 = __clz(__rbit64(~v155)) + (v26 << 6);
                          goto LABEL_127;
                        }
                      }

                      goto LABEL_154;
                    }

                    v143 = __clz(__rbit64((-1 << v151) & ~*(v141 + 8 * (v151 >> 6)))) | v151 & 0x7FFFFFFFFFFFFFC0;
LABEL_127:
                    v4 &= v4 - 1;
                    *(v141 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
                    v144 = *(v137 + 48) + 40 * v143;
                    *v144 = v161;
                    *(v144 + 16) = v162;
                    *(v144 + 32) = v163;
                    outlined init with take of Any(v169, (*(v137 + 56) + 32 * v143));
                    ++*(v137 + 16);
                  }

                  while (1)
                  {
                    v26 = v142 + 1;
                    if (__OFADD__(v142, 1))
                    {
                      break;
                    }

                    if (v26 >= v140)
                    {

                      result = [objc_allocWithZone(NSString) initWithBytesNoCopy:"NSDetailedErrors" length:16 encoding:1 freeWhenDone:0];
                      if (!result)
                      {
                        goto LABEL_163;
                      }

                      v156 = result;
                      v157 = [objc_allocWithZone(NSString) initWithString_];

                      *&v161 = v157;
                      AnyHashable.init<A>(_:)();
                      if (*(v137 + 16) && (v158 = specialized __RawDictionaryStorage.find<A>(_:)(&v165), (v159 & 1) != 0))
                      {
                        outlined init with copy of Any(*(v137 + 56) + 32 * v158, v176);
                        outlined destroy of AnyHashable(&v165);

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Error_pGMd);
                        if (swift_dynamicCast())
                        {
                          specialized Array.append<A>(contentsOf:)(v161);
                        }
                      }

                      else
                      {

                        outlined destroy of AnyHashable(&v165);
                      }

                      return v177;
                    }

                    v4 = *(v112 + 64 + 8 * v26);
                    ++v142;
                    if (v4)
                    {
                      v142 = v26;
                      goto LABEL_133;
                    }
                  }

LABEL_151:
                  __break(1u);
                }
              }

              v53 = v26 == v52;
              if (v26 == v52)
              {
                v26 = 0;
              }

              v51 |= v53;
              v54 = *(v41 + 8 * v26);
            }

            while (v54 == -1);
            v42 = __clz(__rbit64(~v54)) + (v26 << 6);
          }

          v39 &= v39 - 1;
          *(v41 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
          v43 = *(v36 + 48) + 40 * v42;
          *v43 = v161;
          *(v43 + 16) = v162;
          *(v43 + 32) = v163;
          outlined init with take of Any(v169, (*(v36 + 56) + 32 * v42));
          ++*(v36 + 16);
        }
      }

LABEL_23:
      v36 = MEMORY[0x1E69E7CC8];
      goto LABEL_24;
    }

    v10 = (result - 1);
    v11 = v4 + 64;
    while (1)
    {
      if ((*(v11 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
      {
        goto LABEL_10;
      }

      v16 = (*(v4 + 48) + 16 * v10);
      v17 = *v16;
      v18 = v16[1];

      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = (*(v4 + 48) + 16 * v10);

        outlined destroy of String(v22);
        __swift_destroy_boxed_opaque_existential_1(*(v4 + 56) + 32 * v10);
        v24 = *(v4 + 16);
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v25)
        {
          goto LABEL_155;
        }

        *(v4 + 16) = v26;

        goto LABEL_10;
      }

      *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (v10 < v19)
      {
        *(*(v4 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v10);
        v12 = *(v4 + 56);
        v13 = (v12 + 32 * v10);
        v14 = v13[1];
        v15 = (v12 + 32 * v19);
        *v15 = *v13;
        v15[1] = v14;
LABEL_10:
        if (--v10 < 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v19 == v10)
        {
          goto LABEL_10;
        }

        v27 = *(v4 + 48);
        v28 = (v27 + 16 * v19);
        v29 = (v27 + 16 * v10);
        v30 = *v28;
        v31 = v28[1];
        v32 = v29[1];
        *v28 = *v29;
        v28[1] = v32;
        *v29 = v30;
        v29[1] = v31;
        v33 = *(v4 + 56);
        v34 = (v33 + 32 * v19);
        v35 = (v33 + 32 * v10);
        outlined init with take of Any(v34, &v165);
        outlined init with take of Any(v35, v34);
        outlined init with take of Any(&v165, v35);
        if (v10 < 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
  return result;
}

uint64_t CocoaError.url.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (v4)
  {
    swift_unknownObjectRetain();
    v5 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v5)
    {
      v6 = v5;
LABEL_19:

      goto LABEL_22;
    }

    v7 = [v4 count];
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v6 = static _DictionaryStorage.allocate(capacity:)();
      v9 = *(v6 + 48);
      v10 = *(v6 + 56);

      result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v9, v10, v4, v8);
      if (result < 0 || v8 < result)
      {
LABEL_54:
        __break(1u);
        return result;
      }

      *(v6 + 16) = result;
      if (!result)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = result - 1;
      v13 = v6 + 64;
      while (1)
      {
        while (1)
        {
          if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
          {
            goto LABEL_10;
          }

          v18 = (*(v6 + 48) + 16 * v12);
          v19 = *v18;
          v20 = v18[1];

          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
          v23 = v22;

          if ((v23 & 1) == 0)
          {
            break;
          }

          v24 = *(v6 + 48) + 16 * v12;

          outlined destroy of String(v24);
          result = __swift_destroy_boxed_opaque_existential_1(*(v6 + 56) + 32 * v12);
          v25 = *(v6 + 16);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v26)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          *(v6 + 16) = v27;

LABEL_10:
          if (--v12 < 0)
          {
            goto LABEL_18;
          }
        }

        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (v12 < v21)
        {
          *(*(v6 + 48) + 16 * v21) = *(*(v6 + 48) + 16 * v12);
          v14 = *(v6 + 56);
          v15 = (v14 + 32 * v12);
          v16 = v15[1];
          v17 = (v14 + 32 * v21);
          *v17 = *v15;
          v17[1] = v16;
          goto LABEL_10;
        }

        if (v21 == v12)
        {
          goto LABEL_10;
        }

        v28 = *(v6 + 48);
        v29 = (v28 + 16 * v21);
        v30 = (v28 + 16 * v12);
        v31 = *v29;
        v32 = v29[1];
        v33 = v30[1];
        *v29 = *v30;
        v29[1] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = *(v6 + 56);
        v35 = (v34 + 32 * v21);
        v36 = (v34 + 32 * v12);
        outlined init with take of Any(v35, &v65);
        outlined init with take of Any(v36, v35);
        outlined init with take of Any(&v65, v36);
        if (v12 < 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_22:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v37 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC8];
  }

  v38 = 1 << *(v6 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(v6 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = v37 + 64;

  v43 = 0;
  while (v40)
  {
LABEL_36:
    v47 = __clz(__rbit64(v40)) | (v43 << 6);
    v48 = (*(v6 + 48) + 16 * v47);
    v50 = *v48;
    v49 = v48[1];
    outlined init with copy of Any(*(v6 + 56) + 32 * v47, v72);
    *&v71 = v50;
    *(&v71 + 1) = v49;
    v69[2] = v71;
    v70[0] = v72[0];
    v70[1] = v72[1];
    v69[0] = v71;

    swift_dynamicCast();
    outlined init with take of Any(v70, v64);
    v65 = v61;
    v66 = v62;
    v67 = v63;
    outlined init with take of Any(v64, v68);
    v61 = v65;
    v62 = v66;
    v63 = v67;
    outlined init with take of Any(v68, v69);
    result = AnyHashable._rawHashValue(seed:)(*(v37 + 40));
    v51 = -1 << *(v37 + 32);
    v52 = result & ~v51;
    v53 = v52 >> 6;
    if (((-1 << v52) & ~*(v42 + 8 * (v52 >> 6))) == 0)
    {
      v54 = 0;
      v55 = (63 - v51) >> 6;
      while (++v53 != v55 || (v54 & 1) == 0)
      {
        v56 = v53 == v55;
        if (v53 == v55)
        {
          v53 = 0;
        }

        v54 |= v56;
        v57 = *(v42 + 8 * v53);
        if (v57 != -1)
        {
          v44 = __clz(__rbit64(~v57)) + (v53 << 6);
          goto LABEL_30;
        }
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v44 = __clz(__rbit64((-1 << v52) & ~*(v42 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    v40 &= v40 - 1;
    *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v45 = *(v37 + 48) + 40 * v44;
    *v45 = v61;
    *(v45 + 16) = v62;
    *(v45 + 32) = v63;
    result = outlined init with take of Any(v69, (*(v37 + 56) + 32 * v44));
    ++*(v37 + 16);
  }

  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v46 >= v41)
    {
      break;
    }

    v40 = *(v6 + 64 + 8 * v46);
    ++v43;
    if (v40)
    {
      v43 = v46;
      goto LABEL_36;
    }
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
  lazy protocol witness table accessor for type NSString and conformance NSObject();
  v58 = @"NSURL";
  AnyHashable.init<A>(_:)();
  if (*(v37 + 16) && (v59 = specialized __RawDictionaryStorage.find<A>(_:)(&v65), (v60 & 1) != 0))
  {
    outlined init with copy of Any(*(v37 + 56) + 32 * v59, v73);
    outlined destroy of AnyHashable(&v65);

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a1 = 0;
      a1[1] = 0;
    }
  }

  else
  {

    result = outlined destroy of AnyHashable(&v65);
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code()
{
  result = lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code;
  if (!lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code;
  if (!lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code;
  if (!lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CocoaError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
  a1[2] = lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
  result = lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CocoaError and conformance CocoaError()
{
  result = lazy protocol witness table cache variable for type CocoaError and conformance CocoaError;
  if (!lazy protocol witness table cache variable for type CocoaError and conformance CocoaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError and conformance CocoaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CocoaError and conformance CocoaError;
  if (!lazy protocol witness table cache variable for type CocoaError and conformance CocoaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError and conformance CocoaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CocoaError and conformance CocoaError;
  if (!lazy protocol witness table cache variable for type CocoaError and conformance CocoaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError and conformance CocoaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CocoaError and conformance CocoaError;
  if (!lazy protocol witness table cache variable for type CocoaError and conformance CocoaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError and conformance CocoaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CocoaError and conformance CocoaError;
  if (!lazy protocol witness table cache variable for type CocoaError and conformance CocoaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError and conformance CocoaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CocoaError and conformance CocoaError;
  if (!lazy protocol witness table cache variable for type CocoaError and conformance CocoaError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError and conformance CocoaError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CocoaError.Code(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code();
  *(a1 + 8) = result;
  return result;
}

Foundation::CocoaError::Code __swiftcall CocoaError.Code.init(fileErrno:reading:)(Swift::Int32 fileErrno, Swift::Bool reading)
{
  if (!reading)
  {
    if (fileErrno <= 27)
    {
      if (fileErrno > 12)
      {
        if (fileErrno != 13)
        {
          if (fileErrno == 17)
          {
            *v2 = 516;
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else if (fileErrno != 1)
      {
        if (fileErrno == 2)
        {
          *v2 = 4;
          goto LABEL_31;
        }

LABEL_30:
        *v2 = 512;
        goto LABEL_31;
      }

      *v2 = 513;
      goto LABEL_31;
    }

    if (fileErrno > 62)
    {
      if (fileErrno == 63)
      {
        *v2 = 514;
        goto LABEL_31;
      }

      if (fileErrno != 69)
      {
        goto LABEL_30;
      }
    }

    else if (fileErrno != 28)
    {
      if (fileErrno == 30)
      {
        *v2 = 642;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    *v2 = 640;
    goto LABEL_31;
  }

  if (fileErrno <= 12)
  {
    if (fileErrno != 1)
    {
      if (fileErrno == 2)
      {
        *v2 = 260;
        goto LABEL_31;
      }

LABEL_28:
      *v2 = 256;
      goto LABEL_31;
    }

LABEL_19:
    *v2 = 257;
    goto LABEL_31;
  }

  if (fileErrno == 13)
  {
    goto LABEL_19;
  }

  if (fileErrno == 27)
  {
    *v2 = 263;
    goto LABEL_31;
  }

  if (fileErrno != 63)
  {
    goto LABEL_28;
  }

  *v2 = 258;
LABEL_31:
  LODWORD(result.rawValue) = fileErrno;
  return result;
}

void __swiftcall POSIXError.init(_nsError:)(Foundation::POSIXError *__return_ptr retstr, NSError *_nsError)
{
  v4 = [(NSError *)_nsError domain];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v35) = 0;
    if (__CFStringIsCF())
    {

      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_22;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_22;
    }

    if ([(NSString *)v13 length])
    {
      v10 = String.init(_cocoaString:)();
      v12 = v19;
      goto LABEL_21;
    }

LABEL_20:
    v10 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v12 = v11;

      goto LABEL_22;
    }

    goto LABEL_7;
  }

  v16 = [(NSString *)v8 UTF8String];
  if (!v16)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v17 = String.init(utf8String:)(v16);
  if (!v18)
  {
    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [(NSString *)v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v35;
      v12 = v36;
      goto LABEL_21;
    }
  }

  v10 = v17;
  v12 = v18;

LABEL_21:
LABEL_22:
  v20 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v21 = @"NSPOSIXErrorDomain";
  v22 = v21;
  if (!v20)
  {
    goto LABEL_27;
  }

  v23 = _objc_getTaggedPointerTag(v21);
  if (!v23)
  {
    goto LABEL_34;
  }

  if (v23 != 22)
  {
    if (v23 == 2)
    {
      MEMORY[0x1EEE9AC00](v23);
      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;

      goto LABEL_40;
    }

LABEL_27:
    if (__CFStringIsCF())
    {
      v24 = 0;

      v26 = 0xE000000000000000;
    }

    else
    {
      v27 = v22;
      v28 = String.init(_nativeStorage:)();
      if (v29)
      {
        v24 = v28;
        v26 = v29;
      }

      else if ([(__CFString *)v27 length])
      {
        v24 = String.init(_cocoaString:)();
        v26 = v33;
      }

      else
      {

        v24 = 0;
        v26 = 0xE000000000000000;
      }
    }

    goto LABEL_40;
  }

  v30 = [(__CFString *)v22 UTF8String];
  if (!v30)
  {
    __break(1u);
    goto LABEL_47;
  }

  v31 = String.init(utf8String:)(v30);
  if (v32)
  {
LABEL_35:
    v24 = v31;
    v26 = v32;

    goto LABEL_40;
  }

  __break(1u);
LABEL_34:
  _CFIndirectTaggedPointerStringGetContents();
  v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v32)
  {
    goto LABEL_35;
  }

  [(__CFString *)v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v24 = v35;
  v26 = v36;
LABEL_40:
  if (v10 == v24 && v12 == v26)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      __break(1u);
    }
  }

  retstr->_nsError.super.isa = _nsError;
}

id static POSIXError.errorDomain.getter()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v1 = @"NSPOSIXErrorDomain";
  v2 = v1;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v1);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v4;
        }

        goto LABEL_6;
      }

      result = [(__CFString *)v2 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        if (v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      return v13;
    }

LABEL_13:
    v11 = result;

    return v11;
  }

LABEL_6:
  if (__CFStringIsCF())
  {

    return 0;
  }

  v6 = v2;
  v7 = String.init(_nativeStorage:)();
  if (v8)
  {
    v9 = v7;

    return v9;
  }

  if (![(__CFString *)v6 length])
  {

    return 0;
  }

  return String.init(_cocoaString:)();
}

uint64_t protocol witness for _BridgedStoredNSError.init(_nsError:) in conformance POSIXError@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v7 == v8)
  {
    goto LABEL_7;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_7:
  }

  *a2 = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type POSIXErrorCode and conformance POSIXErrorCode()
{
  result = lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode;
  if (!lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode;
  if (!lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode;
  if (!lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXErrorCode and conformance POSIXErrorCode);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for POSIXError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
  a1[2] = lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
  result = lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for POSIXErrorCode(uint64_t a1)
{
  result = lazy protocol witness table accessor for type POSIXErrorCode and conformance POSIXErrorCode();
  *(a1 + 8) = result;
  return result;
}

Swift::String_optional __swiftcall _DarwinSearchPathsSequence.Iterator.next()()
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 32);
  if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
  {
    v2 = swift_slowAlloc();
    v14 = MEMORY[0x1865D2880](v3, v2);
    *(v0 + 32) = v14;
    if (v14)
    {
      v15 = [objc_opt_self() defaultManager];
      v9 = [v15 stringWithFileSystemRepresentation:v2 length:strlen(v2)];

      if (v9)
      {
        isTaggedPointer = _objc_isTaggedPointer(v9);
        v17 = v9;
        v1 = v17;
        if (isTaggedPointer)
        {
          TaggedPointerTag = _objc_getTaggedPointerTag(v17);
          switch(TaggedPointerTag)
          {
            case 0:
              _CFIndirectTaggedPointerStringGetContents();
              v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v31)
              {
                [v1 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v11 = v35;
                v13 = v36;
                goto LABEL_48;
              }

LABEL_37:
              v11 = v30;
              v13 = v31;

LABEL_48:
              goto LABEL_49;
            case 0x16:
              goto LABEL_31;
            case 2:
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v13 = v19;

LABEL_49:
              MEMORY[0x1865D2690](v2, -1, -1);
              goto LABEL_50;
          }
        }

        v38 = 0;
        if (__CFStringIsCF())
        {
          v11 = v38;

          v13 = 0xE000000000000000;
          goto LABEL_49;
        }

        v23 = v1;
        v24 = String.init(_nativeStorage:)();
        if (v25)
        {
          v11 = v24;
          v13 = v25;

          goto LABEL_49;
        }

        v38 = [v23 length];
        if (v38)
        {
          v11 = String.init(_cocoaString:)();
          v13 = v33;
          goto LABEL_48;
        }
      }

      v11 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_49;
    }

    v11 = 0;
    v13 = 0;
    goto LABEL_49;
  }

  v4 = MEMORY[0x1865D2880](v3, v37);
  *(v0 + 32) = v4;
  if (!v4)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_50;
  }

  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 stringWithFileSystemRepresentation:v37 length:strlen(v37)];

  if (!v6)
  {
    goto LABEL_40;
  }

  v7 = _objc_isTaggedPointer(v6);
  v8 = v6;
  v9 = v8;
  if (!v7)
  {
LABEL_18:
    v38 = 0;
    if (__CFStringIsCF())
    {
      v11 = v38;
      if (!v38)
      {

        v13 = 0xE000000000000000;
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v20 = v9;
    v21 = String.init(_nativeStorage:)();
    if (v22)
    {
      v11 = v21;
      v13 = v22;

      goto LABEL_50;
    }

    v38 = [v20 length];
    if (v38)
    {
LABEL_46:
      v11 = String.init(_cocoaString:)();
      v13 = v32;

      goto LABEL_50;
    }

LABEL_40:
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_50;
  }

  v10 = _objc_getTaggedPointerTag(v8);
  if (!v10)
  {
    goto LABEL_34;
  }

  if (v10 == 22)
  {
    v26 = [v9 UTF8String];
    if (!v26)
    {
      __break(1u);
      goto LABEL_52;
    }

    v28 = String.init(utf8String:)(v26);
    if (v29)
    {
LABEL_35:
      v11 = v28;
      v13 = v29;

      goto LABEL_50;
    }

    __break(1u);
LABEL_31:
    v26 = [v1 UTF8String];
    if (v26)
    {
      v30 = String.init(utf8String:)(v26);
      if (!v31)
      {
        __break(1u);
LABEL_34:
        _CFIndirectTaggedPointerStringGetContents();
        v28 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v29)
        {
          [v9 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v11 = v35;
          v13 = v36;

          goto LABEL_50;
        }

        goto LABEL_35;
      }

      goto LABEL_37;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v10 != 2)
  {
    goto LABEL_18;
  }

  MEMORY[0x1EEE9AC00](v10);
  v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v13 = v12;

LABEL_50:
  v26 = v11;
  v27 = v13;
LABEL_53:
  result.value._object = v27;
  result.value._countAndFlagsBits = v26;
  return result;
}

unint64_t lazy protocol witness table accessor for type _DarwinSearchPathsSequence.Iterator and conformance _DarwinSearchPathsSequence.Iterator()
{
  result = lazy protocol witness table cache variable for type _DarwinSearchPathsSequence.Iterator and conformance _DarwinSearchPathsSequence.Iterator;
  if (!lazy protocol witness table cache variable for type _DarwinSearchPathsSequence.Iterator and conformance _DarwinSearchPathsSequence.Iterator)
  {
    type metadata accessor for _DarwinSearchPathsSequence.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DarwinSearchPathsSequence.Iterator and conformance _DarwinSearchPathsSequence.Iterator);
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance _DarwinSearchPathsSequence.Iterator@<X0>(Swift::String_optional *a1@<X8>)
{
  v3 = _DarwinSearchPathsSequence.Iterator.next()();
  result = v3.value._countAndFlagsBits;
  *a1 = v3;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _DarwinSearchPathsSequence@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for _DarwinSearchPathsSequence.Iterator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  result = sysdir_start_search_path_enumeration_private();
  *(v5 + 32) = result;
  *a1 = v5;
  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v1 = [a1 count];
  v2 = v1;
  if (v1)
  {
    if (v1 <= 0)
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v3 = swift_allocObject();
      v4 = _swift_stdlib_malloc_size(v3);
      v5 = v4 - 32;
      if (v4 < 32)
      {
        v5 = v4 - 1;
      }

      v3[2] = v2;
      v3[3] = 2 * (v5 >> 5);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3[3];

  v7 = swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)(v7, v40);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = v6 >> 1;
  v9 = v3 + 4;
  if (v2)
  {
    v8 -= v2;
    do
    {
      NSFastEnumerationIterator.next()(&v24);
      if (!*(&v25 + 1))
      {
        goto LABEL_38;
      }

      outlined init with take of Any(&v24, v9);
      v9 += 2;
    }

    while (--v2);
  }

  NSFastEnumerationIterator.next()(&v37);
  if (v38)
  {
    while (1)
    {
      outlined init with take of Any(&v37, v39);
      if (!v8)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 1;
        }

        v16 = v15 >> 5;
        v13[2] = v12;
        v13[3] = 2 * (v15 >> 5);
        v17 = (v13 + 4);
        v18 = v3[3] >> 1;
        if (v3[2])
        {
          v19 = v3 + 4;
          if (v13 != v3 || v17 >= v19 + 32 * v18)
          {
            memmove(v13 + 4, v19, 32 * v18);
          }

          v3[2] = 0;
        }

        v9 = (v17 + 32 * v18);
        v8 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

        v3 = v13;
      }

      v20 = __OFSUB__(v8--, 1);
      if (v20)
      {
        break;
      }

      outlined init with take of Any(v39, v9);
      v9 += 2;
      NSFastEnumerationIterator.next()(&v37);
      if (!v38)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  v34 = v40[10];
  v35 = v40[11];
  v36[0] = v41[0];
  *(v36 + 9) = *(v41 + 9);
  v30 = v40[6];
  v31 = v40[7];
  v32 = v40[8];
  v33 = v40[9];
  v26 = v40[2];
  v27 = v40[3];
  v28 = v40[4];
  v29 = v40[5];
  v24 = v40[0];
  v25 = v40[1];
  outlined destroy of NSFastEnumerationIterator(&v24);
  outlined destroy of TermOfAddress?(&v37, &_sypSgMd);
  v21 = v3[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v20 = __OFSUB__(v22, v8);
    v23 = v22 - v8;
    if (v20)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v3[2] = v23;
  }
}

{
  v2 = [a1 count];
  v3 = v2;
  if (v2)
  {
    if (v2 <= 0)
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v4 = swift_allocObject();
      v5 = _swift_stdlib_malloc_size(v4);
      v6 = v5 - 32;
      if (v5 < 32)
      {
        v6 = v5 - 25;
      }

      v4[2] = v3;
      v4[3] = 2 * (v6 >> 3);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v7 = v4[3];

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_62;
  }

  v8 = v4 + 4;
  v9 = v7 >> 1;
  if (!v3)
  {
    v18 = [a1 firstIndex];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_55;
    }

    v17 = v18;
    if (v7 > 1)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v10 = a1;
  v11 = [v10 firstIndex];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = v11;
  v4[4] = v11;
  v13 = v4 + 5;
  v14 = (v3 - 1);
  if (v3 != 1)
  {
    while (1)
    {
      v15 = [v10 indexGreaterThanIndex_];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v12 = v15;
      *v13++ = v15;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_15:
  v9 -= v3;
  v16 = [v10 indexGreaterThanIndex_];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v16;
    if (v9)
    {
      v8 = v13;
LABEL_32:
      v29 = __OFSUB__(v9--, 1);
      if (v29)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      *v8 = v17;
      v30 = [a1 indexGreaterThanIndex_];
      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = v30;
        while (1)
        {
          if (v9)
          {
            ++v8;
            v29 = __OFSUB__(v9--, 1);
            if (v29)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v32 = v4[3];
            if (((v32 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_61;
            }

            v33 = v32 & 0xFFFFFFFFFFFFFFFELL;
            if (v33 <= 1)
            {
              v34 = 1;
            }

            else
            {
              v34 = v33;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
            v35 = swift_allocObject();
            v36 = _swift_stdlib_malloc_size(v35);
            v37 = v36 - 32;
            if (v36 < 32)
            {
              v37 = v36 - 25;
            }

            v38 = v37 >> 3;
            v35[2] = v34;
            v35[3] = 2 * (v37 >> 3);
            v39 = (v35 + 4);
            v40 = v4[3] >> 1;
            if (v4[2])
            {
              if (v35 != v4 || v39 >= &v4[v40 + 4])
              {
                memmove(v35 + 4, v4 + 4, 8 * v40);
              }

              v4[2] = 0;
            }

            v8 = (v39 + 8 * v40);
            v42 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - v40;

            v4 = v35;
            v29 = __OFSUB__(v42, 1);
            v9 = v42 - 1;
            if (v29)
            {
              goto LABEL_60;
            }
          }

          *v8 = v31;
          v31 = [a1 indexGreaterThanIndex_];
          if (v31 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_20:
    v19 = v4[3];
    if (((v19 >> 1) + 0x4000000000000000) < 0)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v22 = swift_allocObject();
    v23 = _swift_stdlib_malloc_size(v22);
    v24 = v23 - 32;
    if (v23 < 32)
    {
      v24 = v23 - 25;
    }

    v25 = v24 >> 3;
    v22[2] = v21;
    v22[3] = 2 * (v24 >> 3);
    v26 = v22 + 4;
    v27 = v4[3] >> 1;
    v28 = &v22[v27 + 4];
    v9 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;
    if (v4[2])
    {
      if (v22 != v4 || v26 >= &v8[v27])
      {
        memmove(v26, v4 + 4, 8 * v27);
      }

      v4[2] = 0;
    }

    v8 = v28;
    v4 = v22;
    goto LABEL_32;
  }

LABEL_55:

  v43 = v4[3];
  if (v43 >= 2)
  {
    v44 = v43 >> 1;
    v29 = __OFSUB__(v44, v9);
    v45 = v44 - v9;
    if (v29)
    {
LABEL_64:
      __break(1u);
      return;
    }

    v4[2] = v45;
  }
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)()
{
  v0 = swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)(v0, v24);
  NSFastEnumerationIterator.next()(&v21);
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  if (v22)
  {
    v3 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      result = outlined init with take of Any(&v21, v23);
      if (!v2)
      {
        v5 = v1[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
        v8 = swift_allocObject();
        v9 = _swift_stdlib_malloc_size(v8);
        v10 = v9 - 32;
        if (v9 < 32)
        {
          v10 = v9 - 1;
        }

        v11 = v10 >> 5;
        v8[2] = v7;
        v8[3] = 2 * (v10 >> 5);
        v12 = (v8 + 4);
        v13 = v1[3] >> 1;
        if (v1[2])
        {
          v14 = v1 + 4;
          if (v8 != v1 || v12 >= v14 + 32 * v13)
          {
            memmove(v8 + 4, v14, 32 * v13);
          }

          v1[2] = 0;
        }

        v3 = (v12 + 32 * v13);
        v2 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v1 = v8;
      }

      v15 = __OFSUB__(v2--, 1);
      if (v15)
      {
        break;
      }

      outlined init with take of Any(v23, v3);
      v3 += 2;
      NSFastEnumerationIterator.next()(&v21);
      if (!v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  v19[10] = v24[10];
  v19[11] = v24[11];
  v20[0] = v25[0];
  *(v20 + 9) = *(v25 + 9);
  v19[6] = v24[6];
  v19[7] = v24[7];
  v19[8] = v24[8];
  v19[9] = v24[9];
  v19[2] = v24[2];
  v19[3] = v24[3];
  v19[4] = v24[4];
  v19[5] = v24[5];
  v19[0] = v24[0];
  v19[1] = v24[1];
  outlined destroy of NSFastEnumerationIterator(v19);
  result = outlined destroy of TermOfAddress?(&v21, &_sypSgMd);
  v16 = v1[3];
  if (v16 < 2)
  {
    return v1;
  }

  v17 = v16 >> 1;
  v15 = __OFSUB__(v17, v2);
  v18 = v17 - v2;
  if (!v15)
  {
    v1[2] = v18;
    return v1;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v1 = [a1 count];
  v2 = v1;
  if (v1)
  {
    if (v1 <= 0)
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp3key_yp5valuetGMd);
      v3 = swift_allocObject();
      v4 = _swift_stdlib_malloc_size(v3);
      v5 = v4 - 32;
      if (v4 < 32)
      {
        v5 = v4 + 31;
      }

      *(v3 + 2) = v2;
      *(v3 + 3) = 2 * (v5 >> 6);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v3 + 3);

  type metadata accessor for NSDictionary.Iterator();
  v7 = swift_allocObject();
  v8 = swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)(v8, v92);
  v9 = v92[11];
  v7[11] = v92[10];
  v7[12] = v9;
  v7[13] = v93[0];
  *(v7 + 217) = *(v93 + 9);
  v10 = v92[7];
  v7[7] = v92[6];
  v7[8] = v10;
  v11 = v92[9];
  v7[9] = v92[8];
  v7[10] = v11;
  v12 = v92[3];
  v7[3] = v92[2];
  v7[4] = v12;
  v13 = v92[5];
  v7[5] = v92[4];
  v7[6] = v13;
  v14 = v92[1];
  v7[1] = v92[0];
  v7[2] = v14;
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = outlined destroy of TermOfAddress?(&v84, &_sypSgMd);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = v6 >> 1;
  v66 = v3;
  v16 = v3 + 32;
  if (v2)
  {
    v15 -= v2;
    do
    {
      NSFastEnumerationIterator.next()(&v84);
      if (!*(&v85 + 1))
      {
        goto LABEL_55;
      }

      outlined init with take of Any(&v84, &v88);
      outlined init with copy of Any(&v88, &v67);
      if (!*(v7 + 2))
      {
        goto LABEL_54;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClassUnconditional();
      v18 = *(&v89 + 1);
      v19 = __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      swift_unknownObjectRetain();
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      if (isClassOrObjCExistentialType)
      {
        if (*(*(v18 - 8) + 64) != 8)
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v21 = *v19;
        swift_unknownObjectRetain();
      }

      else
      {
        v65 = &v63;
        v27 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
        v64 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v29 + 16))(v27);
        v21 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      }

      v22 = [v17 objectForKey_];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (!v22)
      {
        goto LABEL_56;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v88);
      outlined init with take of Any(&v84, &v69);
      v24 = v67;
      v25 = v68;
      v26 = v70;
      *(v16 + 2) = v69;
      *(v16 + 3) = v26;
      *v16 = v24;
      *(v16 + 1) = v25;
      v16 += 64;
    }

    while (--v2);
  }

  NSFastEnumerationIterator.next()(&v80);
  if (!v81)
  {
LABEL_44:
    outlined destroy of TermOfAddress?(&v80, &_sypSgMd);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    swift_setDeallocating();
    v54 = v7[12];
    v77 = v7[11];
    v78 = v54;
    v79[0] = v7[13];
    *(v79 + 9) = *(v7 + 217);
    v55 = v7[8];
    v73 = v7[7];
    v74 = v55;
    v56 = v7[10];
    v75 = v7[9];
    v76 = v56;
    v57 = v7[4];
    v69 = v7[3];
    v70 = v57;
    v58 = v7[6];
    v71 = v7[5];
    v72 = v58;
    v59 = v7[2];
    v67 = v7[1];
    v68 = v59;
    outlined destroy of NSFastEnumerationIterator(&v67);
    swift_deallocClassInstance();
    outlined destroy of TermOfAddress?(&v84, &_syp3key_yp5valuetSgMd);
    result = v66;
    v60 = *(v66 + 3);
    if (v60 < 2)
    {
      return result;
    }

    v61 = v60 >> 1;
    v47 = __OFSUB__(v61, v15);
    v62 = v61 - v15;
    if (!v47)
    {
      result = v66;
      *(v66 + 2) = v62;
      return result;
    }

    goto LABEL_53;
  }

  while (1)
  {
    outlined init with take of Any(&v80, &v82);
    result = outlined init with copy of Any(&v82, &v84);
    if (!*(v7 + 2))
    {
      break;
    }

    objc_opt_self();
    v30 = swift_dynamicCastObjCClassUnconditional();
    v31 = v83;
    v32 = __swift_project_boxed_opaque_existential_1(&v82, v83);
    swift_unknownObjectRetain();
    v33 = _swift_isClassOrObjCExistentialType();
    if (v33)
    {
      if (*(*(v31 - 8) + 64) != 8)
      {
        goto LABEL_49;
      }

      v34 = *v32;
      swift_unknownObjectRetain();
    }

    else
    {
      v65 = &v63;
      v51 = MEMORY[0x1EEE9AC00](v33);
      v64 = &v63 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v53 + 16))(v51);
      v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v35 = [v30 objectForKey_];
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (!v35)
    {
      goto LABEL_58;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v82);
    outlined init with take of Any(&v67, &v86);
    v88 = v84;
    v89 = v85;
    v90 = v86;
    v91 = v87;
    if (!v15)
    {
      v36 = v66;
      v37 = *(v66 + 3);
      if (((v37 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_51;
      }

      v38 = v37 & 0xFFFFFFFFFFFFFFFELL;
      if (v38 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp3key_yp5valuetGMd);
      v40 = swift_allocObject();
      v41 = _swift_stdlib_malloc_size(v40);
      v42 = v41 - 32;
      if (v41 < 32)
      {
        v42 = v41 + 31;
      }

      v43 = v42 >> 6;
      *(v40 + 2) = v39;
      *(v40 + 3) = 2 * (v42 >> 6);
      v44 = v40 + 32;
      v45 = *(v36 + 3) >> 1;
      if (*(v36 + 2))
      {
        v46 = v36 + 32;
        if (v40 != v36 || v44 >= &v46[64 * v45])
        {
          memmove(v40 + 32, v46, v45 << 6);
        }

        *(v36 + 2) = 0;
      }

      v16 = &v44[64 * v45];
      v15 = (v43 & 0x7FFFFFFFFFFFFFFFLL) - v45;

      v66 = v40;
    }

    v47 = __OFSUB__(v15--, 1);
    if (v47)
    {
      goto LABEL_50;
    }

    v48 = v88;
    v49 = v89;
    v50 = v91;
    *(v16 + 2) = v90;
    *(v16 + 3) = v50;
    *v16 = v48;
    *(v16 + 1) = v49;
    v16 += 64;
    NSFastEnumerationIterator.next()(&v80);
    if (!v81)
    {
      goto LABEL_44;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}