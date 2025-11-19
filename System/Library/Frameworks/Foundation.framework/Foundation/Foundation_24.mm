uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(int a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_bridgeObjectRetain_n();
  if (a1 < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v7 = &v12[-1] - v6;

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v7, a3, v12);
    v8 = v12[0];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v10 = swift_slowAlloc();

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v10, a3, v12);
    MEMORY[0x1865D2690](v10, -1, -1);
    swift_bridgeObjectRelease_n();
    return v12[0];
  }

  return v8;
}

uint64_t specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v19[1] = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (*(a2 + 16) >> 31)
  {
    __break(1u);
    __break(1u);
    v16 = a1;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();

      specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v18, v16, a2, a3);
      if (v3)
      {

        result = MEMORY[0x1865D2690](v18, -1, -1);
        __break(1u);
      }

      else
      {
        MEMORY[0x1865D2690](v18, -1, -1);
        return swift_bridgeObjectRelease_n();
      }

      return result;
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = v19 - v8;
    v19[0] = 0;
    if (!(*(a2 + 16) >> 31))
    {
      BestPatternWithOptions = udatpg_getBestPatternWithOptions();
      v11 = 0;
      v12 = 0;
      if (v19[0] <= 0 && BestPatternWithOptions > 0)
      {
        v11 = specialized String.init(_utf16:)(v9, BestPatternWithOptions);
        v12 = v13;
      }

      goto LABEL_11;
    }

    __break(1u);
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v7 = udatpg_getBestPatternWithOptions();
  if (v7 > 0)
  {
    v11 = specialized String.init(_utf16:)(a1, v7);
    v12 = v14;
LABEL_11:
    result = swift_bridgeObjectRelease_n();
    *a3 = v11;
    a3[1] = v12;
    return result;
  }

  result = swift_bridgeObjectRelease_n();
  *a3 = 0;
  a3[1] = 0;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 96 * result);
  v6 = a2[3];
  v5[2] = a2[2];
  v5[3] = v6;
  v7 = a2[5];
  v5[4] = a2[4];
  v5[5] = v7;
  v8 = a2[1];
  *v5 = *a2;
  v5[1] = v8;
  v9 = (a5[7] + 16 * result);
  *v9 = a3;
  v9[1] = a4;
  v10 = a5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v12;
  }

  return result;
}

BOOL specialized UErrorCode.checkSuccessAndLogError(_:)(UErrorCode a1)
{
  if (a1 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000018147F840, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  if (a1 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000018147F750, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  if (a1 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000018147F810, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  if (a1 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000018147F7E0, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  if (a1 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000018147F7B0, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  if (a1 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x800000018147F770, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  if (a1 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000018147F710, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  if (a1 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000018147F730, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

uint64_t protocol witness for _LocaleProtocol.hourCycle.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 360))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t ICUPatternGenerator.defaultHourCycle.getter@<X0>(char *a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  result = MEMORY[0x1865D2DF0](*(v1 + 16), &v6);
  if (result < 4 && v6 < 1)
  {
    v5 = result;
  }

  else
  {
    v5 = 2;
  }

  *a1 = v5;
  return result;
}

uint64_t Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(char a1)
{
  result = 106;
  switch(a1)
  {
    case 1:
      result = 27242;
      break;
    case 2:
      result = 6974058;
      break;
    case 3:
      result = 1785358954;
      break;
    case 4:
      result = 0x6A6A6A6A6ALL;
      break;
    case 5:
      result = 0x6A6A6A6A6A6ALL;
      break;
    case 6:
      result = 74;
      break;
    case 7:
      result = 19018;
      break;
    case 8:
      result = 67;
      break;
    case 9:
      result = 17219;
      break;
    case 10:
      result = 4408131;
      break;
    case 11:
      result = 1128481603;
      break;
    case 12:
      result = 0x4343434343;
      break;
    case 13:
      result = 0x434343434343;
      break;
    default:
      return result;
  }

  return result;
}

void protocol witness for _LocaleProtocol.hourCycle.getter in conformance _LocaleICU(char *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock(v3 + 134);
  partial apply for closure #1 in _LocaleICU.hourCycle.getter(&v3[4], a1);

  os_unfair_lock_unlock(v3 + 134);
}

uint64_t closure #1 in _LocaleICU.hourCycle.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v172 = *MEMORY[0x1E69E9840];
  v5 = *(result + 273);
  if (v5 != 4)
  {
    *a3 = v5;
    return result;
  }

  v7 = result;
  v145 = v3;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = specialized static Locale.keywordValue(identifier:key:)();
  if (v11)
  {
    v12 = v11;
    v13._countAndFlagsBits = v10;
    v13._object = v12;
    v14 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.HourCycle.init(rawValue:), v13);

    if (v14 < 4)
    {
      *(v7 + 273) = v14;
      *a3 = v14;
      return result;
    }
  }

  v15 = *(a2 + 136);
  v16 = *(a2 + 168);
  v170[6] = *(a2 + 152);
  *v171 = v16;
  *&v171[12] = *(a2 + 180);
  v17 = *(a2 + 72);
  v18 = *(a2 + 104);
  v170[2] = *(a2 + 88);
  v170[3] = v18;
  v170[4] = *(a2 + 120);
  v170[5] = v15;
  v170[0] = *(a2 + 56);
  v170[1] = v17;
  result = _s10Foundation17LocalePreferencesVSgWOg(v170);
  if (result != 1)
  {
    if (v171[26] != 2 && (v171[26] & 1) != 0)
    {
      v19 = 2;
LABEL_13:
      *(v7 + 273) = v19;
      *a3 = v19;
      return result;
    }

    if (v171[27] != 2 && (v171[27] & 1) != 0)
    {
      v19 = 1;
      goto LABEL_13;
    }
  }

  Locale.Components.init(identifier:)(v168);
  v20 = v169;
  if (v169 != 4)
  {
    result = outlined destroy of Locale.Components(v168);
    *(v7 + 273) = v20;
    *a3 = v20;
    return result;
  }

  v143 = *(a2 + 48);
  v21 = *(v7 + 328);
  v22 = &unk_1EA7B1000;
  v142 = a3;
  if (!v21)
  {
    goto LABEL_56;
  }

  v23 = *(v7 + 320);
  if (v21 != 1)
  {
    v33 = *(v7 + 320);
    v34 = *(v7 + 328);
    goto LABEL_40;
  }

  v134 = *(v7 + 320);
  specialized static Locale.keywordValue(identifier:key:)();
  if (!v24)
  {
LABEL_23:
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    outlined destroy of Locale.Language.Components(&v162);
    String.utf8CString.getter();
    Language = uloc_getLanguage();

    v39 = 0;
    v40 = 0;
    if (Language > 0)
    {
      v161[Language] = 0;
      v39 = MEMORY[0x1865CAEB0](v161);
      v40 = v41;
    }

    String.utf8CString.getter();
    Script = uloc_getScript();

    v43 = 0;
    v44 = 0;
    if (Script > 0)
    {
      v160[Script] = 0;
      v43 = MEMORY[0x1865CAEB0](v160, 0);
    }

    v139 = v44;
    v140 = v43;
    LODWORD(v153) = 0;
    String.utf8CString.getter();
    Country = uloc_getCountry();

    v46 = 0;
    v47 = 0;
    if (Country > 0)
    {
      v159[Country] = 0;
      v46 = MEMORY[0x1865CAEB0](v159, 0);
    }

    v127 = v47;
    if (v40)
    {
      v48 = String.lowercased()();
      object = v48._object;
      countAndFlagsBits = v48._countAndFlagsBits;
    }

    else
    {
      v39 = 0;
      object = 0;
      countAndFlagsBits = 0;
    }

    if (v139)
    {
      *&v153 = v140;
      *(&v153 + 1) = v139;

      String.init<A>(_:)();
      v49 = String._capitalized()();
      v122 = v49._object;
      v123 = v49._countAndFlagsBits;
    }

    else
    {
      v140 = 0;
      v122 = 0;
      v123 = 0;
    }

    v126 = v40;
    if (v127)
    {
      v50 = v46;
      v51 = String.uppercased()();
      v52 = v51._countAndFlagsBits;
      v53 = v51._object;
    }

    else
    {
      v50 = 0;
      v52 = 0;
      v53 = 0;
    }

    outlined consume of Locale.LanguageCode?(0, 0);
    outlined consume of Locale.LanguageCode?(0, 0);
    outlined consume of Locale.LanguageCode?(0, 0);
    *&v153 = v39;
    *(&v153 + 1) = v126;
    *&v154 = countAndFlagsBits;
    *(&v154 + 1) = object;
    *&v155 = v140;
    *(&v155 + 1) = v139;
    *&v156 = v123;
    *(&v156 + 1) = v122;
    *&v157 = v50;
    *(&v157 + 1) = v127;
    *&v158 = v52;
    *(&v158 + 1) = v53;
    v149 = v155;
    v150 = v156;
    v151 = v157;
    v152 = v158;
    v147 = v153;
    v148 = v154;
    Locale.Language.region.getter(v146);
    outlined destroy of Locale.Language.Components(&v153);
    v33 = v146[0];
    v34 = v146[1];
    v54 = v146[2];
    v55 = v146[3];
    v56 = *(v7 + 320);
    v57 = *(v7 + 328);
    *(v7 + 320) = v146[0];
    *(v7 + 328) = v34;
    *(v7 + 336) = v54;
    *(v7 + 344) = v55;
    outlined copy of Locale.LanguageCode?(v33, v34);
    sub_1807E2788(v56, v57);
    if (v34)
    {
      goto LABEL_39;
    }

    v22 = &unk_1EA7B1000;
LABEL_56:
    v78 = v22[495];

    if (v78 != -1)
    {
      v79 = swift_once();
    }

    v80 = static ICUPatternGenerator._patternGeneratorCache;
    v61 = qword_1EA8221B0;
    *&v162 = v9;
    *(&v162 + 1) = v8;
    LOBYTE(v163) = v143;
    MEMORY[0x1EEE9AC00](v79);
    os_unfair_lock_lock((v61 + 24));
    _s10Foundation14FormatterCacheV9formatter3for7creatorq_x_q_yKXEtKFq_SgSDyxq_GzYbXEfU_AA19ICUPatternGeneratorC07PatternH4InfoV_AJSgTG5TA_0(v61 + 16, &v153);
    if (v145)
    {
      goto LABEL_117;
    }

    os_unfair_lock_unlock((v61 + 24));
    v63 = v153;
    if (v153 != 1)
    {
LABEL_111:

      if (!v63)
      {
        result = outlined destroy of Locale.Components(v168);
        v121 = 2;
        goto LABEL_114;
      }

LABEL_112:
      ICUPatternGenerator.defaultHourCycle.getter(&v162);

      result = outlined destroy of Locale.Components(v168);
      v121 = v162;
LABEL_114:
      *(v7 + 273) = v121;
      *v142 = v121;
      return result;
    }

    LOBYTE(v153) = v143;
    type metadata accessor for ICUPatternGenerator();
    swift_allocObject();

    v63 = ICUPatternGenerator.init(localeIdentifier:calendarIdentifier:)(v9, v8, &v153);
    os_unfair_lock_lock((v61 + 24));
    v65 = *(&v162 + 1);
    v81 = v162;
    v144 = v163;
    if (v80 >= *(*(v61 + 16) + 16))
    {
    }

    else
    {
      *(v61 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v153 = *(v61 + 16);
    v67 = v153;
    *(v61 + 16) = 0x8000000000000000;
    v141 = v81;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v65, v144);
    v83 = *(v67 + 16);
    v84 = (v68 & 1) == 0;
    v85 = v83 + v84;
    if (__OFADD__(v83, v84))
    {
      goto LABEL_72;
    }

    if (*(v67 + 24) >= v85)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v87 = v67;
        if ((v68 & 1) == 0)
        {
LABEL_109:
          specialized _NativeDictionary._insert(at:key:value:)(v69, v141, v65, v144, v63, v87);
          goto LABEL_110;
        }
      }

      else
      {
        v131 = v69;
        v133 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation19ICUPatternGeneratorC07PatternE4InfoVAESgGMd);
        v106 = static _DictionaryStorage.copy(original:)();
        v87 = v106;
        if (*(v67 + 16))
        {
          v107 = (v106 + 64);
          v136 = (v67 + 64);
          v108 = ((1 << *(v87 + 32)) + 63) >> 6;
          if (v87 != v67 || v107 >= &v136[8 * v108])
          {
            memmove(v107, v136, 8 * v108);
          }

          v109 = 0;
          *(v87 + 16) = *(v67 + 16);
          v110 = 1 << *(v67 + 32);
          v111 = -1;
          if (v110 < 64)
          {
            v111 = ~(-1 << v110);
          }

          v138 = v111 & *(v67 + 64);
          v129 = (v110 + 63) >> 6;
          while (v138)
          {
            v112 = __clz(__rbit64(v138));
            v138 &= v138 - 1;
LABEL_106:
            v115 = v112 | (v109 << 6);
            v116 = *(v67 + 48) + 24 * v115;
            v117 = *v116;
            v118 = *(v116 + 8);
            LOBYTE(v116) = *(v116 + 16);
            v119 = *(*(v67 + 56) + 8 * v115);
            v120 = *(v87 + 48) + 24 * v115;
            *v120 = v117;
            *(v120 + 8) = v118;
            *(v120 + 16) = v116;
            *(*(v87 + 56) + 8 * v115) = v119;
          }

          v113 = v109;
          while (1)
          {
            v109 = v113 + 1;
            if (__OFADD__(v113, 1))
            {
              break;
            }

            if (v109 >= v129)
            {
              goto LABEL_108;
            }

            v114 = *&v136[8 * v109];
            ++v113;
            if (v114)
            {
              v112 = __clz(__rbit64(v114));
              v138 = (v114 - 1) & v114;
              goto LABEL_106;
            }
          }

LABEL_116:
          __break(1u);
LABEL_117:
          os_unfair_lock_unlock((v61 + 24));
          __break(1u);
          goto LABEL_118;
        }

LABEL_108:

        v69 = v131;
        if ((v133 & 1) == 0)
        {
          goto LABEL_109;
        }
      }
    }

    else
    {
      v86 = v68;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v85, isUniquelyReferenced_nonNull_native);
      v87 = v153;
      v88 = specialized __RawDictionaryStorage.find<A>(_:)(v141, v65, v144);
      if ((v86 & 1) != (v89 & 1))
      {
        goto LABEL_118;
      }

      v69 = v88;
      if ((v86 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    v90 = v69;

    *(*(v87 + 56) + 8 * v90) = v63;

LABEL_110:
    *(v61 + 16) = v87;
    os_unfair_lock_unlock((v61 + 24));

    outlined consume of ICUNumberFormatter??(1);
    goto LABEL_111;
  }

  if (String.count.getter() <= 2)
  {

    goto LABEL_23;
  }

  v25 = specialized Collection.prefix(_:)(2);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  MEMORY[0x1865CAE80](v25, v27, v29, v31);

  v32 = String.uppercased()();
  v33 = v32._countAndFlagsBits;
  v34 = v32._object;

  v35 = String.uppercased()();
  v36 = *(v7 + 320);
  v37 = *(v7 + 328);

  sub_1807E2788(v36, v37);
  *(v7 + 320) = v32;
  *(v7 + 336) = v35;
LABEL_39:
  v23 = v134;
  v21 = 1;
LABEL_40:
  sub_1808B890C(v23, v21);

  *&v162 = 1600417397;
  *(&v162 + 1) = 0xE400000000000000;
  MEMORY[0x1865CB0E0](v33, v34);

  v58 = v162;
  v59 = one-time initialization token for _patternGeneratorCache;

  if (v59 != -1)
  {
    v60 = swift_once();
  }

  v62 = static ICUPatternGenerator._patternGeneratorCache;
  v61 = qword_1EA8221B0;
  v162 = v58;
  LOBYTE(v163) = v143;
  MEMORY[0x1EEE9AC00](v60);
  os_unfair_lock_lock((v61 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v61 + 16, &v153);
  if (v145)
  {
    goto LABEL_117;
  }

  os_unfair_lock_unlock((v61 + 24));
  v63 = v153;
  if (v153 != 1)
  {
    goto LABEL_91;
  }

  LOBYTE(v153) = v143;
  type metadata accessor for ICUPatternGenerator();
  swift_allocObject();

  v63 = ICUPatternGenerator.init(localeIdentifier:calendarIdentifier:)(v58, *(&v58 + 1), &v153);
  os_unfair_lock_lock((v61 + 24));
  v65 = *(&v162 + 1);
  v64 = v162;
  v144 = v163;
  if (v62 >= *(*(v61 + 16) + 16))
  {
  }

  else
  {
    *(v61 + 16) = MEMORY[0x1E69E7CC8];
  }

  v66 = swift_isUniquelyReferenced_nonNull_native();
  *&v153 = *(v61 + 16);
  v67 = v153;
  *(v61 + 16) = 0x8000000000000000;
  v141 = v64;
  v69 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65, v144);
  v70 = *(v67 + 16);
  v71 = (v68 & 1) == 0;
  v72 = v70 + v71;
  if (__OFADD__(v70, v71))
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v130 = v69;
    v132 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation19ICUPatternGeneratorC07PatternE4InfoVAESgGMd);
    v91 = static _DictionaryStorage.copy(original:)();
    v74 = v91;
    if (!*(v67 + 16))
    {
LABEL_88:

      v69 = v130;
      if (v132)
      {
        goto LABEL_54;
      }

      goto LABEL_89;
    }

    v92 = (v91 + 64);
    v135 = (v67 + 64);
    v93 = ((1 << *(v74 + 32)) + 63) >> 6;
    if (v74 != v67 || v92 >= &v135[8 * v93])
    {
      memmove(v92, v135, 8 * v93);
    }

    v94 = 0;
    *(v74 + 16) = *(v67 + 16);
    v95 = 1 << *(v67 + 32);
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    v137 = v96 & *(v67 + 64);
    v128 = (v95 + 63) >> 6;
    while (v137)
    {
      v97 = __clz(__rbit64(v137));
      v137 &= v137 - 1;
LABEL_86:
      v100 = v97 | (v94 << 6);
      v101 = *(v67 + 48) + 24 * v100;
      v102 = *v101;
      v103 = *(v101 + 8);
      LOBYTE(v101) = *(v101 + 16);
      v104 = *(*(v67 + 56) + 8 * v100);
      v105 = *(v74 + 48) + 24 * v100;
      *v105 = v102;
      *(v105 + 8) = v103;
      *(v105 + 16) = v101;
      *(*(v74 + 56) + 8 * v100) = v104;
    }

    v98 = v94;
    while (1)
    {
      v94 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      if (v94 >= v128)
      {
        goto LABEL_88;
      }

      v99 = *&v135[8 * v94];
      ++v98;
      if (v99)
      {
        v97 = __clz(__rbit64(v99));
        v137 = (v99 - 1) & v99;
        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_116;
  }

  if (*(v67 + 24) >= v72)
  {
    if (v66)
    {
      v74 = v67;
      if (v68)
      {
        goto LABEL_54;
      }

LABEL_89:
      specialized _NativeDictionary._insert(at:key:value:)(v69, v141, v65, v144, v63, v74);
      goto LABEL_90;
    }

    goto LABEL_73;
  }

  v73 = v68;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, v66);
  v74 = v153;
  v75 = specialized __RawDictionaryStorage.find<A>(_:)(v141, v65, v144);
  if ((v73 & 1) == (v76 & 1))
  {
    v69 = v75;
    if ((v73 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_54:
    v77 = v69;

    *(*(v74 + 56) + 8 * v77) = v63;

LABEL_90:
    *(v61 + 16) = v74;
    os_unfair_lock_unlock((v61 + 24));

    outlined consume of ICUNumberFormatter??(1);
LABEL_91:
    swift_bridgeObjectRelease_n();
    if (!v63)
    {
      result = outlined destroy of Locale.Components(v168);
      *(v7 + 273) = 2;
      *v142 = 2;
      return result;
    }

    goto LABEL_112;
  }

LABEL_118:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in _LocaleICU.subdivision.getter@<X0>(uint64_t *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = a1[44];
  v3 = a1[45];
  v5 = a1[46];
  v6 = a1[47];
  if (v3 == 1)
  {
    v8 = specialized static Locale.keywordValue(identifier:key:)();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = String.lowercased()();
      v13 = a1[44];
      v15 = a1[45];

      sub_1807E2788(v13, v15);
      a1[44] = v10;
      a1[45] = v11;
      *(a1 + 23) = v12;
      a2->_countAndFlagsBits = v10;
      a2->_object = v11;
      a2[1] = v12;
    }

    else
    {
      sub_1807E2788(a1[44], a1[45]);
      *(a1 + 22) = 0u;
      *(a1 + 23) = 0u;
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  else
  {
    a2->_countAndFlagsBits = v4;
    a2->_object = v3;
    a2[1]._countAndFlagsBits = v5;
    a2[1]._object = v6;
  }

  return sub_1808B890C(v4, v3);
}

uint64_t sub_1808B890C(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return outlined copy of Locale.LanguageCode?(result, a2);
  }

  return result;
}

uint64_t closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return _s10Foundation14FormatterCacheV9formatter3for7creatorq_x_q_yKXEtKFq_SgSDyxq_GzYbXEfU_AA19ICUPatternGeneratorC07PatternH4InfoV_AJSgTG5TA_0(a1, a2);
}

{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

{
  return _s10Foundation14FormatterCacheV9formatter3for7creatorq_x_q_yKXEtKFq_SgSDyxq_GzYbXEfU_AA017ICUCurrencyNumberB0C9Signature33_1C58B5D80AA37B9371410D3343C91B53LLV_AJSgTG5TA_0(a1, a2);
}

{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

unint64_t lazy protocol witness table accessor for type Locale.Region and conformance Locale.Region()
{
  result = lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region;
  if (!lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region;
  if (!lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region;
  if (!lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region;
  if (!lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region;
  if (!lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region and conformance Locale.Region);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.LanguageCode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Locale.languageCode.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 152))(ObjectType, v1);
}

void static URL.temporaryDirectory.getter(uint64_t a1@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_url_feature_enabled())
  {
    v2 = [objc_opt_self() defaultManager];
    v3 = [v2 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)(v3, v28);
    *a1 = *v28;
    return;
  }

  v4 = NSTemporaryDirectory();
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
LABEL_9:
    LOBYTE(v25[0]) = 0;
    v28[0] = 0;
    LOBYTE(v26) = 0;
    v27 = 0;
    if (__CFStringIsCF())
    {
      v10 = v28[0];

      v12 = 0xE000000000000000;
      goto LABEL_24;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_24;
    }

    if (![(NSString *)v13 length])
    {

LABEL_20:
      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_24;
    }

    v10 = String.init(_cocoaString:)();
    v12 = v19;
LABEL_23:

    goto LABEL_24;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_16;
  }

  if (TaggedPointerTag == 22)
  {
    v16 = [(NSString *)v8 UTF8String];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = String.init(utf8String:)(v16);
    if (v18)
    {
LABEL_17:
      v10 = v17;
      v12 = v18;

      goto LABEL_23;
    }

    __break(1u);
LABEL_16:
    v26 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [(NSString *)v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v25[0];
      v12 = v25[1];
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

LABEL_24:
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v20 = type metadata accessor for _BridgedURL();
    v21 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v20 = type metadata accessor for _SwiftURL();
    v21 = &protocol witness table for _SwiftURL;
  }

  LOBYTE(v25[0]) = 0;
  *v28 = 0uLL;
  (v21[9])(v10, v12, v25, v28);
  v22 = (v21[56])(v20, v21);
  v24 = v23;
  swift_unknownObjectRelease();
  *a1 = v22;
  *(a1 + 8) = v24;
}

Swift::String __swiftcall Date.formatted()()
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v1 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v2 = swift_initStaticObject();
  v3 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  v24 = 0;
  v19[0] = xmmword_18121B8E0;
  v19[1] = xmmword_181223230;
  v19[2] = 0x201000906030001uLL;
  LOWORD(v20) = 3327;
  *(&v20 + 1) = 1;
  LOBYTE(v21) = 0;
  *(&v21 + 1) = inited;
  *&v22 = v1;
  *(&v22 + 1) = swift_initStaticObject();
  *v23 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  *&v23[8] = v2;
  *&v23[16] = v3;
  *&v23[24] = 256;
  v16 = v21;
  v17 = v22;
  v18[0] = *v23;
  *(v18 + 10) = *&v23[10];
  v12 = xmmword_18121B8E0;
  v13 = xmmword_181223230;
  v14 = 0x201000906030001uLL;
  v15 = v20;
  outlined init with copy of Date.FormatStyle(v19, v11);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v12, v11);
  v4 = specialized static ICUDateFormatter.cachedFormatter(for:)(v11);
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  v17 = v11[5];
  v12 = v11[0];
  v13 = v11[1];
  outlined destroy of ICUDateFormatter.DateFormatInfo(&v12);
  if (!v4 || (v5 = specialized _withResizingUCharBuffer(initialSize:_:)(32), v7 = v6, , !v7))
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  outlined destroy of Date.FormatStyle(v19);
  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t specialized __JSONEncoder.wrap<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v125 = *MEMORY[0x1E69E9840];
  v9 = *(v5 + 64);
  v8 = *(v5 + 72);
  v10 = *(v5 + 80);
  if (!*(v5 + 80))
  {
    v18 = objc_allocWithZone(MEMORY[0x1E695DF00]);
    v19 = v9;
    v20 = [v18 initWithTimeIntervalSinceReferenceDate_];
    countAndFlagsBits = [v19 stringFromDate_];

    if (!countAndFlagsBits)
    {
      goto LABEL_86;
    }

    isTaggedPointer = _objc_isTaggedPointer(countAndFlagsBits);
    v22 = countAndFlagsBits;
    v23 = v22;
    if ((isTaggedPointer & 1) == 0)
    {
      goto LABEL_18;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v22);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          countAndFlagsBits = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          outlined consume of JSONDecoder.DateDecodingStrategy(v9, v8, 0);
          return countAndFlagsBits;
        }

LABEL_18:
        LOBYTE(v112[0]) = 0;
        *&v114 = 0;
        LOBYTE(v109) = 0;
        LOBYTE(v122[0]) = 0;
        if (__CFStringIsCF())
        {
          countAndFlagsBits = v114;

          outlined consume of JSONDecoder.DateDecodingStrategy(v9, v8, 0);
          return countAndFlagsBits;
        }

        v60 = v23;
        v61 = String.init(_nativeStorage:)();
        if (v62)
        {
          countAndFlagsBits = v61;

LABEL_86:
          outlined consume of JSONDecoder.DateDecodingStrategy(v9, v8, 0);
          return countAndFlagsBits;
        }

        if (![v60 length])
        {

          outlined consume of JSONDecoder.DateDecodingStrategy(v9, v8, 0);
          return 0;
        }

        countAndFlagsBits = String.init(_cocoaString:)();
LABEL_85:

        goto LABEL_86;
      }

      v76 = [v23 UTF8String];
      if (!v76)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v77 = String.init(utf8String:)(v76);
      if (v78)
      {
LABEL_70:
        countAndFlagsBits = v77;

        goto LABEL_85;
      }

      __break(1u);
    }

    LOWORD(v109) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v77 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v79)
    {
      [v23 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      countAndFlagsBits = *&v112[0];
      goto LABEL_85;
    }

    goto LABEL_70;
  }

  countAndFlagsBits = a4;
  if (v10 == 1)
  {
    if (a4 == 0xFF)
    {
      v16 = 0;
      v17 = 0;
      v15 = 0;
      *(&v109 + 1) = 0;
      *&v110 = 0;
    }

    else
    {
      v15 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v16 = swift_allocObject();
      *(v16 + 16) = a1;
      *(v16 + 24) = a2;
      *(v16 + 32) = a3;
      *(v16 + 40) = countAndFlagsBits;
      v17 = &type metadata for _CodingKey;
    }

    *&v109 = v16;
    *(&v110 + 1) = v17;
    *&v111 = v15;
    outlined init with copy of FloatingPointRoundingRule?(&v109, &v114, &_ss9CodingKey_pSgMd);
    if (*(&v115 + 1))
    {
      outlined init with take of Equatable(&v114, v122);
      v30 = *(v6 + 184);
      if (v30)
      {
        *(v6 + 184) = 0;
        outlined copy of JSONDecoder.DateDecodingStrategy(v9, v8, 1);
        outlined copy of _CodingKey?(a1, a2, a3, countAndFlagsBits);
        outlined destroy of TermOfAddress?(v30 + 192, &_ss9CodingKey_pSgMd);
        outlined init with take of Equatable(v122, v30 + 192);
        *(v30 + 176) = v6;
      }

      else
      {
        v44 = *(v6 + 136);
        v118 = *(v6 + 120);
        v119 = v44;
        v120 = *(v6 + 152);
        v121 = *(v6 + 168);
        v45 = *(v6 + 72);
        v114 = *(v6 + 56);
        v115 = v45;
        v46 = *(v6 + 104);
        v116 = *(v6 + 88);
        v117 = v46;
        outlined init with take of Equatable(v122, v113);
        type metadata accessor for __JSONEncoder();
        v30 = swift_allocObject();
        *(v30 + 184) = 0u;
        *(v30 + 200) = 0u;
        *(v30 + 216) = 0u;
        v47 = v119;
        *(v30 + 120) = v118;
        *(v30 + 136) = v47;
        *(v30 + 152) = v120;
        v48 = v115;
        *(v30 + 56) = v114;
        *(v30 + 72) = v48;
        v49 = v117;
        *(v30 + 88) = v116;
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        *(v30 + 32) = -1;
        *(v30 + 40) = 0;
        *(v30 + 48) = 0;
        v50 = v121;
        *(v30 + 104) = v49;
        *(v30 + 168) = v50;
        *(v30 + 176) = v6;
        outlined copy of JSONDecoder.DateDecodingStrategy(v9, v8, 1);
        outlined copy of _CodingKey?(a1, a2, a3, countAndFlagsBits);

        outlined init with copy of JSONEncoder._Options(&v114, v112);
        outlined assign with take of CodingKey?(v113, v30 + 192);
      }
    }

    else
    {
      outlined copy of JSONDecoder.DateDecodingStrategy(v9, v8, 1);
      outlined copy of _CodingKey?(a1, a2, a3, countAndFlagsBits);
      outlined destroy of TermOfAddress?(&v114, &_ss9CodingKey_pSgMd);

      v30 = v6;
    }

    outlined destroy of TermOfAddress?(&v109, &_ss9CodingKey_pSgMd);
    v108 = v30;
    *v112 = a5;
    *(&v115 + 1) = type metadata accessor for __JSONEncoder();
    *&v116 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
    *&v114 = v30;

    countAndFlagsBits = v8;
    (v9)(v112, &v114);
    if (!v107)
    {
      __swift_destroy_boxed_opaque_existential_1(&v114);
      v51 = __JSONEncoder.takeValue()();
      if (v52 == 255)
      {
        countAndFlagsBits = MEMORY[0x1E69E7CC8];
      }

      else
      {
        countAndFlagsBits = v51;
      }

      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v6, &v108);
      outlined consume of JSONDecoder.DateDecodingStrategy(v9, v8, 1);

      return countAndFlagsBits;
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
    $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v6, &v108);
    outlined consume of JSONDecoder.DateDecodingStrategy(v9, v8, 1);
    goto LABEL_44;
  }

  if (v9 <= 1)
  {
    if (!(v9 | v8))
    {
      if (a4 == 0xFF)
      {
        v26 = 0;
        v27 = 0;
        v25 = 0;
        *(&v109 + 1) = 0;
        *&v110 = 0;
      }

      else
      {
        v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v26 + 16) = a1;
        *(v26 + 24) = a2;
        *(v26 + 32) = a3;
        *(v26 + 40) = countAndFlagsBits;
        v27 = &type metadata for _CodingKey;
      }

      *&v109 = v26;
      *(&v110 + 1) = v27;
      *&v111 = v25;
      outlined init with copy of FloatingPointRoundingRule?(&v109, &v114, &_ss9CodingKey_pSgMd);
      if (*(&v115 + 1))
      {
        outlined init with take of Equatable(&v114, v122);
        v75 = *(v6 + 184);
        if (v75)
        {
          *(v6 + 184) = 0;
          outlined copy of _CodingKey?(a1, a2, a3, countAndFlagsBits);
          outlined destroy of TermOfAddress?(v75 + 192, &_ss9CodingKey_pSgMd);
          outlined init with take of Equatable(v122, v75 + 192);
          *(v75 + 176) = v6;
        }

        else
        {
          v80 = *(v6 + 136);
          v118 = *(v6 + 120);
          v119 = v80;
          v120 = *(v6 + 152);
          v121 = *(v6 + 168);
          v81 = *(v6 + 72);
          v114 = *(v6 + 56);
          v115 = v81;
          v82 = *(v6 + 104);
          v116 = *(v6 + 88);
          v117 = v82;
          outlined init with take of Equatable(v122, v113);
          type metadata accessor for __JSONEncoder();
          v75 = swift_allocObject();
          *(v75 + 184) = 0u;
          *(v75 + 200) = 0u;
          *(v75 + 216) = 0u;
          v83 = v119;
          *(v75 + 120) = v118;
          *(v75 + 136) = v83;
          *(v75 + 152) = v120;
          v84 = v115;
          *(v75 + 56) = v114;
          *(v75 + 72) = v84;
          v85 = v117;
          *(v75 + 88) = v116;
          *(v75 + 16) = 0;
          *(v75 + 24) = 0;
          *(v75 + 32) = -1;
          *(v75 + 40) = 0;
          *(v75 + 48) = 0;
          v86 = v121;
          *(v75 + 104) = v85;
          *(v75 + 168) = v86;
          *(v75 + 176) = v6;
          outlined copy of _CodingKey?(a1, a2, a3, countAndFlagsBits);

          outlined init with copy of JSONEncoder._Options(&v114, v112);
          outlined assign with take of CodingKey?(v113, v75 + 192);
        }
      }

      else
      {
        outlined copy of _CodingKey?(a1, a2, a3, countAndFlagsBits);
        outlined destroy of TermOfAddress?(&v114, &_ss9CodingKey_pSgMd);

        v75 = v6;
      }

      outlined destroy of TermOfAddress?(&v109, &_ss9CodingKey_pSgMd);
      v108 = v75;
      v87 = type metadata accessor for __JSONEncoder();
      *(&v115 + 1) = v87;
      *&v116 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
      *&v114 = v75;
      countAndFlagsBits = *__swift_mutable_project_boxed_opaque_existential_1(&v114, v87);

      __JSONEncoder.encode(_:)(a5);
      if (v107)
      {
        __swift_destroy_boxed_opaque_existential_1(&v114);
        $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v6, &v108);
LABEL_44:

        return countAndFlagsBits;
      }

      __swift_destroy_boxed_opaque_existential_1(&v114);
      countAndFlagsBits = __JSONEncoder.takeValue()();
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v6, &v108);

      return countAndFlagsBits;
    }

    v28 = a5 + 978307200.0;
    memset(v123, 0, sizeof(v123));
    if (COERCE__INT64(fabs(a5 + 978307200.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v29 = v123;
LABEL_28:
      v31 = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v29, v28, v6, a1, a2, a3, a4);
      if (!v107)
      {
        return v31;
      }

      return countAndFlagsBits;
    }

    goto LABEL_38;
  }

  if (!(v9 ^ 2 | v8))
  {
    v28 = (a5 + 978307200.0) * 1000.0;
    memset(v124, 0, 48);
    if (COERCE__INT64(fabs((a5 + 978307200.0) * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v29 = v124;
      goto LABEL_28;
    }

LABEL_38:
    countAndFlagsBits = Double.description.getter();
    *&v114 = countAndFlagsBits;
    *(&v114 + 1) = v41;

    v42._countAndFlagsBits = 12334;
    v42._object = 0xE200000000000000;
    v43 = String.hasSuffix(_:)(v42);

    if (v43)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      return v114;
    }

    return countAndFlagsBits;
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v32 = *(&xmmword_1ED440468 + 1);
  v33 = xmmword_1ED440468;
  BYTE4(v114) = 1;
  *(&v114 + 1) = 0;
  v116 = xmmword_1ED440468;
  LODWORD(v114) = 0x10000;
  v34 = one-time initialization token for cache;
  swift_unknownObjectRetain_n();
  v35 = v107;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v37 = *(v36 + 16);
  if (*(v37 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v39 & 1) != 0))
  {
    v105 = *(*(v37 + 56) + 16 * v38);
    v40 = *(*(v37 + 56) + 16 * v38);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v36 + 24));
    if (v40)
    {
LABEL_76:
      v115 = v105;
      *&v112[0] = v33;
      *(&v112[0] + 1) = v32;
      Calendar.timeZone.setter(v112);
      v112[0] = v114;
      v112[1] = v115;
      v112[2] = v116;
      v109 = v114;
      v110 = v115;
      v111 = v116;
      *v122 = a5;
      countAndFlagsBits = Date.ISO8601FormatStyle.format(_:)(v114)._countAndFlagsBits;
      outlined destroy of DateComponents.ISO8601FormatStyle(v112);
      return countAndFlagsBits;
    }
  }

  else
  {
    os_unfair_lock_unlock((v36 + 24));
  }

  v53 = type metadata accessor for _CalendarGregorian();
  v54 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, type metadata accessor for _CalendarGregorian);
  v113[0] = 7;
  v112[0] = 0uLL;
  v109 = 0uLL;
  *&v122[0] = 0;
  BYTE8(v122[0]) = 1;
  v55 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(v113, v112, &v109, 0, 1, 0, 1, v122);
  os_unfair_lock_lock((v36 + 24));
  v56 = *(v36 + 16);
  if (*(v56 + 16))
  {
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v58)
    {
      v59 = *(*(v56 + 56) + 16 * v57);
LABEL_75:
      v105 = v59;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v36 + 24));

      goto LABEL_76;
    }
  }

  v104 = v54;
  v106 = v32;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v112[0] = *(v36 + 16);
  v64 = *&v112[0];
  v65 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v67 = *(v64 + 16);
  v68 = (v66 & 1) == 0;
  v69 = __OFADD__(v67, v68);
  v70 = v67 + v68;
  if (v69)
  {
    __break(1u);
LABEL_89:
    v101 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v89 = static _DictionaryStorage.copy(original:)();
    v71 = v89;
    if (!*(v64 + 16))
    {
LABEL_104:

      v65 = v101;
      v73 = v104;
      v32 = v106;
      if (v35)
      {
        goto LABEL_60;
      }

      goto LABEL_73;
    }

    v90 = (v89 + 64);
    v102 = (v64 + 64);
    v91 = ((1 << *(v71 + 32)) + 63) >> 6;
    if (v71 != v64 || v90 >= &v102[8 * v91])
    {
      memmove(v90, v102, 8 * v91);
    }

    v92 = 0;
    *(v71 + 16) = *(v64 + 16);
    v93 = 1 << *(v64 + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v103 = v94 & *(v64 + 64);
    v95 = (v93 + 63) >> 6;
    while (v103)
    {
      v96 = __clz(__rbit64(v103));
      v103 &= v103 - 1;
LABEL_102:
      v99 = v96 | (v92 << 6);
      v100 = *(*(v64 + 56) + 16 * v99);
      *(*(v71 + 48) + v99) = *(*(v64 + 48) + v99);
      *(*(v71 + 56) + 16 * v99) = v100;
      swift_unknownObjectRetain();
    }

    v97 = v92;
    while (1)
    {
      v92 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v92 >= v95)
      {
        goto LABEL_104;
      }

      v98 = *&v102[8 * v92];
      ++v97;
      if (v98)
      {
        v96 = __clz(__rbit64(v98));
        v103 = (v98 - 1) & v98;
        goto LABEL_102;
      }
    }

    __break(1u);
    goto LABEL_107;
  }

  v35 = v66;
  if (*(v64 + 24) >= v70)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v71 = v64;
      v73 = v104;
      v32 = v106;
      if (v66)
      {
        goto LABEL_60;
      }

      goto LABEL_73;
    }

    goto LABEL_89;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v70, isUniquelyReferenced_nonNull_native);
  v71 = *&v112[0];
  v65 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  if ((v35 & 1) == (v72 & 1))
  {
    v73 = v104;
    v32 = v106;
    if (v35)
    {
LABEL_60:
      v74 = (*(v71 + 56) + 16 * v65);
      *v74 = v55;
      v74[1] = v73;
      swift_unknownObjectRelease();
LABEL_74:
      *(v36 + 16) = v71;
      *&v59 = v55;
      *(&v59 + 1) = v73;
      goto LABEL_75;
    }

LABEL_73:
    specialized _NativeDictionary._insert(at:key:value:)(v65, 7, v55, v71, v53, v73);
    goto LABEL_74;
  }

LABEL_108:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized static NSLocale._newLocaleAsIfCurrent(_:overrides:disableBundleMatching:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v22 = static LocaleCache.cache;
  *&v23 = qword_1ED4404B0;
  LocaleCache.preferences()(&v30);
  if (a3)
  {
    v8 = a3;
    LocalePreferences.apply(_:)(v8);
  }

  v20[6] = v36;
  v21[0] = v37[0];
  *(v21 + 12) = *(v37 + 12);
  v20[2] = v32;
  v20[3] = v33;
  v20[4] = v34;
  v20[5] = v35;
  v20[0] = v30;
  v20[1] = v31;
  v18[6] = v36;
  v19[0] = v37[0];
  *(v19 + 12) = *(v37 + 12);
  v18[2] = v32;
  v18[3] = v33;
  v18[4] = v34;
  v18[5] = v35;
  v18[0] = v30;
  v18[1] = v31;
  type metadata accessor for _LocaleICU();
  swift_allocObject();

  outlined init with copy of LocalePreferences(v20, &v22);
  v9 = _LocaleICU.init(name:prefs:disableBundleMatching:)(a1, a2, v18, a4 & 1);
  v28 = v36;
  v29[0] = v37[0];
  *(v29 + 12) = *(v37 + 12);
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v22 = v30;
  v23 = v31;
  outlined destroy of LocalePreferences(&v22);
  v10 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
  v11 = type metadata accessor for _NSSwiftLocale();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____NSSwiftLocale_locale];
  *v13 = v9;
  *(v13 + 1) = v10;
  v14 = String._bridgeToObjectiveCImpl()();
  v17.receiver = v12;
  v17.super_class = v11;
  v15 = objc_msgSendSuper2(&v17, sel_initWithLocaleIdentifier_, v14);
  swift_unknownObjectRelease();
  return v15;
}

uint64_t __NSCoderDecodeObjectOfClassesForKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x1E695DFD8] setWithArray:a2];
  if (a4)
  {

    return [a1 decodeTopLevelObjectOfClasses:v7 forKey:a3 error:a4];
  }

  else
  {

    return [a1 decodeObjectOfClasses:v7 forKey:a3];
  }
}

uint64_t closure #1 in Data.subdata(in:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = &a2[-result];
    if (a2 == result)
    {
      result = 0;
      v5 = 0xC000000000000000;
    }

    else if (v4 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(result, a2);
      v5 = v8 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = result;
      type metadata accessor for __DataStorage();
      v7 = swift_allocObject();
      __DataStorage.init(bytes:length:)(v6, v4);
      if (v4 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v4;
        v5 = v7 | 0x8000000000000000;
      }

      else
      {
        result = v4 << 32;
        v5 = v7 | 0x4000000000000000;
      }
    }

    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double NSCoder.decodeObject(of:forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = String._bridgeToObjectiveCImpl()();
      v6 = __NSCoderDecodeObjectOfClassForKey(v2, ObjCClassFromMetadata, v5, 0);
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
    v7 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  else
  {
    v7 = 0;
  }

  v8 = String._bridgeToObjectiveCImpl()();
  v6 = __NSCoderDecodeObjectOfClassesForKey(v2, v7, v8, 0);

LABEL_7:
  swift_unknownObjectRelease();
  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  result = *&v10;
  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t URL.relativePath.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 216))(ObjectType, v1);
}

uint64_t _NSSetUnsignedLongLongValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 unsignedLongLongValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t icuUnitFromNSUnit(uint64_t a1)
{
  if (a1 <= 31)
  {
    switch(a1)
    {
      case 4:
        return 0;
      case 8:
        return 1;
      case 16:
        return 2;
      default:
        goto LABEL_17;
    }
  }

  else if (a1 > 127)
  {
    if (a1 == 128)
    {
      return 6;
    }

    else
    {
      if (a1 != 4096)
      {
        goto LABEL_17;
      }

      return 3;
    }
  }

  else
  {
    if (a1 != 32)
    {
      if (a1 == 64)
      {
        return 5;
      }

LABEL_17:
      abort();
    }

    return 4;
  }
}

uint64_t _CalendarAutoupdating.locale.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  if (!v3)
  {
    v29 = a1;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v28 = *(&static LocaleCache.cache + 8);
    v5 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
    if (!v7)
    {
      LocaleCache.preferences()(&v40);
      v9 = v8;
      type metadata accessor for _LocaleICU();
      v6 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v38 = v46;
      v39[0] = v47[0];
      *(v39 + 12) = *(v47 + 12);
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v33[0] = v40;
      v33[1] = v41;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v40, v32);
      v10 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v33, 0);
      if (v9)
      {
        MEMORY[0x1EEE9AC00](v10);
        os_unfair_lock_lock((v5 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v5 + 16), v33);
        os_unfair_lock_unlock((v5 + 32));
        outlined destroy of LocalePreferences(&v40);

        v6 = *(&v33[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v40);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 200))(&v40, ObjectType, v6);
    swift_unknownObjectRelease();
    v12 = v40;
    if (v40 && v40 != 7)
    {
      *&v28 = type metadata accessor for _CalendarICU();
      v13 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v14 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v28 = type metadata accessor for _CalendarGregorian();
      v13 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v14 = type metadata accessor for _CalendarGregorian;
    }

    v15 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v13, 255, v14);
    v31 = v12;
    v30[0] = 0;
    v30[1] = 0;
    v16 = static LocaleCache.cache;
    v27 = *(&static LocaleCache.cache + 8);
    v17 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v17 + 32));
    if (!v19)
    {
      v26[1] = 0;
      *&v33[0] = v16;
      *(v33 + 8) = v27;
      LocaleCache.preferences()(&v40);
      v21 = v20;
      type metadata accessor for _LocaleICU();
      v18 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v38 = v46;
      v39[0] = v47[0];
      *(v39 + 12) = *(v47 + 12);
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v33[0] = v40;
      v33[1] = v41;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v40, v32);
      v22 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v33, 0);
      v19 = v22;
      if (v21)
      {
        *&v27 = v26;
        MEMORY[0x1EEE9AC00](v22);
        os_unfair_lock_lock((v17 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v17 + 16), v33);
        os_unfair_lock_unlock((v17 + 32));
        outlined destroy of LocalePreferences(&v40);

        v18 = *(&v33[0] + 1);
        v19 = *&v33[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v40);
      }
    }

    *&v40 = v19;
    *(&v40 + 1) = v18;
    *&v33[0] = 0;
    BYTE8(v33[0]) = 1;
    v23 = (*(v15 + 16))(&v31, v30, &v40, 0, 1, 0, 1, v33, v28, v15);
    MEMORY[0x1EEE9AC00](v23);
    os_unfair_lock_lock((v2 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v2 + 16), &v40);
    os_unfair_lock_unlock((v2 + 32));
    swift_unknownObjectRelease();
    v4 = *(&v40 + 1);
  }

  v24 = swift_getObjectType();
  (*(v4 + 32))(v24, v4);
  return swift_unknownObjectRelease();
}

uint64_t icuStyleFromNSStyle(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    abort();
  }

  return dword_1813F7BA8[a1 - 1];
}

uint64_t forEachUnit(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((result & 4) != 0)
  {
    result = (*(a2 + 16))(a2, 4);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((result & 8) == 0)
  {
    goto LABEL_3;
  }

  result = (*(a2 + 16))(a2, 8);
  if ((v3 & 0x1000) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = (*(a2 + 16))(a2, 4096);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = (*(a2 + 16))(a2, 16);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = (*(a2 + 16))(a2, 64);
    if ((v3 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = (*(a2 + 16))(a2, 32);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v3 & 0x80) == 0)
  {
    return result;
  }

LABEL_15:
  v4 = *(a2 + 16);

  return v4(a2, 128);
}

uint64_t _CalendarAutoupdating.date(byAdding:to:wrappingComponents:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  memcpy(v49, __src, sizeof(v49));
  v7 = *a2;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v8 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v8 + 32));
  if (!v9)
  {
    v36 = a4;
    v37 = a3;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v11 = static LocaleCache.cache;
    v35 = *(&static LocaleCache.cache + 8);
    v12 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v12 + 32));
    if (!v14)
    {
      *&v42[0] = v11;
      *(v42 + 8) = v35;
      LocaleCache.preferences()(v38);
      v16 = v15;
      type metadata accessor for _LocaleICU();
      v13 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v47 = v38[6];
      v48[0] = v38[7];
      *(v48 + 12) = *(&v38[7] + 12);
      v43 = v38[2];
      v44 = v38[3];
      v45 = v38[4];
      v46 = v38[5];
      v42[0] = v38[0];
      v42[1] = v38[1];
      swift_allocObject();
      outlined init with copy of LocalePreferences(v38, v41);
      v17 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v42, 0);
      if (v16)
      {
        MEMORY[0x1EEE9AC00](v17);
        os_unfair_lock_lock((v12 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v12 + 16), v42);
        os_unfair_lock_unlock((v12 + 32));
        outlined destroy of LocalePreferences(v38);

        v13 = *(&v42[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(v38);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v13 + 200))(v38, ObjectType, v13);
    swift_unknownObjectRelease();
    v19 = v38[0];
    if (LOBYTE(v38[0]) && LOBYTE(v38[0]) != 7)
    {
      *&v35 = type metadata accessor for _CalendarICU();
      v20 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v21 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v35 = type metadata accessor for _CalendarGregorian();
      v20 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v21 = type metadata accessor for _CalendarGregorian;
    }

    v22 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v20, 255, v21);
    v40 = v19;
    v39[0] = 0;
    v39[1] = 0;
    v23 = static LocaleCache.cache;
    v34 = *(&static LocaleCache.cache + 8);
    v24 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v24 + 32));
    if (!v25)
    {
      v33[1] = 0;
      *&v42[0] = v23;
      *(v42 + 8) = v34;
      LocaleCache.preferences()(v38);
      v28 = v27;
      type metadata accessor for _LocaleICU();
      v26 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v47 = v38[6];
      v48[0] = v38[7];
      *(v48 + 12) = *(&v38[7] + 12);
      v43 = v38[2];
      v44 = v38[3];
      v45 = v38[4];
      v46 = v38[5];
      v42[0] = v38[0];
      v42[1] = v38[1];
      swift_allocObject();
      outlined init with copy of LocalePreferences(v38, v41);
      v29 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v42, 0);
      v25 = v29;
      if (v28)
      {
        *&v34 = v33;
        MEMORY[0x1EEE9AC00](v29);
        os_unfair_lock_lock((v24 + 32));
        partial apply for closure #2 in LocaleCache._currentAndCache.getter((v24 + 16), v42);
        os_unfair_lock_unlock((v24 + 32));
        outlined destroy of LocalePreferences(v38);

        v26 = *(&v42[0] + 1);
        v25 = *&v42[0];
      }

      else
      {
        outlined destroy of LocalePreferences(v38);
      }
    }

    *&v38[0] = v25;
    *(&v38[0] + 1) = v26;
    *&v42[0] = 0;
    BYTE8(v42[0]) = 1;
    v30 = (*(v22 + 16))(&v40, v39, v38, 0, 1, 0, 1, v42, v35, v22);
    MEMORY[0x1EEE9AC00](v30);
    os_unfair_lock_lock((v8 + 32));
    partial apply for closure #2 in CalendarCache.current.getter((v8 + 16), v38);
    os_unfair_lock_unlock((v8 + 32));
    swift_unknownObjectRelease();
    v10 = *(&v38[0] + 1);
    LOBYTE(a3) = v37;
  }

  v31 = swift_getObjectType();
  memcpy(v38, v49, 0x11BuLL);
  *&v42[0] = v7;
  (*(v10 + 200))(v38, v42, a3 & 1, v31, v10);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _CalendarProtocol.dateComponents(_:from:to:) in conformance _CalendarAutoupdating(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  CalendarCache.current.getter();
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = v3;
  v10 = v5;
  v11 = v4;
  (*(v7 + 208))(&v12, &v11, &v10, ObjectType, v7);

  return swift_unknownObjectRelease();
}

void NSKeyValueObservingTSDDestroy(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

ptrdiff_t _NSSetUnsignedLongLongValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 unsignedLongLongValue];
    result = ivar_getOffset(a5);
    *&a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetLongLongValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 longLongValue];
    result = ivar_getOffset(a5);
    *&a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

NSMapTable *oq_begin_waiting(uint64_t a1, qos_class_t a2)
{
  v4 = [[NSMapTable alloc] initWithKeyOptions:258 valueOptions:258 capacity:0];
  os_unfair_lock_lock((a1 + 8));
  v5 = [*(a1 + 152) count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [*(a1 + 152) pointerAtIndex:i];
      started = pthread_override_qos_class_start_np(v8, a2, 0);
      NSMapInsertKnownAbsent(v4, v8, started);
    }
  }

  os_unfair_lock_unlock((a1 + 8));
  return v4;
}

uint64_t type metadata instantiation function for NSObject.KeyValueObservingPublisher()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t NSObject.KeyValueObservingPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v45 = a1;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v40 = v4[1];
  v13 = v4[2];
  v38 = v11;
  v39 = v13;
  v42 = v8;
  v14 = *(v8 + 16);
  v36 = v12;
  v37 = v14;
  v14(v9);
  v15 = *(a2 + 24);
  v44 = *(a2 + 16);
  v46[0] = v44;
  v46[1] = v15;
  v46[2] = a3;
  v47 = a4;
  v41 = type metadata accessor for NSObject.KVOSubscription();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  (*(*(v15 - 8) + 56))(v16 + *(*v16 + 136), 1, 1, v15);
  v17 = *(*v16 + 144);
  v18 = *(v8 + 56);
  v18(v16 + v17, 1, 1, a3);
  swift_unknownObjectWeakInit();
  v19 = *(*v16 + 176);
  v20 = swift_slowAlloc();
  *v20 = 0;
  *(v16 + v19) = v20;
  v21 = *(*v16 + 184);
  v22 = swift_slowAlloc();
  *v22 = 0;
  *(v16 + v21) = v22;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  v23 = v36;
  swift_unknownObjectWeakAssign();
  v24 = type metadata accessor for Optional();
  (*(*(v24 - 8) + 8))(v16 + v17, v24);
  v25 = v38;
  (v37)(v16 + v17, v38, a3);
  v18(v16 + v17, 0, 1, a3);
  v26 = v39;
  v27 = v40;
  *(v16 + *(*v16 + 160)) = v39;
  *(v16 + *(*v16 + 168)) = v27;
  v46[0] = v23;
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v30 = v43;
  v29[2] = v44;
  v29[3] = v15;
  v29[4] = a3;
  v29[5] = v30;
  v29[6] = v28;

  v32 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)(v31, v26, partial apply for closure #1 in NSObject.KVOSubscription.init(_:_:_:_:), v29, &protocol witness table for NSObject);

  (*(v42 + 8))(v25, a3);
  v33 = *(v16 + 16);
  *(v16 + 16) = v32;

  v47 = v41;
  WitnessTable = swift_getWitnessTable();
  v46[0] = v16;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_1808BD864()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1808BD89C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t type metadata completion function for NSObject.KVOSubscription()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void NSObject.KVOSubscription.request(_:)(uint64_t a1)
{
  v54 = *v1;
  v3 = v54;
  v4 = *(v54 + 96);
  v5 = type metadata accessor for Optional();
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - v6;
  v58 = v4;
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v51 - v8;
  v9 = *(v3 + 88);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v61 = v9;
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v60 = *&v1[*(v3 + 176)];
  os_unfair_lock_lock(v60);
  v17 = *(v1 + 3);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    v18 = *(v1 + 3);
  }

  else
  {
    v19 = v5;
    static Subscribers.Demand.unlimited.getter();
    v20 = static Subscribers.Demand.== infix(_:_:)();
    v18 = static Subscribers.Demand.unlimited.getter();
    if (v20)
    {
      v5 = v19;
    }

    else
    {
      v5 = v19;
      if (static Subscribers.Demand.== infix(_:_:)())
      {
        goto LABEL_9;
      }

      if ((v17 | a1) < 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v18 = v17 + a1;
      if (__OFADD__(v17, a1))
      {
LABEL_9:
        v18 = static Subscribers.Demand.unlimited.getter();
      }

      else if (v18 < 0)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    *(v1 + 3) = v18;
  }

  v21 = v61;
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    if (v18 < 0)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (!v18)
    {
      goto LABEL_19;
    }
  }

  v22 = v5;
  v23 = *(*v1 + 136);
  (*(v11 + 16))(v13, &v1[v23], v10);
  v24 = v62;
  if ((*(v62 + 48))(v13, 1, v21) == 1)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_19;
  }

  v52 = v23;
  v53 = v10;
  (*(v24 + 32))(v16, v13, v21);
  v26 = v56;
  v25 = v57;
  (*(v56 + 16))(v57, &v1[*(*v1 + 144)], v22);
  v27 = v24;
  v28 = v59;
  v29 = v21;
  v30 = v58;
  if ((*(v59 + 48))(v25, 1, v58) == 1)
  {
    (*(v27 + 8))(v16, v29);
    (*(v26 + 8))(v25, v22);
    v21 = v29;
    v10 = v53;
LABEL_19:
    v31 = *(v1 + 3);
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
LABEL_29:
      v39 = *(*v1 + 136);
      (*(v11 + 8))(&v1[v39], v10);
      (*(v62 + 56))(&v1[v39], 1, 1, v21);
      v40 = v60;
LABEL_45:
      os_unfair_lock_unlock(v40);
      return;
    }

    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      v32 = static Subscribers.Demand.unlimited.getter();
LABEL_28:
      *(v1 + 3) = v32;
      goto LABEL_29;
    }

    if ((v31 & 0x8000000000000000) == 0)
    {
      if (v31)
      {
        v32 = v31 - 1;
        goto LABEL_28;
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v33 = v55;
  (*(v28 + 32))(v55, v25, v30);
  v34 = *(v1 + 3);
  static Subscribers.Demand.unlimited.getter();
  v35 = static Subscribers.Demand.== infix(_:_:)();
  v37 = v52;
  v36 = v53;
  if ((v35 & 1) == 0)
  {
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      v38 = static Subscribers.Demand.unlimited.getter();
    }

    else
    {
      if (v34 < 0)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (!v34)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v38 = v34 - 1;
    }

    *(v1 + 3) = v38;
  }

  (*(v11 + 8))(&v1[v37], v36);
  v42 = v61;
  v41 = v62;
  (*(v62 + 56))(&v1[v37], 1, 1, v61);
  v43 = v60;
  os_unfair_lock_unlock(v60);
  os_unfair_recursive_lock_lock_with_options();
  v44 = v1;
  v45 = dispatch thunk of Subscriber.receive(_:)();
  os_unfair_recursive_lock_unlock();
  v46 = v33;
  v47 = v43;
  os_unfair_lock_lock(v43);
  v48 = *(v44 + 3);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    (*(v59 + 8))(v46, v30);
    (*(v41 + 8))(v16, v42);
LABEL_44:
    v40 = v47;
    goto LABEL_45;
  }

  static Subscribers.Demand.unlimited.getter();
  v49 = static Subscribers.Demand.== infix(_:_:)();
  v50 = static Subscribers.Demand.unlimited.getter();
  if (v49)
  {
    goto LABEL_42;
  }

  if (static Subscribers.Demand.== infix(_:_:)())
  {
LABEL_41:
    v50 = static Subscribers.Demand.unlimited.getter();
LABEL_42:
    (*(v59 + 8))(v55, v58);
    (*(v62 + 8))(v16, v61);
    goto LABEL_43;
  }

  if (((v48 | v45) & 0x8000000000000000) == 0)
  {
    v50 = v48 + v45;
    if (!__OFADD__(v48, v45))
    {
      (*(v59 + 8))(v55, v58);
      (*(v62 + 8))(v16, v61);
      if (v50 < 0)
      {
        __break(1u);
        goto LABEL_48;
      }

LABEL_43:
      *(v44 + 3) = v50;
      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_55:
  __break(1u);
}

id @objc static NSCalendar._autoupdatingCurrent.getter()
{
  type metadata accessor for _CalendarAutoupdating();
  inited = swift_initStaticObject();
  v1 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  v2 = type metadata accessor for _NSSwiftCalendar();
  v3 = objc_allocWithZone(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 16) = inited;
  *(v4 + 24) = v1;
  *&v3[OBJC_IVAR____NSSwiftCalendar__lock] = v4;
  v5 = *MEMORY[0x1E695D850];
  v7.receiver = v3;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, sel_initWithCheckedCalendarIdentifier_, v5);
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _PlistKeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v84 = a8;
  v99 = a5;
  v102 = a4;
  v96 = a3;
  v107 = a2;
  v83 = a1;
  v82 = a9;
  v88 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v80 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Optional();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v78 - v17;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v94 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v90 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v78 - v22;
  v92 = AssociatedConformanceWitness;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v78 - v26;
  v101 = v23;
  v100 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v81 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v78 - v31;
  v103 = a6;
  v104 = a7;
  v105 = a10;
  v106 = a11;
  type metadata accessor for _PlistKeyedDecodingContainer();
  v97 = a10;
  v98 = a6;
  v33 = v102;
  v34 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(v33 + 16))
  {

    goto LABEL_6;
  }

  v79 = v32;
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_6:
    (*(v100 + 56))(v27, 1, 1, v101);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    v51 = v50;
    MetatypeMetadata = swift_getMetatypeMetadata();
    _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v107, v99, v98, MetatypeMetadata, v51, v97);
    return swift_willThrow();
  }

  v39 = *(v33 + 56);
  v41 = v93;
  v40 = v94;
  v42 = v39 + *(v93 + 72) * v36;
  v43 = v90;
  (*(v93 + 16))(v90, v42, v94);
  v44 = v91;
  (*(v41 + 32))(v91, v43, v40);
  v45 = v92;
  v46 = *(v92 + 80);
  swift_unknownObjectRetain();
  v47 = swift_checkMetadataState();
  v48 = v95;
  v46(v44, v47, v45);
  if (v48)
  {
    (*(v41 + 8))(v44, v40);
    return swift_unknownObjectRelease();
  }

  (*(v41 + 8))(v44, v40);
  swift_unknownObjectRelease();
  v53 = v100;
  v54 = v101;
  (*(v100 + 56))(v27, 0, 1, v101);
  (*(v53 + 32))(v79, v27, v54);
  v55 = v88;
  v56 = v86;
  v57 = v98;
  (*(v88 + 16))(v86, v107, v98);
  (*(v55 + 56))(v56, 0, 1, v57);
  v58 = v87;
  v59 = v85;
  (*(v87 + 16))(v85, v56, v89);
  if ((*(v55 + 48))(v59, 1, v57) == 1)
  {
    v60 = *(v58 + 8);
    v61 = v89;
    v60(v56, v89);
    v60(v59, v61);
    v62 = v99;

    v63 = v54;
    v64 = v53;
    goto LABEL_17;
  }

  v65 = *(v55 + 32);
  v66 = v80;
  v65(v80, v59, v57);
  v67 = swift_allocObject();
  v68 = v97;
  v67[5] = v57;
  v67[6] = v68;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v67 + 2);
  v65(boxed_opaque_existential_0, v66, v57);
  result = (*(v58 + 8))(v56, v89);
  v70 = v99;
  v67[7] = v99;
  if (v70 >> 62)
  {
    if (v70 >> 62 != 1)
    {
      v72 = 0;
      v63 = v101;
      goto LABEL_15;
    }

    v71 = ((v70 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v71 = (v70 + 64);
  }

  v63 = v101;
  v72 = *v71;

LABEL_15:
  if (__OFADD__(v72, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v67[8] = v72 + 1;
  v62 = v67;
  v64 = v100;
LABEL_17:
  v73 = v96;
  v74 = *(v96 + 40);
  *(v96 + 40) = v62;
  v75 = type metadata accessor for _PlistDecodingStorage();

  specialized _PlistDecodingStorage.push(container:)(v79, v75);
  _PlistDecoder.container<A>(keyedBy:)(v83, v84, a12, v82);
  *(v73 + 40) = v74;

  result = MEMORY[0x1865CB560](*(v73 + 16), v63);
  if (result)
  {
    type metadata accessor for Array();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v76 = v81;
    RangeReplaceableCollection<>.removeLast()();

    v77 = *(v64 + 8);
    v77(v76, v63);
    return (v77)(v79, v63);
  }

LABEL_20:
  __break(1u);
  return result;
}

void _NSSetLongLongValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetLongLongValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4690;
      v11[4] = a1;
      v11[5] = v8;
      v11[6] = a2;
      v11[7] = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

uint64_t _SwiftURL.deletingLastPathComponent()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (*(*(v1 + 16) + 168))
  {
    v3 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v3 = String.subscript.getter();
  }

  v4 = MEMORY[0x1865CAE80](v3);
  v6 = v5;

  if (!_SwiftURL.pathResolvesAgainstBase.getter())
  {
    v13 = 0;
    goto LABEL_21;
  }

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    if (String._lastPathComponent.getter(v4, v6) == 46 && v8 == 0xE100000000000000)
    {
LABEL_19:

      goto LABEL_20;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      if (String._lastPathComponent.getter(v4, v6) != 11822 || v11 != 0xE200000000000000)
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  v13 = 1;
LABEL_21:
  *&v69 = v4;
  *(&v69 + 1) = v6;

  if (String._lastPathComponent.getter(v4, v6) == 11822 && v14 == 0xE200000000000000)
  {

    Path = v4;
    v18 = v6;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    Path = v4;
    v18 = v6;
    if ((v16 & 1) == 0)
    {
      Path = String._deletingLastPathComponent()(v4, v6);
      v18 = v19;

      *&v69 = Path;
      *(&v69 + 1) = v18;
    }
  }

  if (v13)
  {
    Path = String._appendingPathComponent(_:)(11822, 0xE200000000000000, Path, v18);
    v21 = v20;

    *&v69 = Path;
    *(&v69 + 1) = v21;
    v18 = v21;
  }

  v22 = HIBYTE(v18) & 0xF;
  v23 = Path & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v22 = Path & 0xFFFFFFFFFFFFLL;
  }

  if (!v22 && _SwiftURL.pathResolvesAgainstBase.getter())
  {

    Path = 46;
    v18 = 0xE100000000000000;
    *&v69 = 46;
    *(&v69 + 1) = 0xE100000000000000;
LABEL_36:
    v23 = HIBYTE(v18) & 0xF;
    goto LABEL_37;
  }

  if ((v18 & 0x2000000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v23 && (specialized BidirectionalCollection.last.getter(Path, v18) & 0x1FF) != 0x2F)
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

  specialized URLComponents._URLComponents.init(parseInfo:)(v24, &v70);
  v25 = v70;
  v67 = v71;
  v68 = v72;
  v64 = v75;
  v65 = v76;
  v66[0] = *v77;
  *(v66 + 9) = *&v77[9];
  v62 = v73;
  v63 = v74;
  v61 = v78;
  v59 = *&v77[41];
  v60 = *&v77[57];
  v79 = *&v77[25];
  if (one-time initialization token for compatibility1 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility1 == 1)
  {
    if (v4 == 47 && v6 == 0xE100000000000000)
    {

      goto LABEL_55;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
LABEL_55:
      v80[0] = xmmword_1812DB720;
      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v80, 4, 0x10u, 1))
      {
        v26 = 0xE400000000000000;
        v27 = 791555631;
        goto LABEL_57;
      }

LABEL_65:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v26 = *(&v69 + 1);
  v27 = v69;
  if ((*(&v69 + 1) & 0x1000000000000000) != 0)
  {
    v80[0] = v69;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v35 = String._bridgeToObjectiveCImpl()();

    v36 = [v35 _fastCharacterContents];
    v37 = v35;
    if (v36)
    {
      v80[0] = v69;
      StringProtocol._ephemeralString.getter();
      v38 = String._bridgeToObjectiveCImpl()();

      v39 = [v38 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v36, v39, 0x10u, 1))
      {
        goto LABEL_65;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v69, *(&v69 + 1), 0x10u, 1) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    if ((*(&v69 + 1) & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(*(&v69 + 1)) & 0xFLL;
      *&v80[0] = v69;
      *(&v80[0] + 1) = *(&v69 + 1) & 0xFFFFFFFFFFFFFFLL;
      v28 = v80;
    }

    else if ((v69 & 0x1000000000000000) != 0)
    {
      v28 = ((*(&v69 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
      v29 = v69 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = _StringObject.sharedUTF8.getter();
    }

    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v28, v29, 0x10u, 1))
    {
      goto LABEL_65;
    }
  }

LABEL_57:
  outlined destroy of TermOfAddress?(&v79, &_sSSSgMd);
  *v42 = v25;
  v42[8] = 0;
  *&v42[9] = v67;
  *&v42[13] = v68;
  *&v42[47] = v64;
  *&v42[63] = v65;
  *&v42[79] = v66[0];
  *&v42[88] = *(v66 + 9);
  *&v42[15] = v62;
  *&v42[31] = v63;
  *&v42[104] = v27;
  *v43 = v26;
  *&v43[8] = v59;
  *&v43[24] = v60;
  *&v43[40] = v61;
  v80[2] = *&v42[32];
  v80[3] = *&v42[48];
  v80[4] = *&v42[64];
  v80[5] = *&v42[80];
  v80[0] = *v42;
  v80[1] = *&v42[16];
  v80[6] = *&v42[96];
  v80[7] = *v43;
  v81[0] = *&v43[16];
  *(v81 + 10) = *&v43[26];
  outlined init with copy of URLComponents(v42, &v44);
  v31 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v42);
  v41 = *(v2 + 24);
  swift_unknownObjectRetain();
  v32 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v31._countAndFlagsBits, v31._object, &v41);
  v51 = v64;
  v52 = v65;
  *v53 = v66[0];
  *&v53[9] = *(v66 + 9);
  v49 = v62;
  v50 = v63;
  v56 = v59;
  v44 = v25;
  v45 = 0;
  v46 = v67;
  v47 = v68;
  v48 = 0;
  v54 = v27;
  v55 = v26;
  v57 = v60;
  v58 = v61;
  outlined destroy of URLComponents(&v44);
  v33 = &protocol witness table for _SwiftURL;
  if (!v32)
  {
    v33 = 0;
  }

  *a1 = v32;
  a1[1] = v33;
}

BOOL _SwiftURL.pathResolvesAgainstBase.getter()
{
  v1 = *(v0 + 16);
  if ((v1[48] & 1) == 0)
  {
    String.subscript.getter();

    return 0;
  }

  if (v1[72] != 1 || v1[96] != 1 || v1[120] != 1 || v1[144] != 1)
  {
    return 0;
  }

  if (v1[168])
  {
    v2 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v2 = String.subscript.getter();
  }

  if ((v2 ^ v3) >> 14)
  {
    v5 = Substring.UTF8View.subscript.getter();

    return v5 != 47;
  }

  else
  {

    return 1;
  }
}

unint64_t String._deletingLastPathComponent()(unint64_t a1, unint64_t a2)
{
  LOBYTE(v55) = 47;
  v54 = &v55;
  v4 = specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v53, a1, a2);
  if (v5)
  {
    return 0;
  }

  v50 = v4;
  v51 = a1;
  v52 = a2;
  result = String.subscript.getter();
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = result >> 14;
  v14 = (v8 >> 59) & 1;
  if ((v9 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v16 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v16 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v49 = v16;
  v17 = v7 >> 14;
  v18 = v9 & 0xFFFFFFFFFFFFFFLL;
  v19 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v20 = -65532;
  do
  {
    if (v13 == v10 >> 14)
    {
      goto LABEL_29;
    }

    if ((v10 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v10, v11, v12);
      v10 = result;
      if (result < 0x4000)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }
    }

    else if (v10 < 0x4000)
    {
      goto LABEL_75;
    }

    if ((v12 & 0x1000000000000000) != 0)
    {
      if (v49 < v10 >> 16)
      {
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v10 = String.UTF8View._foreignIndex(before:)();
    }

    else
    {
      v10 = (v10 & 0xFFFFFFFFFFFF0000) - 65532;
    }

    result = v10;
    if ((v10 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v10, v11, v12);
    }

    if (result >> 14 < v13 || result >> 14 >= v17)
    {
      goto LABEL_76;
    }

    if ((v12 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
    }

    else
    {
      v21 = result >> 16;
      if ((v12 & 0x2000000000000000) != 0)
      {
        v55 = v11;
        v56 = v18;
        result = *(&v55 + v21);
      }

      else
      {
        v22 = v19;
        if ((v11 & 0x1000000000000000) == 0)
        {
          v22 = _StringObject.sharedUTF8.getter();
        }

        result = *(v22 + v21);
      }
    }
  }

  while (result == 47);

  v11 = v51;
  v19 = v52;
  if ((v52 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v52) & 0xF;
  }

  else
  {
    v20 = v51 & 0xFFFFFFFFFFFFLL;
  }

  v23 = 7;
  v24 = 11;
  if ((v51 & 0x800000000000000) != 0)
  {
    v24 = 7;
  }

  v25 = 4 << ((v51 & 0x800000000000000) >> 59);
  if ((v52 & 0x1000000000000000) != 0)
  {
    v23 = v24;
  }

  result = v23 | (v20 << 16);
  v26 = v23 & 0xC;
  if ((v52 & 0x1000000000000000) == 0)
  {
    v25 = 8;
  }

  if (v26 != v25)
  {
    if (result >= 0x4000)
    {
      goto LABEL_41;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_79:
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, v11, v19);
  if (result < 0x4000)
  {
    goto LABEL_80;
  }

LABEL_41:
  if ((v19 & 0x1000000000000000) == 0)
  {
    v27 = (result & 0xFFFFFFFFFFFF0000) - 65532;
    goto LABEL_43;
  }

LABEL_81:
  if (v20 < result >> 16)
  {
LABEL_85:
    __break(1u);
    return result;
  }

  v27 = String.UTF8View._foreignIndex(before:)();
LABEL_43:
  if ((v27 ^ v50) >= 0x4000)
  {
    String.index(after:)();
LABEL_72:
    v47 = String.subscript.getter();
    v48 = MEMORY[0x1865CAE80](v47);

    return v48;
  }

  else
  {
    v28 = String.subscript.getter();
    specialized BidirectionalCollection<>.lastIndex(of:)(0x2FuLL, v28, v29, v30, v31);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      result = String.subscript.getter();
      v37 = v34;
      v38 = v35;
      v39 = v36;
      v11 = result >> 14;
      v40 = (v35 >> 59) & 1;
      if ((v36 & 0x1000000000000000) == 0)
      {
        LOBYTE(v40) = 1;
      }

      v41 = 4 << v40;
      v42 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v42 = v35 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v42;
      v43 = v34 >> 14;
      v44 = v36 & 0xFFFFFFFFFFFFFFLL;
      v45 = (v36 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v19 = -65532;
      while (v11 != v37 >> 14)
      {
        if ((v37 & 0xC) == v41)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v37, v38, v39);
          v37 = result;
          if (result < 0x4000)
          {
            goto LABEL_77;
          }
        }

        else if (v37 < 0x4000)
        {
          goto LABEL_77;
        }

        if ((v39 & 0x1000000000000000) != 0)
        {
          if (v50 < v37 >> 16)
          {
            goto LABEL_84;
          }

          v37 = String.UTF8View._foreignIndex(before:)();
        }

        else
        {
          v37 = (v37 & 0xFFFFFFFFFFFF0000) - 65532;
        }

        result = v37;
        if ((v37 & 0xC) == v41)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v37, v38, v39);
        }

        if (result >> 14 < v11 || result >> 14 >= v43)
        {
          goto LABEL_78;
        }

        if ((v39 & 0x1000000000000000) != 0)
        {
          result = String.UTF8View._foreignSubscript(position:)();
        }

        else
        {
          v20 = result >> 16;
          if ((v39 & 0x2000000000000000) != 0)
          {
            v55 = v38;
            v56 = v44;
            result = *(&v55 + v20);
          }

          else
          {
            v46 = v45;
            if ((v38 & 0x1000000000000000) == 0)
            {
              v46 = _StringObject.sharedUTF8.getter();
            }

            result = *(v46 + v20);
          }
        }

        if (result != 47)
        {

          String.index(after:)();
          goto LABEL_72;
        }
      }

LABEL_29:

      return 47;
    }

    return 0;
  }
}

id CFErrorRef._domain.getter()
{
  v1 = CFErrorGetDomain(v0);
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v4 = v2;
  v5 = v4;
  if (!isTaggedPointer)
  {
LABEL_7:
    if (__CFStringIsCF())
    {
      v7 = 0;

      return v7;
    }

    v8 = v5;
    v9 = String.init(_nativeStorage:)();
    if (v10)
    {
      v7 = v9;

      return v7;
    }

    if (![(__CFString *)v8 length])
    {

      return 0;
    }

    v7 = String.init(_cocoaString:)();
LABEL_20:

    return v7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v7;
    }

    goto LABEL_7;
  }

  result = [(__CFString *)v5 UTF8String];
  if (result)
  {
    v12 = String.init(utf8String:)(result);
    if (v13)
    {
LABEL_15:
      v7 = v12;

      goto LABEL_20;
    }

    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v12 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v14)
    {
      [(__CFString *)v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v7 = v15;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Error._userInfo.getter in conformance CFErrorRef()
{
  v3 = CFErrorCopyUserInfo(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CFDictionaryRefaSgMd);
  v1 = Optional._bridgeToObjectiveC()();

  return v1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Int32(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v8 = [a1 *a5];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v9 = [objc_allocWithZone(NSNumber) *a6];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    *a2 = v8;
    *(a2 + 4) = 0;
  }

  return v10 & 1;
}

id URL.checkResourceIsReachable()(SEL *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 432))(ObjectType, v3);
  v10[0] = 0;
  v6 = [v5 *a1];

  v7 = v10[0];
  if (v10[0])
  {
    swift_willThrow();
    v8 = v7;
  }

  return v6;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(uint64_t a1, uint64_t a2)
{
  return JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(a1, *v2, *(v2 + 8), *(v2 + 16), *(a2 + 16), *(a2 + 24));
}

{
  result = JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(a1, *v2, *(v2 + 8), *(v2 + 16), *(a2 + 16), *(a2 + 24));
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  v3 = JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(a1, *v2, *(v2 + 8), *(v2 + 16), *(a2 + 16), *(a2 + 24));
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

uint64_t specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a7;
  v76 = a5;
  v80 = a4;
  *(&v82 + 1) = a2;
  *&v82 = a1;
  v74[0] = *v7;
  v77 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v75 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v74 - v12;
  v79 = type metadata accessor for Optional();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v74 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v74 - v20;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v26 = v74 - v25;
  v27 = a3 >> 5;
  if (v27 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v52 = v81;
    v74[-4] = a6;
    v74[-3] = v52;
    LOBYTE(v74[-2]) = v53;
    BYTE1(v74[-2]) = a3 & 1;
    v74[-1] = v74[0];
    v54 = *(v7[4] + 24);
    MEMORY[0x1EEE9AC00](v55);
    v74[-4] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:);
    v74[-3] = v56;
    v57 = *(&v82 + 1);
    v74[-2] = v82;
    v74[-1] = v57;

    os_unfair_lock_lock((v54 + 40));
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v54 + 16), &v83);
    os_unfair_lock_unlock((v54 + 40));
  }

  if (v27 == 5 && v82 == 0 && a3 == 160)
  {
    *(&v82 + 1) = type metadata accessor for DecodingError();
    swift_allocError();
    *&v82 = v28;
    *v28 = MEMORY[0x1E69E63B0];
    v29 = v78;
    v30 = *(v78 + 16);
    v31 = v79;
    v30(v26, v76, v79);
    v30(v21, v26, v31);
    v32 = v77;
    if ((*(v77 + 48))(v21, 1, a6) == 1)
    {
      v33 = *(v29 + 8);
      v33(v21, v31);
      _CodingPathNode.path.getter(v80);
      v33(v26, v31);
    }

    else
    {
      (*(v32 + 32))(v13, v21, a6);
      v66 = v32;
      v67 = _CodingPathNode.path.getter(v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v69 = v81;
      *(inited + 56) = a6;
      *(inited + 64) = v69;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v66 + 16))(boxed_opaque_existential_0, v13, a6);
      v83 = v67;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v66 + 8))(v13, a6);
      (*(v29 + 8))(v26, v31);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    v71 = v82;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(*(&v82 + 1) - 8) + 104))(v71, *MEMORY[0x1E69E6B08]);
    return swift_willThrow();
  }

  if (a3 > 0x1Fu || (a3 & 1) == 0 || !v7[11])
  {
    goto LABEL_12;
  }

  *&v34 = MEMORY[0x1EEE9AC00](v23);
  v35 = v81;
  v74[-8] = a6;
  v74[-7] = v35;
  v74[-6] = v37;
  v74[-5] = v36;
  *&v74[-4] = v34;
  v74[-2] = v39;
  v74[-1] = v38;
  v40 = *(v7[4] + 24);
  MEMORY[0x1EEE9AC00](v41);
  v74[-4] = partial apply for specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:);
  v74[-3] = v42;
  v43 = *(&v82 + 1);
  v74[-2] = v82;
  v74[-1] = v43;

  os_unfair_lock_lock((v40 + 40));
  v44 = v74[1];
  closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v40 + 16), &v83);
  if (v44)
  {
    os_unfair_lock_unlock((v40 + 40));

    __break(1u);
    return result;
  }

  os_unfair_lock_unlock((v40 + 40));

  v45 = v84;

  if (v45)
  {
LABEL_12:
    v47 = v78;
    v48 = *(v78 + 16);
    v49 = v79;
    v48(v18, v76, v79, v24);
    (v48)(v15, v18, v49);
    v50 = v77;
    if ((*(v77 + 48))(v15, 1, a6) == 1)
    {
      v51 = *(v47 + 8);
      v51(v15, v49);
      _CodingPathNode.path.getter(v80);
      v51(v18, v49);
    }

    else
    {
      (*(v50 + 32))(v75, v15, a6);
      v58 = _CodingPathNode.path.getter(v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v59 = swift_initStackObject();
      *(v59 + 16) = xmmword_181218E20;
      v60 = v81;
      *(v59 + 56) = a6;
      *(v59 + 64) = v60;
      v61 = __swift_allocate_boxed_opaque_existential_0((v59 + 32));
      v62 = v75;
      (*(v50 + 16))(v61, v75, a6);
      v83 = v58;
      specialized Array.append<A>(contentsOf:)(v59);
      (*(v50 + 8))(v62, a6);
      (*(v47 + 8))(v18, v49);
    }

    v63 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v64;
    *v64 = MEMORY[0x1E69E63B0];
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v83 = 0xD000000000000024;
    v84 = 0x8000000181481F00;
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v72 = 0xEC0000007972616ELL;
        v73 = 0x6F69746369642061;
      }

      else if (v27 == 4)
      {
        v72 = 0xE800000000000000;
        v73 = 0x7961727261206E61;
      }

      else
      {
        v72 = 0xE400000000000000;
        v73 = 1819047278;
      }
    }

    else if (v27)
    {
      v72 = 0xE400000000000000;
      v73 = 1819242338;
    }

    else
    {
      v72 = 0xE800000000000000;
      v73 = 0x676E697274732061;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    MEMORY[0x1865CB0E0](v73, v72);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8]);
    return swift_willThrow();
  }

  return result;
}

{
  v81 = a7;
  v76 = a5;
  v80 = a4;
  *(&v82 + 1) = a2;
  *&v82 = a1;
  v74[0] = *v7;
  v77 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v75 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v74 - v12;
  v79 = type metadata accessor for Optional();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v74 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v74 - v20;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v26 = v74 - v25;
  v27 = a3 >> 5;
  if (v27 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v52 = v81;
    v74[-4] = a6;
    v74[-3] = v52;
    LOBYTE(v74[-2]) = v53;
    BYTE1(v74[-2]) = a3 & 1;
    v74[-1] = v74[0];
    v54 = *(v7[4] + 24);
    MEMORY[0x1EEE9AC00](v55);
    v74[-4] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:);
    v74[-3] = v56;
    v57 = *(&v82 + 1);
    v74[-2] = v82;
    v74[-1] = v57;

    os_unfair_lock_lock((v54 + 40));
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v54 + 16), &v83);
    os_unfair_lock_unlock((v54 + 40));
  }

  if (v27 == 5 && v82 == 0 && a3 == 160)
  {
    *(&v82 + 1) = type metadata accessor for DecodingError();
    swift_allocError();
    *&v82 = v28;
    *v28 = MEMORY[0x1E69E6448];
    v29 = v78;
    v30 = *(v78 + 16);
    v31 = v79;
    v30(v26, v76, v79);
    v30(v21, v26, v31);
    v32 = v77;
    if ((*(v77 + 48))(v21, 1, a6) == 1)
    {
      v33 = *(v29 + 8);
      v33(v21, v31);
      _CodingPathNode.path.getter(v80);
      v33(v26, v31);
    }

    else
    {
      (*(v32 + 32))(v13, v21, a6);
      v66 = v32;
      v67 = _CodingPathNode.path.getter(v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v69 = v81;
      *(inited + 56) = a6;
      *(inited + 64) = v69;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v66 + 16))(boxed_opaque_existential_0, v13, a6);
      v83 = v67;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v66 + 8))(v13, a6);
      (*(v29 + 8))(v26, v31);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    v71 = v82;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(*(&v82 + 1) - 8) + 104))(v71, *MEMORY[0x1E69E6B08]);
    return swift_willThrow();
  }

  if (a3 > 0x1Fu || (a3 & 1) == 0 || !v7[11])
  {
    goto LABEL_12;
  }

  *&v34 = MEMORY[0x1EEE9AC00](v23);
  v35 = v81;
  v74[-8] = a6;
  v74[-7] = v35;
  v74[-6] = v37;
  v74[-5] = v36;
  *&v74[-4] = v34;
  v74[-2] = v39;
  v74[-1] = v38;
  v40 = *(v7[4] + 24);
  MEMORY[0x1EEE9AC00](v41);
  v74[-4] = partial apply for specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:);
  v74[-3] = v42;
  v43 = *(&v82 + 1);
  v74[-2] = v82;
  v74[-1] = v43;

  os_unfair_lock_lock((v40 + 40));
  v44 = v74[1];
  closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v40 + 16), &v83);
  if (v44)
  {
    os_unfair_lock_unlock((v40 + 40));

    __break(1u);
    return result;
  }

  os_unfair_lock_unlock((v40 + 40));

  v45 = BYTE4(v83);

  if (v45)
  {
LABEL_12:
    v47 = v78;
    v48 = *(v78 + 16);
    v49 = v79;
    v48(v18, v76, v79, v24);
    (v48)(v15, v18, v49);
    v50 = v77;
    if ((*(v77 + 48))(v15, 1, a6) == 1)
    {
      v51 = *(v47 + 8);
      v51(v15, v49);
      _CodingPathNode.path.getter(v80);
      v51(v18, v49);
    }

    else
    {
      (*(v50 + 32))(v75, v15, a6);
      v58 = _CodingPathNode.path.getter(v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v59 = swift_initStackObject();
      *(v59 + 16) = xmmword_181218E20;
      v60 = v81;
      *(v59 + 56) = a6;
      *(v59 + 64) = v60;
      v61 = __swift_allocate_boxed_opaque_existential_0((v59 + 32));
      v62 = v75;
      (*(v50 + 16))(v61, v75, a6);
      v83 = v58;
      specialized Array.append<A>(contentsOf:)(v59);
      (*(v50 + 8))(v62, a6);
      (*(v47 + 8))(v18, v49);
    }

    v63 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v64;
    *v64 = MEMORY[0x1E69E6448];
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v83 = 0xD000000000000023;
    v84 = 0x80000001814821F0;
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v72 = 0xEC0000007972616ELL;
        v73 = 0x6F69746369642061;
      }

      else if (v27 == 4)
      {
        v72 = 0xE800000000000000;
        v73 = 0x7961727261206E61;
      }

      else
      {
        v72 = 0xE400000000000000;
        v73 = 1819047278;
      }
    }

    else if (v27)
    {
      v72 = 0xE400000000000000;
      v73 = 1819242338;
    }

    else
    {
      v72 = 0xE800000000000000;
      v73 = 0x676E697274732061;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    MEMORY[0x1865CB0E0](v73, v72);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8]);
    return swift_willThrow();
  }

  return result;
}

void *closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

void partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, *(v5 + 32), *(v5 + 33));
  if (!v6)
  {
    *a5 = v8;
  }
}

double JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v34[1] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_7;
  }

  v34[0] = v12;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v36);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v37 = 0xD00000000000001DLL;
    v38 = 0x8000000181482300;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v32 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v32);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF0], v27);
    swift_willThrow();
    return v6;
  }

  v20 = *(a4 + 56) + 24 * v17;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(a5 - 8);
  v24 = *(v20 + 16);
  (*(v23 + 16))(v14, a1, a5);
  (*(v23 + 56))(v14, 0, 1, a5);
  v25 = v35;
  specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v21, v22, v24, v36, v14, a5, a6);
  if (!v25)
  {
    v6 = v26;
  }

  (*(v34[0] + 8))(v14, v11);
  return v6;
}

uint64_t _LocaleICU.forceFirstWeekday(_:)@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 136);
  v6 = *(v2 + 168);
  v16 = *(v2 + 152);
  v17[0] = v6;
  *(v17 + 12) = *(v2 + 180);
  v7 = *(v2 + 72);
  v8 = *(v2 + 104);
  v12[2] = *(v2 + 88);
  v13 = v8;
  v14 = *(v2 + 120);
  v15 = v5;
  v12[0] = *(v2 + 56);
  v12[1] = v7;
  result = _s10Foundation17LocalePreferencesVSgWOg(v12);
  if (result != 1 && (v10 = v13) != 0 && *(v13 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v11 & 1) != 0))
  {
    result = *(*(v10 + 56) + 8 * result);
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      return Locale.Weekday.init(_:)(result, a2);
    }

    __break(1u);
  }

  else
  {
    *a2 = 7;
  }

  return result;
}

id StringProtocol.localizedCompare<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  StringProtocol._ephemeralString.getter();
  v7 = String._bridgeToObjectiveCImpl()();

  StringProtocol._ephemeralString.getter();
  v8 = String._bridgeToObjectiveCImpl()();

  v9 = [v7 *a6];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

uint64_t protocol witness for CVarArg._cVarArgEncoding.getter in conformance [A]()
{
  swift_getWitnessTable();

  return CVarArg<>._cVarArgEncoding.getter();
}

Swift::String __swiftcall _SwiftURL.absoluteString(original:)(Swift::Bool original)
{
  v2 = original;
  v3 = v1[3];
  if (!v3)
  {
    v17 = v1[2];
    if (v2 && *(v17 + 220))
    {

      specialized URLComponents._URLComponents.init(parseInfo:)(v18, &v180);
      v19 = URLComponents._URLComponents._uncheckedString(original:)(1);
      countAndFlagsBits = v19._countAndFlagsBits;
      object = v19._object;
      outlined destroy of URLComponents._URLComponents(&v180);
    }

    else
    {
      object = *(v17 + 24);
      countAndFlagsBits = *(v17 + 16);
    }

    goto LABEL_22;
  }

  countAndFlagsBits = v1[4];
  v4 = v1[2];

  swift_unknownObjectRetain();
  specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v4, v2, &v170);
  v5 = *(&v170 + 1);
  v6 = *(&v171 + 1);
  v7 = v172;
  v8 = v173;
  v9 = v174;
  v150 = v178;
  v151 = v177;
  v169 = v179;
  v149 = v3;
  v147 = v170;
  v148 = *(&v171 + 1);
  v152 = *(&v174 + 1);
  if (!*(&v170 + 1))
  {
    LODWORD(v140) = v2;
    v144 = v173;
    v145 = v175;
    v142 = v176;
    v143 = *(&v173 + 1);
    v141 = v174;
    v20 = v171;
    v21 = *(&v172 + 1);
    ObjectType = swift_getObjectType();
    v23 = (*(countAndFlagsBits + 136))(ObjectType, countAndFlagsBits);
    v25 = v24;
    if (v24)
    {
      v26 = v23;
    }

    else
    {
      v26 = v147;
    }

    v27 = v4[72];
    v147 = v26;
    if (v27 != 1 || v4[96] != 1 || v4[120] != 1 || (v4[144] & 1) == 0)
    {
      *&v180 = v26;
      *(&v180 + 1) = v24;
      v181 = v20;
      v182 = v148;
      v183 = v7;
      v184 = v21;
      v185 = v144;
      v186 = v143;
      v140 = v24;
      v187 = v141;
      v188 = v152;
      v189 = v145;
      v190 = v142;
      v191 = v151;
      v192 = v150;
      v193 = v179;
      countAndFlagsBits = _SwiftURL.URLStringBuilder.string.getter();
      object = v32;
      swift_unknownObjectRelease();
      v154 = v147;
      v155 = v140;
      v156 = v20;
      v157 = v148;
      v158 = v7;
      v159 = v21;
      v160 = v144;
      v161 = v143;
      v162 = v141;
      v163 = v152;
      v164 = v145;
      v165 = v142;
      v166 = v151;
      v167 = v150;
      goto LABEL_20;
    }

    v139 = ObjectType;
    *&v180 = v149;
    *(&v180 + 1) = countAndFlagsBits;
    URL._swiftURL.getter();
    v137 = v21;
    v146 = v7;
    if (v28)
    {
      v29 = *(v28 + 16);

      v30 = 0;
      v31 = v29 != 0;
      if ((v140 & 1) != 0 && v29)
      {
        v30 = v29[220];
        v31 = 1;
      }
    }

    else
    {
      v31 = 0;
      v29 = 0;
      v30 = 0;
    }

    v138 = v30;
    v36 = (*(countAndFlagsBits + 168))((v30 & 1) == 0, v139, countAndFlagsBits);
    if (v37)
    {
      v38 = v36;
      v39 = v37;
      v197 = v171;
      outlined destroy of TermOfAddress?(&v197, &_sSSSgMd);
      v148 = v39;
      v20 = v38;
    }

    v40 = (*(countAndFlagsBits + 184))((v138 & 2) == 0, v139);
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      v196 = v172;
      outlined destroy of TermOfAddress?(&v196, &_sSSSgMd);
      v137 = v43;
      v146 = v42;
    }

    v194 = v173;
    v195 = v174;
    v140 = v29;
    if (v31 && (v29[120] & 1) == 0)
    {

      v29 = v140;
      v49 = String.subscript.getter();
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v46 = v20;
      if ((v138 & 4) != 0 && *(v140 + 218) == 1)
      {
        if ((v49 ^ v51) >> 14)
        {
          v144 = &v135;
          *&v180 = v49;
          *(&v180 + 1) = v51;
          v181 = v53;
          v182 = v55;
          MEMORY[0x1EEE9AC00](v56);
          v66 = v49;
          v134[2] = &v180;
          v134[3] = MEMORY[0x1E69E7CD0];
          v134[4] = 4;

          v67 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v134, v49, v51, v53, v55);
          v143 = v53;
          v68 = v67;
          v70 = v69;

          if (v70 == 1)
          {

            v71 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v66, v51, v143, v55, MEMORY[0x1E69E7CD0], 4);
            v143 = v72;
            v144 = v71;
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v143 = v70;
            v144 = v68;
          }

          v73 = v140;
          outlined destroy of TermOfAddress?(&v194, &_sSSSgMd);
          if (*(v73 + 144))
          {
            goto LABEL_41;
          }
        }

        else
        {

          outlined destroy of TermOfAddress?(&v194, &_sSSSgMd);
          v143 = 0xE000000000000000;
          v144 = 0;
          if (*(v140 + 144))
          {
LABEL_41:
            v59 = (*(countAndFlagsBits + 208))(v139);
            if (v60)
            {
              v61 = v148;
              v62 = v152;
              v64 = v141;
              v63 = v142;
              goto LABEL_50;
            }

            *&v180 = v59;
            v64 = dispatch thunk of CustomStringConvertible.description.getter();
            v62 = v65;
            outlined destroy of TermOfAddress?(&v195, &_sSSSgMd);
LABEL_49:
            v61 = v148;
            v63 = v142;
LABEL_50:
            v82 = HIBYTE(v63) & 0xF;
            if ((v63 & 0x2000000000000000) == 0)
            {
              v82 = v145 & 0xFFFFFFFFFFFFLL;
            }

            v152 = v62;
            v141 = v64;
            v136 = v46;
            v148 = v61;
            if (!v82)
            {
              v85 = v178;
              v86 = v138;
              v87 = countAndFlagsBits;
              v88 = v139;
              v89 = (*(countAndFlagsBits + 248))((v138 & 8) == 0, v139, countAndFlagsBits);
              v91 = v90;

              if (v85)
              {
                v92 = v150;
              }

              else
              {
                v107 = (*(v87 + 264))((v86 & 0x10) == 0, v88, v87);
                v92 = v150;
                v109 = v151;
                if (v108)
                {
                  v109 = v107;
                }

                v151 = v109;
                if (v108)
                {
                  v92 = v108;
                }
              }

              v61 = v148;
              v110 = v89;
              v111 = v91;
              goto LABEL_73;
            }

            v83 = v63;
            if ((specialized Collection.first.getter(v145, v63) & 0x1FF) == 0x2F)
            {

              v84 = v83;
            }

            else
            {
              v93 = countAndFlagsBits;
              v94 = v139;
              v95 = (*(countAndFlagsBits + 152))(v139, countAndFlagsBits);
              v96 = *(v93 + 248);
              if (v95)
              {
                v97 = v96(1, v94, v93);
                v99 = v98;

                v100 = HIBYTE(v99) & 0xF;
                v101 = (v99 & 0x2000000000000000) == 0;
                v93 = countAndFlagsBits;
                if (v101)
                {
                  v100 = v97 & 0xFFFFFFFFFFFFLL;
                }

                if (!v100)
                {
                  *&v180 = 47;
                  *(&v180 + 1) = 0xE100000000000000;
                  MEMORY[0x1865CB0E0](v145, v142);
                  v84 = *(&v180 + 1);
                  v113 = v180;
                  v61 = v148;
                  goto LABEL_72;
                }
              }

              v102 = v96((v138 & 8) == 0, v94, v93);
              v104 = v103;
              v105 = v142;
              v106 = specialized Collection.first.getter(v145, v142);
              if ((v106 & 0x1FF) == 0x2F)
              {
              }

              else
              {
                LOBYTE(v180) = 47;
                MEMORY[0x1EEE9AC00](v106);
                v134[-2] = &v180;
                specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v134[-4], v102, v104);
                if ((v112 & 1) == 0)
                {
                  String.index(after:)();
                  v122 = String.subscript.getter();
                  v124 = v123;
                  v126 = v125;
                  v128 = v127;
                  v154 = 0;
                  v155 = 0xE000000000000000;
                  v129 = v142;
                  v130 = String.count.getter();
                  countAndFlagsBits = v126;
                  v131 = Substring.distance(from:to:)();
                  v132 = __OFADD__(v130, v131);
                  v34 = v130 + v131;
                  if (v132)
                  {
                    __break(1u);
                    goto LABEL_78;
                  }

                  MEMORY[0x1865CAED0](v34);
                  *&v180 = v122;
                  *(&v180 + 1) = v124;
                  v181 = countAndFlagsBits;
                  v182 = v128;
                  lazy protocol witness table accessor for type Substring and conformance Substring();
                  String.append<A>(contentsOf:)();
                  *&v180 = v145;
                  *(&v180 + 1) = v129;

                  String.append<A>(contentsOf:)();

                  v113 = v154;
                  v84 = v155;
                  v61 = v148;
                  goto LABEL_72;
                }

                v105 = v142;
              }

              v84 = v105;
              v61 = v148;
            }

            v113 = v145;
LABEL_72:
            v110 = String.removingDotSegments.getter(v113, v84);
            v111 = v114;

            v92 = v150;
LABEL_73:
            v115 = v146;
            v116 = v147;
            *&v180 = v147;
            *(&v180 + 1) = v25;
            v117 = v136;
            v181 = v136;
            v182 = v61;
            v183 = v146;
            v184 = v137;
            v119 = v143;
            v118 = v144;
            v185 = v144;
            v186 = v143;
            v187 = v141;
            v188 = v152;
            v150 = v110;
            v189 = v110;
            v145 = v111;
            v190 = v111;
            v120 = v151;
            v191 = v151;
            v192 = v92;
            v193 = v169;
            countAndFlagsBits = _SwiftURL.URLStringBuilder.string.getter();
            object = v121;

            swift_unknownObjectRelease();
            v154 = v116;
            v155 = v25;
            v156 = v117;
            v157 = v148;
            v158 = v115;
            v159 = v137;
            v160 = v118;
            v161 = v119;
            v162 = v141;
            v163 = v152;
            v164 = v150;
            v165 = v145;
            v166 = v120;
            v167 = v92;
            v33 = v169;
            goto LABEL_21;
          }
        }

LABEL_48:

        v74 = String.subscript.getter();
        v76 = v75;
        v78 = v77;
        v80 = v79;

        v64 = MEMORY[0x1865CAE80](v74, v76, v78, v80);
        v62 = v81;

        outlined destroy of TermOfAddress?(&v195, &_sSSSgMd);
        goto LABEL_49;
      }

      v57 = MEMORY[0x1865CAE80](v49, v51, v53, v55);
      v143 = v58;
      v144 = v57;

      outlined destroy of TermOfAddress?(&v194, &_sSSSgMd);
    }

    else
    {
      v44 = (*(countAndFlagsBits + 200))((v138 & 4) == 0, v139);
      v46 = v20;
      if (v45)
      {
        v47 = v44;
        v48 = v45;
        outlined destroy of TermOfAddress?(&v194, &_sSSSgMd);
        v143 = v48;
        v144 = v47;
      }

      if (!v31)
      {
        goto LABEL_41;
      }
    }

    if (v29[144])
    {
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  v10 = *(&v172 + 1);
  v146 = v172;
  v11 = v171;
  v12 = *(&v173 + 1);
  v145 = String.removingDotSegments.getter(v175, v176);
  v14 = v13;

  *&v180 = v147;
  *(&v180 + 1) = v5;
  v181 = v11;
  v182 = v6;
  v183 = v146;
  v184 = v10;
  v185 = v8;
  v186 = v12;
  v187 = v9;
  v188 = v152;
  v189 = v145;
  v190 = v14;
  v191 = v151;
  v192 = v150;
  v193 = v179;
  countAndFlagsBits = _SwiftURL.URLStringBuilder.string.getter();
  object = v15;
  swift_unknownObjectRelease();
  v154 = v147;
  v155 = v5;
  v156 = v11;
  v157 = v148;
  v158 = v146;
  v159 = v10;
  v160 = v8;
  v161 = v12;
  v162 = v9;
  v163 = v152;
  v164 = v145;
  v165 = v14;
  v166 = v151;
  v167 = v150;
LABEL_20:
  v33 = v179;
LABEL_21:
  v168 = v33;
  outlined destroy of _SwiftURL.URLStringBuilder(&v154);
LABEL_22:
  v34 = countAndFlagsBits;
  v35 = object;
LABEL_78:
  result._object = v35;
  result._countAndFlagsBits = v34;
  return result;
}

void iop_addDependency(unsigned __int8 *a1, void *a2, void *a3)
{
  v21[7] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = 0;
  v9 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __iop_addDependency_block_invoke;
  v21[3] = &unk_1E69F51C0;
  v21[5] = a3;
  v21[6] = a1;
  v21[4] = a2;
  v10 = 1;
  v11 = 1;
  do
  {
    while (1)
    {
      while (1)
      {
        v12 = v8;
        v13 = v11;
        v14 = v10;
        v15 = _NSOperationDependenciesAndReadyKeys[v9];
        if (v15 != @"isReady")
        {
          break;
        }

        v11 = 0;
        v16 = atomic_load(a1 + 236);
        v17 = v8 | (v16 != 0);
        v8 = 1;
        v10 = v13;
        v9 = 1;
        if (v17)
        {
          goto LABEL_14;
        }
      }

      if (v15 != @"isFinished")
      {
        break;
      }

      v11 = 0;
      v18 = a1 + 235;
LABEL_13:
      v16 = atomic_load(v18);
      v19 = v8 | (v16 != 0);
      v9 = 1;
      v10 = v13;
      v8 = 1;
      if (v19)
      {
LABEL_14:
        if (v16)
        {
          v20 = v14;
        }

        else
        {
          v20 = v13;
        }

        if (v20)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    if (v15 == @"isExecuting")
    {
      v11 = 0;
      v18 = a1 + 234;
      goto LABEL_13;
    }

    if (v15 == @"isCancelled")
    {
      v11 = 0;
      v18 = a1 + 237;
      goto LABEL_13;
    }

    v11 = 0;
    v9 = 1;
    v10 = v13;
    v8 = 1;
  }

  while ((v12 & 1) == 0);
  if (v13)
  {
LABEL_18:
    [a3 _changeValueForKeys:_NSOperationDependenciesAndReadyKeys count:2 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v21];
    goto LABEL_21;
  }

LABEL_20:
  __iop_addDependency_block_invoke(v21);
  [__NSOperationInternalObserver _observeValueForKeyPath:@"isReady" ofObject:a3 changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
LABEL_21:
}

void __iop_addDependency_block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[6] + 224));
  v2 = *(a1[6] + 32);
  if (v2)
  {
    v3 = [v2 indexOfObjectIdenticalTo:a1[4]];
    v4 = a1[6];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = (v4 + 224);
      goto LABEL_13;
    }

    v5 = *(v4 + 32);
  }

  else
  {
    v5 = objc_opt_new();
    *(a1[6] + 32) = v5;
  }

  [v5 addObject:a1[4]];
  v6 = a1[4];
  os_unfair_lock_unlock((a1[6] + 224));
  v7 = (v6 + 232);
  os_unfair_lock_lock((v6 + 232));
  os_unfair_lock_lock((a1[6] + 224));
  v8 = atomic_load((v6 + 237));
  if (v8 != 244)
  {
    v9 = atomic_load((a1[6] + 232));
    if ((v9 & 1) == 0)
    {
      v10 = a1[6];
      v11 = *(v10 + 48);
      if (v11 < 0)
      {
        __assert_rtn("iop_addDependency_block_invoke", "NSOperation.m", 795, "iop->__unfinished_deps >= 0");
      }

      *(v10 + 48) = v11 + 1;
      v12 = a1[5];
      v13 = *(v6 + 48);
      if (!v13)
      {
        v13 = [NSHashTable hashTableWithOptions:5];
        *(v6 + 48) = v13;
      }

      [(NSHashTable *)v13 addObject:v12];
    }
  }

  os_unfair_lock_unlock((a1[6] + 224));
LABEL_13:

  os_unfair_lock_unlock(v7);
}

uint64_t _decodeFloat(void *a1, const void *a2, float *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0.0;
  result = _decodeDouble(a1, a2, v10);
  v7 = v10[0];
  if (result)
  {
    v8 = fabs(v10[0]);
    result = 1;
    if (v8 != INFINITY && v8 > 3.40282347e38)
    {
      [a1 __failWithExceptionName:*MEMORY[0x1E695DA20] errorCode:4864 format:{@"%@: value (%f) for key (%@) too large to fit in 32-bit float", _NSMethodExceptionProem(a1, sel_decodeFloatForKey_), *&v10[0], a2}];
      result = 0;
    }
  }

  v9 = v7;
  *a3 = v9;
  return result;
}

size_t StringProtocol.cString(using:)(uint64_t *a1)
{
  v1 = *a1;
  StringProtocol._ephemeralString.getter();
  v2 = String._bridgeToObjectiveCImpl()();

  v3 = objc_autoreleasePoolPush();
  v4 = [v2 cStringUsingEncoding_];
  if (!v4)
  {
    v8 = 0;
LABEL_9:
    objc_autoreleasePoolPop(v3);
    swift_unknownObjectRelease();
    return v8;
  }

  v5 = v4;
  result = _swift_stdlib_strlen(v4);
  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    if (result == -1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    memcpy((v8 + 32), v5, v7);
    *(v8 + 16) = v7;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t one-time initialization function for _canChangeUIDs()
{
  v0 = geteuid();
  v1 = getuid();
  result = _getSVUID()();
  v3 = (result & 0x100000000) != 0 || v0 != result;
  if (v1 != v0)
  {
    v3 = 1;
  }

  if (!v1)
  {
    v3 = 1;
  }

  _canChangeUIDs = v3;
  return result;
}

unint64_t _getSVUID()()
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(v5, 0x288uLL);
  v4 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18121D6C0;
  *(v0 + 32) = 0xE00000001;
  *(v0 + 40) = 1;
  *(v0 + 44) = getpid();
  v1 = sysctl((v0 + 32), 4u, v5, &v4, 0, 0);

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v6;
  }

  return v2 | ((v1 != 0) << 32);
}

void NSDeallocateObject(id object)
{
  name[1] = *MEMORY[0x1E69E9840];
  if (object)
  {
    if (NSZombieEnabled == 1)
    {
      Class = object_getClass(object);
      name[0] = 0;
      v3 = class_getName(Class);
      asprintf(name, "_NSZombie_%s", v3);
      v4 = objc_lookUpClass(name[0]);
      if (!v4)
      {
        v5 = objc_lookUpClass("_NSZombie_");
        v4 = objc_duplicateClass(v5, name[0], 0);
      }

      free(name[0]);
      if (NSDeallocateZombies == 1)
      {
        object_setClass(object, v4);
        object_dispose(object);
      }

      else
      {
        objc_destructInstance(object);
        object_setClass(object, v4);
      }
    }

    else
    {

      object_dispose(object);
    }
  }
}

uint64_t _NSIsPList(uint64_t result, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (_NSIsNSString())
    {
      return 1;
    }

    if (_NSIsNSData())
    {
      return 2;
    }

    if (_NSIsNSNumber())
    {
      return 5;
    }

    if (_NSIsNSDate())
    {
      return 6;
    }

    if (a3 && ([a3 containsObject:v5] & 1) != 0)
    {
      return 0;
    }

    if (_NSIsNSArray())
    {
      if (a2)
      {
        [a3 addObject:v5];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v16;
LABEL_16:
          v9 = 0;
          while (1)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if (!_NSIsPList(*(*(&v15 + 1) + 8 * v9), 1, a3))
            {
              break;
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
              if (v7)
              {
                goto LABEL_16;
              }

              goto LABEL_22;
            }
          }

LABEL_33:
          [a3 removeObject:v5];
          return 0;
        }

LABEL_22:
        [a3 removeObject:v5];
      }

      return 3;
    }

    v10 = _NSIsNSDictionary();
    if (v10)
    {
      result = 4;
    }

    else
    {
      result = 0;
    }

    if (v10 && a2)
    {
      v11 = [v5 keyEnumerator];
      [a3 addObject:v5];
      while (1)
      {
        v12 = [v11 nextObject];
        if (!v12)
        {
          break;
        }

        v13 = v12;
        if ((_NSIsNSString() & 1) == 0 || !_NSIsPList([v5 objectForKey:v13], 1, a3))
        {
          goto LABEL_33;
        }
      }

      [a3 removeObject:v5];
      return 4;
    }
  }

  return result;
}

uint64_t _NSSwiftTimeZone.abbreviation.getter()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  swift_unknownObjectRetain();
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&v2 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  ObjectType = swift_getObjectType();
  __tp.tv_sec = v2;
  v4 = (*(v1 + 64))(&__tp, ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

Swift::String_optional __swiftcall _TimeZoneICU.abbreviation(for:)(Foundation::Date a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = v1[2];
  os_unfair_lock_lock(v2 + 6);
  if (_TimeZoneICU.State.calendar(_:)(v1[3], v1[4]))
  {
    LODWORD(v7[0]) = 0;
    ucal_setMillis();
    ucal_get();
  }

  os_unfair_lock_unlock(v2 + 6);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v2 + 6);
  partial apply for closure #1 in _TimeZoneICU.abbreviation(for:)(v7);
  os_unfair_lock_unlock(v2 + 6);
  v4 = v7[0];
  v5 = v7[1];
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t closure #1 in _TimeZoneICU.abbreviation(for:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = _TimeZoneICU.State.calendar(_:)(*(a1 + 24), *(a1 + 32));
  if (result)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    LocaleCache._currentAndCache.getter();
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(ObjectType, v5);
    swift_unknownObjectRelease();
    v7 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v9 = v8;

    *a2 = v7;
    a2[1] = v9;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(int a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  isStackAllocationSafe = swift_bridgeObjectRetain_n();
  if (a1 >= 513)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v13 = swift_slowAlloc();

      specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v13, v17);
      MEMORY[0x1865D2690](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v17[0];
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v5 = &v15[-v4];
  v16 = 0;
  String.utf8CString.getter();
  swift_bridgeObjectRetain_n();
  TimeZoneDisplayName = ucal_getTimeZoneDisplayName();

  if (v16 == 15)
  {
    v7 = TimeZoneDisplayName + 1;
    if (!__OFADD__(TimeZoneDisplayName, 1))
    {
      if (v7 < 0)
      {
        __break(1u);
      }

      if (v7 < 513)
      {
LABEL_7:
        MEMORY[0x1EEE9AC00](v6);
        v9 = &v15[-v8];
        LODWORD(v17[0]) = 0;
        String.utf8CString.getter();
        v10 = ucal_getTimeZoneDisplayName();

        v11 = 0;
        if (SLODWORD(v17[0]) <= 0 && v10 > 0)
        {
          v11 = specialized String.init(_utf16:)(v9, v10);
        }

        goto LABEL_14;
      }

LABEL_22:
      v6 = swift_stdlib_isStackAllocationSafe();
      if ((v6 & 1) == 0)
      {
        v14 = swift_slowAlloc();

        specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v14, TimeZoneDisplayName, v17);
        MEMORY[0x1865D2690](v14, -1, -1);
        swift_bridgeObjectRelease_n();
        v11 = v17[0];
        goto LABEL_16;
      }

      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v16 > 0 || TimeZoneDisplayName <= 0)
  {
    swift_bridgeObjectRelease_n();
    v11 = 0;
    goto LABEL_16;
  }

  v11 = specialized String.init(_utf16:)(v5, TimeZoneDisplayName);
LABEL_14:
  swift_bridgeObjectRelease_n();
LABEL_16:
  swift_bridgeObjectRelease_n();
  return v11;
}

{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_retain_n();
  if (a1 < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v4 = &v9[-1] - v3;

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v4, v9);
    v5 = v9[0];
  }

  else
  {
    v7 = swift_slowAlloc();

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v7, v9);
    MEMORY[0x1865D2690](v7, -1, -1);

    return v9[0];
  }

  return v5;
}

{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_retain_n();
  if (a1 < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v4 = &v9[-1] - v3;

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v4, v9);
    v5 = v9[0];
  }

  else
  {
    v7 = swift_slowAlloc();

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v7, v9);
    MEMORY[0x1865D2690](v7, -1, -1);

    return v9[0];
  }

  return v5;
}

{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_retain_n();
  if (a1 < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v4 = &v9[-1] - v3;

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v4, v9);
    v5 = v9[0];
  }

  else
  {
    v7 = swift_slowAlloc();

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v7, v9);
    MEMORY[0x1865D2690](v7, -1, -1);

    return v9[0];
  }

  return v5;
}

uint64_t _SwiftURL.pathExtension.getter()
{
  v2 = _SwiftURL.isFileURL.getter();
  v3 = _SwiftURL.absolutePath(percentEncoded:)(1);
  if (v2)
  {
    Path = String._droppingTrailingSlashes.getter(v3._countAndFlagsBits, v3._object);
    v6 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v7 = static _SetStorage.allocate(capacity:)();
    v8 = v7 + 56;
    v9 = *(v7 + 40);
    v10 = byte_1EEED3AC8;
    v11 = 1;
    v12 = MEMORY[0x1865CD020](v9, byte_1EEED3AC8, 1);
    v13 = -1 << *(v7 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = *(v7 + 56 + 8 * (v14 >> 6));
    v17 = 1 << v14;
    v18 = *(v7 + 48);
    if (((1 << v14) & v16) != 0)
    {
      v19 = ~v13;
      while (*(v18 + v14) != v10)
      {
        v14 = (v14 + 1) & v19;
        v15 = v14 >> 6;
        v16 = *(v8 + 8 * (v14 >> 6));
        v17 = 1 << v14;
        if (((1 << v14) & v16) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      *(v8 + 8 * v15) = v17 | v16;
      *(v18 + v14) = v10;
      v20 = *(v7 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_99;
      }

      *(v7 + 16) = v22;
    }

    v23 = byte_1EEED3AC9;
    v11 = 1;
    v24 = MEMORY[0x1865CD020](v9, byte_1EEED3AC9, 1);
    v25 = -1 << *(v7 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v8 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v7 + 48);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      while (*(v30 + v26) != v23)
      {
        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v8 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        if (((1 << v26) & v28) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      *(v8 + 8 * v27) = v29 | v28;
      *(v30 + v26) = v23;
      v32 = *(v7 + 16);
      v21 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v21)
      {
        goto LABEL_99;
      }

      *(v7 + 16) = v33;
    }

    v34 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v34 = Path & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {

      v37 = 0;
LABEL_40:
      v38 = 0xE000000000000000;
      goto LABEL_41;
    }

    v114._countAndFlagsBits = Path;
    v114._object = v6;
    MEMORY[0x1EEE9AC00](v24);
    v104 = &v114;
    v105 = v7;
    v106 = 4;

    v35 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v103, Path, v6);
    if (v36 == 1)
    {
      v35 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(Path, v6, v7, 4);
    }

    v37 = v35;
    v38 = v36;

    if (v38)
    {
      goto LABEL_41;
    }

LABEL_39:
    v37 = 0;
    goto LABEL_40;
  }

  v39 = (v3._object >> 56) & 0xF;
  if ((*(*(v0 + 16) + 220) & 8) != 0)
  {
    if ((v3._object & 0x2000000000000000) == 0)
    {
      v39 = v3._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v114 = v3;
      MEMORY[0x1EEE9AC00](v3._countAndFlagsBits);
      v104 = &v114;
      v105 = MEMORY[0x1E69E7CD0];
      v106 = 4;
      v50 = v49;
      v43 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v103, v49, v3._object);
      if (v44 == 1)
      {
        v45 = MEMORY[0x1E69E7CD0];
        v46 = v50;
        object = v3._object;
        v48 = 4;
        goto LABEL_32;
      }

LABEL_35:
      v53 = v44;
      v51 = v43;
      goto LABEL_36;
    }

LABEL_33:

    v54 = 0;
    v53 = 0xE000000000000000;
    goto LABEL_38;
  }

  if ((v3._object & 0x2000000000000000) == 0)
  {
    v39 = v3._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_33;
  }

  v40 = *(v0 + 40);
  v114 = v3;
  MEMORY[0x1EEE9AC00](v3._countAndFlagsBits);
  v104 = &v114;
  v105 = MEMORY[0x1E69E7CD0];
  v106 = v40;
  v42 = v41;
  v43 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v103, v41, v3._object);
  if (v44 != 1)
  {
    goto LABEL_35;
  }

  v45 = MEMORY[0x1E69E7CD0];
  v46 = v42;
  object = v3._object;
  v48 = v40;
LABEL_32:
  v51 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v46, object, v45, v48);
  v53 = v52;
LABEL_36:

  if (!v53)
  {
    goto LABEL_39;
  }

  v54 = v51;
LABEL_38:
  v37 = String._droppingTrailingSlashes.getter(v54, v53);
  v38 = v55;

LABEL_41:
  Path = String._lastPathComponent.getter(v37, v38);
  v6 = v56;
  v57 = specialized BidirectionalCollection.last.getter(Path, v56);
  if ((v57 & 0x1FF) == 0x2E)
  {
    v58 = 0;
    goto LABEL_96;
  }

  LOBYTE(v114._countAndFlagsBits) = 46;
  MEMORY[0x1EEE9AC00](v57);
  v106 = &v114;

  v59 = specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v104, Path, v6);
  if (v60)
  {
    goto LABEL_95;
  }

  v7 = v59;
  if (v59 < 0x4000)
  {
    goto LABEL_95;
  }

  v11 = _StringGuts.validateSubscalarRange(_:)(0xFuLL, v59, Path, v6);
  v62 = v61;

  if (Substring.UTF8View.distance(from:to:)() != 1 && Substring.UTF8View.distance(from:to:)() != 2)
  {
    v110 = v38;
    v1 = v6 & 0x1000000000000000;
    v64 = Path & 0x800000000000000;
LABEL_77:
    v11 = String._lastPathComponent.getter(v37, v110);
    v8 = v72;

    if (v1)
    {
      v73 = v64 == 0;
    }

    else
    {
      v73 = 0;
    }

    v74 = !v73;
    if ((v7 & 0xC) == 4 << v74)
    {
      goto LABEL_100;
    }

    goto LABEL_84;
  }

  v108 = v7;
  v109 = v37;
  v63 = v62 >> 14;
  v7 = v11 >> 14;
  if (v11 >> 14 == v62 >> 14)
  {
    goto LABEL_94;
  }

  v110 = v38;
  v107 = 0;
  v1 = v6 & 0x1000000000000000;
  v64 = Path & 0x800000000000000;
  v65 = (Path >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v65) = 1;
  }

  v66 = 4 << v65;
  v111 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v112 = (v6 & 0xFFFFFFFFFFFFFFLL);
  v67 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v67 = Path & 0xFFFFFFFFFFFFLL;
  }

  v113 = v67;
  while (1)
  {
    v8 = v11 & 0xC;
    v68 = v11;
    if (v8 == v66)
    {
      v68 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, Path, v6);
    }

    if (v68 >> 14 < v7 || v68 >> 14 >= v63)
    {
      break;
    }

    if (v1)
    {
      v71 = String.UTF8View._foreignSubscript(position:)();
      if (v8 != v66)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v69 = v68 >> 16;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v114._countAndFlagsBits = Path;
        v114._object = v112;
        v71 = *(&v114._countAndFlagsBits + v69);
        if (v8 != v66)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v70 = v111;
        if ((Path & 0x1000000000000000) == 0)
        {
          v70 = _StringObject.sharedUTF8.getter();
        }

        v71 = *(v70 + v69);
        if (v8 != v66)
        {
LABEL_66:
          if (!v1)
          {
            goto LABEL_67;
          }

          goto LABEL_70;
        }
      }
    }

    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, Path, v6);
    if (!v1)
    {
LABEL_67:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_72;
    }

LABEL_70:
    if (v113 <= v11 >> 16)
    {
      goto LABEL_98;
    }

    v11 = String.UTF8View._foreignIndex(after:)();
LABEL_72:
    if (v71 != 46)
    {
      v7 = v108;
      v37 = v109;
      goto LABEL_77;
    }

    if (v63 == v11 >> 14)
    {
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  v7 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, Path, v6);
LABEL_84:

  if (!v1)
  {
    v76 = (v7 & 0xFFFFFFFFFFFF0000) + 65540;
    goto LABEL_86;
  }

  v102 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v102 = Path & 0xFFFFFFFFFFFFLL;
  }

  if (v102 <= v7 >> 16)
  {
    __break(1u);
    return result;
  }

  v76 = String.UTF8View._foreignIndex(after:)();
LABEL_86:
  v77 = specialized Collection.suffix(from:)(v76, v11, v8);
  v79 = v78;
  v81 = v80;
  v83 = v82;

  v58 = MEMORY[0x1865CAE80](v77, v79, v81, v83);
  v85 = v84;

  v86 = specialized BidirectionalCollection.last.getter(v58, v85);
  if ((v86 & 0x1FF) == 0x2E)
  {
    goto LABEL_95;
  }

  LOBYTE(v114._countAndFlagsBits) = 46;
  MEMORY[0x1EEE9AC00](v86);
  v106 = &v114;
  specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v104, v58, v85);
  if (v87)
  {
    if (specialized Sequence.allSatisfy(_:)(v58, v85))
    {
      goto LABEL_96;
    }

LABEL_95:

    v58 = 0;
    goto LABEL_96;
  }

  v114._countAndFlagsBits = String.subscript.getter();
  v114._object = v88;
  v115 = v89;
  v116 = v90;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v91 = String.init<A>(_:)();
  v93 = v92;
  v94 = String.index(after:)();
  v114._countAndFlagsBits = specialized Collection.suffix(from:)(v94, v58, v85);
  v114._object = v95;
  v115 = v96;
  v116 = v97;
  v98 = String.init<A>(_:)();
  v100 = v99;
  if (!specialized Sequence.allSatisfy(_:)(v91, v93))
  {

LABEL_94:

    goto LABEL_95;
  }

  v101 = specialized Sequence.allSatisfy(_:)(v98, v100);

  if ((v101 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_96:

  return v58;
}

Swift::Void __swiftcall URL.appendPathComponent(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *v1;
  v6 = v2[1];
  ObjectType = swift_getObjectType();
  (*(v6 + 344))(v9, countAndFlagsBits, object, ObjectType, v6);
  v8 = v9[0];
  if (v9[0])
  {
    v6 = v9[1];
    swift_unknownObjectRelease();
    v5 = v8;
  }

  *v2 = v5;
  v2[1] = v6;
}

void *one-time initialization function for dataSchemeUTF8()
{
  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(4, 0);
  *(result + 8) = 1635017060;
  static _SwiftURL.dataSchemeUTF8 = result;
  return result;
}

uint64_t URL.withUnsafeFileSystemRepresentation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  return (*(v7 + 296))(a1, a2, a3, ObjectType, v7);
}

uint64_t JSONDecoderImpl.KeyedContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

void __iop_setQueuePriority_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = (v1 + 232);
  os_unfair_lock_lock((v1 + 232));
  v4 = *(v1 + 32);
  if (v4)
  {
    os_unfair_lock_unlock((v1 + 232));
    v3 = v4 + 2;
    os_unfair_lock_lock(v4 + 2);
    v5 = *(v1 + 238);
    if (v5 != 255)
    {
      goto LABEL_5;
    }

    if (v4[42]._os_unfair_lock_opaque == 1)
    {
      v5 = 0;
      goto LABEL_5;
    }

    property_qos = op_get_property_qos(v1);
    v5 = 0;
    if (property_qos <= 16)
    {
      if ((property_qos + 1) < 2)
      {
        goto LABEL_5;
      }

      if (property_qos == 5 || property_qos == 9)
      {
        v5 = 248;
        goto LABEL_5;
      }

LABEL_34:
      __break(1u);
      return;
    }

    if (property_qos > 24)
    {
      if (property_qos == 25)
      {
        v5 = 4;
      }

      else
      {
        if (property_qos != 33)
        {
          goto LABEL_34;
        }

        v5 = 8;
      }
    }

    else if (property_qos == 17)
    {
      v5 = 252;
    }

    else if (property_qos != 21)
    {
      goto LABEL_34;
    }

LABEL_5:
    if (v5 != v2)
    {
      v6 = 0;
      *(v1 + 238) = v2;
      v7 = ((v5 + ((v5 >> 13) & 3)) >> 2) + 2;
      v8 = *&v4[2 * v7 + 8]._os_unfair_lock_opaque;
      while (v8)
      {
        v9 = v6;
        v6 = v8;
        v8 = *&v8[6]._os_unfair_lock_opaque;
        if (v6 == v1)
        {
          v10 = v9 + 6;
          if (!v9)
          {
            v10 = &v4[2 * v7 + 8];
          }

          *&v10->_os_unfair_lock_opaque = v8;
          if (!v8)
          {
            *&v4[2 * v7 + 20]._os_unfair_lock_opaque = v9;
          }

          *(v1 + 24) = 0;
          v11 = 8 * (((v2 + ((v2 >> 13) & 3)) << 24) >> 26) + 16;
          v12 = v4 + v11;
          v13 = *(&v4[20]._os_unfair_lock_opaque + v11);
          v14 = (&v4[8] + v11);
          if (v13)
          {
            v14 = (v13 + 24);
          }

          *v14 = v1;
          *(v12 + 10) = v1;
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

  *(v1 + 238) = v2;
LABEL_17:

  os_unfair_lock_unlock(v3);
}

uint64_t specialized JSONDecoderImpl.unwrapData<A>(from:for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = a8;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v152 = *MEMORY[0x1E69E9840];
  v15 = a3 >> 5;
  v16 = v15 == 5 && (a2 | a1) == 0;
  if (v16 && a3 == 160)
  {
    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v25 = v24;
    *v24 = &type metadata for Data;
    v26 = _CodingPathNode.path.getter(v11);
    if (v10 != 0xFF)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v28 = swift_allocObject();
      *(inited + 32) = v28;
      *(v28 + 16) = a5;
      *(v28 + 24) = a6;
      *(v28 + 32) = a7;
      *(v28 + 40) = v10;
      v148 = v26;
      outlined copy of _CodingKey(a5, a6, a7, v10);
      specialized Array.append<A>(contentsOf:)(inited);
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd) + 48);
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](1635017028, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B08], v23);
    goto LABEL_39;
  }

  v17 = v8[8];
  v142 = v8;
  if (v17)
  {
    if (v17 == 1)
    {
      if (a3 <= 0x1Fu)
      {
        if (a3)
        {
          v131 = a8;
          v17 = *(v8[4] + 24);
          MEMORY[0x1EEE9AC00](a1);

          os_unfair_lock_lock((v17 + 40));
          partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v17 + 16));
          if (v9)
          {
LABEL_286:
            os_unfair_lock_unlock((v17 + 40));

            __break(1u);
            return result;
          }

          os_unfair_lock_unlock((v17 + 40));

          v18 = v148;
          v19 = v149;
          if (v149 >> 60 != 15)
          {
            return v148;
          }

          v20 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v14, v13, v12, a4, a5, a6, a7, v131);
          v22 = v21;
        }

        else
        {
          v20 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
          if (v9)
          {
            return v15;
          }

          v22 = v53;
          v18 = 0;
          v19 = 0xF000000000000000;
        }

        v127 = _s10Foundation6Base64O6decode6string7optionsAA4DataVSS_So06NSDataB15DecodingOptionsVtAC0H5ErrorOYKFZ(v20, v22, 0);

        outlined consume of Data?(v18, v19);
        return v127;
      }

      v35 = ~a8;
      v36 = _CodingPathNode.path.getter(a4);
      if (v35)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v37 = v10;
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_181218E20;
        *(v38 + 56) = &type metadata for _CodingKey;
        *(v38 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v39 = swift_allocObject();
        *(v38 + 32) = v39;
        *(v39 + 16) = a5;
        *(v39 + 24) = a6;
        *(v39 + 32) = a7;
        *(v39 + 40) = v37;
        v148 = v36;
        outlined copy of _CodingKey(a5, a6, a7, v37);
        specialized Array.append<A>(contentsOf:)(v38);
      }

      v40 = type metadata accessor for DecodingError();
      swift_allocError();
      v42 = v41;
      *v41 = MEMORY[0x1E69E6158];
      _StringGuts.grow(_:)(43);

      v148 = 0xD000000000000024;
      v149 = 0x8000000181481E20;
      v43 = 0xE600000000000000;
      v44 = 0x7265626D756ELL;
      v45 = 0xEC0000007972616ELL;
      v46 = 0x6F69746369642061;
      v47 = 0xE800000000000000;
      v48 = 0x7961727261206E61;
      if (v15 != 4)
      {
        v48 = 1819047278;
        v47 = 0xE400000000000000;
      }

      if (v15 != 3)
      {
        v46 = v48;
        v45 = v47;
      }

      if (v15 != 1)
      {
        v44 = 1819242338;
        v43 = 0xE400000000000000;
      }

      if (v15 <= 2)
      {
        v49 = v44;
      }

      else
      {
        v49 = v46;
      }

      if (v15 <= 2)
      {
        v50 = v43;
      }

      else
      {
        v50 = v45;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v49, v50);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
LABEL_39:
      swift_willThrow();
      return v15;
    }

    v132 = v9;
    if (a8 == 0xFF)
    {
      v128 = v8[20];
      v15 = v128 & 0x3FFFFFFFFFFFFFFFLL;

      swift_retain_n();
      goto LABEL_62;
    }

    v32 = a8;
    v10 = swift_allocObject();
    v10[5] = &type metadata for _CodingKey;
    v10[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v33 = swift_allocObject();
    v10[2] = v33;
    *(v33 + 16) = a5;
    *(v33 + 24) = a6;
    *(v33 + 32) = a7;
    LOBYTE(v15) = v32;
    *(v33 + 40) = v32;
    v10[7] = v11;
    if (v11 >> 62)
    {
      if (v11 >> 62 != 1)
      {
        v64 = 1;
        goto LABEL_61;
      }

      v34 = ((v11 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_60;
    }

LABEL_59:
    v34 = (v11 + 64);
LABEL_60:
    v63 = *v34;

    v64 = v63 + 1;
    if (!__OFADD__(v63, 1))
    {
LABEL_61:
      v10[8] = v64;
      v8 = v142;
      v128 = *(v142 + 160);

      v11 = v10;
      LOBYTE(v10) = v15;
      v15 = v128 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_62:
      v8[20] = v11;
      outlined copy of _CodingKey?(a5, a6, a7, v10);
      sub_1807A98E4(v17);

      v65 = v8[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8[2] = v65;
      v133 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
        *(v142 + 16) = v65;
      }

      v68 = *(v65 + 2);
      v67 = *(v65 + 3);
      if (v68 >= v67 >> 1)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v65);
      }

      *(v65 + 2) = v68 + 1;
      v69 = &v65[24 * v68];
      *(v69 + 4) = v14;
      *(v69 + 5) = v13;
      v69[48] = v12;
      *(v142 + 16) = v65;
      v150 = type metadata accessor for JSONDecoderImpl();
      v151 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
      v148 = v142;

      v70 = (v17)(&v148);
      if (!v132)
      {
        v15 = v70;
        __swift_destroy_boxed_opaque_existential_1(&v148);
        *(v142 + 160) = v128;

        v12 = *(v142 + 16);
        v59 = v11;
        if (*(v12 + 16))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v73 = *(v12 + 16);
            if (!v73)
            {
LABEL_249:
              __break(1u);
LABEL_250:
              v147 = xmmword_181234410;
              __break(1u);
LABEL_251:
              v147 = xmmword_181234410;
              __break(1u);
              goto LABEL_252;
            }

LABEL_76:
            *(v12 + 16) = v73 - 1;
            *(v142 + 16) = v12;
            sub_1807A5C7C(v17);
            outlined consume of _CodingPathNode?(v59);

            return v15;
          }

LABEL_248:
          v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
          v73 = *(v12 + 16);
          if (!v73)
          {
            goto LABEL_249;
          }

          goto LABEL_76;
        }

LABEL_247:
        __break(1u);
        goto LABEL_248;
      }

      __swift_destroy_boxed_opaque_existential_1(&v148);
      *(v142 + 160) = v128;

      v12 = *(v142 + 16);
      v59 = v11;
      if (*(v12 + 16))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v71 = *(v12 + 16);
          if (v71)
          {
LABEL_70:
            *(v12 + 16) = v71 - 1;
            *(v142 + 16) = v12;
            sub_1807A5C7C(v17);
            outlined consume of _CodingPathNode?(v59);
            goto LABEL_71;
          }

          goto LABEL_244;
        }

LABEL_243:
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
        v71 = *(v12 + 16);
        if (v71)
        {
          goto LABEL_70;
        }

LABEL_244:
        __break(1u);
LABEL_245:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_246:
        v147 = xmmword_181234410;
        __break(1u);
        goto LABEL_247;
      }

LABEL_242:
      __break(1u);
      goto LABEL_243;
    }

    __break(1u);
    goto LABEL_79;
  }

  v132 = v9;
  if (a8 == 0xFF)
  {
    v51 = -1;
    v52 = v8;
    v130 = v8[20];

    swift_retain_n();
    goto LABEL_47;
  }

  v29 = swift_allocObject();
  v29[5] = &type metadata for _CodingKey;
  v29[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v30 = swift_allocObject();
  v29[2] = v30;
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;
  *(v30 + 32) = a7;
  *(v30 + 40) = v10;
  v29[7] = v11;
  if (!(v11 >> 62))
  {
    v31 = (v11 + 64);
LABEL_45:
    v54 = *v31;

    v55 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_46;
  }

  if (v11 >> 62 == 1)
  {
    v31 = ((v11 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_45;
  }

  v55 = 1;
LABEL_46:
  v51 = v10;
  v29[8] = v55;
  v52 = v142;
  v130 = *(v142 + 160);

  v11 = v29;
LABEL_47:
  v133 = v11;
  v52[20] = v11;
  outlined copy of _CodingKey?(a5, a6, a7, v51);

  v17 = v52[2];
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v52[2] = v17;
  if ((v56 & 1) == 0)
  {
LABEL_233:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
    *(v142 + 16) = v17;
  }

  v15 = *(v17 + 16);
  v57 = *(v17 + 24);
  if (v15 >= v57 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v15 + 1, 1, v17);
  }

  *(v17 + 16) = v15 + 1;
  v58 = v17 + 24 * v15;
  *(v58 + 32) = v14;
  *(v58 + 40) = v13;
  *(v58 + 48) = v12;
  *(v142 + 16) = v17;
  JSONDecoderImpl.unkeyedContainer()(&v148);
  v10 = v132;
  if (v132)
  {
LABEL_51:
    *(v142 + 160) = v130;

    v59 = *(v142 + 16);
    if (*(v59 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v60 = *(v59 + 16);
        if (v60)
        {
LABEL_54:
          *(v59 + 16) = v60 - 1;
          *(v142 + 16) = v59;
          outlined consume of _CodingPathNode?(v133);
LABEL_71:

          return v15;
        }

LABEL_241:
        __break(1u);
        goto LABEL_242;
      }
    }

    else
    {
LABEL_239:
      __break(1u);
    }

    v59 = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
    v60 = *(v59 + 16);
    if (v60)
    {
      goto LABEL_54;
    }

    goto LABEL_241;
  }

  __swift_project_boxed_opaque_existential_1(&v148, v150);
  v61 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
  if (v62)
  {
    v15 = 0;
    v147 = xmmword_181234410;
    goto LABEL_220;
  }

LABEL_79:
  v132 = v61;
  v74 = specialized Data.init(count:)();
  v76 = v132;
  *&v147 = v74;
  *(&v147 + 1) = v75;
  if (v132 < 0)
  {
    goto LABEL_255;
  }

  v15 = v74;
  v77 = v75;
  if (!v132)
  {
    goto LABEL_220;
  }

  v13 = 0;
  do
  {
    v78 = v77;
    v14 = *(&v147 + 1);
    v12 = v147;
    v129 = v78;
    while (1)
    {
      if (v13 >= v76)
      {
        *&v147 = v12;
        *(&v147 + 1) = v14;
        __break(1u);
LABEL_232:
        *&v147 = v12;
        *(&v147 + 1) = v14;
        __break(1u);
        goto LABEL_233;
      }

      if (__OFADD__(v13, 1))
      {
        goto LABEL_232;
      }

      v138 = v13 + 1;
      v140 = v15;
      v15 = v150;
      v17 = v151;
      __swift_mutable_project_boxed_opaque_existential_1(&v148, v150);
      v84 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if (v10)
      {
        *&v147 = v12;
        *(&v147 + 1) = v14;
        outlined consume of Data._Representation(v140, v78);
        __swift_destroy_boxed_opaque_existential_1(&v148);
        goto LABEL_51;
      }

      v15 = v140;
      v136 = v84;
      if ((v78 >> 62) <= 1)
      {
        break;
      }

      if (v78 >> 62 != 2)
      {
        *&v147 = v12;
        *(&v147 + 1) = v14;
        __break(1u);
LABEL_270:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_271:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_272:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_273:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_274:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_275:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_276:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_277:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_278:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_279:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_280:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_281:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_282:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_283:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_284:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_285:
        v147 = xmmword_181234410;
        __break(1u);
        goto LABEL_286;
      }

      v59 = v78 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v140, v78);
      outlined consume of Data._Representation(0, 0xC000000000000000);
      if (v13 < *(v140 + 16))
      {
        v147 = xmmword_181234410;
        __break(1u);
LABEL_235:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_236:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_237:
        v147 = xmmword_181234410;
        __break(1u);
LABEL_238:
        v147 = xmmword_181234410;
        __break(1u);
        goto LABEL_239;
      }

      if (v13 >= *(v140 + 24))
      {
        goto LABEL_236;
      }

      v85 = v78 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v140 + 16);
        v90 = *(v140 + 24);
        v91 = *((v78 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (v91)
        {
          v92 = *((v78 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v81 = __OFSUB__(v17, v92);
          v93 = v17 - v92;
          if (v81)
          {
            goto LABEL_251;
          }

          v94 = v93 + v91;
          v12 = v90 - v17;
          if (__OFSUB__(v90, v17))
          {
            goto LABEL_245;
          }
        }

        else
        {
          v94 = 0;
          v12 = v90 - v17;
          if (__OFSUB__(v90, v17))
          {
            goto LABEL_245;
          }
        }

        type metadata accessor for __DataStorage();
        v99 = swift_allocObject();
        *(v99 + 16) = 0;
        v15 = v99 + 16;
        *(v99 + 48) = 0;
        *(v99 + 56) = 0;
        if (v12 > 0x3FFFFFFFFFFFFFFELL)
        {
          goto LABEL_246;
        }

        v85 = v99;
        *(v99 + 40) = v17;
        if (v12)
        {
          if (one-time initialization token for vmOpsThreshold != -1)
          {
            swift_once();
          }

          if (v12 >= static __DataStorage.vmOpsThreshold)
          {
            *(v85 + 24) = v12;
            *(v85 + 32) = v12;
            *(v85 + 64) = 1;
            LODWORD(v143) = 0;
            _So30malloc_type_layout_semantics_ta_generic_data_setter(&v143 + 1);
            v110 = malloc_type_malloc(v12, v143 << 32);
            if (!v110)
            {
              goto LABEL_278;
            }

            v17 = v110;
            *v15 = v110;
            if (one-time initialization token for _pageSize != -1)
            {
              swift_once();
            }

            v111 = _pageSize - 1;
            v15 = v140;
            if (__OFSUB__(_pageSize, 1))
            {
              goto LABEL_259;
            }

            if ((v111 & (v94 | v17)) == 0)
            {
              if (!v94)
              {
                goto LABEL_285;
              }

              v112 = v12 & ~v111;
              v113 = _platform_mach_task_self();
              if ((v112 & 0x8000000000000000) != 0)
              {
                goto LABEL_266;
              }

              if (vm_copy(v113, v94, v112, v17))
              {
                memmove(v17, v94, v112);
              }

              v81 = __OFSUB__(v12, v112);
              v12 -= v112;
              if (v81)
              {
                goto LABEL_267;
              }

              v94 += v112;
              v17 += v112;
              v15 = v140;
            }

            if (v12 >= 1)
            {
              if (!v94)
              {
                goto LABEL_283;
              }

              v100 = v17;
LABEL_178:
              memmove(v100, v94, v12);
            }
          }

          else
          {
            *(v85 + 24) = v12;
            LODWORD(v143) = 0;
            _So30malloc_type_layout_semantics_ta_generic_data_setter(&v143 + 1);
            v100 = malloc_type_malloc(v12, v143 << 32);
            if (!v100)
            {
              goto LABEL_279;
            }

            *(v85 + 16) = v100;
            *(v85 + 32) = v12;
            *(v85 + 64) = 1;
            v15 = v140;
            if (v12 >= 1)
            {
              if (!v94)
              {
                goto LABEL_282;
              }

              goto LABEL_178;
            }
          }
        }

        else
        {
          *(v99 + 64) = 0;
          *(v99 + 24) = 0;
          *(v99 + 32) = 0;
          *v15 = 0;
          v15 = v140;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v12 = v15;
        if (*(v85 + 32))
        {
          goto LABEL_84;
        }
      }

      else
      {
        v59 = *(v15 + 16);
        v114 = *(v15 + 24);
        type metadata accessor for Data.RangeReference();
        v12 = swift_allocObject();
        *(v12 + 16) = v59;
        *(v12 + 24) = v114;

        if (*(v85 + 32))
        {
LABEL_84:
          v79 = *(v85 + 16);
          if (!v79)
          {
            goto LABEL_271;
          }

          goto LABEL_85;
        }
      }

      v115 = malloc_good_size(*(v85 + 24));
      LODWORD(v143) = 0;
      _So30malloc_type_layout_semantics_ta_generic_data_setter(&v143 + 1);
      v141 = v115;
      v116 = malloc_type_malloc(v115, v143 << 32);
      if (!v116)
      {
        goto LABEL_275;
      }

      v59 = *(v85 + 16);
      if (!v59)
      {
        goto LABEL_274;
      }

      v79 = v116;
      v17 = *(v85 + 24);
      if (one-time initialization token for vmOpsThreshold != -1)
      {
        swift_once();
      }

      if (v17 >= static __DataStorage.vmOpsThreshold)
      {
        if (one-time initialization token for _pageSize != -1)
        {
          swift_once();
        }

        v15 = _pageSize - 1;
        if (__OFSUB__(_pageSize, 1))
        {
          goto LABEL_257;
        }

        if ((v15 & (v59 | v79)) == 0)
        {
          v124 = _platform_mach_task_self();
          v15 = v17 & ~v15;
          if (v15 < 0 != v81)
          {
            goto LABEL_262;
          }

          if (vm_copy(v124, v59, v15, v79))
          {
            memmove(v79, v59, v15);
          }

          v81 = __OFSUB__(v17, v15);
          v17 -= v15;
          if (v81)
          {
            goto LABEL_263;
          }

          v59 += v15;
          v117 = (v79 + v15);
          if (v17 < 1)
          {
            goto LABEL_193;
          }

LABEL_192:
          memmove(v117, v59, v17);
          goto LABEL_193;
        }
      }

      v117 = v79;
      if (v17 >= 1)
      {
        goto LABEL_192;
      }

LABEL_193:
      v118 = *(v85 + 16);
      if (v118)
      {
        v15 = *(v85 + 48);
        if (v15)
        {
          v59 = *(v85 + 56);
          v17 = *(v85 + 24);

          (v15)(v118, v17);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v15);
        }

        else
        {
          free(*(v85 + 16));
        }
      }

      v121 = *(v85 + 48);
      *(v85 + 48) = 0;
      *(v85 + 56) = 0;
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v121);
      *(v85 + 16) = v79;
      *(v85 + 32) = v141;
      *(v85 + 64) = 0;
LABEL_85:
      v80 = *(v85 + 40);
      v81 = __OFSUB__(v13, v80);
      v82 = v13 - v80;
      if (v81)
      {
        goto LABEL_238;
      }

      v83 = 0x8000000000000000;
      v15 = v12;
LABEL_87:
      *(v79 + v82) = v136;
      v14 = v83 | v85;
      ++v13;
      v78 = v14;
      v76 = v132;
      if (v138 == v132)
      {
        *&v147 = v12;
        *(&v147 + 1) = v14;
        v15 = v12;
        goto LABEL_220;
      }
    }

    if (v78 >> 62 == 1)
    {
      v59 = v78 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v140, v78);
      outlined consume of Data._Representation(0, 0xC000000000000000);
      v12 = v140 >> 32;
      if (v13 >= v140 >> 32)
      {
        goto LABEL_235;
      }

      v17 = v140;
      if (v13 < v140)
      {
        goto LABEL_235;
      }

      v85 = v78 & 0x3FFFFFFFFFFFFFFFLL;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_147:
        if (*(v85 + 32))
        {
          v79 = *(v85 + 16);
          if (!v79)
          {
            goto LABEL_270;
          }

          goto LABEL_198;
        }

        v12 = malloc_good_size(*(v85 + 24));
        LODWORD(v143) = 0;
        _So30malloc_type_layout_semantics_ta_generic_data_setter(&v143 + 1);
        v105 = malloc_type_malloc(v12, v143 << 32);
        if (!v105)
        {
          goto LABEL_272;
        }

        v59 = *(v85 + 16);
        if (!v59)
        {
          goto LABEL_273;
        }

        v79 = v105;
        v17 = *(v85 + 24);
        if (one-time initialization token for vmOpsThreshold != -1)
        {
          swift_once();
        }

        if (v17 < static __DataStorage.vmOpsThreshold)
        {
          goto LABEL_159;
        }

        if (one-time initialization token for _pageSize != -1)
        {
          swift_once();
        }

        v106 = _pageSize - 1;
        if (__OFSUB__(_pageSize, 1))
        {
          goto LABEL_256;
        }

        if ((v106 & (v59 | v79)) != 0)
        {
LABEL_159:
          v107 = v79;
          if (v17 < 1)
          {
LABEL_161:
            v108 = *(v85 + 16);
            if (v108)
            {
              v109 = *(v85 + 48);
              if (v109)
              {
                v59 = *(v85 + 56);
                v17 = *(v85 + 24);

                v109(v108, v17);
                outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v109);
              }

              else
              {
                free(*(v85 + 16));
              }
            }

            v119 = *(v85 + 48);
            *(v85 + 48) = 0;
            *(v85 + 56) = 0;
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v119);
            *(v85 + 16) = v79;
            *(v85 + 32) = v12;
            *(v85 + 64) = 0;
            v15 = v140;
LABEL_198:
            v120 = *(v85 + 40);
            v81 = __OFSUB__(v13, v120);
            v82 = v13 - v120;
            if (v81)
            {
              goto LABEL_237;
            }

            v83 = 0x4000000000000000;
            v12 = v15;
            goto LABEL_87;
          }
        }

        else
        {
          v122 = _platform_mach_task_self();
          v123 = v17 & ~v106;
          if (v123 < 0 != v81)
          {
            goto LABEL_260;
          }

          if (vm_copy(v122, v59, v123, v79))
          {
            memmove(v79, v59, v123);
          }

          v81 = __OFSUB__(v17, v123);
          v17 -= v123;
          if (v81)
          {
LABEL_261:
            v147 = xmmword_181234410;
            __break(1u);
LABEL_262:
            v147 = xmmword_181234410;
            __break(1u);
LABEL_263:
            v147 = xmmword_181234410;
            __break(1u);
LABEL_264:
            v147 = xmmword_181234410;
            __break(1u);
LABEL_265:
            v147 = xmmword_181234410;
            __break(1u);
LABEL_266:
            v147 = xmmword_181234410;
            __break(1u);
LABEL_267:
            v147 = xmmword_181234410;
            __break(1u);
LABEL_268:
            __break(1u);
          }

          v59 += v123;
          v107 = (v79 + v123);
          if (v17 < 1)
          {
            goto LABEL_161;
          }
        }

        memmove(v107, v59, v17);
        goto LABEL_161;
      }

      v86 = *((v78 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (v86)
      {
        v87 = *((v78 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v81 = __OFSUB__(v140, v87);
        v88 = v140 - v87;
        if (v81)
        {
          goto LABEL_250;
        }

        v89 = v88 + v86;
      }

      else
      {
        v89 = 0;
      }

      v12 -= v140;
      type metadata accessor for __DataStorage();
      v95 = swift_allocObject();
      v85 = v95;
      *(v95 + 16) = 0;
      v96 = (v95 + 16);
      *(v95 + 48) = 0;
      *(v95 + 56) = 0;
      *(v95 + 40) = v140;
      if (!v12)
      {
        *(v95 + 64) = 0;
        *(v95 + 24) = 0;
        *(v95 + 32) = 0;
        *v96 = 0;
        v15 = v140;
LABEL_146:

        goto LABEL_147;
      }

      v97 = one-time initialization token for vmOpsThreshold;

      if (v97 != -1)
      {
        swift_once();
      }

      if (v12 >= static __DataStorage.vmOpsThreshold)
      {
        *(v85 + 24) = v12;
        *(v85 + 32) = v12;
        *(v85 + 64) = 1;
        LODWORD(v143) = 0;
        _So30malloc_type_layout_semantics_ta_generic_data_setter(&v143 + 1);
        v101 = malloc_type_malloc(v12, v143 << 32);
        if (!v101)
        {
          goto LABEL_276;
        }

        v17 = v101;
        *v96 = v101;
        if (one-time initialization token for _pageSize != -1)
        {
          swift_once();
        }

        v102 = _pageSize - 1;
        v15 = v140;
        if (__OFSUB__(_pageSize, 1))
        {
          goto LABEL_258;
        }

        if ((v102 & (v89 | v17)) == 0)
        {
          if (!v89)
          {
            goto LABEL_284;
          }

          v103 = v12 & ~v102;
          v104 = _platform_mach_task_self();
          if ((v103 & 0x8000000000000000) != 0)
          {
            goto LABEL_264;
          }

          if (vm_copy(v104, v89, v103, v17))
          {
            memmove(v17, v89, v103);
          }

          v81 = __OFSUB__(v12, v103);
          v12 -= v103;
          if (v81)
          {
            goto LABEL_265;
          }

          v89 += v103;
          v17 += v103;
          v15 = v140;
        }

        if (v12 < 1)
        {
          goto LABEL_145;
        }

        if (!v89)
        {
          goto LABEL_280;
        }

        v98 = v17;
      }

      else
      {
        *(v85 + 24) = v12;
        LODWORD(v143) = 0;
        _So30malloc_type_layout_semantics_ta_generic_data_setter(&v143 + 1);
        v98 = malloc_type_malloc(v12, v143 << 32);
        if (!v98)
        {
          goto LABEL_277;
        }

        *(v85 + 16) = v98;
        *(v85 + 32) = v12;
        *(v85 + 64) = 1;
        v15 = v140;
        if (v12 < 1)
        {
          goto LABEL_145;
        }

        if (!v89)
        {
          goto LABEL_281;
        }
      }

      memmove(v98, v89, v12);
LABEL_145:

      goto LABEL_146;
    }

    *&v147 = v12;
    *(&v147 + 1) = v14;
    v17 = v140 >> 24;
    outlined consume of Data._Representation(v140, v78);
    v143 = v140;
    LOWORD(v144) = v78;
    BYTE2(v144) = BYTE2(v78);
    HIBYTE(v144) = BYTE3(v78);
    LOBYTE(v145) = BYTE4(v78);
    HIBYTE(v145) = BYTE5(v78);
    v146 = BYTE6(v78);
    if (v13 >= BYTE6(v78))
    {
      goto LABEL_268;
    }

    *(&v143 + v13) = v136;
    v15 = v143;
    v77 = v129 & 0xF00000000000000 | v144 | ((v145 | (v146 << 16)) << 32);
    *&v147 = v143;
    *(&v147 + 1) = v77;
    v76 = v132;
    ++v13;
  }

  while (v138 != v132);
LABEL_220:
  __swift_project_boxed_opaque_existential_1(&v148, v150);
  if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
  {
    goto LABEL_225;
  }

  v15 = &v143;
  do
  {
    v12 = v151;
    __swift_mutable_project_boxed_opaque_existential_1(&v148, v150);
    v125 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(&v148);
      outlined consume of Data._Representation(v147, *(&v147 + 1));
      goto LABEL_51;
    }

    LOBYTE(v143) = v125;
    Data._Representation.append(contentsOf:)(&v143, &v143 + 1);
    __swift_project_boxed_opaque_existential_1(&v148, v150);
  }

  while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
  v15 = v147;
LABEL_225:
  __swift_destroy_boxed_opaque_existential_1(&v148);
  *(v142 + 160) = v130;

  v59 = *(v142 + 16);
  if (!*(v59 + 16))
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v126 = *(v59 + 16);
    if (v126)
    {
      goto LABEL_228;
    }

LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    v147 = xmmword_181234410;
    __break(1u);
LABEL_257:
    v147 = xmmword_181234410;
    __break(1u);
LABEL_258:
    v147 = xmmword_181234410;
    __break(1u);
LABEL_259:
    v147 = xmmword_181234410;
    __break(1u);
LABEL_260:
    v147 = xmmword_181234410;
    __break(1u);
    goto LABEL_261;
  }

LABEL_253:
  v59 = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
  v126 = *(v59 + 16);
  if (!v126)
  {
    goto LABEL_254;
  }

LABEL_228:
  *(v59 + 16) = v126 - 1;
  *(v142 + 16) = v59;
  outlined consume of _CodingPathNode?(v133);

  return v15;
}

uint64_t type metadata instantiation function for Measurement()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v39 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v41 = v8;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = v25[1];
      v44 = *v25;
      v27 = *(v8 + 56) + 24 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if ((v42 & 1) == 0)
      {

        a5(v28, v29, v30);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v44;
      v19[1] = v26;
      v20 = *(v10 + 56) + 24 * v18;
      *v20 = v28;
      *(v20 + 8) = v29;
      *(v20 + 16) = v30;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v43;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_33;
    }

    v38 = 1 << *(v8 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t destructiveInjectEnumTag for JSONDecoder.DateDecodingStrategy(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void static TimeZone.current.getter(void *a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 16);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v5);
    v4 = v5[0];
    v3 = v5[1];
    *(v2 + 16) = v5[0];
    *(v2 + 24) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 120));
  *a1 = v4;
  a1[1] = v3;
}

Swift::Int __swiftcall TimeZone.secondsFromGMT(for:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v7 = v3;
  return (*(v4 + 40))(&v7, ObjectType, v4);
}

uint64_t specialized stringViewContainsDecimalSeparator #1 <A>(at:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a2;
  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a3) & 0xF;
  }

  else
  {
    result = a2 & 0xFFFFFFFFFFFFLL;
  }

  do
  {
    if (!result)
    {
      return 1;
    }

    v10 = 0;
    v11 = (a4 >> 59) & 1;
    if ((a5 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v12 = a4 & 0xFFFFFFFFFFFFLL;
    }

    v13 = 4 << v11;
    v14 = (v7 >> 59) & 1;
    if ((a3 & 0x1000000000000000) == 0)
    {
      LOBYTE(v14) = 1;
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
      v15 = v8;
    }

    else
    {
      v15 = v7 & 0xFFFFFFFFFFFFLL;
    }

    v26 = result - 1;
    v27 = 4 << v14;
    v8 = 4;
    v28 = v7;
    while (1)
    {
      v16 = a1;
      if ((a1 & 0xC) == v13)
      {
        v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a4, a5);
        if ((a5 & 0x1000000000000000) != 0)
        {
LABEL_25:
          v18 = MEMORY[0x1865CB180](v16, v10, a4, a5);
          if ((a3 & 0x1000000000000000) != 0)
          {
            goto LABEL_23;
          }

          goto LABEL_26;
        }
      }

      else if ((a5 & 0x1000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v17 = v10 + (v16 >> 16);
      if (__OFADD__(v10, v16 >> 16))
      {
        goto LABEL_55;
      }

      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v12 < v17)
      {
        goto LABEL_58;
      }

      v18 = (v17 << 16) | 4;
      if ((a3 & 0x1000000000000000) != 0)
      {
LABEL_23:
        v7 = MEMORY[0x1865CB180](15, v10, v7, a3);
        goto LABEL_27;
      }

LABEL_26:
      v7 = v8;
      if (v15 < v10)
      {
        goto LABEL_57;
      }

LABEL_27:
      if ((v18 & 0xC) == v13)
      {
        v18 = _StringGuts._slowEnsureMatchingEncoding(_:)(v18, a4, a5);
      }

      v19 = v18 >> 16;
      if (v18 >> 16 >= v12)
      {
        break;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v21 = String.UTF8View._foreignSubscript(position:)();
      }

      else if ((a5 & 0x2000000000000000) != 0)
      {
        v31 = a4;
        v32 = a5 & 0xFFFFFFFFFFFFFFLL;
        v21 = *(&v31 + v19);
      }

      else
      {
        v20 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter();
        }

        v21 = *(v20 + v19);
      }

      if ((v7 & 0xC) == v27)
      {
        v7 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, v28, a3);
      }

      v22 = v7 >> 16;
      if (v7 >> 16 >= v15)
      {
        goto LABEL_54;
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v7 = v28;
        v24 = String.UTF8View._foreignSubscript(position:)();
      }

      else if ((a3 & 0x2000000000000000) != 0)
      {
        v7 = v28;
        v31 = v28;
        v32 = a3 & 0xFFFFFFFFFFFFFFLL;
        v24 = *(&v31 + v22);
      }

      else
      {
        v23 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v7 = v28;
        if ((v28 & 0x1000000000000000) == 0)
        {
          v23 = _StringObject.sharedUTF8.getter();
        }

        v24 = *(v23 + v22);
      }

      v25 = v21 == v24;
      result = v25;
      if (v25)
      {
        v8 += 0x10000;
        v25 = v26 == v10++;
        if (!v25)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    result = String.UTF8View._foreignCount()();
  }

  while ((result & 0x8000000000000000) == 0);
  __break(1u);
  return result;
}

unint64_t *specialized Collection.formIndex(_:offsetBy:)(unint64_t *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = *result;
  v5 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((*result & 0xC) != 4 << v5)
  {
    if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v15 = result;
    v9 = MEMORY[0x1865CB180](v4, a2, a3);
    result = v15;
    goto LABEL_11;
  }

  v10 = result;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(*result, a3, a4);
  a2 = v11;
  a3 = v12;
  a4 = v13;
  v4 = v14;
  result = v10;
  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v6 = __OFADD__(a2, v4 >> 16);
  v7 = a2 + (v4 >> 16);
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 >= v7)
  {
    v9 = (v7 << 16) | 4;
LABEL_11:
    *result = v9;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t specialized $defer #1 <A>() in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  result = *a3;
  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((*a3 & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
    a2 = v6;
    a3 = v7;
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_5:
    result = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_6:
    *a3 = result;
    return result;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 > result >> 16)
  {
    v9 = a3;
    result = String.UTF8View._foreignIndex(after:)();
    a3 = v9;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void _NSCStringToDecimal(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = [[NSString alloc] initWithCString:a1 encoding:4];
  v7[0] = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  _NSStringToDecimal(v6, v7, a3);
  *a2 = a1 + v7[0];
}

uint64_t _NSStringToDecimal(void *a1, void *a2, uint64_t a3)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(v5, v6, 0x2EuLL, 0xE100000000000000, 0, v11);
  if (v14)
  {
    *a2 = 0;
  }

  else
  {
    v7 = v11[0];
    v8 = v11[1];
    v9 = v12;
    *a2 = v13;
    *a3 = v7;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal._divide(by:)(Swift::tuple_result_NSDecimal_remainder_UInt16 *__return_ptr retstr, Swift::UInt16 by)
{
  v6 = v4;
  v7 = v3;
  v8 = v2;
  NSDecimal.asVariableLengthInteger()(v2, v3, v4);
  v11 = v10;
  v12 = by;
  if (by)
  {
    v13 = *(v10 + 16);
    v14._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v13);
    v22[0] = v14._rawValue;
    if (v13)
    {
      v24 = v5;
      v15 = 0;
      v16 = v13 + 15;
      while ((v16 - 15) <= *(v11 + 16))
      {
        v17 = *(v11 + 2 * v16) | (v15 << 16);
        if ((v17 / v12) >> 16)
        {
          goto LABEL_13;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v14._rawValue);
        }

        if ((v16 - 15) > *(v14._rawValue + 2))
        {
          goto LABEL_14;
        }

        *(v14._rawValue + v16) = v17 / v12;
        v15 = v17 % v12;
        if (--v16 == 15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:

      v22[0] = v14._rawValue;
    }

    else
    {
    }

    while (1)
    {
      v19 = *(v14._rawValue + 2);
      if (!v19 || *(v14._rawValue + v19 + 15))
      {
        break;
      }

      if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
      {
        specialized Array.remove(at:)(*(v22[0] + 16) - 1);
      }

      v14._rawValue = v22[0];
    }

    v22[0] = v8;
    v22[1] = v7;
    v23 = v6;
    NSDecimal.copyVariableLengthInteger(_:)(v14);
    if (v20)
    {
    }

    else
    {
      v21 = *(v14._rawValue + 2);

      if (HIDWORD(v21))
      {
        __break(1u);
      }

      else
      {
        _So9NSDecimala__length_setter(v21, v22);
      }
    }
  }

  else
  {

    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
  }
}

uint64_t _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 < 4)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (a2 >= 0x10)
  {
    v5 = a2 & 0x7FFFFFFFFFFFFFF0;
    v6 = vdupq_n_s16(v3);
    v7 = (result + 48);
    v8 = a2 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v7[-1] = v6;
      *v7 = v6;
      v7 += 2;
      v8 -= 16;
    }

    while (v8);
    if (v5 == a2)
    {
      return result;
    }

    if ((a2 & 0xC) == 0)
    {
      v4 += v5;
LABEL_17:
      v13 = a2 - v5;
      do
      {
        *v4++ = v3;
        --v13;
      }

      while (v13);
      return result;
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;
  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v10 = vdup_n_s16(v3);
  v11 = 2 * v9 + 32;
  v12 = v9 - (a2 & 0x7FFFFFFFFFFFFFFCLL);
  do
  {
    *(result + v11) = v10;
    v11 += 8;
    v12 += 4;
  }

  while (v12);
  if (v5 != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t NSDecimal.subscript.setter(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v2[8] = result;
        return result;
      }

      if (a2 == 7)
      {
        v2[9] = result;
        return result;
      }

      goto LABEL_18;
    }

    if (a2 == 4)
    {
      v2[6] = result;
    }

    else
    {
      v2[7] = result;
    }
  }

  else
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        v2[2] = result;
        return result;
      }

      if (a2 == 1)
      {
        v2[3] = result;
        return result;
      }

LABEL_18:
      _StringGuts.grow(_:)(30);

      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v3);

      MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (a2 == 2)
    {
      v2[4] = result;
    }

    else
    {
      v2[5] = result;
    }
  }

  return result;
}

void specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v91 = 0uLL;
  v92 = 0;
  v11 = specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(0xFuLL, a1, a2);
  v12 = v11;
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v88 = v13;
  v14 = v11 >> 14;
  v87 = 4 * v13;
  if (v11 >> 14 == 4 * v13)
  {
    goto LABEL_47;
  }

  v15 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v15) = 1;
  }

  v16 = v11 & 0xC;
  v17 = 4 << v15;
  if (v16 == 4 << v15)
  {
    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a1, a2);
  }

  v6 = v11 >> 16;
  if (v11 >> 16 >= v88)
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_41:
    v19 = String.UTF8View._foreignSubscript(position:)();
    goto LABEL_15;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v89[0] = a1;
    *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v19 = *(v89 + v6);
    goto LABEL_15;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    goto LABEL_212;
  }

  for (i = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = _StringObject.sharedUTF8.getter())
  {
    v19 = *(i + v6);
LABEL_15:
    if (v19 == 43)
    {
      goto LABEL_27;
    }

    v20 = v12;
    if (v16 == v17)
    {
      v20 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    }

    v6 = v20 >> 16;
    if (v20 >> 16 < v88)
    {
      break;
    }

    __break(1u);
LABEL_212:
    ;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v22 = String.UTF8View._foreignSubscript(position:)();
    goto LABEL_26;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v89[0] = a1;
    *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v22 = *(v89 + v6);
    goto LABEL_26;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    goto LABEL_281;
  }

  v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (2)
  {
    v22 = *(v21 + v6);
LABEL_26:
    if (v22 != 45)
    {
      goto LABEL_47;
    }

LABEL_27:
    v23 = v12;
    if (v16 == v17)
    {
      v23 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    }

    v24 = v23 >> 16;
    if (v23 >> 16 >= v88)
    {
      __break(1u);
      goto LABEL_43;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      *&v89[0] = a1;
      *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
      v26 = *(v89 + v24);
    }

    else
    {
      if ((a1 & 0x1000000000000000) == 0)
      {
        goto LABEL_276;
      }

      v25 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_34:
      v26 = *(v25 + v24);
    }

    _So9NSDecimala__isNegative_setter(v26 == 45, &v91);
    if (v16 == v17)
    {
LABEL_43:
      v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_39;
      }

LABEL_44:
      if (v88 <= v12 >> 16)
      {
        __break(1u);
LABEL_216:
        __break(1u);
        goto LABEL_217;
      }

      v12 = String.UTF8View._foreignIndex(after:)();
      goto LABEL_46;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_44;
    }

LABEL_39:
    v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
    v14 = v12 >> 14;
LABEL_47:
    if (v14 == v87)
    {
LABEL_48:
      v90 = v12;
LABEL_49:
      if (v87 <= v12 >> 14)
      {
        goto LABEL_256;
      }

      v27 = (a1 >> 59) & 1;
      if ((a2 & 0x1000000000000000) == 0)
      {
        LOBYTE(v27) = 1;
      }

      v14 = v12 & 0xC;
      v16 = 4 << v27;
      v28 = v12;
      if (v14 != 4 << v27)
      {
LABEL_53:
        v29 = v28 >> 16;
        if (v28 >> 16 >= v88)
        {
          __break(1u);
        }

        else if ((a2 & 0x1000000000000000) == 0)
        {
          if ((a2 & 0x2000000000000000) == 0)
          {
            if ((a1 & 0x1000000000000000) != 0)
            {
              v30 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              goto LABEL_58;
            }

            goto LABEL_214;
          }

          *&v89[0] = a1;
          *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
          for (j = *(v89 + v29); ; j = *(v30 + v29))
          {
LABEL_103:
            if (j == 69)
            {
              goto LABEL_141;
            }

            v44 = v12;
            if (v14 == v16)
            {
              v44 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
            }

            v29 = v44 >> 16;
            if (v44 >> 16 < v88)
            {
              break;
            }

            __break(1u);
LABEL_214:
            v30 = _StringObject.sharedUTF8.getter();
LABEL_58:
            ;
          }

          if ((a2 & 0x1000000000000000) != 0)
          {
            v46 = String.UTF8View._foreignSubscript(position:)();
          }

          else if ((a2 & 0x2000000000000000) != 0)
          {
            *&v89[0] = a1;
            *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
            v46 = *(v89 + v29);
          }

          else
          {
            if ((a1 & 0x1000000000000000) != 0)
            {
              v45 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v45 = _StringObject.sharedUTF8.getter();
            }

            v46 = *(v45 + v29);
          }

          if (v46 != 101)
          {
            goto LABEL_256;
          }

LABEL_141:
          if (v14 == v16)
          {
            goto LABEL_168;
          }

          if ((a2 & 0x1000000000000000) != 0)
          {
            goto LABEL_169;
          }

LABEL_143:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_171;
        }

        j = String.UTF8View._foreignSubscript(position:)();
        goto LABEL_103;
      }

LABEL_164:
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      goto LABEL_53;
    }

    v83 = a4;
    v16 = 0;
    v32 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v32) = 1;
    }

    a4 = 4 << v32;
    v7 = v89;
    while (1)
    {
      v6 = v12 & 0xC;
      v33 = v12;
      if (v6 == a4)
      {
        v33 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      }

      v34 = v33 >> 16;
      if (v33 >> 16 >= v88)
      {
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v36 = String.UTF8View._foreignSubscript(position:)();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        *&v89[0] = a1;
        *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
        v36 = *(v89 + v34);
      }

      else
      {
        v35 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v35 = _StringObject.sharedUTF8.getter();
        }

        v36 = *(v35 + v34);
      }

      v37 = (v36 - 58);
      if (v37 < 0xF6)
      {
        break;
      }

      if (v16)
      {
        v89[0] = v91;
        LODWORD(v89[1]) = v92;
        if (_So9NSDecimala__exponent_getter(v89) == 127)
        {
          v7 = v89;
          *(v89 + 4) = 0uLL;
          _So9NSDecimala__exponent_setter(0, v89);
          _So9NSDecimala__length_setter(0, v89);
          _So9NSDecimala__isNegative_setter(1, v89);
          _So9NSDecimala__isCompact_setter(v89);
          _So9NSDecimala__reserved_setter(v89);
          v91 = v89[0];
          v92 = v89[1];
        }

        else
        {
          v89[0] = v91;
          LODWORD(v89[1]) = v92;
          v42 = _So9NSDecimala__exponent_getter(v89);
          _So9NSDecimala__exponent_setter((v42 + 1), &v91);
        }

        v89[0] = v91;
        LODWORD(v89[1]) = v92;
        if (!_So9NSDecimala__length_getter(v89))
        {
          v89[0] = v91;
          LODWORD(v89[1]) = v92;
          if (_So9NSDecimala__isNegative_getter(v89))
          {
            v90 = v12;
LABEL_145:
            specialized $defer #1 <A>() in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a1, a2, &v90);
            goto LABEL_232;
          }
        }

        if (v6 == a4)
        {
          v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_86;
          }
        }

        else if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_86;
        }

        if (v88 <= v12 >> 16)
        {
          goto LABEL_162;
        }

LABEL_96:
        v12 = String.UTF8View._foreignIndex(after:)();
LABEL_97:
        v14 = v12 >> 14;
        goto LABEL_98;
      }

      NSDecimal._multiply(byShort:)(v37, 0xAu);
      if (!v38)
      {
        NSDecimal._add(_:)((v36 - 48), (v36 - 48));
        if (!v38)
        {
          *&v91 = v39;
          *(&v91 + 1) = v40;
          v92 = v41;
          if (v6 == a4)
          {
            v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
            if ((a2 & 0x1000000000000000) != 0)
            {
              goto LABEL_79;
            }
          }

          else if ((a2 & 0x1000000000000000) != 0)
          {
LABEL_79:
            if (v88 <= v12 >> 16)
            {
              goto LABEL_163;
            }

            goto LABEL_96;
          }

LABEL_86:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_97;
        }
      }

      v90 = v12;

      v89[0] = v91;
      LODWORD(v89[1]) = v92;
      if (_So9NSDecimala__exponent_getter(v89) == 127)
      {
        *(v89 + 12) = 0;
        v7 = v89;
        *(v89 + 4) = 0;
        _So9NSDecimala__exponent_setter(0, v89);
        _So9NSDecimala__length_setter(0, v89);
        _So9NSDecimala__isNegative_setter(1, v89);
        _So9NSDecimala__isCompact_setter(v89);
        _So9NSDecimala__reserved_setter(v89);
        v91 = v89[0];
        v92 = v89[1];
      }

      else
      {
        v89[0] = v91;
        LODWORD(v89[1]) = v92;
        v43 = _So9NSDecimala__exponent_getter(v89);
        _So9NSDecimala__exponent_setter((v43 + 1), &v91);
      }

      v89[0] = v91;
      LODWORD(v89[1]) = v92;
      if (!_So9NSDecimala__length_getter(v89))
      {
        v89[0] = v91;
        LODWORD(v89[1]) = v92;
        if (_So9NSDecimala__isNegative_getter(v89))
        {
          goto LABEL_145;
        }
      }

      specialized $defer #1 <A>() in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a1, a2, &v90);
      v12 = v90;
      v14 = v90 >> 14;
      v16 = 1;
LABEL_98:
      if (v14 == v87)
      {
        goto LABEL_48;
      }
    }

    v90 = v12;
    if (v14 >= v87 || (specialized stringViewContainsDecimalSeparator #1 <A>(at:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(v12, a3, v83, a1, a2) & 1) == 0)
    {
      goto LABEL_49;
    }

    if ((v83 & 0x1000000000000000) != 0)
    {
      v47 = String.UTF8View._foreignCount()();
    }

    else
    {
      v47 = (v83 & 0x2000000000000000) != 0 ? HIBYTE(v83) & 0xF : a3 & 0xFFFFFFFFFFFFLL;
    }

    specialized Collection.formIndex(_:offsetBy:)(&v90, v47, a1, a2);
    v12 = v90;
    if (v87 == v90 >> 14)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v48 = v12;
      if ((v12 & 0xC) == a4)
      {
        v48 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      }

      v6 = v48 >> 16;
      if (v48 >> 16 >= v88)
      {
        goto LABEL_167;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = String.UTF8View._foreignSubscript(position:)();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        *&v89[0] = a1;
        *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
        v6 = *(v89 + v6);
      }

      else
      {
        v49 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v49 = _StringObject.sharedUTF8.getter();
        }

        v6 = *(v49 + v6);
      }

      v50 = (v6 - 58);
      if (v50 < 0xF6)
      {
        goto LABEL_49;
      }

      if (v16)
      {
        break;
      }

      NSDecimal._multiply(byShort:)(v50, 0xAu);
      if (v51 || (NSDecimal._add(_:)((v6 - 48), (v6 - 48)), v51))
      {

        v16 = 1;
      }

      else
      {
        *&v91 = v52;
        *(&v91 + 1) = v53;
        v92 = v54;
        v89[0] = v91;
        LODWORD(v89[1]) = v54;
        if (_So9NSDecimala__exponent_getter(v89) == -128)
        {
          goto LABEL_145;
        }

        v89[0] = v91;
        LODWORD(v89[1]) = v92;
        v55 = _So9NSDecimala__exponent_getter(v89);
        _So9NSDecimala__exponent_setter((v55 - 1), &v91);
        v16 = 0;
      }

      specialized $defer #1 <A>() in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a1, a2, &v90);
      v12 = v90;
      if (v87 == v90 >> 14)
      {
        goto LABEL_49;
      }
    }

    specialized $defer #1 <A>() in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a1, a2, &v90);
    v12 = v90;
    if (v87 == v90 >> 14)
    {
      goto LABEL_49;
    }

    v16 = v89;
    while (1)
    {
      v56 = v12;
      if ((v12 & 0xC) == a4)
      {
        v56 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      }

      v57 = v56 >> 16;
      if (v56 >> 16 >= v88)
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v59 = String.UTF8View._foreignSubscript(position:)();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        *&v89[0] = a1;
        *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
        v59 = *(v89 + v57);
      }

      else
      {
        v58 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v58 = _StringObject.sharedUTF8.getter();
        }

        v59 = *(v58 + v57);
      }

      if ((v59 - 58) >= 0xF6u)
      {
        specialized $defer #1 <A>() in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a1, a2, &v90);
        v12 = v90;
        if (v87 != v90 >> 14)
        {
          continue;
        }
      }

      goto LABEL_49;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_143;
    }

LABEL_169:
    if (v88 <= v12 >> 16)
    {
      goto LABEL_216;
    }

    v12 = String.UTF8View._foreignIndex(after:)();
LABEL_171:
    v14 = v12 & 0xC;
    if (v87 != v12 >> 14)
    {
      v64 = v12;
      if (v14 == v16)
      {
        v64 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      }

      v65 = v64 >> 16;
      if (v64 >> 16 >= v88)
      {
        __break(1u);
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v67 = String.UTF8View._foreignSubscript(position:)();
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          *&v89[0] = a1;
          *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
          v67 = *(v89 + v65);
        }

        else
        {
          if ((a1 & 0x1000000000000000) != 0)
          {
            v66 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v66 = _StringObject.sharedUTF8.getter();
          }

          v67 = *(v66 + v65);
        }

        if (v67 != 45)
        {
          v68 = v12;
          if (v14 == v16)
          {
            goto LABEL_278;
          }

          goto LABEL_189;
        }

LABEL_198:
        v71 = v12;
        if (v14 != v16)
        {
LABEL_199:
          v17 = v71 >> 16;
          if (v71 >> 16 >= v88)
          {
            __break(1u);
          }

          else
          {
            if ((a2 & 0x1000000000000000) != 0)
            {
              v73 = String.UTF8View._foreignSubscript(position:)();
            }

            else if ((a2 & 0x2000000000000000) != 0)
            {
              *&v89[0] = a1;
              *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
              v73 = *(v89 + v17);
            }

            else
            {
              if ((a1 & 0x1000000000000000) != 0)
              {
                v72 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              }

              else
              {
                v72 = _StringObject.sharedUTF8.getter();
              }

              v73 = *(v72 + v17);
            }

            LODWORD(v7) = v73 == 45;
            if (v14 != v16)
            {
              if ((a2 & 0x1000000000000000) == 0)
              {
                goto LABEL_210;
              }

LABEL_223:
              if (v88 > v12 >> 16)
              {
                v12 = String.UTF8View._foreignIndex(after:)();
                goto LABEL_225;
              }

              goto LABEL_280;
            }
          }

          v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
          if ((a2 & 0x1000000000000000) == 0)
          {
LABEL_210:
            v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_225;
          }

          goto LABEL_223;
        }
      }

      v71 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      goto LABEL_199;
    }

    if (v14 != v16)
    {
      v14 = v12 >> 16;
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_174;
      }

LABEL_176:
      v60 = 0;
      v62 = *(&v91 + 1);
      v61 = v91;
      v63 = v92;
LABEL_268:
      *a6 = v61;
      *(a6 + 8) = v62;
      *(a6 + 16) = v63;
      *(a6 + 24) = v14;
      *(a6 + 32) = v60;
      return;
    }

LABEL_217:
    v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    v14 = v12 >> 16;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_176;
    }

LABEL_174:
    if (v88 >= v14)
    {
      v14 = String.UTF8View._foreignDistance(from:to:)();
      goto LABEL_176;
    }

    __break(1u);
LABEL_278:
    v68 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
LABEL_189:
    v17 = v68 >> 16;
    if (v68 >> 16 >= v88)
    {
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      v21 = _StringObject.sharedUTF8.getter();
      continue;
    }

    break;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v70 = String.UTF8View._foreignSubscript(position:)();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    *&v89[0] = a1;
    *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v70 = *(v89 + v17);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v69 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v69 = _StringObject.sharedUTF8.getter();
    }

    v70 = *(v69 + v17);
  }

  if (v70 == 43)
  {
    goto LABEL_198;
  }

  LODWORD(v7) = 0;
LABEL_225:
  if (v87 == v12 >> 14)
  {
    v24 = 0;
LABEL_227:
    if (v7)
    {
      v16 = -v24;
    }

    else
    {
      v16 = v24;
    }

    v89[0] = v91;
    LODWORD(v89[1]) = v92;
    v74 = _So9NSDecimala__exponent_getter(v89);
    v75 = __OFADD__(v16, v74);
    v76 = v16 + v74;
    if (!v75)
    {
      if (v76 != v76)
      {
LABEL_232:
        v62 = 0;
        v63 = 0;
        v14 = 0;
        v61 = 1;
        v60 = 1;
        goto LABEL_268;
      }

      _So9NSDecimala__exponent_setter(v76, &v91);
LABEL_256:
      if ((a5 & 1) != 0 && (v12 = specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(v12, a1, a2), v87 != v12 >> 14) || v12 < 0x4000)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v14 = 0;
        v60 = 1;
        goto LABEL_268;
      }

      NSDecimal.compact()();
      v80 = (a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0;
      if ((v12 & 0xC) == 4 << v80)
      {
        goto LABEL_272;
      }

      v14 = v12 >> 16;
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_273;
      }

LABEL_265:
      v63 = v92;
      v62 = *(&v91 + 1);
      if (NSDecimal.isNaN.getter(v91, *(&v91 + 1), v92))
      {
        v61 = specialized NSDecimal.init(_:)(0);
        v62 = v81;
        v63 = v82;
        v60 = 0;
      }

      else
      {
        v60 = 0;
        v61 = v91;
      }

      goto LABEL_268;
    }

    __break(1u);
LABEL_276:
    v25 = _StringObject.sharedUTF8.getter();
    goto LABEL_34;
  }

  v24 = 0;
  a4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (2)
  {
    v17 = v12 & 0xC;
    v77 = v12;
    if (v17 == v16)
    {
      v77 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    }

    v6 = v77 >> 16;
    if (v77 >> 16 < v88)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v79 = String.UTF8View._foreignSubscript(position:)();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        *&v89[0] = a1;
        *(&v89[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
        v79 = *(v89 + v6);
      }

      else
      {
        v78 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v78 = _StringObject.sharedUTF8.getter();
        }

        v79 = *(v78 + v6);
      }

      if ((v79 - 58) < 0xF6u)
      {
        goto LABEL_227;
      }

      if ((v24 * 10) >> 64 != (10 * v24) >> 63)
      {
        goto LABEL_270;
      }

      v24 = 10 * v24 + (v79 - 48);
      if (v24 > 254)
      {
        goto LABEL_232;
      }

      if (v17 == v16)
      {
        v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_234;
        }

LABEL_251:
        if (v88 <= v12 >> 16)
        {
          goto LABEL_271;
        }

        v12 = String.UTF8View._foreignIndex(after:)();
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_251;
        }

LABEL_234:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      if (v87 == v12 >> 14)
      {
        goto LABEL_227;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2) >> 16;
  if ((a2 & 0x1000000000000000) == 0)
  {
    goto LABEL_265;
  }

LABEL_273:
  if (v88 >= v14)
  {
    v14 = String.UTF8View._foreignDistance(from:to:)();
    goto LABEL_265;
  }

  __break(1u);
}