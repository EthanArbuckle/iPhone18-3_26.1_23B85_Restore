uint64_t specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(char *__s1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (!v6)
    {
      v14 = result;
      v15 = v13;
      result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v13 & 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
      if ((result & 0x100000000) != 0)
      {
        if ((v15 & 0x100) != 0)
        {
LABEL_27:
          v29 = static String._fromUTF8Repairing(_:)();
          v31 = v30;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v32 = v29;
          *(v32 + 8) = v31;
          *(v32 + 16) = 0u;
          *(v32 + 32) = 0u;
          *(v32 + 48) = 11;
          return swift_willThrow();
        }

LABEL_9:
        v33 = 0;
        v16 = _stringshims_strtod_clocale(__s1, &v33);
        v17 = &__s1[a2];
        if (v33 && v17 == v33)
        {
          v18 = v16;
          if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int32V_SdTt1g5(&v33, v16) || (BYTE4(v33) & 1) != 0)
          {
            goto LABEL_27;
          }

          if (fabs(v18) < 9.00719925e15)
          {
            return v33;
          }
        }

        if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v34);
          if (v36 != 1)
          {
            v19 = v34[1];
            v20 = v35;
            v21 = v34[0];
LABEL_26:
            result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5Int32V_Tt1g5(v21, v19, v20);
            if ((result & 0x100000000) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        else
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v37);
          if ((v39 & 1) == 0)
          {
            v19 = v37[1];
            v20 = v38;
            v21 = v37[0];
            goto LABEL_26;
          }
        }

        v22 = v17 - v14;
        v23 = (v14 - __s1) | (v17 - v14);
        if (a5)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v14, v22, a3, a4, v40);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v25 = v40[2];
            v26 = v41;
            v27 = v40[1];
            v28 = v40[0];
LABEL_24:
            *(v24 + 48) = v26;
            *(v24 + 16) = v27;
            *(v24 + 32) = v25;
            *v24 = v28;
            return swift_willThrow();
          }

          __break(1u);
        }

        else if ((v23 & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v14, v22, a3, a4, v42);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v27 = v42[1];
          v25 = v42[2];
          v26 = v43;
          v28 = v42[0];
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (!v6)
    {
      v14 = result;
      result = specialized _parseInteger<A>(_:)(__s1, a2);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

{
  v44 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (!v6)
    {
      v14 = result;
      v15 = v13;
      result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v13 & 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
      if ((result & 0x100000000) != 0)
      {
        if ((v15 & 0x100) != 0)
        {
LABEL_27:
          v29 = static String._fromUTF8Repairing(_:)();
          v31 = v30;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v32 = v29;
          *(v32 + 8) = v31;
          *(v32 + 16) = 0u;
          *(v32 + 32) = 0u;
          *(v32 + 48) = 11;
          return swift_willThrow();
        }

LABEL_9:
        v33 = 0;
        v16 = _stringshims_strtod_clocale(__s1, &v33);
        v17 = &__s1[a2];
        if (v33 && v17 == v33)
        {
          v18 = v16;
          if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt32V_SdTt1g5(&v33, v16) || (BYTE4(v33) & 1) != 0)
          {
            goto LABEL_27;
          }

          if (fabs(v18) < 9.00719925e15)
          {
            return v33;
          }
        }

        if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v34);
          if (v36 != 1)
          {
            v19 = v34[1];
            v20 = v35;
            v21 = v34[0];
LABEL_26:
            result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6UInt32V_Tt1g5(v21, v19, v20);
            if ((result & 0x100000000) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        else
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v37);
          if ((v39 & 1) == 0)
          {
            v19 = v37[1];
            v20 = v38;
            v21 = v37[0];
            goto LABEL_26;
          }
        }

        v22 = v17 - v14;
        v23 = (v14 - __s1) | (v17 - v14);
        if (a5)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v14, v22, a3, a4, v40);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v25 = v40[2];
            v26 = v41;
            v27 = v40[1];
            v28 = v40[0];
LABEL_24:
            *(v24 + 48) = v26;
            *(v24 + 16) = v27;
            *(v24 + 32) = v25;
            *v24 = v28;
            return swift_willThrow();
          }

          __break(1u);
        }

        else if ((v23 & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v14, v22, a3, a4, v42);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v27 = v42[1];
          v25 = v42[2];
          v26 = v43;
          v28 = v42[0];
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (!v6)
    {
      v14 = result;
      result = specialized _parseInteger<A>(_:)(__s1, a2);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

char *specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(char *__s1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(unsigned __int8 *, uint64_t, uint64_t), uint64_t (*a8)(char *, unint64_t))
{
  v50 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v8)
    {
      return result;
    }

    v17 = result;
    v18 = v16;
    result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v16 & 1, a7, specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v19 & 1) == 0)
    {
      return result;
    }

    if ((v18 & 0x100) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v8)
    {
      return result;
    }

    v17 = result;
    result = a8(__s1, a2);
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  v38 = 0;
  v22 = _stringshims_strtod_clocale(__s1, &v38);
  v23 = &__s1[a2];
  if (v38 && v23 == v38)
  {
    v24 = v22;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_SdTt1g5Tm(&v38, v22) || (v39 & 1) != 0)
    {
      goto LABEL_17;
    }

    if (fabs(v24) < 9.00719925e15)
    {
      return v38;
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v40);
    if (v42 != 1)
    {
      result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSi_Tt1g5Tm(v40[0], v40[1], v41);
      if (v37)
      {
        goto LABEL_17;
      }

      return result;
    }

LABEL_19:
    v30 = v23 - v17;
    v31 = (v17 - __s1) | (v23 - v17);
    if (a5)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        specialized static JSON5Scanner.validateNumber(from:fullSource:)(v17, v30, a3, a4, v46);
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v34 = v46[1];
        v33 = v46[2];
        v35 = v47;
        v36 = v46[0];
LABEL_24:
        *(v32 + 48) = v35;
        *(v32 + 16) = v34;
        *(v32 + 32) = v33;
        *v32 = v36;
        return swift_willThrow();
      }

      __break(1u);
    }

    else if ((v31 & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v17, v30, a3, a4, v48);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v34 = v48[1];
      v33 = v48[2];
      v35 = v49;
      v36 = v48[0];
      goto LABEL_24;
    }

    __break(1u);
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v43);
  if (v45)
  {
    goto LABEL_19;
  }

  result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSi_Tt1g5Tm(v43[0], v43[1], v44);
  if (v25)
  {
LABEL_17:
    v26 = static String._fromUTF8Repairing(_:)();
    v28 = v27;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 11;
    return swift_willThrow();
  }

  return result;
}

{
  v50 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v8)
    {
      return result;
    }

    v17 = result;
    v18 = v16;
    result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v16 & 1, a7, specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v19 & 1) == 0)
    {
      return result;
    }

    if ((v18 & 0x100) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v8)
    {
      return result;
    }

    v17 = result;
    result = a8(__s1, a2);
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  v38 = 0;
  v22 = _stringshims_strtod_clocale(__s1, &v38);
  v23 = &__s1[a2];
  if (v38 && v23 == v38)
  {
    v24 = v22;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SdTt1g5Tm(&v38, v22) || (v39 & 1) != 0)
    {
      goto LABEL_17;
    }

    if (fabs(v24) < 9.00719925e15)
    {
      return v38;
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v40);
    if (v42 != 1)
    {
      result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSu_Tt1g5Tm(v40[0], v40[1], v41);
      if (v37)
      {
        goto LABEL_17;
      }

      return result;
    }

LABEL_19:
    v30 = v23 - v17;
    v31 = (v17 - __s1) | (v23 - v17);
    if (a5)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        specialized static JSON5Scanner.validateNumber(from:fullSource:)(v17, v30, a3, a4, v46);
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v34 = v46[1];
        v33 = v46[2];
        v35 = v47;
        v36 = v46[0];
LABEL_24:
        *(v32 + 48) = v35;
        *(v32 + 16) = v34;
        *(v32 + 32) = v33;
        *v32 = v36;
        return swift_willThrow();
      }

      __break(1u);
    }

    else if ((v31 & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v17, v30, a3, a4, v48);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v34 = v48[1];
      v33 = v48[2];
      v35 = v49;
      v36 = v48[0];
      goto LABEL_24;
    }

    __break(1u);
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v43);
  if (v45)
  {
    goto LABEL_19;
  }

  result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSu_Tt1g5Tm(v43[0], v43[1], v44);
  if (v25)
  {
LABEL_17:
    v26 = static String._fromUTF8Repairing(_:)();
    v28 = v27;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 11;
    return swift_willThrow();
  }

  return result;
}

char *specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(char *__s1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v6)
    {
      return result;
    }

    v14 = result;
    v15 = v13;
    result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v13 & 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v16 & 1) == 0)
    {
      return result;
    }

    if ((v15 & 0x100) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v6)
    {
      return result;
    }

    v14 = result;
    result = specialized _parseInteger<A>(_:)(__s1, a2);
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v35 = 0;
  v18 = _stringshims_strtod_clocale(__s1, &v35);
  v19 = &__s1[a2];
  if (!v35 || v19 != v35)
  {
    goto LABEL_12;
  }

  v20 = v18;
  result = _ss6Int128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(v18);
  if (v21)
  {
LABEL_15:
    v23 = static String._fromUTF8Repairing(_:)();
    v25 = v24;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 11;
    return swift_willThrow();
  }

  if (fabs(v20) >= 9.00719925e15)
  {
LABEL_12:
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v36);
      if (v38 != 1)
      {
        result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6Int128V_Tt1g5(v36[0], v36[1], v37);
        if (v34)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    else
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v39);
      if ((v41 & 1) == 0)
      {
        result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6Int128V_Tt1g5(v39[0], v39[1], v40);
        if (v22)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    v27 = v19 - v14;
    v28 = (v14 - __s1) | (v19 - v14);
    if (a5)
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        specialized static JSON5Scanner.validateNumber(from:fullSource:)(v14, v27, a3, a4, v42);
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v30 = v42[2];
        v31 = v43;
        v32 = v42[1];
        v33 = v42[0];
LABEL_22:
        *(v29 + 48) = v31;
        *(v29 + 16) = v32;
        *(v29 + 32) = v30;
        *v29 = v33;
        return swift_willThrow();
      }

      __break(1u);
    }

    else if ((v28 & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v14, v27, a3, a4, v44);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v32 = v44[1];
      v30 = v44[2];
      v31 = v45;
      v33 = v44[0];
      goto LABEL_22;
    }

    __break(1u);
  }

  return result;
}

{
  v46 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v6)
    {
      return result;
    }

    v14 = result;
    v15 = v13;
    result = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v13 & 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v16 & 1) == 0)
    {
      return result;
    }

    if ((v15 & 0x100) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v6)
    {
      return result;
    }

    v14 = result;
    result = specialized _parseInteger<A>(_:)(__s1, a2);
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v35 = 0;
  v18 = _stringshims_strtod_clocale(__s1, &v35);
  v19 = &__s1[a2];
  if (!v35 || v19 != v35)
  {
    goto LABEL_12;
  }

  v20 = v18;
  result = _ss7UInt128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(v18);
  if (v21)
  {
LABEL_15:
    v23 = static String._fromUTF8Repairing(_:)();
    v25 = v24;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 11;
    return swift_willThrow();
  }

  if (fabs(v20) >= 9.00719925e15)
  {
LABEL_12:
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v36);
      if (v38 != 1)
      {
        result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs7UInt128V_Tt1g5(v36[0], v36[1], v37);
        if (v34)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    else
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v39);
      if ((v41 & 1) == 0)
      {
        result = _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs7UInt128V_Tt1g5(v39[0], v39[1], v40);
        if (v22)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    v27 = v19 - v14;
    v28 = (v14 - __s1) | (v19 - v14);
    if (a5)
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        specialized static JSON5Scanner.validateNumber(from:fullSource:)(v14, v27, a3, a4, v42);
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v30 = v42[2];
        v31 = v43;
        v32 = v42[1];
        v33 = v42[0];
LABEL_22:
        *(v29 + 48) = v31;
        *(v29 + 16) = v32;
        *(v29 + 32) = v30;
        *v29 = v33;
        return swift_willThrow();
      }

      __break(1u);
    }

    else if ((v28 & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v14, v27, a3, a4, v44);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v32 = v44[1];
      v30 = v44[2];
      v31 = v45;
      v33 = v44[0];
      goto LABEL_22;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(char *__s1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(char *, unint64_t, void), uint64_t (*a8)(char *, unint64_t), uint64_t (*a9)(char **), uint64_t (*a10)(uint64_t, uint64_t, uint64_t))
{
  v48 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (!v10)
    {
      v19 = result;
      v20 = v18;
      result = a7(__s1, a2, v18 & 1);
      if ((result & 0x100) != 0)
      {
        if ((v20 & 0x100) != 0)
        {
LABEL_27:
          v35 = static String._fromUTF8Repairing(_:)();
          v37 = v36;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v38 = v35;
          *(v38 + 8) = v37;
          *(v38 + 16) = 0u;
          *(v38 + 32) = 0u;
          *(v38 + 48) = 11;
          return swift_willThrow();
        }

LABEL_9:
        v39 = 0;
        v22 = _stringshims_strtod_clocale(__s1, &v39);
        v23 = &__s1[a2];
        if (v39 && v23 == v39)
        {
          v24 = v22;
          if (a9(&v39) & 1) == 0 || (BYTE1(v39))
          {
            goto LABEL_27;
          }

          if (fabs(v24) < 9.00719925e15)
          {
            return v39;
          }
        }

        if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v40);
          if (v41 != 1)
          {
            v25 = v40[1];
            v26 = v40[2];
            v27 = v40[0];
LABEL_26:
            result = a10(v27, v25, v26);
            if ((result & 0x100) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        else
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v42);
          if ((v43 & 1) == 0)
          {
            v25 = v42[1];
            v26 = v42[2];
            v27 = v42[0];
            goto LABEL_26;
          }
        }

        v28 = v23 - v19;
        v29 = (v19 - __s1) | (v23 - v19);
        if (a5)
        {
          if ((v29 & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v19, v28, a3, a4, v44);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v32 = v44[1];
            v31 = v44[2];
            v33 = v45;
            v34 = v44[0];
LABEL_24:
            *(v30 + 48) = v33;
            *(v30 + 16) = v32;
            *(v30 + 32) = v31;
            *v30 = v34;
            return swift_willThrow();
          }

          __break(1u);
        }

        else if ((v29 & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v19, v28, a3, a4, v46);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v31 = v46[2];
          v33 = v47;
          v32 = v46[1];
          v34 = v46[0];
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (!v10)
    {
      v19 = result;
      result = a8(__s1, a2);
      if ((result & 0x100) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

{
  v48 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (!v10)
    {
      v19 = result;
      v20 = v18;
      result = a7(__s1, a2, v18 & 1);
      if ((result & 0x10000) != 0)
      {
        if ((v20 & 0x100) != 0)
        {
LABEL_27:
          v35 = static String._fromUTF8Repairing(_:)();
          v37 = v36;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v38 = v35;
          *(v38 + 8) = v37;
          *(v38 + 16) = 0u;
          *(v38 + 32) = 0u;
          *(v38 + 48) = 11;
          return swift_willThrow();
        }

LABEL_9:
        v39 = 0;
        v22 = _stringshims_strtod_clocale(__s1, &v39);
        v23 = &__s1[a2];
        if (v39 && v23 == v39)
        {
          v24 = v22;
          if (a9(&v39) & 1) == 0 || (BYTE2(v39))
          {
            goto LABEL_27;
          }

          if (fabs(v24) < 9.00719925e15)
          {
            return v39;
          }
        }

        if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v40);
          if (v41 != 1)
          {
            v25 = v40[1];
            v26 = v40[2];
            v27 = v40[0];
LABEL_26:
            result = a10(v27, v25, v26);
            if ((result & 0x10000) == 0)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        else
        {
          specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v42);
          if ((v43 & 1) == 0)
          {
            v25 = v42[1];
            v26 = v42[2];
            v27 = v42[0];
            goto LABEL_26;
          }
        }

        v28 = v23 - v19;
        v29 = (v19 - __s1) | (v23 - v19);
        if (a5)
        {
          if ((v29 & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v19, v28, a3, a4, v44);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v32 = v44[1];
            v31 = v44[2];
            v33 = v45;
            v34 = v44[0];
LABEL_24:
            *(v30 + 48) = v33;
            *(v30 + 16) = v32;
            *(v30 + 32) = v31;
            *v30 = v34;
            return swift_willThrow();
          }

          __break(1u);
        }

        else if ((v29 & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v19, v28, a3, a4, v46);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v31 = v46[2];
          v33 = v47;
          v32 = v46[1];
          v34 = v46[0];
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (!v10)
    {
      v19 = result;
      result = a8(__s1, a2);
      if ((result & 0x10000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

unsigned __int8 *partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 **a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:), specialized _parseInteger<A>(_:), a5);
}

unsigned __int8 *partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(unsigned __int8 *, uint64_t, uint64_t)@<X4>, uint64_t (*a6)(unsigned __int8 *, uint64_t, uint64_t)@<X5>, uint64_t (*a7)(void, unsigned __int8 *, uint64_t, unint64_t, uint64_t, unint64_t)@<X6>, uint64_t (*a8)(void)@<X7>, unsigned __int8 **a9@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 16), *(v9 + 17), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 16), *(v9 + 17), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
    a9[1] = v13;
  }

  return result;
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(unsigned __int8 *, uint64_t, uint64_t)@<X4>, uint64_t (*a6)(unsigned __int8 *, uint64_t, uint64_t)@<X5>, uint64_t (*a7)(void, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t)@<X6>, uint64_t (*a8)(void)@<X7>, _DWORD *a9@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 16), *(v9 + 17), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t)@<X5>, uint64_t (*a7)(void)@<X6>, _WORD *a8@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v8 + 16), *(v8 + 17), a5, a6, a7);
  if (!v9)
  {
    *a8 = result;
  }

  return result;
}

unint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t)@<X5>, uint64_t (*a7)(void)@<X6>, _BYTE *a8@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v8 + 16), *(v8 + 17), a5, a6, a7);
  if (!v9)
  {
    *a8 = result;
  }

  return result;
}

void partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v5 + 16), *(v5 + 17));
  if (!v6)
  {
    *a5 = v8;
  }
}

uint64_t specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)()
{
  v1 = v0;
  v3 = (v0 + 24);
  v2 = *(v0 + 24);
  v4 = *(v0 + 40);
  if (v4 >= 0xFE)
  {
    v5 = *(v0 + 8);
    v6 = JSONMap.loadValue(at:)(v5);
    if (v8 > 0xFDu)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd);
      v9 = MEMORY[0x1E69E6370];
      v2 = _CodingPathNode.path.getter(*(v0 + 72));
      v1 = *(v0 + 64);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_4:
        v11 = *(v2 + 16);
        v10 = *(v2 + 24);
        if (v11 >= v10 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v2);
        }

        v32 = &type metadata for _CodingKey;
        v33 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v12 = swift_allocObject();
        *&v31 = v12;
        *(v12 + 24) = 0;
        *(v12 + 32) = 0;
        *(v12 + 16) = v1;
        *(v12 + 40) = 2;
        *(v2 + 16) = v11 + 1;
        outlined init with take of Equatable(&v31, v2 + 40 * v11 + 32);
        v13 = type metadata accessor for DecodingError();
        swift_allocError();
        v15 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
        *v15 = v9;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B08], v13);
LABEL_24:
        swift_willThrow();
        return v2 & 1;
      }

LABEL_27:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
      goto LABEL_4;
    }

    v2 = v6;
    v16 = v7;
    LOBYTE(v4) = v8;
    *(v0 + 8) = JSONMap.offset(after:)(v5);
    *(v0 + 24) = v2;
    *(v0 + 32) = v16;
    *(v0 + 40) = v4;
  }

  v9 = v4 >> 5;
  v17 = *(v0 + 64);
  if (v9 != 2)
  {
    _CodingPathNode.path.getter(*(v1 + 72));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    specialized Array.append<A>(contentsOf:)(inited);
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    *v20 = MEMORY[0x1E69E6370];
    _StringGuts.grow(_:)(43);

    *&v31 = 0xD000000000000022;
    *(&v31 + 1) = 0x8000000181482220;
    v22 = 0xE800000000000000;
    v23 = 0x676E697274732061;
    v24 = 0xEC0000007972616ELL;
    v25 = 0x6F69746369642061;
    v26 = 0xE800000000000000;
    v27 = 0x7961727261206E61;
    if (v9 != 4)
    {
      v27 = 1819047278;
      v26 = 0xE400000000000000;
    }

    if (v9 != 3)
    {
      v25 = v27;
      v24 = v26;
    }

    if (v9)
    {
      v23 = 0x7265626D756ELL;
      v22 = 0xE600000000000000;
    }

    if (v9 <= 2)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    if (v9 <= 2)
    {
      v29 = v22;
    }

    else
    {
      v29 = v24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    MEMORY[0x1865CB0E0](v28, v29);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v2);
    goto LABEL_24;
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 64) = v17 + 1;
  *v3 = 0;
  v3[1] = 0;
  *(v1 + 40) = -2;
  return v2 & 1;
}

{
  v3 = v0;
  v5 = (v0 + 24);
  v4 = *(v0 + 24);
  v6 = *(v0 + 40);
  if (v6 < 0xFE)
  {
    v19 = *(v0 + 32);
LABEL_9:
    v11 = *v0;
    v25 = *(v3 + 64);
    result = specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v4, v19, v6, *(v3 + 72), v25, 0, 0, 2);
    if (v1)
    {
      return result;
    }

    if (!__OFADD__(v25, 1))
    {
      *(v3 + 64) = v25 + 1;
      *v5 = 0;
      v5[1] = 0;
      *(v3 + 40) = -2;
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v0 + 8);
  v8 = JSONMap.loadValue(at:)(v7);
  if (v10 <= 0xFDu)
  {
    v2 = v8;
    v20 = v7;
    v21 = v10;
    v22 = v9;
    v23 = JSONMap.offset(after:)(v20);
    v19 = v22;
    LOBYTE(v6) = v21;
    v24 = v23;
    v4 = v2;
    *(v0 + 8) = v24;
    *(v0 + 24) = v2;
    *(v0 + 32) = v22;
    *(v0 + 40) = v21;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd);
  v2 = MEMORY[0x1E69E63B0];
  v11 = _CodingPathNode.path.getter(*(v0 + 72));
  v5 = *(v3 + 64);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  v27 = &type metadata for _CodingKey;
  v28 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v14 = swift_allocObject();
  *&v26 = v14;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = v5;
  *(v14 + 40) = 2;
  v11[2] = v13 + 1;
  outlined init with take of Equatable(&v26, &v11[5 * v13 + 4]);
  v15 = type metadata accessor for DecodingError();
  swift_allocError();
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v17 = v2;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
  return swift_willThrow();
}

{
  v3 = v0;
  v5 = (v0 + 24);
  v4 = *(v0 + 24);
  v6 = *(v0 + 40);
  if (v6 < 0xFE)
  {
    v19 = *(v0 + 32);
LABEL_9:
    v11 = *v0;
    v25 = *(v3 + 64);
    result = specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v4, v19, v6, *(v3 + 72), v25, 0, 0, 2);
    if (v1)
    {
      return result;
    }

    if (!__OFADD__(v25, 1))
    {
      *(v3 + 64) = v25 + 1;
      *v5 = 0;
      v5[1] = 0;
      *(v3 + 40) = -2;
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v0 + 8);
  v8 = JSONMap.loadValue(at:)(v7);
  if (v10 <= 0xFDu)
  {
    v2 = v8;
    v20 = v7;
    v21 = v10;
    v22 = v9;
    v23 = JSONMap.offset(after:)(v20);
    v19 = v22;
    LOBYTE(v6) = v21;
    v24 = v23;
    v4 = v2;
    *(v0 + 8) = v24;
    *(v0 + 24) = v2;
    *(v0 + 32) = v22;
    *(v0 + 40) = v21;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd);
  v2 = MEMORY[0x1E69E6448];
  v11 = _CodingPathNode.path.getter(*(v0 + 72));
  v5 = *(v3 + 64);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  v27 = &type metadata for _CodingKey;
  v28 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v14 = swift_allocObject();
  *&v26 = v14;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = v5;
  *(v14 + 40) = 2;
  v11[2] = v13 + 1;
  outlined init with take of Equatable(&v26, &v11[5 * v13 + 4]);
  v15 = type metadata accessor for DecodingError();
  swift_allocError();
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v17 = v2;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
  return swift_willThrow();
}

void specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (v2 < 0xFE)
  {
    v7 = *(v0 + 32);
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = JSONMap.loadValue(at:)(v3);
    if (v6 > 0xFDu)
    {
LABEL_28:
      v27 = *(v0 + 64);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
      }

      else
      {
        *(v0 + 64) = v29;
        *(v0 + 24) = 0;
        *(v0 + 32) = 0;
        *(v0 + 40) = -2;
      }

      return;
    }

    v1 = v4;
    v7 = v5;
    LOBYTE(v2) = v6;
    *(v0 + 8) = JSONMap.offset(after:)(v3);
    *(v0 + 24) = v1;
    *(v0 + 32) = v7;
    *(v0 + 40) = v2;
  }

  v8 = v2 >> 5;
  if (v8 == 2)
  {
    goto LABEL_28;
  }

  v9 = v8 == 5 && (v7 | v1) == 0;
  if (v9 && v2 == 160)
  {
    goto LABEL_28;
  }

  v10 = *(v0 + 64);
  _CodingPathNode.path.getter(*(v0 + 72));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_181218E20;
  *(inited + 56) = &type metadata for _CodingKey;
  *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 2;
  specialized Array.append<A>(contentsOf:)(inited);
  v13 = type metadata accessor for DecodingError();
  swift_allocError();
  v15 = v14;
  *v14 = MEMORY[0x1E69E6370];
  _StringGuts.grow(_:)(43);

  v16 = 0xE800000000000000;
  v17 = 0x676E697274732061;
  v18 = 0xEC0000007972616ELL;
  v19 = 0x6F69746369642061;
  v20 = 0xE800000000000000;
  v21 = 0x7961727261206E61;
  if (v8 != 4)
  {
    v21 = 1819047278;
    v20 = 0xE400000000000000;
  }

  if (v8 != 3)
  {
    v19 = v21;
    v18 = v20;
  }

  v22 = 0xE600000000000000;
  v23 = 0x7265626D756ELL;
  if (v8 != 1)
  {
    v23 = 1819242338;
    v22 = 0xE400000000000000;
  }

  if (v8)
  {
    v17 = v23;
    v16 = v22;
  }

  v24 = v8 <= 2;
  if (v8 <= 2)
  {
    v25 = v17;
  }

  else
  {
    v25 = v19;
  }

  if (v24)
  {
    v26 = v16;
  }

  else
  {
    v26 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  MEMORY[0x1865CB0E0](v25, v26);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
  swift_willThrow();
}

uint64_t specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  if (v3 < 0xFE)
  {
    v9 = *(v0 + 32);
  }

  else
  {
    v4 = *(v0 + 8);
    v5 = JSONMap.loadValue(at:)(v4);
    if (v7 > 0xFDu)
    {
      result = 0;
      goto LABEL_15;
    }

    v10 = v5;
    v11 = v4;
    v12 = v7;
    v13 = v6;
    v14 = JSONMap.offset(after:)(v11);
    v9 = v13;
    LOBYTE(v3) = v12;
    v15 = v14;
    v2 = v10;
    *(v0 + 8) = v15;
    *(v0 + 24) = v10;
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
  }

  v16 = (v3 & 0xE0) == 0xA0 && (v9 | v2) == 0;
  if (v16 && v3 == 160)
  {
    result = 0;
  }

  else
  {
    result = specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v2, v9, v3, *(v0 + 72), *(v0 + 64), 0, 0, 2);
    if (v1)
    {
      return result;
    }

    result = v17;
  }

LABEL_15:
  v18 = *(v0 + 64);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 64) = v20;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = -2;
  }

  return result;
}

unint64_t specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)()
{
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  if (v3 < 0xFE)
  {
    v9 = *(v0 + 32);
  }

  else
  {
    v4 = *(v0 + 8);
    result = JSONMap.loadValue(at:)(v4);
    if (v6 > 0xFDu)
    {
      v7 = 0;
      v8 = 1;
      goto LABEL_15;
    }

    v10 = result;
    v11 = v4;
    v12 = v6;
    v13 = v5;
    v14 = JSONMap.offset(after:)(v11);
    v9 = v13;
    LOBYTE(v3) = v12;
    v15 = v14;
    result = v10;
    *(v0 + 8) = v15;
    *(v0 + 24) = v10;
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
  }

  v16 = (v3 & 0xE0) == 0xA0 && (v9 | result) == 0;
  if (v16 && v3 == 160)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    result = specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(result, v9, v3, *(v0 + 72), *(v0 + 64), 0, 0, 2);
    if (v1)
    {
      return result;
    }

    v8 = 0;
    v7 = v17;
  }

LABEL_15:
  v18 = *(v0 + 64);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 64) = v20;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = -2;
    return v7 | (v8 << 32);
  }

  return result;
}

uint64_t specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(uint64_t (*a1)(void))
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  if (v5 < 0xFE)
  {
    v12 = *(v1 + 32);
  }

  else
  {
    v6 = *(v1 + 8);
    v7 = JSONMap.loadValue(at:)(v6);
    if (v9 > 0xFDu)
    {
      result = 0;
      v11 = 1;
      goto LABEL_15;
    }

    v13 = v7;
    v14 = v6;
    v15 = v9;
    v16 = v8;
    v17 = JSONMap.offset(after:)(v14);
    v12 = v16;
    LOBYTE(v5) = v15;
    v18 = v17;
    v4 = v13;
    *(v1 + 8) = v18;
    *(v1 + 24) = v13;
    *(v1 + 32) = v16;
    *(v1 + 40) = v15;
  }

  v19 = (v5 & 0xE0) == 0xA0 && (v12 | v4) == 0;
  if (v19 && v5 == 160)
  {
    result = 0;
    v11 = 1;
  }

  else
  {
    result = a1();
    if (v2)
    {
      return result;
    }

    v11 = 0;
  }

LABEL_15:
  v20 = *(v1 + 64);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v22;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -2;
    return result | (v11 << 8);
  }

  return result;
}

{
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  if (v5 < 0xFE)
  {
    v12 = *(v1 + 32);
  }

  else
  {
    v6 = *(v1 + 8);
    v7 = JSONMap.loadValue(at:)(v6);
    if (v9 > 0xFDu)
    {
      result = 0;
      v11 = 1;
      goto LABEL_15;
    }

    v13 = v7;
    v14 = v6;
    v15 = v9;
    v16 = v8;
    v17 = JSONMap.offset(after:)(v14);
    v12 = v16;
    LOBYTE(v5) = v15;
    v18 = v17;
    v4 = v13;
    *(v1 + 8) = v18;
    *(v1 + 24) = v13;
    *(v1 + 32) = v16;
    *(v1 + 40) = v15;
  }

  v19 = (v5 & 0xE0) == 0xA0 && (v12 | v4) == 0;
  if (v19 && v5 == 160)
  {
    result = 0;
    v11 = 1;
  }

  else
  {
    result = a1();
    if (v2)
    {
      return result;
    }

    v11 = 0;
  }

LABEL_15:
  v20 = *(v1 + 64);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v22;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -2;
    return result | (v11 << 16);
  }

  return result;
}

{
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  if (v5 < 0xFE)
  {
    v11 = *(v1 + 32);
  }

  else
  {
    v6 = *(v1 + 8);
    v7 = JSONMap.loadValue(at:)(v6);
    if (v9 > 0xFDu)
    {
      result = 0;
      goto LABEL_14;
    }

    v12 = v7;
    v13 = v6;
    v14 = v9;
    v15 = v8;
    v16 = JSONMap.offset(after:)(v13);
    v11 = v15;
    LOBYTE(v5) = v14;
    v17 = v16;
    v4 = v12;
    *(v1 + 8) = v17;
    *(v1 + 24) = v12;
    *(v1 + 32) = v15;
    *(v1 + 40) = v14;
  }

  v18 = (v5 & 0xE0) == 0xA0 && (v11 | v4) == 0;
  if (v18 && v5 == 160)
  {
    result = 0;
  }

  else
  {
    result = a1();
    if (v2)
    {
      return result;
    }
  }

LABEL_14:
  v19 = *(v1 + 64);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v21;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -2;
  }

  return result;
}

unint64_t specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(uint64_t (*a1)(void))
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  if (v5 < 0xFE)
  {
    v12 = *(v1 + 32);
  }

  else
  {
    v6 = *(v1 + 8);
    v7 = JSONMap.loadValue(at:)(v6);
    if (v9 > 0xFDu)
    {
      result = 0;
      v11 = 1;
      goto LABEL_15;
    }

    v13 = v7;
    v14 = v6;
    v15 = v9;
    v16 = v8;
    v17 = JSONMap.offset(after:)(v14);
    v12 = v16;
    LOBYTE(v5) = v15;
    v18 = v17;
    v4 = v13;
    *(v1 + 8) = v18;
    *(v1 + 24) = v13;
    *(v1 + 32) = v16;
    *(v1 + 40) = v15;
  }

  v19 = (v5 & 0xE0) == 0xA0 && (v12 | v4) == 0;
  if (v19 && v5 == 160)
  {
    result = 0;
    v11 = 1;
  }

  else
  {
    result = a1();
    if (v2)
    {
      return result;
    }

    v11 = 0;
  }

LABEL_15:
  v20 = *(v1 + 64);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v22;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -2;
    return result | (v11 << 32);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseInteger<A>(_:), specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseInteger<A>(_:), specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:), a5);
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized _parseInteger<A>(_:), _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt16V_SdTt1g5, _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6UInt16V_Tt1g5, a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized _parseInteger<A>(_:), _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int16V_SdTt1g5, _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5Int16V_Tt1g5, a5);
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized _parseInteger<A>(_:), _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SdTt1g5, _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5UInt8V_Tt1g5, a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized _parseJSON5Integer<A>(_:isHex:), specialized _parseInteger<A>(_:), _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs4Int8V_SdTt1g5, _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs4Int8V_Tt1g5, a5);
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, uint64_t, uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  result = a7(a1, a2, a3, a4, *(v8 + 32), *(v8 + 33), a5, a6);
  if (!v9)
  {
    *a8 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void)@<X4>, _DWORD *a6@<X8>)
{
  result = a5(a1, a2, a3, a4, *(v6 + 32), *(v6 + 33));
  if (!v7)
  {
    *a6 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, unint64_t, void)@<X4>, uint64_t (*a6)(char *, unint64_t)@<X5>, uint64_t (*a7)(char **)@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t)@<X7>, _WORD *a9@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 32), *(v9 + 33), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, unint64_t, void)@<X4>, uint64_t (*a6)(char *, unint64_t)@<X5>, uint64_t (*a7)(char **)@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t)@<X7>, _BYTE *a9@<X8>)
{
  result = specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v9 + 32), *(v9 + 33), a5, a6, a7, a8);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

unint64_t partial apply for specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)@<X0>(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 4) = BYTE4(result) & 1;
  }

  return result;
}

void partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, float *a5@<X8>)
{
  v8 = specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v5 + 32), *(v5 + 33));
  if (!v6)
  {
    *a5 = v8;
  }
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void)@<X4>, uint64_t *a6@<X8>)
{
  result = a5(a1, a2, a3, a4, *(v6 + 32), *(v6 + 33));
  if (!v7)
  {
    *a6 = result;
    a6[1] = v10;
  }

  return result;
}

void *closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_SS_AF10JSONFutureOts5NeverOTg5016_s10Foundation16ef27O20convertedToObjectRefAA10G39O0gF0CSgyFSS_AFtSS3key_AC5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v36 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v36;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v29 = v3 + 72;
  v30 = v1;
  v31 = v8;
  v32 = v3 + 64;
  v33 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v34 = v7;
    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = v12[1];
    v35 = *v12;
    v14 = v11 + 24 * v6;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);

    result = outlined copy of JSONEncoderValue(v15, v16, v17);
    v19 = *(v36 + 16);
    v18 = *(v36 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v20 = v19 + 1;
    }

    *(v36 + 16) = v20;
    v21 = v36 + 40 * v19;
    *(v21 + 32) = v35;
    *(v21 + 40) = v13;
    *(v21 + 48) = v15;
    *(v21 + 56) = v16;
    *(v21 + 64) = v17;
    v3 = v33;
    v9 = 1 << *(v33 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v32;
    v22 = *(v32 + 8 * v10);
    if ((v22 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v31;
    if (v31 != *(v33 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v6 & 0x3F));
    if (v23)
    {
      v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v10 << 6;
      v25 = v10 + 1;
      v26 = (v29 + 8 * v10);
      while (v25 < (v9 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v31, 0);
          v9 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v31, 0);
    }

LABEL_4:
    v7 = v34 + 1;
    v6 = v9;
    if (v34 + 1 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t (*JSONEncoder.outputFormatting.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 16);
  return JSONEncoder.outputFormatting.modify;
}

uint64_t JSONEncoder.outputFormatting.modify(void *a1)
{
  v1 = a1[1];
  *(v1 + 16) = *a1;
  v2 = *(v1 + 136);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t key path setter for JSONEncoder.dateEncodingStrategy : JSONEncoder(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = v4;
  v5 = *(*v3 + 128);
  outlined copy of JSONDecoder.DateDecodingStrategy(v7[0], v2, v4);
  return v5(v7);
}

uint64_t JSONEncoder.dateEncodingStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v1 + 40);
  *(a1 + 16) = v6;
  v7 = *(v1 + 136);
  outlined copy of JSONDecoder.DateDecodingStrategy(v4, v5, v6);

  os_unfair_lock_unlock(v7 + 4);
}

void (*JSONEncoder.dateEncodingStrategy.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v1 + 40);
  *(a1 + 16) = v6;
  outlined copy of JSONDecoder.DateDecodingStrategy(v4, v5, v6);
  return JSONEncoder.dateEncodingStrategy.modify;
}

void JSONEncoder.dateEncodingStrategy.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v3;
  v6 = *(a1 + 16);
  v7 = *(v1 + 40);
  *(v1 + 40) = v6;
  outlined copy of JSONDecoder.DateDecodingStrategy(v2, v3, v6);
  outlined consume of JSONDecoder.DateDecodingStrategy(v4, v5, v7);
  v8 = *(v1 + 136);

  os_unfair_lock_unlock(v8 + 4);

  outlined consume of JSONDecoder.DateDecodingStrategy(v2, v3, v6);
}

uint64_t JSONEncoder.dataEncodingStrategy.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[6];
  v5 = v1[7];
  *a1 = v4;
  a1[1] = v5;
  v6 = v1[17];
  sub_1807A98E4(v4);

  os_unfair_lock_unlock(v6 + 4);
}

unint64_t (*JSONEncoder.dataEncodingStrategy.modify(unint64_t *a1))(unint64_t *a1)
{
  a1[2] = v1;
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[6];
  v5 = v1[7];
  *a1 = v4;
  a1[1] = v5;
  sub_1807A98E4(v4);
  return JSONEncoder.dataEncodingStrategy.modify;
}

unint64_t JSONEncoder.dataEncodingStrategy.modify(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = v2[6];
  v2[6] = *a1;
  v2[7] = v1;
  sub_1807A98E4(v3);
  sub_1807A5C7C(v4);
  v5 = v2[17];

  os_unfair_lock_unlock(v5 + 4);

  return sub_1807A5C7C(v3);
}

uint64_t key path setter for JSONEncoder.nonConformingFloatEncodingStrategy : JSONEncoder(uint64_t *a1, uint64_t *a2)
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
  v8 = *(*v7 + 176);
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v10[0], v2);
  return v8(v10);
}

uint64_t JSONEncoder.nonConformingFloatEncodingStrategy.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  v10 = v1[17];
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v4, v5);

  os_unfair_lock_unlock(v10 + 4);
}

void (*JSONEncoder.nonConformingFloatEncodingStrategy.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = v1[17];

  os_unfair_lock_lock(v5 + 4);

  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v11 = v1[13];
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v6, v7);
  return JSONEncoder.nonConformingFloatEncodingStrategy.modify;
}

void JSONEncoder.nonConformingFloatEncodingStrategy.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[6];
  v4 = **a1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v3[8];
  v10 = v3[9];
  v3[8] = v4;
  v3[9] = v5;
  v3[10] = v6;
  v3[11] = v7;
  v3[12] = v8;
  v3[13] = v2;
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v4, v5);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v9, v10);
  v11 = v3[17];

  os_unfair_lock_unlock(v11 + 4);

  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(*v1, v1[1]);

  free(v1);
}

uint64_t JSONEncoder.keyEncodingStrategy.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[14];
  v5 = v1[15];
  *a1 = v4;
  a1[1] = v5;
  v6 = v1[17];
  sub_1807A98E4(v4);

  os_unfair_lock_unlock(v6 + 4);
}

unint64_t (*JSONEncoder.keyEncodingStrategy.modify(unint64_t *a1))(unint64_t *a1)
{
  a1[2] = v1;
  v3 = v1[17];

  os_unfair_lock_lock(v3 + 4);

  v4 = v1[14];
  v5 = v1[15];
  *a1 = v4;
  a1[1] = v5;
  sub_1807A98E4(v4);
  return JSONEncoder.keyEncodingStrategy.modify;
}

unint64_t JSONEncoder.keyEncodingStrategy.modify(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = v2[14];
  v2[14] = *a1;
  v2[15] = v1;
  sub_1807A98E4(v3);
  sub_1807A5C7C(v4);
  v5 = v2[17];

  os_unfair_lock_unlock(v5 + 4);

  return sub_1807A5C7C(v3);
}

uint64_t JSONEncoder.userInfo.getter()
{
  v1 = *(v0 + 136);

  os_unfair_lock_lock(v1 + 4);

  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  os_unfair_lock_unlock(v3 + 4);

  return v2;
}

uint64_t JSONEncoder.userInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  *(v1 + 128) = a1;

  v4 = *(v1 + 136);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t JSONEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 2;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 136) = v2;
  return v0;
}

uint64_t JSONEncoder.deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 112);
  outlined consume of JSONDecoder.DateDecodingStrategy(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_1807A5C7C(v1);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v2, v3);
  sub_1807A5C7C(v4);

  return v0;
}

uint64_t __JSONEncoder.codingPath.getter()
{
  outlined init with copy of FloatingPointRoundingRule?(v0 + 192, &v21, &_ss9CodingKey_pSgMd);
  if (!v22)
  {
    outlined destroy of TermOfAddress?(&v21, &_ss9CodingKey_pSgMd);
    v1 = MEMORY[0x1E69E7CC0];
    v7 = *(v0 + 176);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_15:

    goto LABEL_16;
  }

  outlined init with take of Equatable(&v21, v23);
  outlined init with copy of Hashable & Sendable(v23, &v21);
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  v17 = v22;
  v4 = v22;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(&v21, v22);
  v20 = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
  v1[2] = v3 + 1;
  outlined init with take of Equatable(&v19, &v1[5 * v3 + 4]);
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v7 = *(v0 + 176);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_5:

  outlined init with copy of FloatingPointRoundingRule?(v7 + 192, &v21, &_ss9CodingKey_pSgMd);
  if (v22)
  {
    v8 = v7;
    while (1)
    {
      outlined init with take of Equatable(&v21, v23);
      outlined init with copy of Hashable & Sendable(v23, &v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
      }

      v10 = v1[2];
      v9 = v1[3];
      if (v10 >= v9 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v1);
      }

      __swift_destroy_boxed_opaque_existential_1(v23);
      v18 = v22;
      v11 = v22;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(&v21, v22);
      v20 = v18;
      v13 = __swift_allocate_boxed_opaque_existential_0(&v19);
      (*(*(v11 - 8) + 16))(v13, v12, v11);
      v1[2] = v10 + 1;
      outlined init with take of Equatable(&v19, &v1[5 * v10 + 4]);
      __swift_destroy_boxed_opaque_existential_1(&v21);
      v14 = *(v8 + 176);
      if (!v14)
      {
        break;
      }

      outlined init with copy of FloatingPointRoundingRule?(v14 + 192, &v21, &_ss9CodingKey_pSgMd);
      v8 = v14;
      if (!v22)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:

    outlined destroy of TermOfAddress?(&v21, &_ss9CodingKey_pSgMd);
  }

LABEL_16:
  v15 = specialized Sequence.reversed()(v1);

  return v15;
}

uint64_t JSONEncoderValue.convertedToArrayRef()(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != 3)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v14;
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      outlined copy of JSONEncoderValue(v7, v8, *v6);
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      v6 += 24;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 24 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      *(v12 + 48) = v9;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for JSONFuture.RefArray();
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

uint64_t specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v29 = a6;
  v18 = __JSONEncoder.codingPath.getter();
  (*(v15 + 16))(v17, a2, v14);
  if ((*(v11 + 48))(v17, 1, a3) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v13, v17, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_181218E20;
    *(v21 + 56) = a3;
    *(v21 + 64) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
    v20(boxed_opaque_existential_0, v13, a3);
    v19 = v21;
  }

  v27 = v18;
  specialized Array.append<A>(contentsOf:)(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
  *(a5 + 24) = MEMORY[0x1E69E63B0];
  *a5 = a6;
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x80000001814824F0);
  MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181482510);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v23 = *MEMORY[0x1E69E6B30];
  v24 = type metadata accessor for EncodingError();
  return (*(*(v24 - 8) + 104))(a5, v23, v24);
}

uint64_t specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v29 = a6;
  v18 = __JSONEncoder.codingPath.getter();
  (*(v15 + 16))(v17, a2, v14);
  if ((*(v11 + 48))(v17, 1, a3) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v13, v17, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_181218E20;
    *(v21 + 56) = a3;
    *(v21 + 64) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
    v20(boxed_opaque_existential_0, v13, a3);
    v19 = v21;
  }

  v27 = v18;
  specialized Array.append<A>(contentsOf:)(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
  *(a5 + 24) = MEMORY[0x1E69E6448];
  *a5 = a6;
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x80000001814824F0);
  MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181482510);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v23 = *MEMORY[0x1E69E6B30];
  v24 = type metadata accessor for EncodingError();
  return (*(*(v24 - 8) + 104))(a5, v23, v24);
}

uint64_t specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>, float a6@<S0>)
{
  v12 = ~a4;
  __JSONEncoder.codingPath.getter();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_181218E20;
    *(v13 + 56) = &type metadata for _CodingKey;
    *(v13 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v14 = swift_allocObject();
    *(v13 + 32) = v14;
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  outlined copy of _CodingKey?(a1, a2, a3, a4);
  specialized Array.append<A>(contentsOf:)(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
  *(a5 + 24) = MEMORY[0x1E69E6448];
  *a5 = a6;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x80000001814824F0);
  MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181482510);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v15 = *MEMORY[0x1E69E6B30];
  v16 = type metadata accessor for EncodingError();
  return (*(*(v16 - 8) + 104))(a5, v15, v16);
}

uint64_t specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = ~a4;
  __JSONEncoder.codingPath.getter();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_181218E20;
    *(v13 + 56) = &type metadata for _CodingKey;
    *(v13 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v14 = swift_allocObject();
    *(v13 + 32) = v14;
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  outlined copy of _CodingKey?(a1, a2, a3, a4);
  specialized Array.append<A>(contentsOf:)(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
  *(a5 + 24) = MEMORY[0x1E69E63B0];
  *a5 = a6;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x80000001814824F0);
  MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181482510);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v15 = *MEMORY[0x1E69E6B30];
  v16 = type metadata accessor for EncodingError();
  return (*(*(v16 - 8) + 104))(a5, v15, v16);
}

uint64_t specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (a1[1])
  {
    if (a6 == INFINITY)
    {
      v7 = *a1;
    }

    else
    {
      v7 = a1[2];
      v12 = a1[4];

      if (a6 != -INFINITY)
      {
        return v12;
      }
    }
  }

  else
  {
    v7 = a5;
    type metadata accessor for EncodingError();
    swift_allocError();
    specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)(a2, a3, a4, v7, v11, a6);
    swift_willThrow();
  }

  return v7;
}

uint64_t specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  if (a1[1])
  {
    if (a6 == INFINITY)
    {
      v7 = *a1;
    }

    else
    {
      v7 = a1[2];
      v12 = a1[4];

      if (a6 != -INFINITY)
      {
        return v12;
      }
    }
  }

  else
  {
    v7 = a5;
    type metadata accessor for EncodingError();
    swift_allocError();
    specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)(a2, a3, a4, v7, v11, a6);
    swift_willThrow();
  }

  return v7;
}

uint64_t specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(uint64_t *a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[1])
  {
    if (a2 == INFINITY)
    {
      v8 = *a1;
    }

    else
    {
      v8 = a1[2];
      v13 = a1[4];

      if (a2 != -INFINITY)
      {
        return v13;
      }
    }
  }

  else
  {
    v8 = a7;
    type metadata accessor for EncodingError();
    swift_allocError();
    specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)(a4, a5, a6, v8, v12, a2);
    swift_willThrow();
  }

  return v8;
}

uint64_t specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[1])
  {
    if (a2 == INFINITY)
    {
      v8 = *a1;
    }

    else
    {
      v8 = a1[2];
      v13 = a1[4];

      if (a2 != -INFINITY)
      {
        return v13;
      }
    }
  }

  else
  {
    v8 = a7;
    type metadata accessor for EncodingError();
    swift_allocError();
    specialized static JSONEncoderValue.cannotEncodeNumber<A, B>(_:encoder:_:)(a4, a5, a6, v8, v12, a2);
    swift_willThrow();
  }

  return v8;
}

uint64_t _JSONKeyedEncodingContainer.codingPath.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = __JSONEncoder.codingPath.getter();
  v5 = _CodingPathNode.path.getter(a3);
  specialized Array.append<A>(contentsOf:)(v5);
  return v4;
}

unint64_t _JSONKeyedEncodingContainer.encodeNil(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v9 = v2;
  v7 = *v2;
  v8 = v9[1];
  v10 = v5[2];
  v12 = *(a2 + 24);
  v155 = *(a2 + 16);
  v11 = v155;
  v156 = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v154);
  v14 = *(v11 - 8);
  (*(v14 + 16))(boxed_opaque_existential_0, a1, v11);
  v15 = *(v7 + 152);
  if (!v15)
  {
    v18 = dispatch thunk of CodingKey.stringValue.getter();
    v19 = v27;
    goto LABEL_84;
  }

  if (v15 != 1)
  {
    v28 = *(v7 + 160);

    v29 = __JSONEncoder.codingPath.getter();
    v30 = _CodingPathNode.path.getter(v10);
    v151 = v29;
    specialized Array.append<A>(contentsOf:)(v30);
    v31 = v29;
    outlined init with copy of Hashable & Sendable(v154, &v151);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    }

    boxed_opaque_existential_0 = v31[2];
    v33 = v31[3];
    v143 = v8;
    v144 = v3;
    v147 = boxed_opaque_existential_0 + 1;
    if (boxed_opaque_existential_0 >= v33 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), boxed_opaque_existential_0 + 1, 1, v31);
    }

    v34 = __swift_mutable_project_boxed_opaque_existential_1(&v151, v153);
    v35 = MEMORY[0x1EEE9AC00](v34);
    v37 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v37, v35);
    v149 = v11;
    v150 = v12;
    v39 = __swift_allocate_boxed_opaque_existential_0(&v148);
    (*(v14 + 32))(v39, v37, v11);
    v31[2] = v147;
    outlined init with take of Equatable(&v148, &v31[5 * boxed_opaque_existential_0 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v151);
    LOBYTE(boxed_opaque_existential_0) = v157;
    v15(&v151, v31);

    __swift_project_boxed_opaque_existential_1(&v151, v153);
    v18 = dispatch thunk of CodingKey.stringValue.getter();
    v19 = v40;
    sub_1807A5C7C(v15);
    __swift_destroy_boxed_opaque_existential_1(&v151);
    goto LABEL_83;
  }

  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = v16;
  v19 = v17;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v143 = v8;
    v144 = v3;
    v21 = String.index(after:)();
    v22 = 7;
    if (((v19 >> 60) & ((v18 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v141 = 4 * v20;
    if (4 * v20 < v21 >> 14)
    {
      __break(1u);
    }

    else
    {
      v140 = v22 | (v20 << 16);
      v142 = v19;
      v23 = String.subscript.getter();
      v4 = v26;
      v10 = MEMORY[0x1E69E7CC0];
      v157 = v18;
      if ((v23 ^ v24) >= 0x4000)
      {
        v41 = v23;
        v42 = v24;
        v8 = v25;
        v19 = 0x700030001;
        boxed_opaque_existential_0 = 15;
        while (1)
        {
          v139 = boxed_opaque_existential_0;
          v145 = v10;
          v43 = Substring.UnicodeScalarView.index(before:)();
          v44 = Substring.UnicodeScalarView.subscript.getter();
          v45 = v44;
          v46 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v44), 1u);
          v18 = v41;
          if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v45, v46, 0x700030001))
          {
            break;
          }

LABEL_20:
          v47 = Substring.UnicodeScalarView.index(after:)();

          v49 = v18 >> 14;
          v50 = v139;
          if (v18 >> 14 < v139 >> 14 || v47 >> 14 < v49)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v51 = v145;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 2) + 1, 1, v145);
            v51 = result;
          }

          v53 = *(v51 + 2);
          v52 = *(v51 + 3);
          if (v53 >= v52 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v51);
            v51 = result;
          }

          *(v51 + 2) = v53 + 1;
          v145 = v51;
          v54 = &v51[16 * v53];
          *(v54 + 4) = v50;
          *(v54 + 5) = v18;
          v137 = v18 >> 14;
          if (v141 < v49)
          {
            goto LABEL_117;
          }

          v55 = String.subscript.getter();
          v4 = v57;
          if ((v55 ^ v58) < 0x4000)
          {
            goto LABEL_73;
          }

          v59 = v55;
          v8 = v56;
          v147 = Substring.UnicodeScalarView.index(before:)();
          v60 = Substring.UnicodeScalarView.subscript.getter();
          v61 = v60;
          LOBYTE(boxed_opaque_existential_0) = 0;
          v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v60), 0);
          v63 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v61, v62, 0x700030000);
          v64 = v59;
          v19 = v142;
          if (!v63)
          {
            v75 = HIBYTE(v4) & 0xF;
            if ((v4 & 0x2000000000000000) == 0)
            {
              v75 = v8 & 0xFFFFFFFFFFFFLL;
            }

            v146 = v75;
            v139 = v4 & 0xFFFFFFFFFFFFFFLL;
            v138 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v64 = v59;
            while ((v64 ^ v147) >= 0x4000)
            {
              v69 = _StringGuts.validateInclusiveScalarIndex(_:)(v64, v8, v4);
              v42 = v69 >> 16;
              if (v69 >> 16 >= v146)
              {
                goto LABEL_93;
              }

              if ((v4 & 0x1000000000000000) != 0)
              {
                v64 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v4 & 0x2000000000000000) != 0)
                {
                  v151 = v8;
                  v152 = v139;
                  v80 = *(&v151 + v42);
                }

                else
                {
                  v79 = v138;
                  if ((v8 & 0x1000000000000000) == 0)
                  {
                    v79 = _StringObject.sharedUTF8.getter();
                  }

                  v80 = *(v79 + v42);
                }

                v81 = v80;
                v82 = __clz(v80 ^ 0xFF) - 24;
                if (v81 >= 0)
                {
                  LOBYTE(v82) = 1;
                }

                v64 = ((v42 + v82) << 16) | 5;
              }

              v76 = Substring.UnicodeScalarView.subscript.getter();
              v77 = v76;
              v78 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v76), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v77, v78, 0x700030000))
              {
                goto LABEL_29;
              }
            }

LABEL_73:
            boxed_opaque_existential_0 = v18;
            v10 = v145;
            goto LABEL_74;
          }

LABEL_29:
          v65 = Substring.UnicodeScalarView.index(after:)();

          if (v65 >> 14 < v64 >> 14)
          {
            goto LABEL_118;
          }

          result = String.index(after:)();
          if (v64 >> 14 == result >> 14)
          {
            boxed_opaque_existential_0 = v18;
            v10 = v145;
          }

          else
          {
            result = String.index(before:)();
            if (v137 > result >> 14)
            {
              goto LABEL_120;
            }

            v83 = result;
            v10 = v145;
            v85 = *(v145 + 2);
            v84 = *(v145 + 3);
            if (v85 >= v84 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v145);
              v10 = result;
            }

            *(v10 + 2) = v85 + 1;
            v86 = &v10[16 * v85];
            *(v86 + 4) = v18;
            *(v86 + 5) = v83;
            boxed_opaque_existential_0 = v83;
          }

          if (v141 < v65 >> 14)
          {
            goto LABEL_119;
          }

          v41 = String.subscript.getter();
          v42 = v87;
          v8 = v88;
          v4 = v89;
          v19 = 0x700030001;
          if ((v41 ^ v87) < 0x4000)
          {
            goto LABEL_74;
          }
        }

        if ((v4 & 0x2000000000000000) != 0)
        {
          boxed_opaque_existential_0 = HIBYTE(v4) & 0xF;
        }

        else
        {
          boxed_opaque_existential_0 = v8 & 0xFFFFFFFFFFFFLL;
        }

        v146 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v147 = v4 & 0xFFFFFFFFFFFFFFLL;
        v18 = v41;
        while (1)
        {
          if ((v18 ^ v43) < 0x4000)
          {
            v10 = v145;
            boxed_opaque_existential_0 = v139;
            goto LABEL_74;
          }

          v69 = _StringGuts.validateInclusiveScalarIndex(_:)(v18, v8, v4);
          v70 = v69 >> 16;
          if (v69 >> 16 >= boxed_opaque_existential_0)
          {
            break;
          }

          if ((v4 & 0x1000000000000000) != 0)
          {
            v18 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v4 & 0x2000000000000000) != 0)
            {
              v151 = v8;
              v152 = v147;
              v72 = *(&v151 + v70);
            }

            else
            {
              v71 = v146;
              if ((v8 & 0x1000000000000000) == 0)
              {
                v71 = _StringObject.sharedUTF8.getter();
              }

              v72 = *(v71 + v70);
            }

            v73 = v72;
            v74 = __clz(v72 ^ 0xFF) - 24;
            if (v73 >= 0)
            {
              LOBYTE(v74) = 1;
            }

            v18 = ((v70 + v74) << 16) | 5;
          }

          v66 = Substring.UnicodeScalarView.subscript.getter();
          v67 = v66;
          v19 = 0x700030001;
          v68 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v66), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v67, v68, 0x700030001))
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      boxed_opaque_existential_0 = 15;
LABEL_74:

      if (v141 >= boxed_opaque_existential_0 >> 14)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_76:
          v91 = *(v10 + 2);
          v90 = *(v10 + 3);
          v92 = v91 + 1;
          if (v91 >= v90 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v10);
          }

          *(v10 + 2) = v92;
          v93 = &v10[16 * v91];
          v94 = v140;
          *(v93 + 4) = boxed_opaque_existential_0;
          *(v93 + 5) = v94;
          v151 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 0);
          boxed_opaque_existential_0 = v151;
          v145 = v10;
          v95 = v10 + 40;
          do
          {
            String.subscript.getter();
            v96 = Substring.lowercased()();

            v151 = boxed_opaque_existential_0;
            v98 = *(boxed_opaque_existential_0 + 16);
            v97 = *(boxed_opaque_existential_0 + 24);
            if (v98 >= v97 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
              boxed_opaque_existential_0 = v151;
            }

            v95 += 16;
            *(boxed_opaque_existential_0 + 16) = v98 + 1;
            *(boxed_opaque_existential_0 + 16 * v98 + 32) = v96;
            --v92;
          }

          while (v92);

          v151 = boxed_opaque_existential_0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v18 = BidirectionalCollection<>.joined(separator:)();
          v100 = v99;

          v19 = v100;
LABEL_83:
          v8 = v143;
          v4 = v144;
          goto LABEL_84;
        }

LABEL_115:
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        goto LABEL_76;
      }
    }

    __break(1u);
    goto LABEL_115;
  }

LABEL_84:
  __swift_destroy_boxed_opaque_existential_1(v154);
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v154[0] = *(v8 + 16);
  v42 = v154[0];
  *(v8 + 16) = 0x8000000000000000;
  v69 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v103 = *(v42 + 16);
  v104 = (v102 & 1) == 0;
  v105 = __OFADD__(v103, v104);
  v106 = v103 + v104;
  if (v105)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  LOBYTE(boxed_opaque_existential_0) = v102;
  if (*(v42 + 24) < v106)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v106, v101);
    v107 = v154[0];
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    if ((boxed_opaque_existential_0 & 1) == (v108 & 1))
    {
      goto LABEL_90;
    }

    v69 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v101)
  {
    v107 = v42;
LABEL_90:
    if (boxed_opaque_existential_0)
    {
LABEL_91:
      v109 = v69;

      v110 = *(v107 + 56) + 24 * v109;
      v111 = *v110;
      v112 = *(v110 + 8);
      *v110 = 0;
      *(v110 + 8) = 0;
      v113 = *(v110 + 16);
      *(v110 + 16) = 7;
      result = outlined consume of JSONFuture(v111, v112, v113);
LABEL_112:
      *(v8 + 16) = v107;
      return result;
    }

LABEL_111:
    result = specialized _NativeDictionary._insert(at:key:value:)(v69, v18, v19, 0, 0, 7, v107);
    goto LABEL_112;
  }

LABEL_95:
  v157 = v18;
  v146 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
  v114 = static _DictionaryStorage.copy(original:)();
  v107 = v114;
  if (!*(v42 + 16))
  {
LABEL_110:

    v69 = v146;
    v18 = v157;
    if (boxed_opaque_existential_0)
    {
      goto LABEL_91;
    }

    goto LABEL_111;
  }

  result = v114 + 64;
  v115 = v42 + 64;
  v116 = ((1 << *(v107 + 32)) + 63) >> 6;
  if (v107 != v42 || result >= v115 + 8 * v116)
  {
    result = memmove(result, (v42 + 64), 8 * v116);
  }

  v117 = 0;
  *(v107 + 16) = *(v42 + 16);
  v118 = 1 << *(v42 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & *(v42 + 64);
  v121 = (v118 + 63) >> 6;
  v143 = v8;
  v144 = v4;
  if (v120)
  {
    do
    {
      v122 = __clz(__rbit64(v120));
      v147 = (v120 - 1) & v120;
LABEL_108:
      v125 = v122 | (v117 << 6);
      v126 = 16 * v125;
      v127 = (*(v42 + 48) + 16 * v125);
      v129 = *v127;
      v128 = v127[1];
      v125 *= 24;
      v130 = *(v42 + 56) + v125;
      v131 = *v130;
      v132 = *(v130 + 8);
      v133 = (*(v107 + 48) + v126);
      v134 = *(v130 + 16);
      *v133 = v129;
      v133[1] = v128;
      v135 = *(v107 + 56) + v125;
      *v135 = v131;
      *(v135 + 8) = v132;
      *(v135 + 16) = v134;

      result = outlined copy of JSONFuture(v131, v132, v134);
      v8 = v143;
      v120 = v147;
    }

    while (v147);
  }

  v123 = v117;
  while (1)
  {
    v117 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      break;
    }

    if (v117 >= v121)
    {
      goto LABEL_110;
    }

    v124 = *(v115 + 8 * v117);
    ++v123;
    if (v124)
    {
      v122 = __clz(__rbit64(v124));
      v147 = (v124 - 1) & v124;
      goto LABEL_108;
    }
  }

LABEL_121:
  __break(1u);
  return result;
}

unint64_t _JSONKeyedEncodingContainer.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = &type metadata for _CodingKey;
  v100[3] = &type metadata for _CodingKey;
  v6 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v100[4] = v6;
  v7 = swift_allocObject();
  v100[0] = v7;
  *(v7 + 16) = xmmword_181237FF0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  v8 = *(v3 + 152);
  if (!v8)
  {

    v14 = 0xE500000000000000;
    v15 = 0x7265707573;
LABEL_80:
    __swift_destroy_boxed_opaque_existential_1(v100);
    v84 = v1[1];

    v85 = _s10Foundation24__JSONReferencingEncoder33_12768CA107A31EF2DCE034FD75B541C9LLC11referencing3key12convertedKey8wrappingAdA13__JSONEncoderACLLC_s06CodingN0_pSSAA10JSONFutureO9RefObjectCtcfCTf4nennn_nAA01_qN0O_Tt3g5(v3, 0x7265707573, 0xE500000000000000, 0, 0, v15, v14, v84);
    a1[3] = type metadata accessor for __JSONReferencingEncoder();
    result = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONReferencingEncoder and conformance __JSONEncoder, type metadata accessor for __JSONReferencingEncoder);
    a1[4] = result;
    *a1 = v85;
    return result;
  }

  v92 = v3;
  v93 = a1;
  v91 = v1;
  if (v8 != 1)
  {

    sub_1807A98E4(v8);
    v16 = __JSONEncoder.codingPath.getter();
    v17 = _CodingPathNode.path.getter(v4);
    v97 = v16;
    specialized Array.append<A>(contentsOf:)(v17);
    v4 = v16;
    outlined init with copy of Hashable & Sendable(v100, &v97);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_9:
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v4);
      }

      v20 = __swift_mutable_project_boxed_opaque_existential_1(&v97, v99);
      v21 = MEMORY[0x1EEE9AC00](v20);
      v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23, v21);
      v90 = *v23;
      v25 = *(v23 + 2);
      LOBYTE(v23) = v23[24];
      v95 = v5;
      v96 = v6;
      v26 = swift_allocObject();
      *&v94 = v26;
      *(v26 + 16) = v90;
      *(v26 + 32) = v25;
      *(v26 + 40) = v23;
      *(v4 + 16) = v19 + 1;
      outlined init with take of Equatable(&v94, v4 + 40 * v19 + 32);
      __swift_destroy_boxed_opaque_existential_1(&v97);
      (v8)(&v97, v4);

      __swift_project_boxed_opaque_existential_1(&v97, v99);
      v15 = dispatch thunk of CodingKey.stringValue.getter();
      v14 = v27;
      sub_1807A5C7C(v8);
      __swift_destroy_boxed_opaque_existential_1(&v97);
      a1 = v93;
LABEL_79:
      v1 = v91;
      v3 = v92;
      goto LABEL_80;
    }

LABEL_85:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    goto LABEL_9;
  }

  if (String.index(after:)() >> 14 > 0x14)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v9 = String.subscript.getter();
  v13 = v12;
  v6 = MEMORY[0x1E69E7CC0];
  if ((v9 ^ v10) < 0x4000)
  {
    v5 = 15;
LABEL_6:

LABEL_70:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    }

    v75 = *(v6 + 16);
    v74 = *(v6 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v6);
    }

    *(v6 + 16) = v76;
    v77 = v6 + 16 * v75;
    *(v77 + 32) = v5;
    *(v77 + 40) = 327687;
    v97 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76, 0);
    v78 = v97;
    v79 = v6 + 40;
    do
    {
      String.subscript.getter();
      v80 = Substring.lowercased()();

      v97 = v78;
      v82 = *(v78 + 16);
      v81 = *(v78 + 24);
      if (v82 >= v81 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
        v78 = v97;
      }

      v79 += 16;
      *(v78 + 16) = v82 + 1;
      *(v78 + 16 * v82 + 32) = v80;
      --v76;
    }

    while (v76);

    v97 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    v15 = BidirectionalCollection<>.joined(separator:)();
    v14 = v83;

    a1 = v93;
    goto LABEL_79;
  }

  v28 = v9;
  v8 = v10;
  v29 = v11;
  v88 = 15;
  while (1)
  {
    *&v90 = v6;
    v4 = Substring.UnicodeScalarView.index(before:)();
    v30 = Substring.UnicodeScalarView.subscript.getter();
    v31 = v30;
    v32 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v30), 1u);
    v5 = v28;
    if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v31, v32, 0x700030001))
    {
      break;
    }

LABEL_14:
    v33 = Substring.UnicodeScalarView.index(after:)();

    v35 = v88;
    if (v5 >> 14 < v88 >> 14 || v33 >> 14 < v5 >> 14)
    {
      goto LABEL_87;
    }

    v36 = v90;
    result = swift_isUniquelyReferenced_nonNull_native();
    v87 = v5 >> 14;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 16) + 1, 1, v90);
      v36 = result;
    }

    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    if (v38 >= v37 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
      v36 = result;
    }

    *(v36 + 16) = v38 + 1;
    v39 = v36 + 16 * v38;
    *(v39 + 32) = v35;
    *(v39 + 40) = v5;
    if (v5 > 0x53FFF)
    {
      goto LABEL_88;
    }

    *&v90 = v36;
    v40 = String.subscript.getter();
    v43 = v42;
    if ((v40 ^ v44) < 0x4000)
    {
      v6 = v90;
      goto LABEL_6;
    }

    v45 = v40;
    v46 = v41;
    v4 = Substring.UnicodeScalarView.index(before:)();
    v47 = Substring.UnicodeScalarView.subscript.getter();
    v48 = v47;
    v49 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v47), 0);
    v50 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v48, v49, 0x700030000);
    v51 = v45;
    if (!v50)
    {
      if ((v43 & 0x2000000000000000) != 0)
      {
        v61 = HIBYTE(v43) & 0xF;
      }

      else
      {
        v61 = v46 & 0xFFFFFFFFFFFFLL;
      }

      v89 = v43 & 0xFFFFFFFFFFFFFFLL;
      v88 = (v43 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v51 = v45;
      while ((v51 ^ v4) >= 0x4000)
      {
        v8 = (_StringGuts.validateInclusiveScalarIndex(_:)(v51, v46, v43) >> 16);
        if (v8 >= v61)
        {
          goto LABEL_83;
        }

        if ((v43 & 0x1000000000000000) != 0)
        {
          v51 = String.UnicodeScalarView._foreignIndex(after:)();
        }

        else
        {
          if ((v43 & 0x2000000000000000) != 0)
          {
            v97 = v46;
            v98 = v89;
            v64 = *(&v97 + v8);
          }

          else
          {
            v63 = v88;
            if ((v46 & 0x1000000000000000) == 0)
            {
              v63 = _StringObject.sharedUTF8.getter();
            }

            v64 = v8[v63];
          }

          v65 = v64;
          v66 = __clz(v64 ^ 0xFF) - 24;
          if (v65 >= 0)
          {
            LOBYTE(v66) = 1;
          }

          v51 = (&v8[v66] << 16) | 5;
        }

        v6 = Substring.UnicodeScalarView.subscript.getter();
        v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v6), 0);
        if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v6, v62, 0x700030000))
        {
          goto LABEL_23;
        }
      }

      v88 = v5;
      goto LABEL_68;
    }

LABEL_23:
    v52 = Substring.UnicodeScalarView.index(after:)();

    if (v51 >> 14 > v52 >> 14)
    {
      goto LABEL_89;
    }

    v6 = v90;
    if (v51 >> 14 == String.index(after:)() >> 14)
    {
      result = v5;
    }

    else
    {
      result = String.index(before:)();
      if (v87 > result >> 14)
      {
        goto LABEL_91;
      }

      v68 = *(v90 + 16);
      v67 = *(v90 + 24);
      if (v68 >= v67 >> 1)
      {
        v73 = result;
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v90);
        result = v73;
      }

      *(v6 + 16) = v68 + 1;
      v69 = v6 + 16 * v68;
      *(v69 + 32) = v5;
      *(v69 + 40) = result;
    }

    v88 = result;
    if (v52 > 0x53FFF)
    {
      goto LABEL_90;
    }

    v28 = String.subscript.getter();
    v8 = v70;
    v29 = v71;
    v13 = v72;
    if ((v28 ^ v70) < 0x4000)
    {
      goto LABEL_69;
    }
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v6 = v29 & 0xFFFFFFFFFFFFLL;
  }

  v89 = v13 & 0xFFFFFFFFFFFFFFLL;
  v5 = v28;
  while ((v5 ^ v4) >= 0x4000)
  {
    v56 = _StringGuts.validateInclusiveScalarIndex(_:)(v5, v29, v13) >> 16;
    if (v56 >= v6)
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v5 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v97 = v29;
        v98 = v89;
        v58 = *(&v97 + v56);
      }

      else
      {
        v57 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v29 & 0x1000000000000000) == 0)
        {
          v57 = _StringObject.sharedUTF8.getter();
        }

        v58 = *(v57 + v56);
      }

      v59 = v58;
      v60 = __clz(v58 ^ 0xFF) - 24;
      if (v59 >= 0)
      {
        LOBYTE(v60) = 1;
      }

      v5 = ((v56 + v60) << 16) | 5;
    }

    v53 = Substring.UnicodeScalarView.subscript.getter();
    v54 = v53;
    v55 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v53), 1u);
    if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v54, v55, 0x700030001))
    {
      goto LABEL_14;
    }
  }

LABEL_68:
  v6 = v90;
LABEL_69:

  v5 = v88;
  if (v88 <= 0x53FFF)
  {
    goto LABEL_70;
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)()
{
  v1 = *(v0 + 8);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v5 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    *(v1 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v10 = *(v1 + 16);
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 24 * v8;
  *(v11 + 32) = v2;
  *(v11 + 40) = v4;
  *(v11 + 48) = 1;
  *(v1 + 16) = v10;
  return result;
}

{
  v1 = *(v0 + 8);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v5 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    *(v1 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v10 = *(v1 + 16);
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 24 * v8;
  *(v11 + 32) = v2;
  *(v11 + 40) = v4;
  *(v11 + 48) = 1;
  *(v1 + 16) = v10;
  return result;
}

{
  v1 = *(v0 + 8);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v5 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    *(v1 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v10 = *(v1 + 16);
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 24 * v8;
  *(v11 + 32) = v2;
  *(v11 + 40) = v4;
  *(v11 + 48) = 1;
  *(v1 + 16) = v10;
  return result;
}

{
  v1 = *(v0 + 8);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v5 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    *(v1 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v10 = *(v1 + 16);
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 24 * v8;
  *(v11 + 32) = v2;
  *(v11 + 40) = v4;
  *(v11 + 48) = 1;
  *(v1 + 16) = v10;
  return result;
}

{
  v1 = *(v0 + 8);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v5 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    *(v1 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v10 = *(v1 + 16);
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 24 * v8;
  *(v11 + 32) = v2;
  *(v11 + 40) = v4;
  *(v11 + 48) = 1;
  *(v1 + 16) = v10;
  return result;
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)(float a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(*(v4 + 16) + 16);
  v6 = *(*v1 + 120);
  v24[0] = *(*v1 + 104);
  v24[1] = v6;
  v24[2] = *(v3 + 136);
  if ((LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v10 = Float.description.getter();
    v11 = v15;
    v23 = v15;

    v16._countAndFlagsBits = 12334;
    v16._object = 0xE200000000000000;
    v17 = String.hasSuffix(_:)(v16);

    if (v17)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v11 = v23;
    }

    v13 = *(v4 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v13;
    v12 = 1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  result = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v24, a1, v3, v5, 0, 0, 2);
  if (v2)
  {
    return result;
  }

  v10 = result;
  v11 = v8;
  v12 = v9;
  v13 = *(v4 + 16);
  outlined copy of JSONEncoderValue(result, v8, v9);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v13;
  if ((v14 & 1) == 0)
  {
LABEL_4:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    *(v4 + 16) = v13;
  }

LABEL_8:
  v20 = *(v13 + 2);
  v19 = *(v13 + 3);
  if (v20 >= v19 >> 1)
  {
    *(v4 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v13);
  }

  result = outlined consume of JSONEncoderValue(v10, v11, v12);
  v21 = *(v4 + 16);
  *(v21 + 16) = v20 + 1;
  v22 = v21 + 24 * v20;
  *(v22 + 32) = v10;
  *(v22 + 40) = v11;
  *(v22 + 48) = v12;
  *(v4 + 16) = v21;
  return result;
}

uint64_t _JSONUnkeyedEncodingContainer.encode(_:)(double a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(*(v4 + 16) + 16);
  v6 = *(*v1 + 120);
  v24[0] = *(*v1 + 104);
  v24[1] = v6;
  v24[2] = *(v3 + 136);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v10 = Double.description.getter();
    v11 = v15;
    v23 = v15;

    v16._countAndFlagsBits = 12334;
    v16._object = 0xE200000000000000;
    v17 = String.hasSuffix(_:)(v16);

    if (v17)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v11 = v23;
    }

    v13 = *(v4 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v13;
    v12 = 1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  result = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v24, a1, v3, v5, 0, 0, 2);
  if (v2)
  {
    return result;
  }

  v10 = result;
  v11 = v8;
  v12 = v9;
  v13 = *(v4 + 16);
  outlined copy of JSONEncoderValue(result, v8, v9);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v13;
  if ((v14 & 1) == 0)
  {
LABEL_4:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    *(v4 + 16) = v13;
  }

LABEL_8:
  v20 = *(v13 + 2);
  v19 = *(v13 + 3);
  if (v20 >= v19 >> 1)
  {
    *(v4 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v13);
  }

  result = outlined consume of JSONEncoderValue(v10, v11, v12);
  v21 = *(v4 + 16);
  *(v21 + 16) = v20 + 1;
  v22 = v21 + 24 * v20;
  *(v22 + 32) = v10;
  *(v22 + 40) = v11;
  *(v22 + 48) = v12;
  *(v4 + 16) = v21;
  return result;
}

uint64_t _JSONUnkeyedEncodingContainer.nestedUnkeyedContainer()@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*(v3 + 16) + 16);
  type metadata accessor for JSONFuture.RefArray();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10, 0, v6);
  v7 = *(v3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    *(v3 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = v5;
  *(v11 + 5) = 0;
  v11[48] = 64;
  *(v3 + 16) = v7;
  v12 = *v1;
  v13 = v1[2];
  result = swift_allocObject();
  v15 = result;
  *(result + 16) = v4;
  *(result + 24) = v13;
  if (v13 >> 62)
  {
    v16 = 0;
    if (v13 >> 62 != 1)
    {
      goto LABEL_10;
    }

    v17 = ((v13 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v17 = (v13 + 64);
  }

  v16 = *v17;

LABEL_10:
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    *(v15 + 32) = v16 + 1;
    a1[3] = &unk_1EEEE7918;
    a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();
    *a1 = v12;
    a1[1] = v5;
    a1[2] = v15 | 0x4000000000000000;
  }

  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.codingPath.getter in conformance _JSONUnkeyedEncodingContainer()
{
  v1 = *(v0 + 16);
  v2 = __JSONEncoder.codingPath.getter();
  v3 = _CodingPathNode.path.getter(v1);
  specialized Array.append<A>(contentsOf:)(v3);
  return v2;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance _JSONUnkeyedEncodingContainer()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
    v2 = result;
    *(v1 + 16) = result;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v5 >= v4 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  *(v2 + 16) = v5 + 1;
  v6 = v2 + 24 * v5;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 7;
  *(v1 + 16) = v2;
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(char a1)
{
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(v3 + 16) = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  v8 = v4 + 24 * v7;
  *(v8 + 32) = a1 & 1;
  *(v8 + 40) = 0;
  *(v8 + 48) = 2;
  *(v3 + 16) = v4;
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer()
{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

{
  return _JSONUnkeyedEncodingContainer.encode(_:)();
}

void __JSONEncoder.encode(_:)(float a1)
{
  if (*(v1 + 32) != 255)
  {
    __break(1u);
    return;
  }

  v3 = *(v1 + 120);
  v16[0] = *(v1 + 104);
  v16[1] = v3;
  v16[2] = *(v1 + 136);
  if ((LODWORD(a1) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v7 = Float.description.getter();
    v8 = v9;
    v15 = v9;

    v10._countAndFlagsBits = 12334;
    v10._object = 0xE200000000000000;
    v11 = String.hasSuffix(_:)(v10);

    if (v11)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v8 = v15;
    }

    v6 = 1;
  }

  else
  {
    v4 = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v16, a1, v1, 0, 0, 0, 255);
    if (v2)
    {
      return;
    }

    v7 = v4;
    v8 = v5;
  }

  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  v14 = *(v1 + 32);
  *(v1 + 32) = v6;
  outlined consume of JSONEncoderValue?(v12, v13, v14);
}

uint64_t __JSONReferencingEncoder.__ivar_destroyer()
{

  v1 = *(v0 + 240);

  return outlined consume of __JSONReferencingEncoder.Reference(v1);
}

uint64_t Float.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v9 = *(a2 + 120);
  v28[0] = *(a2 + 104);
  v28[1] = v9;
  v28[2] = *(a2 + 136);
  if ((LODWORD(a6) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v13 = Float.description.getter();
    v15 = v14;
    v26 = v13;
    v27 = v14;

    v16._countAndFlagsBits = 12334;
    v16._object = 0xE200000000000000;
    v17 = String.hasSuffix(_:)(v16);

    if (v17)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v13 = v26;
      v15 = v27;
    }

    goto LABEL_6;
  }

  result = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v28, a2, a3, a4, a5, a6);
  if (v6)
  {
    return result;
  }

  v13 = result;
  v15 = v11;
  if (v12)
  {
    if (v12 != 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_18;
    }

LABEL_6:
    v18 = *(*(a1 + 16) + 16);
    v26 = v13;
    v27 = v15;

    specialized String.withUTF8<A>(_:)(&v26);
    outlined consume of JSONEncoderValue(v13, v15, 1u);

    return *(*(a1 + 16) + 16) - v18;
  }

  v7 = *(a1 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
  }

  v20 = *(v7 + 2);
  v19 = *(v7 + 3);
  if (v20 >= v19 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
  }

  *(v7 + 2) = v20 + 1;
  v7[v20 + 32] = 34;
  *(a1 + 16) = v7;
  v26 = v13;
  v27 = v15;
  specialized String.withUTF8<A>(_:)(&v26);

  v21 = *(a1 + 16);
  v22 = *(v21 + 2);
  v23 = v22 - v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v21);
  }

  v25 = *(v21 + 2);
  v24 = *(v21 + 3);
  if (v25 >= v24 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
  }

  outlined consume of JSONEncoderValue(v13, v15, 0);
  *(v21 + 2) = v25 + 1;
  v21[v25 + 32] = 34;
  *(a1 + 16) = v21;
  return v23 + 1;
}

uint64_t Double.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v9 = *(a2 + 120);
  v28[0] = *(a2 + 104);
  v28[1] = v9;
  v28[2] = *(a2 + 136);
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v13 = Double.description.getter();
    v15 = v14;
    v26 = v13;
    v27 = v14;

    v16._countAndFlagsBits = 12334;
    v16._object = 0xE200000000000000;
    v17 = String.hasSuffix(_:)(v16);

    if (v17)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      v13 = v26;
      v15 = v27;
    }

    goto LABEL_6;
  }

  result = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v28, a2, a3, a4, a5, a6);
  if (v6)
  {
    return result;
  }

  v13 = result;
  v15 = v11;
  if (v12)
  {
    if (v12 != 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_18;
    }

LABEL_6:
    v18 = *(*(a1 + 16) + 16);
    v26 = v13;
    v27 = v15;

    specialized String.withUTF8<A>(_:)(&v26);
    outlined consume of JSONEncoderValue(v13, v15, 1u);

    return *(*(a1 + 16) + 16) - v18;
  }

  v7 = *(a1 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
  }

  v20 = *(v7 + 2);
  v19 = *(v7 + 3);
  if (v20 >= v19 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
  }

  *(v7 + 2) = v20 + 1;
  v7[v20 + 32] = 34;
  *(a1 + 16) = v7;
  v26 = v13;
  v27 = v15;
  specialized String.withUTF8<A>(_:)(&v26);

  v21 = *(a1 + 16);
  v22 = *(v21 + 2);
  v23 = v22 - v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v21);
  }

  v25 = *(v21 + 2);
  v24 = *(v21 + 3);
  if (v25 >= v24 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
  }

  outlined consume of JSONEncoderValue(v13, v15, 0);
  *(v21 + 2) = v25 + 1;
  v21[v25 + 32] = 34;
  *(a1 + 16) = v21;
  return v23 + 1;
}

uint64_t _s10Foundation24__JSONReferencingEncoder33_12768CA107A31EF2DCE034FD75B541C9LLC11referencing3key12convertedKey8wrappingAdA13__JSONEncoderACLLC_s06CodingN0_pSSAA10JSONFutureO9RefObjectCtcfCTf4nennn_nAA01_qN0O_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = &type metadata for _CodingKey;
  v30 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v16 = swift_allocObject();
  *&v28 = v16;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  type metadata accessor for __JSONReferencingEncoder();
  v17 = swift_allocObject();
  *(v17 + 232) = a1;
  *(v17 + 240) = a8 | 0x8000000000000000;
  *(v17 + 248) = a6;
  *(v17 + 256) = a7;
  v18 = *(a1 + 136);
  v35 = *(a1 + 120);
  v36 = v18;
  v37 = *(a1 + 152);
  v38 = *(a1 + 168);
  v19 = *(a1 + 72);
  v31 = *(a1 + 56);
  v32 = v19;
  v20 = *(a1 + 104);
  v33 = *(a1 + 88);
  v34 = v20;
  outlined init with take of Equatable(&v28, v27);
  *(v17 + 184) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  v21 = v36;
  *(v17 + 120) = v35;
  *(v17 + 136) = v21;
  *(v17 + 152) = v37;
  v22 = v32;
  *(v17 + 56) = v31;
  *(v17 + 72) = v22;
  v23 = v34;
  *(v17 + 88) = v33;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = -1;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  v24 = v38;
  *(v17 + 104) = v23;
  *(v17 + 168) = v24;
  *(v17 + 176) = a1;

  outlined init with copy of JSONEncoder._Options(&v31, v26);
  outlined assign with take of CodingKey?(v27, v17 + 192);
  return v17;
}

uint64_t specialized static JSONEncoderValue.== infix(_:_:)(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        if (a6 == 2)
        {
          return (a4 ^ result ^ 1) & 1;
        }
      }

      else if (a6 == 3)
      {
        return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation16JSONEncoderValueO_Tt1g5(result, a4);
      }
    }

    else
    {
      if (!a3)
      {
        if (!a6)
        {
          if (result != a4 || a2 != a5)
          {
            return _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          return 1;
        }

        return 0;
      }

      if (a6 == 1)
      {
        if (result != a4 || a2 != a5)
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }
    }

    return 0;
  }

  if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      if (a6 == 4)
      {
        return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(result, a4);
      }
    }

    else if (a6 == 5)
    {
      v14 = *(result + 16);
      if (v14 == *(a4 + 16))
      {
        if (!v14 || result == a4)
        {
          return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(a2, a5);
        }

        v15 = (result + 32);
        for (i = (a4 + 32); *v15 == *i; ++i)
        {
          ++v15;
          if (!--v14)
          {
            return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(a2, a5);
          }
        }
      }
    }

    return 0;
  }

  if (a3 != 6)
  {
    return a6 == 7 && !(a5 | a4);
  }

  if (a6 != 6)
  {
    return 0;
  }

  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (!v6 || result == a4)
  {
    return 1;
  }

  v7 = (result + 32);
  v8 = (a4 + 32);
  while (v6)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *v8++;
    v12 = v9 == v11;
    if (!v12 || v6-- == 1)
    {
      return v12;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized _JSONSimpleValueArrayElement<>.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, __int16 a2)
{
  v8 = a2;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = *(*(a1 + 16) + 16);
  v7[0] = v3;
  v7[1] = v5;
  specialized String.withUTF8<A>(_:)(v7);

  return *(*(a1 + 16) + 16) - v4;
}

uint64_t specialized _JSONSimpleValueArrayElement<>.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = a3;
  v8[2] = a2;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = *(*(a1 + 16) + 16);
  v8[0] = v4;
  v8[1] = v6;
  specialized String.withUTF8<A>(_:)(v8);

  return *(*(a1 + 16) + 16) - v5;
}

uint64_t getEnumTagSinglePayload for __JSONReferencingEncoder.Reference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for __JSONReferencingEncoder.Reference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONFuture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 17))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for JSONFuture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 16) = 0;
    *result = a2 - 30;
    *(result + 8) = 0;
    if (a3 >= 0x1E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONEncoderValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONEncoderValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for JSONEncoderValue(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSONEncoder._Options(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONEncoder._Options(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL _sSLsE2leoiySbx_xtFZ10Foundation12DateIntervalV_Tt1B5(double a1, double a2, double a3, double a4)
{
  v4 = a3 < a1;
  if (a1 >= a3 && a1 <= a3)
  {
    v4 = a4 < a2;
  }

  return !v4;
}

uint64_t specialized RangeReplaceableCollection.init<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  BigString.init()();
  v23 = v26;
  v24 = v25;
  v2 = v27;
  v28[0] = 0;
  MEMORY[0x1865D26B0](v28, 8);
  v3 = v28[0];
  type metadata accessor for AttributedString.Guts();
  v4 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_5:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v6 = v26;
  *(v4 + 24) = v25;
  *(v4 + 16) = add_explicit;
  *(v4 + 40) = v6;
  *(v4 + 56) = v27;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = v3;
  *(v4 + 104) = MEMORY[0x1E69E7CC0];
  v7 = BigString.startIndex.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = BigString.endIndex.getter();
  v33 = v7;
  v34 = v9;
  v35 = v11;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v42 = v23;
  v41 = v24;
  v43 = v2;

  outlined init with copy of BigString(&v25, v28);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(&v25);
  outlined destroy of BigSubstring.UnicodeScalarView(v28);
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v21 = v32;
  *a1 = v4;
  *(a1 + 8) = v18;
  *(a1 + 24) = v19;
  *(a1 + 40) = v20;
  *(a1 + 56) = v21;
  *(a1 + 72) = 0;
  return specialized RangeReplaceableCollection.append<A>(contentsOf:)();
}

unint64_t specialized min<A>(_:_:)(unint64_t result, unint64_t a2)
{
  if (a2 < result)
  {
    return a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONMap.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 17))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for JSONMap.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for JSONMap.Value(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for JSONMap.Value(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = -96;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for JSONError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 49))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 48);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for JSONError(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 48) = a2;
  return result;
}

void closure #1 in Float.init(prevalidatedBuffer:)(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v6 = _stringshims_strtof_clocale(a1, v10);
  if (v10[0])
  {
    v7 = &a1[a2] == v10[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = !v7;
  v9 = v6;
  if (!v7)
  {
    v9 = 0.0;
  }

  *a3 = v9;
  *(a3 + 4) = v8;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance JSONError(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return specialized static JSONError.== infix(_:_:)(v5, v7) & 1;
}

uint64_t specialized static JSONError.== infix(_:_:)(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5;
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = a1[5];
  v10 = (*(a1 + 25) << 8) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 40) | v7;
  switch(*(a1 + 48))
  {
    case 1:
      if (a2[3].i8[0] != 1)
      {
        return 0;
      }

      v17 = a2->i64[1];
      v18 = a2[1].u8[0];
      v19 = a2[1].i64[1];
      v20 = a2[2].i64[0];
      v21 = a2[2].i64[1];
      if (v4)
      {
        if (!v17)
        {
          return 0;
        }

        if (v3 == a2->i64[0] && v4 == v17)
        {
          if (v18 != v6)
          {
            return 0;
          }

          return v10 == v19 && v8 == v20 && v9 == v21;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v34 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v17)
        {
          return result;
        }
      }

      if (v18 != v6)
      {
        return result;
      }

      return v10 == v19 && v8 == v20 && v9 == v21;
    case 2:
      if (a2[3].i8[0] != 2)
      {
        return 0;
      }

      if (v7)
      {
        if (a2[1].i8[8])
        {
          return 1;
        }
      }

      else if ((a2[1].i8[8] & 1) == 0 && v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0])
      {
        return 1;
      }

      return 0;
    case 3:
      if (a2[3].i8[0] != 3)
      {
        return 0;
      }

      goto LABEL_47;
    case 4:
      if (a2[3].i8[0] != 4)
      {
        return 0;
      }

      return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0];
    case 5:
      if (a2[3].i8[0] != 5)
      {
        return 0;
      }

LABEL_47:
      v22 = a2[1].i64[0];
      v23 = a2[1].i64[1];
      v24 = a2[2].i64[0];
      if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      return v5 == v22 && v10 == v23 && v8 == v24;
    case 6:
      if (a2[3].i8[0] == 6)
      {
        goto LABEL_60;
      }

      return 0;
    case 7:
      if (a2[3].i8[0] != 7)
      {
        return 0;
      }

LABEL_60:
      v29 = v4 == a2->i64[1] && v5 == a2[1].i64[0] && v10 == a2[1].i64[1];
      return a2->u8[0] == v3 && v29;
    case 8:
      if (a2[3].i8[0] == 8)
      {
        return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0];
      }

      return 0;
    case 9:
      if (a2[3].i8[0] != 9)
      {
        return 0;
      }

      return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0] && a2[1].i32[2] == ((*(a1 + 25) << 8) | v7);
    case 0xA:
      if (a2[3].i8[0] != 10)
      {
        return 0;
      }

      return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0];
    case 0xB:
      if (a2[3].i8[0] != 11)
      {
        return 0;
      }

      if (v3 == a2->i64[0] && v4 == a2->i64[1])
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    case 0xC:
      v12 = v5 | v4;
      if (!(v12 | v3 | v8 | v9 | v10))
      {
        if (a2[3].i8[0] != 12)
        {
          return 0;
        }

        v32 = vorrq_s8(a2[1], a2[2]);
        return !(*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | a2->i64[1] | a2->i64[0]);
      }

      v13 = v12 | v8 | v9 | v10;
      if (v3 != 1 || v13)
      {
        if (v3 != 2 || v13)
        {
          if (a2[3].i8[0] != 12 || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else if (a2[3].i8[0] != 12 || a2->i64[0] != 2)
        {
          return 0;
        }
      }

      else if (a2[3].i8[0] != 12 || a2->i64[0] != 1)
      {
        return 0;
      }

      v33 = vorrq_s8(a2[1], a2[2]);
      return !(*&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | a2->i64[1]);
    default:
      if (a2[3].i8[0])
      {
        return 0;
      }

      return v3 == a2->i64[0] && v4 == a2->i64[1] && v5 == a2[1].i64[0];
  }
}

unsigned __int8 *specialized static JSONScanner.validateNumber(from:fullSource:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = result;
  v7 = &result[a2];
  if (a2 < 1)
  {
    v10 = result;
LABEL_9:
    if (result >= v7)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      v12 = 0;
      v13 = v10 - v5;
      v14 = &v5[a2] - v10;
      v15 = &v5[a2] - result;
      v16 = result - v5;
      while ((v16 & 0x8000000000000000) == 0)
      {
        v11 = v15-- < 1;
        if (v11)
        {
          break;
        }

        v18 = *result;
        if ((v18 - 58) >= 0xFFFFFFF6)
        {
          if (__OFADD__(v13++, 1))
          {
            goto LABEL_34;
          }
        }

        else if (*result <= 0x2Du)
        {
          if (v18 != 43 && v18 != 45 || v13 || v12 != 2)
          {
LABEL_31:
            result = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a3, a4);
            *a5 = xmmword_181237560;
            *(a5 + 16) = v18;
            *(a5 + 24) = result;
            *(a5 + 32) = v19;
            *(a5 + 40) = v20;
            *(a5 + 48) = 1;
            return result;
          }

          v13 = 0;
          v12 = 3;
        }

        else if (v18 == 101 || v18 == 69)
        {
          if (v13 < 1 || v12 >= 2)
          {
            goto LABEL_31;
          }

          v13 = 0;
          v12 = 2;
        }

        else
        {
          if (v18 != 46 || v13 < 1 || v12)
          {
            goto LABEL_31;
          }

          v13 = 0;
          v12 = 1;
        }

        ++result;
        ++v16;
        if (!--v14)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = a2;
    v10 = result;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v11 = v9-- < 1;
      if (v11)
      {
        break;
      }

      if (*result - 58 >= 0xFFFFFFF6)
      {
        ++result;
        ++v10;
        ++v8;
        if (result < v7)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_2:
  *a1 = v4;
  v6 = *(v4 + 2);
  if (v6 < 2)
  {
    return 1;
  }

  while (1)
  {
    v7 = *a3;
    if (!*a3)
    {
      break;
    }

    v8 = a2;
    v42 = v6 - 1;
    v43 = v6;
    v45 = *&v4[16 * v6];
    v9 = (v7 + 40 * v45);
    v10 = 40 * *&v4[16 * v6 + 16];
    v11 = (v7 + v10);
    v46 = *&v4[16 * v6 + 24];
    v12 = v7 + 40 * v46;
    v13 = v10 - 40 * v45;
    v14 = 40 * v46 - v10;
    v15 = v14 / 40;
    v44 = v4;
    if (v13 / 40 >= v14 / 40)
    {
      v19 = 5 * v15;
      v20 = v8;
      if (v11 != v8 || &v11[5 * v15] <= v8)
      {
        memmove(v8, v11, 40 * v15);
      }

      v4 = &v20[v19];
      if (v14 < 40 || v10 <= 40 * v45)
      {
        v17 = v20;
        a2 = v20;
LABEL_25:
        v23 = v45;
      }

      else
      {
        a2 = v20;
        v23 = v45;
        do
        {
          v29 = v11 - 5;
          v12 -= 40;
          v30 = v4;
          while (1)
          {
            v31 = (v12 + 40);
            v32 = *(v30 - 5);
            v33 = *(v30 - 4);
            v30 -= 40;
            if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*(v11 - 5), *(v11 - 4), v32, v33))
            {
              break;
            }

            if (v31 != v4)
            {
              v34 = *v30;
              v35 = *(v30 + 1);
              *(v12 + 32) = *(v30 + 4);
              *v12 = v34;
              *(v12 + 16) = v35;
            }

            v12 -= 40;
            v4 = v30;
            if (v30 <= a2)
            {
              v4 = v30;
              v17 = a2;
              goto LABEL_46;
            }
          }

          if (v31 != v11)
          {
            v36 = *v29;
            v37 = *(v11 - 3);
            *(v12 + 32) = *(v11 - 1);
            *v12 = v36;
            *(v12 + 16) = v37;
          }

          if (v4 <= a2)
          {
            break;
          }

          v11 -= 5;
        }

        while (v9 < v29);
        v17 = a2;
        v11 = v29;
      }

LABEL_46:
      v24 = v46;
      goto LABEL_47;
    }

    v16 = 5 * (v13 / 40);
    a2 = v8;
    if (v9 != v8 || &v9[v16] <= v8)
    {
      memmove(v8, v9, 40 * (v13 / 40));
    }

    v4 = &a2[v16];
    v18 = v13 < 40;
    v17 = a2;
    v18 = v18 || 40 * v46 <= v10;
    if (v18)
    {
      v11 = v9;
      goto LABEL_25;
    }

    v23 = v45;
    v24 = v46;
    do
    {
      if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*v17, v17[1], *v11, v11[1]))
      {
        v25 = v11;
        v26 = v9 == v11;
        v11 += 5;
        if (v26)
        {
          goto LABEL_32;
        }

LABEL_31:
        v27 = *v25;
        v28 = *(v25 + 1);
        v9[4] = v25[4];
        *v9 = v27;
        *(v9 + 1) = v28;
        goto LABEL_32;
      }

      v25 = v17;
      v26 = v9 == v17;
      v17 += 5;
      if (!v26)
      {
        goto LABEL_31;
      }

LABEL_32:
      v9 += 5;
    }

    while (v17 < v4 && v11 < v12);
    v11 = v9;
LABEL_47:
    v38 = 5 * ((v4 - v17) / 40);
    if (v11 != v17 || v11 >= &v17[v38])
    {
      memmove(v11, v17, v38 * 8);
    }

    if (v24 < v23)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      v4 = result;
      goto LABEL_2;
    }

    v4 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
    }

    if ((v43 - 2) >= *(v4 + 2))
    {
      goto LABEL_57;
    }

    v39 = &v4[16 * v43];
    *v39 = v23;
    *(v39 + 1) = v24;
    *a1 = v4;
    result = specialized Array.remove(at:)(v42);
    v4 = *a1;
    v6 = *(*a1 + 2);
    if (v6 <= 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, void **a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    *a1 = v4;
    v6 = *(v4 + 16);
    if (v6 < 2)
    {
      return 1;
    }

    __dst = a2;
    while (1)
    {
      v7 = *a3;
      if (!*a3)
      {
        __break(1u);
        return result;
      }

      v69 = v6;
      v70 = v4;
      v8 = *(v4 + 16 * v6);
      v68 = v6 - 1;
      v10 = (v4 + 16 * (v6 - 1) + 32);
      v9 = *v10;
      v71 = v10[1];
      v72 = v8;
      v11 = 32 * v8;
      v12 = (v7 + 32 * v8);
      v13 = 32 * *v10;
      v14 = (v7 + v13);
      v15 = (v7 + 32 * v71);
      v4 = v13 - 32 * v8;
      v16 = 32 * v71 - v13;
      if (v4 >= v16)
      {
        v4 = __dst;
        if (v14 != __dst || v15 <= __dst)
        {
          memmove(__dst, (v7 + 32 * v9), 32 * v71 - 32 * v9);
        }

        v18 = __dst + v16;
        if (v16 < 1 || v13 <= v11)
        {
          a2 = __dst;
LABEL_28:
          v20 = v14;
        }

        else
        {
          v87 = v12;
          do
          {
            v4 = 0;
            v44 = v18;
            v65 = v14 - 4;
            v89 = v15;
            v91 = v14;
            v73 = v18;
            while (1)
            {
              v75 = &v44[v4 - 32];
              v76 = &v44[v4];
              v45 = *&v44[v4 - 24];
              v46 = *&v44[v4 - 16];
              v47 = v44[v4 - 8];
              v48 = *(v14 - 4);
              v49 = *(v14 - 3);
              v50 = *(v14 - 2);
              v51 = *(v14 - 8);
              v52 = *v75;
              v84 = v46;
              v85 = v45;
              v82 = v47;
              outlined copy of JSONEncoderValue(v45, v46, v47);
              v53 = v48;
              v81 = v49;
              v54 = v49;
              v55 = v50;
              v56 = v51;
              outlined copy of JSONEncoderValue(v54, v55, v51);
              v78 = [v52 length];
              if (one-time initialization token for system != -1)
              {
                swift_once();
              }

              v57 = *(&static LocaleCache.system + 1);
              ObjectType = swift_getObjectType();
              v59 = *(v57 + 488);
              swift_unknownObjectRetain();
              v60 = v59(ObjectType, v57);
              v61 = [v52 compare:v53 options:577 range:0 locale:{v78, v60}];

              swift_unknownObjectRelease();
              outlined consume of JSONEncoderValue(v81, v55, v56);

              outlined consume of JSONEncoderValue(v85, v84, v82);
              if (v61 == -1)
              {
                break;
              }

              v62 = v89 + v4;
              a2 = __dst;
              v14 = v91;
              if (v89 + v4 != v76)
              {
                v63 = *(v75 + 16);
                *(v62 - 2) = *v75;
                *(v62 - 1) = v63;
              }

              v4 -= 32;
              v44 = v73;
              v18 = &v73[v4];
              if (&v73[v4] <= __dst)
              {
                goto LABEL_28;
              }
            }

            v15 = (v89 + v4 - 32);
            a2 = __dst;
            v20 = v65;
            if ((v89 + v4) != v91)
            {
              v64 = *(v65 + 1);
              *v15 = *v65;
              *(v89 + v4 - 16) = v64;
            }

            v18 = &v73[v4];
            if (&v73[v4] <= __dst)
            {
              break;
            }

            v14 = v65;
          }

          while (v87 < v65);
          v18 = &v73[v4];
        }
      }

      else
      {
        a2 = __dst;
        if (v12 != __dst || v14 <= __dst)
        {
          memmove(__dst, (v7 + 32 * v8), 32 * v9 - 32 * v8);
        }

        v18 = __dst + v4;
        if (v4 >= 1 && 32 * v71 > v13)
        {
          v88 = v15;
          v77 = (__dst + v4);
          while (1)
          {
            v86 = v12;
            v25 = *v14;
            v26 = v14[1];
            v27 = v14[2];
            v90 = v14;
            v28 = *(v14 + 24);
            v29 = *a2;
            v30 = a2[1];
            v31 = a2[2];
            v32 = *(a2 + 24);
            v33 = v25;
            v83 = v28;
            outlined copy of JSONEncoderValue(v26, v27, v28);
            v34 = v29;
            v80 = v31;
            v79 = v32;
            outlined copy of JSONEncoderValue(v30, v31, v32);
            v35 = [v33 length];
            if (one-time initialization token for system != -1)
            {
              swift_once();
            }

            v36 = *(&static LocaleCache.system + 1);
            v37 = swift_getObjectType();
            v38 = *(v36 + 488);
            swift_unknownObjectRetain();
            v4 = v38(v37, v36);
            v39 = [v33 compare:v34 options:577 range:0 locale:{v35, v4}];

            swift_unknownObjectRelease();
            outlined consume of JSONEncoderValue(v30, v80, v79);

            outlined consume of JSONEncoderValue(v26, v27, v83);
            if (v39 != -1)
            {
              break;
            }

            v40 = v90;
            v14 = v90 + 4;
            v41 = v86;
            if (v86 != v90)
            {
              goto LABEL_42;
            }

LABEL_43:
            v12 = v41 + 4;
            v18 = v77;
            if (a2 >= v77 || v14 >= v88)
            {
              goto LABEL_16;
            }
          }

          v40 = a2;
          v41 = v86;
          v42 = v86 == a2;
          a2 += 4;
          v14 = v90;
          if (v42)
          {
            goto LABEL_43;
          }

LABEL_42:
          v43 = *(v40 + 1);
          *v41 = *v40;
          *(v41 + 1) = v43;
          goto LABEL_43;
        }

LABEL_16:
        v20 = v12;
      }

      v23 = (v18 - a2 + (v18 - a2 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
      if (v20 != a2 || v20 >= (a2 + v23))
      {
        memmove(v20, a2, v23);
      }

      if (v71 < v72)
      {
        break;
      }

      v4 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
      }

      if ((v69 - 2) >= *(v4 + 16))
      {
        goto LABEL_62;
      }

      v24 = (v4 + 16 * v69);
      *v24 = v72;
      v24[1] = v71;
      *a1 = v4;
      result = specialized Array.remove(at:)(v68);
      v4 = *a1;
      v6 = *(*a1 + 16);
      if (v6 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t *__dst, unint64_t *__src, unint64_t a3, unint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 5 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*v4, v4[1], *v6, v6[1]))
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 5;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 5;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    v7[4] = v14[4];
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 5 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 5;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v23 = *(v20 - 32);
      v20 -= 40;
      if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*(v6 - 5), *(v6 - 4), v22, v23))
      {
        if (v21 != v6)
        {
          v26 = *v19;
          v27 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v26;
          *(v5 + 16) = v27;
        }

        if (v13 <= v4 || (v6 -= 5, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v24 = *v20;
        v25 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v24;
        *(v5 + 16) = v25;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v28 = 5 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v28])
  {
    memmove(v6, v4, v28 * 8);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t *__src, uint64_t *__dst, _OWORD *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 >= v13)
  {
    v37 = 4 * v13;
    if (a4 != __dst || &__dst[v37] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v15 = &v4[v37];
    if (v11 < 32 || v6 <= v7)
    {
LABEL_41:
      v59 = v6;
    }

    else
    {
      __srca = v4;
      v76 = v7;
      do
      {
        v38 = 0;
        v39 = v15;
        v63 = (v6 - 4);
        v78 = v5;
        v80 = v6;
        v65 = v15;
        while (1)
        {
          v66 = &v39[v38 - 32];
          v67 = &v39[v38];
          v40 = *&v39[v38 - 24];
          v41 = *&v39[v38 - 16];
          v42 = v39[v38 - 8];
          v43 = *(v6 - 4);
          v44 = *(v6 - 3);
          v45 = *(v6 - 2);
          v46 = *(v6 - 8);
          v47 = *v66;
          v74 = v42;
          outlined copy of JSONEncoderValue(v40, v41, v42);
          v48 = v43;
          v72 = v44;
          v49 = v44;
          v50 = v45;
          v51 = v46;
          outlined copy of JSONEncoderValue(v49, v50, v46);
          v69 = [v47 length];
          if (one-time initialization token for system != -1)
          {
            swift_once();
          }

          v52 = *(&static LocaleCache.system + 1);
          ObjectType = swift_getObjectType();
          v54 = *(v52 + 488);
          swift_unknownObjectRetain();
          v55 = v54(ObjectType, v52);
          v56 = [v47 compare:v48 options:577 range:0 locale:{v69, v55}];

          swift_unknownObjectRelease();
          outlined consume of JSONEncoderValue(v72, v50, v51);

          outlined consume of JSONEncoderValue(v40, v41, v74);
          if (v56 == -1)
          {
            break;
          }

          v57 = &v78[v38 / 0x10];
          v4 = __srca;
          v6 = v80;
          if (&v78[v38 / 0x10] != v67)
          {
            v58 = *(v66 + 16);
            *(v57 - 2) = *v66;
            *(v57 - 1) = v58;
          }

          v38 -= 32;
          v39 = v65;
          v15 = &v65[v38];
          if (&v65[v38] <= __srca)
          {
            goto LABEL_41;
          }
        }

        v5 = &v78[v38 / 0x10 - 2];
        v4 = __srca;
        v59 = v63;
        if (&v78[v38 / 0x10] != v80)
        {
          v60 = *(v63 + 1);
          *v5 = *v63;
          v78[v38 / 0x10 - 1] = v60;
        }

        v15 = &v65[v38];
        if (&v65[v38] <= __srca)
        {
          break;
        }

        v6 = v63;
      }

      while (v63 > v76);
      v15 = &v65[v38];
    }
  }

  else
  {
    v14 = 4 * v10;
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, v14 * 8);
    }

    v15 = &v4[v14];
    if (v8 >= 32 && v6 < v5)
    {
      v77 = v5;
      v68 = &v4[v14];
      while (1)
      {
        v75 = v7;
        v16 = *v6;
        v17 = v6[1];
        v18 = v6[2];
        v79 = v6;
        v19 = *(v6 + 24);
        v20 = *v4;
        v21 = v4[1];
        v22 = v4[2];
        v23 = *(v4 + 24);
        v24 = v16;
        v73 = v19;
        outlined copy of JSONEncoderValue(v17, v18, v19);
        v25 = v20;
        v70 = v22;
        v71 = v21;
        outlined copy of JSONEncoderValue(v21, v22, v23);
        v26 = [v24 length];
        if (one-time initialization token for system != -1)
        {
          swift_once();
        }

        v27 = *(&static LocaleCache.system + 1);
        v28 = swift_getObjectType();
        v29 = *(v27 + 488);
        swift_unknownObjectRetain();
        v30 = v29(v28, v27);
        v31 = [v24 compare:v25 options:577 range:0 locale:{v26, v30}];

        swift_unknownObjectRelease();
        outlined consume of JSONEncoderValue(v71, v70, v23);

        outlined consume of JSONEncoderValue(v17, v18, v73);
        if (v31 != -1)
        {
          break;
        }

        v32 = v79;
        v6 = v79 + 4;
        v33 = v75;
        v35 = v77;
        if (v75 != v79)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 = (v33 + 4);
        v15 = v68;
        if (v4 >= v68 || v6 >= v35)
        {
          goto LABEL_40;
        }
      }

      v32 = v4;
      v33 = v75;
      v34 = v75 == v4;
      v4 += 4;
      v35 = v77;
      v6 = v79;
      if (v34)
      {
        goto LABEL_17;
      }

LABEL_16:
      v36 = *(v32 + 1);
      *v33 = *v32;
      *(v33 + 1) = v36;
      goto LABEL_17;
    }

LABEL_40:
    v59 = v7;
  }

  v61 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v59 != v4 || v59 >= v4 + v61)
  {
    memmove(v59, v4, v61);
  }

  return 1;
}

uint64_t Locale.forceTemperatureUnit.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 456))(ObjectType, v1);
}

uint64_t Locale.forceMeasurementSystem.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 448))(ObjectType, v1);
}

uint64_t Locale.init(identifier:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v8 = a3[7];
  v23[6] = a3[6];
  v24[0] = v8;
  *(v24 + 12) = *(a3 + 124);
  v9 = a3[3];
  v23[2] = a3[2];
  v23[3] = v9;
  v10 = a3[5];
  v23[4] = a3[4];
  v23[5] = v10;
  v11 = a3[1];
  v23[0] = *a3;
  v23[1] = v11;
  v12 = _s10Foundation17LocalePreferencesVSgWOg(v23);
  if (v12 == 1)
  {
    v13 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 48));
    partial apply for closure #1 in LocaleCache.fixed(_:)((v13 + 16), v21);
    os_unfair_lock_unlock((v13 + 48));
    v15 = *(&v21[0] + 1);
    v14 = *&v21[0];
  }

  else
  {
    type metadata accessor for _LocaleICU();
    v15 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
    v17 = a3[7];
    v21[6] = a3[6];
    v22[0] = v17;
    *(v22 + 12) = *(a3 + 124);
    v18 = a3[3];
    v21[2] = a3[2];
    v21[3] = v18;
    v19 = a3[5];
    v21[4] = a3[4];
    v21[5] = v19;
    v20 = a3[1];
    v21[0] = *a3;
    v21[1] = v20;
    swift_allocObject();
    result = _LocaleICU.init(identifier:prefs:)(a1, a2, v21);
    v14 = result;
  }

  *a4 = v14;
  a4[1] = v15;
  return result;
}

uint64_t Locale.prefs.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 464))(ObjectType, v1);
}

uint64_t Locale.customDateFormat(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = v2;
  return (*(v3 + 496))(&v6, ObjectType, v3);
}

uint64_t Locale.identifierCapturingPreferences.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 472))(ObjectType, v1);
}

uint64_t Locale.forceFirstWeekday(_:)(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = v2;
  return (*(v3 + 432))(&v6, ObjectType, v3);
}

id static Locale.canonicalIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695D798];

  return static Locale.canonicalLanguageIdentifier(from:)(a1, a2, v2);
}

uint64_t Locale.temperatureUnit.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 408))(ObjectType, v1);
}

uint64_t Locale.scriptCode.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 160))(ObjectType, v1);
}

uint64_t Locale.variantCode.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v1 + 168))(ObjectType, v1);
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {

      return 0;
    }
  }

  return result;
}

uint64_t Locale._calendarIdentifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 200))(ObjectType, v1);
}

uint64_t Locale.collationIdentifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 208))(ObjectType, v1);
}

uint64_t Locale.groupingSeparator.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 232))(ObjectType, v1);
}

uint64_t Locale.currencySymbol.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 240))(ObjectType, v1);
}

uint64_t Locale.currencyCode.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 248))(ObjectType, v1);
}

uint64_t Locale.collatorIdentifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 256))(ObjectType, v1);
}

uint64_t Locale.quotationBeginDelimiter.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 264))(ObjectType, v1);
}

uint64_t Locale.quotationEndDelimiter.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 272))(ObjectType, v1);
}

uint64_t Locale.alternateQuotationBeginDelimiter.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 280))(ObjectType, v1);
}

uint64_t Locale.alternateQuotationEndDelimiter.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 288))(ObjectType, v1);
}

uint64_t Locale.exemplarCharacterSet.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 184))(ObjectType, v1);
}

uint64_t Locale.usesMetricSystem.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 216))(ObjectType, v1) & 1;
}

Swift::String_optional __swiftcall Locale.localizedString(forIdentifier:)(Swift::String forIdentifier)
{
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 72))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forLanguageCode:)(Swift::String forLanguageCode)
{
  object = forLanguageCode._object;
  countAndFlagsBits = forLanguageCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 80))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forRegionCode:)(Swift::String forRegionCode)
{
  object = forRegionCode._object;
  countAndFlagsBits = forRegionCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 88))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forScriptCode:)(Swift::String forScriptCode)
{
  object = forScriptCode._object;
  countAndFlagsBits = forScriptCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 96))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forVariantCode:)(Swift::String forVariantCode)
{
  object = forVariantCode._object;
  countAndFlagsBits = forVariantCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 104))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(for:)(Foundation::Calendar::Identifier a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v8 = v2;
  v5 = (*(v3 + 112))(&v8, ObjectType, v3);
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forCollationIdentifier:)(Swift::String forCollationIdentifier)
{
  object = forCollationIdentifier._object;
  countAndFlagsBits = forCollationIdentifier._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 136))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forCurrencyCode:)(Swift::String forCurrencyCode)
{
  object = forCurrencyCode._object;
  countAndFlagsBits = forCurrencyCode._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 120))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forCollatorIdentifier:)(Swift::String forCollatorIdentifier)
{
  object = forCollatorIdentifier._object;
  countAndFlagsBits = forCollatorIdentifier._countAndFlagsBits;
  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 144))(countAndFlagsBits, object, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t Locale.numberingSystem.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 312))(ObjectType, v1);
}

uint64_t Locale.forceHourCycle.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 424))(ObjectType, v1);
}

uint64_t Locale.firstDayOfWeek.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 328))(ObjectType, v1);
}

Swift::Int Locale.IdentifierType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

double Locale.init(languageComponents:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[4];
  v17 = a1[3];
  v18 = v4;
  v5 = a1[4];
  v19 = a1[5];
  v6 = a1[1];
  v16[0] = *a1;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v16[1] = v6;
  v16[2] = v9;
  v15[3] = v3;
  v15[4] = v17;
  v10 = a1[5];
  v15[5] = v5;
  v15[6] = v10;
  v15[1] = v7;
  v15[2] = v8;
  Locale.Language.Components.identifier.getter();
  v11 = outlined destroy of Locale.Language.Components(v16);
  if (one-time initialization token for cache != -1)
  {
    v11 = swift_once();
  }

  v12 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock((v12 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v12 + 16), v15);
  os_unfair_lock_unlock((v12 + 48));
  v14 = v15[0];

  result = *&v14;
  *a2 = v14;
  return result;
}

double Locale.init(languageCode:script:languageRegion:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X8>)
{
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  v8 = outlined consume of Locale.LanguageCode?(0, 0);
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = a2[1];
  v16[2] = *a2;
  v16[3] = v10;
  v11 = a3[1];
  v16[4] = *a3;
  v16[5] = v11;
  v17 = 27;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1031;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (one-time initialization token for cache != -1)
  {
    v8 = swift_once();
  }

  v12 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v12 + 12);
  closure #1 in LocaleCache.fixedComponents(_:)partial apply(&v12[4], &v15);
  os_unfair_lock_unlock(v12 + 12);
  v14 = v15;
  outlined destroy of Locale.Components(v16);
  result = *&v14;
  *a4 = v14;
  return result;
}

uint64_t Locale.currency.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 304))(ObjectType, v1);
}

uint64_t Locale.availableNumberingSystems.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 320))(ObjectType, v1);
}

uint64_t Locale.collation.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 368))(ObjectType, v1);
}

uint64_t Locale.timeZone.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 384))(ObjectType, v1);
}

uint64_t Locale.subdivision.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 392))(ObjectType, v1);
}

uint64_t Locale.variant.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 400))(ObjectType, v1);
}

Swift::Int_optional __swiftcall Locale.forceMinDaysInFirstWeek(_:)(Foundation::Calendar::Identifier a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v8 = v2;
  v5 = (*(v3 + 440))(&v8, ObjectType, v3);
  v7 = v6 & 1;
  result.value = v5;
  result.is_nil = v7;
  return result;
}

uint64_t static Locale.preferredLocales.getter()
{
  v40 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v0 = String._bridgeToObjectiveCImpl()();
    v1 = CFPreferencesCopyAppValue(v0, *MEMORY[0x1E695E8A8]);
    swift_unknownObjectRelease();
    if (v1 && (*&v39 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), (swift_dynamicCast() & 1) != 0))
    {
      v2 = v37;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v35 = *(v2 + 16);
    if (v35)
    {
      v3 = 0;
      v34 = *MEMORY[0x1E695E4A8];
      v4 = v2 + 40;
      v5 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v3 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v6 = String._bridgeToObjectiveCImpl()();

        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v34, v6);
        swift_unknownObjectRelease();
        if (!CanonicalLanguageIdentifierFromString)
        {
          break;
        }

        isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
        v9 = CanonicalLanguageIdentifierFromString;
        v10 = v9;
        if ((isTaggedPointer & 1) == 0)
        {
          goto LABEL_15;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v9);
        if (!TaggedPointerTag)
        {
          _CFIndirectTaggedPointerStringGetContents();
          v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v20)
          {
            [(__CFString *)v10 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v12 = v37;
            v14 = v38;
LABEL_32:

            goto LABEL_33;
          }

          goto LABEL_27;
        }

        if (TaggedPointerTag == 22)
        {
          v18 = [(__CFString *)v10 UTF8String];
          if (!v18)
          {
            goto LABEL_54;
          }

          v19 = String.init(utf8String:)(v18);
          if (!v20)
          {
            __break(1u);
LABEL_54:
            __break(1u);
          }

LABEL_27:
          v12 = v19;
          v14 = v20;

          goto LABEL_33;
        }

        if (TaggedPointerTag != 2)
        {
LABEL_15:
          LOBYTE(v37) = 0;
          *&v39 = 0;
          if (__CFStringIsCF())
          {
            if (v39)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v15 = v10;
            v16 = String.init(_nativeStorage:)();
            if (v17)
            {
              v12 = v16;
              v14 = v17;

              goto LABEL_33;
            }

            *&v39 = [(__CFString *)v15 length];
            if (v39)
            {
LABEL_31:
              v12 = String.init(_cocoaString:)();
              v14 = v21;
              goto LABEL_32;
            }
          }

          goto LABEL_19;
        }

        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v13;

LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v23 = *(v5 + 2);
        v22 = *(v5 + 3);
        if (v23 >= v22 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
        }

        ++v3;
        *(v5 + 2) = v23 + 1;
        v24 = &v5[16 * v23];
        *(v24 + 4) = v12;
        *(v24 + 5) = v14;
        v4 += 16;
        if (v35 == v3)
        {
          goto LABEL_40;
        }
      }

LABEL_19:
      v12 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_33;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_40:

    v26 = *(v5 + 2);
    if (!v26)
    {
      break;
    }

    v27 = 0;
    v28 = v5 + 40;
    v29 = MEMORY[0x1E69E7CC0];
    while (v27 < *(v5 + 2))
    {
      v30 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);

      os_unfair_lock_lock((v30 + 48));
      closure #1 in LocaleCache.fixed(_:)partial apply((v30 + 16), &v39);
      os_unfair_lock_unlock((v30 + 48));

      v36 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
        v29 = isUniquelyReferenced_nonNull_native;
      }

      ++v27;
      *(v29 + 16) = v32 + 1;
      *(v29 + 16 * v32 + 32) = v36;
      v28 += 16;
      if (v26 == v27)
      {
        goto LABEL_50;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_50:

  return v29;
}

uint64_t implicit closure #2 in static Locale.identifier(fromComponents:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  if ((*(v1 + 48))(ObjectType, v1))
  {
    v3 = 1;
LABEL_5:
    Hasher._combine(_:)(v3);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  (*(v1 + 64))(ObjectType, v1);
  String.hash(into:)();

  (*(v1 + 464))(&v36, ObjectType, v1);
  v44[6] = v42;
  v45[0] = *v43;
  *(v45 + 12) = *&v43[12];
  v44[2] = v38;
  v44[3] = v39;
  v44[4] = v40;
  v44[5] = v41;
  v44[0] = v36;
  v44[1] = v37;
  if (_s10Foundation17LocalePreferencesVSgWOg(v44) == 1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v4 = v36;
  v5 = *(&v36 + 1);
  v6 = *(&v37 + 1);
  v7 = *(&v38 + 1);
  v8 = v39;
  v30 = v40;
  v31 = v41;
  v9 = v42;
  v10 = *v43;
  v32 = v43[24];
  v33 = *&v43[16];
  v11 = v43[25];
  v34 = v43[26];
  v35 = v43[27];
  Hasher._combine(_:)(1u);
  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4 & 1);
    if (v5)
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v5 + 16));
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = v5 + 40;
        do
        {

          String.hash(into:)();

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  Hasher._combine(_:)(0);
  if (v6)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_16;
  }

LABEL_15:
  Hasher._combine(_:)(0);
LABEL_16:
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v8)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v46, v8, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v8 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v46, *(&v8 + 1), v20, v21, v22, v23, v24, v25);
    if (v30)
    {
      goto LABEL_24;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v30)
    {
LABEL_24:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v30 + 1))
      {
        goto LABEL_25;
      }

LABEL_29:
      v26 = v32;
      Hasher._combine(_:)(0);
      if (v31)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  Hasher._combine(_:)(0);
  if (!*(&v30 + 1))
  {
    goto LABEL_29;
  }

LABEL_25:
  v26 = v32;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v31)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_31;
  }

LABEL_30:
  Hasher._combine(_:)(0);
LABEL_31:
  if (*(&v31 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v9)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v9 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v46, *(&v9 + 1));
    if (v10)
    {
      goto LABEL_39;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v10)
    {
LABEL_39:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v46, v10);
      if (v33)
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  Hasher._combine(_:)(0);
  if (v33)
  {
LABEL_40:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v26 == 2)
    {
      goto LABEL_41;
    }

    goto LABEL_47;
  }

LABEL_46:
  Hasher._combine(_:)(0);
  if (v26 == 2)
  {
LABEL_41:
    Hasher._combine(_:)(0);
    if (v11 != 2)
    {
      goto LABEL_42;
    }

LABEL_48:
    Hasher._combine(_:)(0);
    if (v34 != 2)
    {
      goto LABEL_43;
    }

LABEL_49:
    v27 = 0;
    goto LABEL_50;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v26 & 1);
  if (v11 == 2)
  {
    goto LABEL_48;
  }

LABEL_42:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v11 & 1);
  if (v34 == 2)
  {
    goto LABEL_49;
  }

LABEL_43:
  Hasher._combine(_:)(1u);
  v27 = v34 & 1;
LABEL_50:
  Hasher._combine(_:)(v27);
  if (v35 == 2)
  {
    v28 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v28 = v35 & 1;
  }

  Hasher._combine(_:)(v28);
  outlined destroy of TermOfAddress?(&v36, &_s10Foundation17LocalePreferencesVSgMd);
  return Hasher._finalize()();
}

uint64_t Locale.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v30[0] = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v30[0] - 8);
  MEMORY[0x1EEE9AC00](v30[0]);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v30 - v6;
  v8 = *v1;
  v9 = v1[1];
  swift_getObjectType();
  v10 = (*(v9 + 64))();
  v11 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69E6158];
  *&v34 = v10;
  *(&v34 + 1) = v12;
  v31 = xmmword_181231A50;
  outlined init with take of Any(&v34, &v32);
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  v16 = &v13[6 * v15];
  v17 = v31;
  v18 = v33;
  v16[3] = v32;
  v16[4] = v18;
  v16[2] = v17;
  *&v31 = v8;
  v19 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  v35 = v11;
  *&v34 = v19;
  *(&v34 + 1) = v20;
  v31 = xmmword_181231A70;
  outlined init with take of Any(&v34, &v32);
  v22 = v13[2];
  v21 = v13[3];
  if (v22 >= v21 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v13);
  }

  v13[2] = v22 + 1;
  v23 = &v13[6 * v22];
  v24 = v31;
  v25 = v33;
  v23[3] = v32;
  v23[4] = v25;
  v23[2] = v24;
  *&v31 = v8;
  *(&v31 + 1) = v9;
  *&v34 = v13;
  v26 = *MEMORY[0x1E69E75B8];
  v27 = type metadata accessor for Mirror.DisplayStyle();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v7, v26, v27);
  (*(v28 + 56))(v7, 0, 1, v27);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v30[0]);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Locale.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6572727563 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Locale.CodingKeys@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.CodingKeys and conformance Locale.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.CodingKeys and conformance Locale.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = *(v5 + 2);
  v13[0] = (v5 + 32);
  v13[1] = v6;
  result = _minimumMergeRunLength(_:)(v6);
  if (result >= v6)
  {
    if (v6)
    {
      result = specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v6, 1, a1);
    }
  }

  else
  {
    v8 = result;
    if (v6 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v6 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v11[0] = v9 + 32;
    v11[1] = v6 >> 1;
    v10 = v9;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v13, a1, a2, v8);
    *(v10 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v8 = result;
  v116 = MEMORY[0x1E69E7CC0];
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v100 = result;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v13 >= v9)
      {
        v27 = v13;
      }

      else
      {
        v14 = v12;
        v15 = *v7;
        v16 = (*v7 + 16 * v13);
        v17 = v16[1];
        v114 = *v16;
        v115 = v17;
        v18 = (v15 + 16 * v14);
        v19 = v18[1];
        v112 = *v18;
        v113 = v19;

        v107 = a4(&v114, &v112);
        if (v6)
        {
LABEL_92:
        }

        v20 = 0;
        v98 = v9 - 1;
        v103 = v14;
        v105 = v9;
        v21 = v14 - v9 + 2;
        v22 = 16 * v14;
        v23 = (v15 + v22 + 24);
        while (v21 + v20)
        {
          v24 = v23[2];
          v114 = v23[1];
          v115 = v24;
          v25 = *v23;
          v112 = *(v23 - 1);
          v113 = v25;

          v26 = a4(&v114, &v112);

          ++v20;
          v23 += 2;
          if ((v107 ^ v26))
          {
            v12 = v103;
            v98 = v103 + v20;
            v27 = v103 + v20 + 1;
            goto LABEL_12;
          }
        }

        v12 = v103;
        v27 = v105;
LABEL_12:
        v8 = v100;
        v7 = a3;
        if (v107)
        {
          if (v27 < v12)
          {
            goto LABEL_112;
          }

          if (v12 <= v98)
          {
            v89 = 0;
            v90 = 16 * v27;
            v91 = v12;
            do
            {
              if (v91 != v27 + v89 - 1)
              {
                v92 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                v93 = (v92 + v22);
                v94 = v92 + v90;
                v95 = *v93;
                v96 = v93[1];
                *v93 = *(v94 - 16);
                *(v94 - 16) = v95;
                *(v94 - 8) = v96;
              }

              ++v91;
              --v89;
              v90 -= 16;
              v22 += 16;
            }

            while (v91 < v27 + v89);
          }
        }
      }

      v28 = v7[1];
      if (v27 >= v28)
      {
        goto LABEL_25;
      }

      if (__OFSUB__(v27, v12))
      {
        goto LABEL_109;
      }

      if (v27 - v12 >= a6)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v12, a6))
      {
        goto LABEL_110;
      }

      v29 = v27;
      if (v12 + a6 >= v28)
      {
        v30 = v7[1];
      }

      else
      {
        v30 = v12 + a6;
      }

      if (v30 < v12)
      {
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
        return result;
      }

      v31 = v29;
      if (v29 == v30)
      {
        break;
      }

      v79 = *v7;
      v80 = (*v7 + 16 * v29);
      v104 = v12;
      v81 = v12 - v29;
      v109 = v30;
      do
      {
        v106 = v31;
        v82 = (v79 + 16 * v31);
        v83 = *v82;
        v84 = v82[1];
        v97 = v81;
        v99 = v80;
        do
        {
          v114 = v83;
          v115 = v84;
          v85 = *(v80 - 1);
          v112 = *(v80 - 2);
          v113 = v85;

          v86 = a4(&v114, &v112);
          if (v6)
          {
            goto LABEL_92;
          }

          v87 = v86;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_114;
          }

          v83 = *v80;
          v84 = v80[1];
          *v80 = *(v80 - 1);
          *(v80 - 1) = v84;
          *(v80 - 2) = v83;
          v80 -= 2;
        }

        while (!__CFADD__(v81++, 1));
        v27 = v109;
        v31 = v106 + 1;
        v80 = v99 + 2;
        v81 = v97 - 1;
      }

      while (v106 + 1 != v109);
      v8 = v100;
      v7 = a3;
      v12 = v104;
      if (v109 < v104)
      {
        goto LABEL_108;
      }

LABEL_26:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        v11 = result;
      }

      v33 = *(v11 + 2);
      v32 = *(v11 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v34;
      v35 = &v11[16 * v33];
      *(v35 + 4) = v12;
      *(v35 + 5) = v27;
      v116 = v11;
      v36 = *v8;
      if (!*v8)
      {
        goto LABEL_116;
      }

      v108 = v27;
      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v38 = *(v11 + 4);
            v39 = *(v11 + 5);
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_45:
            if (v41)
            {
              goto LABEL_99;
            }

            v54 = &v11[16 * v34];
            v56 = *v54;
            v55 = *(v54 + 1);
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_102;
            }

            v60 = &v11[16 * v37 + 32];
            v62 = *v60;
            v61 = *(v60 + 1);
            v48 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v48)
            {
              goto LABEL_105;
            }

            if (__OFADD__(v58, v63))
            {
              goto LABEL_106;
            }

            if (v58 + v63 >= v40)
            {
              if (v40 < v63)
              {
                v37 = v34 - 2;
              }

              goto LABEL_66;
            }

            goto LABEL_59;
          }

          v64 = &v11[16 * v34];
          v66 = *v64;
          v65 = *(v64 + 1);
          v48 = __OFSUB__(v65, v66);
          v58 = v65 - v66;
          v59 = v48;
LABEL_59:
          if (v59)
          {
            goto LABEL_101;
          }

          v67 = &v11[16 * v37];
          v69 = *(v67 + 4);
          v68 = *(v67 + 5);
          v48 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v48)
          {
            goto LABEL_104;
          }

          if (v70 < v58)
          {
            goto LABEL_3;
          }

LABEL_66:
          v75 = v37 - 1;
          if (v37 - 1 >= v34)
          {
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
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
            goto LABEL_111;
          }

          if (!*v7)
          {
            goto LABEL_113;
          }

          v76 = *&v11[16 * v75 + 32];
          v77 = *&v11[16 * v37 + 40];
          result = specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v76), (*v7 + 16 * *&v11[16 * v37 + 32]), (*v7 + 16 * v77), v36, a4);
          if (v6)
          {
          }

          if (v77 < v76)
          {
            goto LABEL_95;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            v11 = result;
          }

          if (v75 >= *(v11 + 2))
          {
            goto LABEL_96;
          }

          v78 = &v11[16 * v75];
          *(v78 + 4) = v76;
          *(v78 + 5) = v77;
          v116 = v11;
          result = specialized Array.remove(at:)(v37);
          v11 = v116;
          v34 = *(v116 + 2);
          if (v34 <= 1)
          {
            goto LABEL_3;
          }
        }

        v42 = &v11[16 * v34 + 32];
        v43 = *(v42 - 64);
        v44 = *(v42 - 56);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_97;
        }

        v47 = *(v42 - 48);
        v46 = *(v42 - 40);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_98;
        }

        v49 = &v11[16 * v34];
        v51 = *v49;
        v50 = *(v49 + 1);
        v48 = __OFSUB__(v50, v51);
        v52 = v50 - v51;
        if (v48)
        {
          goto LABEL_100;
        }

        v48 = __OFADD__(v40, v52);
        v53 = v40 + v52;
        if (v48)
        {
          goto LABEL_103;
        }

        if (v53 >= v45)
        {
          v71 = &v11[16 * v37 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v48 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v48)
          {
            goto LABEL_107;
          }

          if (v40 < v74)
          {
            v37 = v34 - 2;
          }

          goto LABEL_66;
        }

        goto LABEL_45;
      }

LABEL_3:
      v9 = v7[1];
      v10 = v108;
      if (v108 >= v9)
      {
        goto LABEL_90;
      }
    }

    v27 = v29;
LABEL_25:
    if (v27 < v12)
    {
      goto LABEL_108;
    }

    goto LABEL_26;
  }

LABEL_90:
  if (!*v8)
  {
    goto LABEL_117;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v116, *v8, a4, a5);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t (*a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  v5 = v4;
  v65 = a4;
  v7 = a1;
  v8 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_2:
  *v7 = v8;
  v10 = *(v8 + 2);
  if (v10 < 2)
  {
    return 1;
  }

  __src = a2;
  v51 = v7;
  while (1)
  {
    v11 = *v52;
    if (!*v52)
    {
      __break(1u);
      return result;
    }

    v54 = v10;
    v55 = v8;
    v12 = *&v8[16 * v10];
    v53 = v10 - 1;
    v14 = &v8[16 * v10 + 16];
    v13 = *v14;
    v56 = *(v14 + 1);
    v57 = v12;
    v15 = 16 * v12;
    v16 = (v11 + 16 * v12);
    v17 = 16 * *v14;
    v18 = (v11 + v17);
    v19 = v11 + 16 * v56;
    v7 = v17 - 16 * v12;
    v20 = 16 * v56 - v17;
    if (v7 >= v20)
    {
      break;
    }

    v21 = v19;
    if (v16 != a2 || v18 <= a2)
    {
      memmove(a2, v16, 16 * v13 - 16 * v12);
    }

    v8 = a2;
    v23 = &a2[v7];
    v24 = v7 < 1 || 16 * v56 <= v17;
    v25 = v21;
    if (!v24)
    {
      while (1)
      {
        v26 = *(v18 + 1);
        v63 = *v18;
        v64 = v26;
        v27 = *(v8 + 1);
        v61 = *v8;
        v62 = v27;

        v28 = a3(&v63, &v61);
        if (v5)
        {

          v46 = v23 - v8 + 15;
          if (v23 - v8 >= 0)
          {
            v46 = v23 - v8;
          }

          if (v16 < v8 || v16 >= &v8[v46 & 0xFFFFFFFFFFFFFFF0] || v16 != v8)
          {
            memmove(v16, v8, 16 * (v46 >> 4));
          }

          return 1;
        }

        v7 = v28;

        if ((v7 & 1) == 0)
        {
          break;
        }

        v29 = v18;
        v30 = v16 == v18;
        v18 += 16;
        if (!v30)
        {
          goto LABEL_24;
        }

LABEL_25:
        v16 += 16;
        if (v8 >= v23 || v18 >= v25)
        {
          goto LABEL_17;
        }
      }

      v29 = v8;
      v30 = v16 == v8;
      v8 += 16;
      if (v30)
      {
        goto LABEL_25;
      }

LABEL_24:
      *v16 = *v29;
      goto LABEL_25;
    }

    v8 = __src;
LABEL_17:
    v18 = v16;
LABEL_49:
    if (v18 != v8 || v18 >= &v8[(v23 - v8 + (v23 - v8 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
    {
      memmove(v18, v8, 16 * ((v23 - v8) / 16));
    }

    a2 = __src;
    if (v56 < v57)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
      goto LABEL_2;
    }

    v8 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
    }

    v7 = v51;
    if ((v54 - 2) >= *(v8 + 2))
    {
      goto LABEL_74;
    }

    v45 = &v8[16 * v54];
    *v45 = v57;
    *(v45 + 1) = v56;
    *v51 = v8;
    result = specialized Array.remove(at:)(v53);
    v8 = *v51;
    v10 = *(*v51 + 2);
    if (v10 <= 1)
    {
      return 1;
    }
  }

  v50 = v16;
  v58 = v19;
  if (v18 != a2 || v19 <= a2)
  {
    memmove(a2, v18, 16 * v56 - 16 * v13);
  }

  v32 = a2;
  v23 = &a2[v20];
  v33 = v20 < 1 || v17 <= v15;
  v8 = v32;
  if (v33)
  {
    goto LABEL_49;
  }

LABEL_37:
  v34 = v18;
  v35 = v5;
  v36 = 0;
  v37 = v23;
  v49 = v34 - 16;
  while (1)
  {
    v38 = v37;
    v39 = &v37[v36];
    v40 = &v37[v36 - 16];
    v41 = *&v37[v36 - 8];
    v63 = *v40;
    v64 = v41;
    v42 = *(v34 - 1);
    v43 = v34;
    v61 = *(v34 - 2);
    v62 = v42;

    v44 = a3(&v63, &v61);
    if (v35)
    {
      break;
    }

    v7 = v44;

    if (v7)
    {
      if ((v58 + v36) != v43)
      {
        *(v58 + v36 - 16) = *v49;
      }

      v58 = v58 + v36 - 16;
      v23 = &v38[v36];
      v5 = 0;
      if (&v38[v36] <= __src)
      {
        v18 = v49;
LABEL_59:
        v23 = &v38[v36];
        v8 = __src;
        goto LABEL_49;
      }

      v18 = v49;
      if (v50 >= v49)
      {
        goto LABEL_59;
      }

      goto LABEL_37;
    }

    v34 = v43;
    v37 = v38;
    if ((v58 + v36) != v39)
    {
      *(v58 + v36 - 16) = *v40;
    }

    v36 -= 16;
    v23 = &v38[v36];
    if (&v38[v36] <= __src)
    {
      v8 = __src;
      v5 = 0;
      v18 = v34;
      goto LABEL_49;
    }
  }

  v47 = v38 - __src + v36;
  v48 = v47 + 15;
  if (v47 >= 0)
  {
    v48 = v38 - __src + v36;
  }

  if (v43 < __src || v43 >= &__src[v48 & 0xFFFFFFFFFFFFFFF0] || v43 != __src)
  {
    memmove(v43, __src, 16 * (v48 >> 4));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *a2, char *a3, char *__src, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v57 = a5;
  v6 = a3;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a2;
    v14 = __src;
    v15 = __dst;
    if (__src != __dst || &__dst[16 * v9] <= __src)
    {
      memmove(__src, __dst, 16 * v9);
    }

    v16 = &v14[16 * v9];
    if (v7 < 16 || v13 >= v6)
    {
LABEL_21:
      a2 = v15;
      goto LABEL_40;
    }

    v17 = v13;
    v52 = &v14[16 * v9];
    while (1)
    {
      v18 = v6;
      v19 = *(v17 + 1);
      v55 = *v17;
      v56 = v19;
      v20 = *(v14 + 1);
      v53 = *v14;
      v54 = v20;

      v21 = v57(&v55, &v53);
      if (v5)
      {

        v43 = v52 - v14 + 15;
        if (v52 - v14 >= 0)
        {
          v43 = v52 - v14;
        }

        v44 = v43 >> 4;
        if (v15 < v14 || v15 >= &v14[v43 & 0xFFFFFFFFFFFFFFF0])
        {
          memmove(v15, v14, 16 * v44);
        }

        else if (v15 != v14)
        {
          v39 = 16 * v44;
          v40 = v15;
LABEL_46:
          v41 = v14;
LABEL_47:
          memmove(v40, v41, v39);
        }

        return 1;
      }

      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v17;
      v24 = v15 == v17;
      v17 += 16;
      v6 = v18;
      if (!v24)
      {
        goto LABEL_18;
      }

LABEL_19:
      v15 += 16;
      v16 = v52;
      if (v14 >= v52 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v23 = v14;
    v24 = v15 == v14;
    v14 += 16;
    v6 = v18;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v15 = *v23;
    goto LABEL_19;
  }

  if (__src != a2 || &a2[16 * v12] <= __src)
  {
    v25 = a2;
    v26 = __src;
    memmove(__src, a2, 16 * v12);
    __src = v26;
    a2 = v25;
  }

  __srca = __src;
  v16 = &__src[16 * v12];
  if (v10 < 16 || a2 <= __dst)
  {
    v14 = __src;
    goto LABEL_40;
  }

LABEL_27:
  v50 = v6;
  v27 = 0;
  v28 = v16;
  v48 = a2 - 16;
  while (1)
  {
    v29 = v28;
    v30 = &v28[v27];
    v31 = &v28[v27 - 16];
    v32 = *&v28[v27 - 8];
    v55 = *v31;
    v56 = v32;
    v33 = *(a2 - 1);
    v34 = a2;
    v53 = *(a2 - 2);
    v54 = v33;

    v35 = v57(&v55, &v53);
    if (v5)
    {
      break;
    }

    v36 = v35;

    if (v36)
    {
      v6 = &v50[v27 - 16];
      a2 = v48;
      if (&v50[v27] != v34)
      {
        *v6 = *v48;
      }

      v16 = &v29[v27];
      v14 = __srca;
      if (&v29[v27] <= __srca || v48 <= __dst)
      {
        v16 = &v29[v27];
LABEL_40:
        v37 = v16 - v14;
        v38 = v37 + 15;
        if (v37 >= 0)
        {
          v38 = v37;
        }

        if (a2 < v14 || a2 >= &v14[v38 & 0xFFFFFFFFFFFFFFF0] || a2 != v14)
        {
          v39 = 16 * (v38 >> 4);
          v40 = a2;
          goto LABEL_46;
        }

        return 1;
      }

      goto LABEL_27;
    }

    a2 = v34;
    v28 = v29;
    if (&v50[v27] != v30)
    {
      *&v50[v27 - 16] = *v31;
    }

    v27 -= 16;
    v16 = &v29[v27];
    v14 = __srca;
    if (&v29[v27] <= __srca)
    {
      goto LABEL_40;
    }
  }

  v41 = __srca;
  v45 = v29 - __srca + v27;
  v46 = v45 + 15;
  if (v45 >= 0)
  {
    v46 = v29 - __srca + v27;
  }

  v47 = v46 >> 4;
  if (v34 < __srca || v34 >= &__srca[v46 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v34, __srca, 16 * v47);
  }

  else if (v34 != __srca)
  {
    v39 = 16 * v47;
    v40 = v34;
    goto LABEL_47;
  }

  return 1;
}

id specialized static Locale._canonicalLocaleIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695D798];

  return static Locale.canonicalLanguageIdentifier(from:)(a1, a2, v2);
}

uint64_t _LocaleAutoupdating.prefs.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  v9 = *(&static LocaleCache.cache + 8);
  v1 = *(&static LocaleCache.cache + 1);
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v3)
  {
    *&v11[0] = v0;
    *(v11 + 8) = v9;
    LocaleCache.preferences()(v13);
    v5 = v4;
    type metadata accessor for _LocaleICU();
    v2 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
    v11[6] = v13[6];
    v12[0] = v14[0];
    *(v12 + 12) = *(v14 + 12);
    v11[2] = v13[2];
    v11[3] = v13[3];
    v11[4] = v13[4];
    v11[5] = v13[5];
    v11[0] = v13[0];
    v11[1] = v13[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v13, &v10);
    v6 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v11, 0);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      os_unfair_lock_lock((v1 + 32));
      partial apply for closure #2 in LocaleCache._currentAndCache.getter((v1 + 16), v11);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v13);

      v2 = *(&v11[0] + 1);
    }

    else
    {
      outlined destroy of LocalePreferences(v13);
    }
  }

  ObjectType = swift_getObjectType();
  (*(v2 + 464))(ObjectType, v2);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.identifierDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 72))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.languageCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 80))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.countryCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 88))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.scriptCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 96))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.variantCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 104))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.calendarIdentifierDisplayName(for:) in conformance _LocaleAutoupdating(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v7 = static LocaleCache.cache;
  v8 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  LOBYTE(v7) = v1;
  v5 = (*(v3 + 112))(&v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t protocol witness for _LocaleProtocol.currencyCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 120))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.currencySymbolDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 128))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.collationIdentifierDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 136))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.collatorIdentifierDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 144))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.scriptCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 160))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.variantCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 168))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.regionCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 176))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.exemplarCharacterSet.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 184))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.calendar.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 192))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.collationIdentifier.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 208))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.usesMetricSystem.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 216))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t protocol witness for _LocaleProtocol.groupingSeparator.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 232))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.currencySymbol.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 240))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.currencyCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 248))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.collatorIdentifier.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 256))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.quotationBeginDelimiter.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 264))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.quotationEndDelimiter.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 272))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.alternateQuotationBeginDelimiter.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 280))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.alternateQuotationEndDelimiter.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 288))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.currency.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 304))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.availableNumberingSystems.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 320))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.weekendRange.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 336))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.collation.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 368))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.timeZone.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 384))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.subdivision.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 392))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.variant.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 400))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.temperatureUnit.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 408))(ObjectType, v1);

  return swift_unknownObjectRelease();
}