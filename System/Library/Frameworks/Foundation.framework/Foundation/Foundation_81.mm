uint64_t Locale.Region.category.getter@<X0>(_BYTE *a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = String.utf8CString.getter();
  v3 = MEMORY[0x1865D34B0](v2 + 32, &v7);

  if (v7 > 0 || v3 == 0)
  {
    LOBYTE(v6) = 5;
  }

  else
  {
    result = MEMORY[0x1865D34C0](v3);
    v6 = 0x402010003uLL >> (8 * (result - 1));
    if ((result - 1) > 4)
    {
      LOBYTE(v6) = 5;
    }
  }

  *a1 = v6;
  return result;
}

uint64_t Locale.Region.subRegions(ofCategoy:)()
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v0 = String.utf8CString.getter();
  v1 = MEMORY[0x1865D34B0](v0 + 32, &v18);

  if (v1)
  {
    v2 = v18 <= 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = 0;
  ContainedRegionsOfType = uregion_getContainedRegionsOfType();
  v3 = MEMORY[0x1E69E7CC0];
  if (ContainedRegionsOfType)
  {
    v5 = v18 <= 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = ContainedRegionsOfType;
    type metadata accessor for ICU.Enumerator();
    *(swift_initStackObject() + 16) = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    for (i = uenum_next(); i; i = uenum_next())
    {
      v8 = String.init(cString:)();
      v10 = v9;
      v13 = String.uppercased()();
      object = v13._object;
      countAndFlagsBits = v13._countAndFlagsBits;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        object = v13._object;
        countAndFlagsBits = v13._countAndFlagsBits;
      }

      *(v3 + 16) = v15 + 1;
      v16 = (v3 + 32 * v15);
      v16[4] = v8;
      v16[5] = v10;
      v16[6] = countAndFlagsBits;
      v16[7] = object;
    }
  }

  return v3;
}

uint64_t Locale.Region.subcontinent.getter@<X0>(Swift::String *a1@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = String.utf8CString.getter();
  v3 = MEMORY[0x1865D34B0](v2 + 32, &v10);

  if (v3)
  {
    v5 = v10 <= 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    result = MEMORY[0x1865D3490](v3, 4);
    if (result)
    {
      result = MEMORY[0x1865D34A0]();
      if (!result)
      {
        __break(1u);
        return result;
      }

      result = MEMORY[0x1865CAEB0]();
      if (v6)
      {
        v7 = result;
        v8 = v6;
        v9 = String.uppercased()();
        result = v9._countAndFlagsBits;
        a1->_countAndFlagsBits = v7;
        a1->_object = v8;
        a1[1] = v9;
        return result;
      }
    }
  }

  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t static Locale.Collation.availableCollations.getter()
{
  KeywordValues = ucol_getKeywordValues();
  v1 = MEMORY[0x1E69E7CC0];
  if (KeywordValues)
  {
    v2 = KeywordValues;
    type metadata accessor for ICU.Enumerator();
    *(swift_initStackObject() + 16) = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    for (i = uenum_next(); i; i = uenum_next())
    {
      v4 = String.init(cString:)();
      v6 = v5;
      v9 = String.lowercased()();
      object = v9._object;
      countAndFlagsBits = v9._countAndFlagsBits;
      v11 = *(v1 + 16);
      v10 = *(v1 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        object = v9._object;
        countAndFlagsBits = v9._countAndFlagsBits;
      }

      *(v1 + 16) = v11 + 1;
      v12 = (v1 + 32 * v11);
      v12[4] = v4;
      v12[5] = v6;
      v12[6] = countAndFlagsBits;
      v12[7] = object;
    }
  }

  return v1;
}

uint64_t static Locale.Collation.availableCollations(for:)()
{
  Locale.Language.Components.identifier.getter();
  String.utf8CString.getter();

  KeywordValuesForLocale = ucol_getKeywordValuesForLocale();

  v1 = MEMORY[0x1E69E7CC0];
  if (KeywordValuesForLocale)
  {
    type metadata accessor for ICU.Enumerator();
    *(swift_initStackObject() + 16) = KeywordValuesForLocale;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    for (i = uenum_next(); i; i = uenum_next())
    {
      v3 = String.init(cString:)();
      v5 = v4;
      v8 = String.lowercased()();
      object = v8._object;
      countAndFlagsBits = v8._countAndFlagsBits;
      v10 = *(v1 + 16);
      v9 = *(v1 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        object = v8._object;
        countAndFlagsBits = v8._countAndFlagsBits;
      }

      *(v1 + 16) = v10 + 1;
      v11 = (v1 + 32 * v10);
      v11[4] = v3;
      v11[5] = v5;
      v11[6] = countAndFlagsBits;
      v11[7] = object;
    }
  }

  return v1;
}

uint64_t Locale.Currency.isISOCurrency.getter()
{
  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  String._slowWithCString<A, B>(encodedAs:_:)();
  return v1;
}

uint64_t closure #1 in Locale.Currency.isISOCurrency.getter@<X0>(BOOL *a1@<X8>)
{
  result = ucurr_getNumericCode();
  *a1 = result != 0;
  return result;
}

uint64_t one-time initialization function for unknown()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.Currency.unknown = 7895160;
  *algn_1EA7B5FF8 = 0xE300000000000000;
  xmmword_1EA7B6000 = v1;
  return result;
}

{
  String.init<A>(_:)();
  v0 = String._capitalized()();

  static Locale.Script.unknown = 2054847066;
  *algn_1EA7B7128 = 0xE400000000000000;
  xmmword_1EA7B7130 = v0;
  return result;
}

{
  v1 = String.uppercased()();
  result = v1._countAndFlagsBits;
  static Locale.Region.unknown = 23130;
  *algn_1EA7B7148 = 0xE200000000000000;
  xmmword_1EA7B7150 = v1;
  return result;
}

uint64_t static Locale.Currency.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for unknown != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B5FF8;
  v2 = xmmword_1EA7B6000;
  *a1 = static Locale.Currency.unknown;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t static Locale.NumberingSystem.availableNumberingSystems.getter()
{
  v0 = unumsys_openAvailableNames();
  v1 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v2 = v0;
    type metadata accessor for ICU.Enumerator();
    *(swift_initStackObject() + 16) = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    for (i = uenum_next(); i; i = uenum_next())
    {
      v4 = String.init(cString:)();
      v6 = v5;
      v9 = String.lowercased()();
      object = v9._object;
      countAndFlagsBits = v9._countAndFlagsBits;
      v11 = *(v1 + 16);
      v10 = *(v1 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        object = v9._object;
        countAndFlagsBits = v9._countAndFlagsBits;
      }

      *(v1 + 16) = v11 + 1;
      v12 = (v1 + 32 * v11);
      v12[4] = v4;
      v12[5] = v6;
      v12[6] = countAndFlagsBits;
      v12[7] = object;
    }
  }

  return v1;
}

uint64_t Locale.Language.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v37 = v1[2];
  v38 = v3;
  v4 = v1[5];
  v39 = v1[4];
  v40 = v4;
  v5 = v1[1];
  v35 = *v1;
  v36 = v5;
  Locale.Language.Components.identifier.getter();
  String.utf8CString.getter();

  AppleParent = ualoc_getAppleParent();

  if (AppleParent < 1 || (v41[AppleParent] = 0, result = MEMORY[0x1865CAEB0](v41), !v8))
  {
    *a1 = xmmword_1812187D0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    return result;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  outlined destroy of Locale.Language.Components(&v35);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v10 = 0;
  v11 = 0;
  if (Language > 0)
  {
    v34[Language] = 0;
    v10 = MEMORY[0x1865CAEB0](v34);
    v11 = v12;
  }

  String.utf8CString.getter();
  Script = uloc_getScript();

  v14 = 0;
  v15 = 0;
  if (Script > 0)
  {
    v33[Script] = 0;
    v14 = MEMORY[0x1865CAEB0](v33);
    v15 = v16;
  }

  String.utf8CString.getter();

  Country = uloc_getCountry();

  v18 = 0;
  v19 = 0;
  if (Country > 0)
  {
    v32[Country] = 0;
    v18 = MEMORY[0x1865CAEB0](v32);
    v19 = v20;
  }

  if (v11)
  {
    v31 = v10;
    v21 = String.lowercased()();
    object = v21._object;
    countAndFlagsBits = v21._countAndFlagsBits;
    v22 = v11;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_19:
    v14 = 0;
    v24 = 0;
    v25 = 0;
    if (v19)
    {
      goto LABEL_16;
    }

LABEL_20:
    v18 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_21;
  }

  countAndFlagsBits = 0;
  v31 = 0;
  object = 0;
  v22 = 0;
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_15:

  String.init<A>(_:)();
  v23 = String._capitalized()();
  v24 = v23._countAndFlagsBits;
  v25 = v23._object;

  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_16:
  v26 = String.uppercased()();
  v27 = v26._countAndFlagsBits;
  v28 = v26._object;
LABEL_21:
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  result = outlined consume of Locale.LanguageCode?(0, 0);
  *a1 = v31;
  *(a1 + 8) = v22;
  *(a1 + 16) = countAndFlagsBits;
  *(a1 + 24) = object;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v24;
  *(a1 + 56) = v25;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  return result;
}

BOOL Locale.Language.hasCommonParent(with:)(__int128 *a1)
{
  v156 = *MEMORY[0x1E69E9840];
  v2 = a1[3];
  v152 = a1[2];
  v153 = v2;
  v3 = a1[5];
  v154 = a1[4];
  v155 = v3;
  v4 = a1[1];
  v150 = *a1;
  v151 = v4;
  v5 = v1[3];
  v132 = v1[2];
  v133 = v5;
  v6 = v1[5];
  v134 = v1[4];
  v135 = v6;
  v7 = v1[1];
  v130 = *v1;
  v131 = v7;
  LODWORD(v118) = 0;
  Locale.Language.Components.identifier.getter();
  String.utf8CString.getter();

  AppleParent = ualoc_getAppleParent();

  if (AppleParent > 0)
  {
    v149[AppleParent] = 0;
    MEMORY[0x1865CAEB0](v149);
    if (v9)
    {
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      outlined destroy of Locale.Language.Components(&v130);
      LODWORD(v124) = 0;
      String.utf8CString.getter();
      Language = uloc_getLanguage();

      v11 = 0;
      v12 = 0;
      if (Language > 0)
      {
        v100[Language] = 0;
        v11 = MEMORY[0x1865CAEB0](v100);
        v12 = v13;
      }

      LODWORD(v124) = 0;
      String.utf8CString.getter();
      Script = uloc_getScript();

      v15 = 0;
      v16 = 0;
      if (v124 <= 0 && Script > 0)
      {
        v99[Script] = 0;
        v15 = MEMORY[0x1865CAEB0](v99);
        v16 = v17;
      }

      LODWORD(v124) = 0;
      String.utf8CString.getter();

      Country = uloc_getCountry();

      v19 = 0;
      v20 = 0;
      if (v124 <= 0 && Country > 0)
      {
        v98[Country] = 0;
        v19 = MEMORY[0x1865CAEB0](v98);
        v20 = v21;
      }

      if (v12)
      {
        v24 = String.lowercased()();
        object = v24._object;
        countAndFlagsBits = v24._countAndFlagsBits;
      }

      else
      {
        v11 = 0;
        countAndFlagsBits = 0;
        object = 0;
      }

      v96 = object;
      v83 = countAndFlagsBits;
      if (v16)
      {
        *&v124 = v15;
        *(&v124 + 1) = v16;

        String.init<A>(_:)();
        v25 = String._capitalized()();
        v92 = v25._object;
        v94 = v25._countAndFlagsBits;

        if (v20)
        {
LABEL_17:
          v26 = String.uppercased()();
          v88 = v26._object;
          v90 = v26._countAndFlagsBits;
LABEL_20:
          v86 = v19;
          outlined consume of Locale.LanguageCode?(0, 0);
          outlined consume of Locale.LanguageCode?(0, 0);
          outlined consume of Locale.LanguageCode?(0, 0);
          goto LABEL_21;
        }
      }

      else
      {
        v15 = 0;
        v92 = 0;
        v94 = 0;
        if (v20)
        {
          goto LABEL_17;
        }
      }

      v19 = 0;
      v88 = 0;
      v90 = 0;
      goto LABEL_20;
    }
  }

  v11 = 0;
  v83 = 0;
  v94 = 0;
  v96 = 0;
  v15 = 0;
  v16 = 0;
  v90 = 0;
  v92 = 0;
  v86 = 0;
  v20 = 0;
  v88 = 0;
  v12 = 1;
LABEL_21:
  v87 = v15;
  LODWORD(v118) = 0;
  Locale.Language.Components.identifier.getter();
  String.utf8CString.getter();

  v27 = ualoc_getAppleParent();

  v84 = v20;
  v85 = v11;
  if (v118 <= 0 && v27 > 0 && (v148[v27] = 0, MEMORY[0x1865CAEB0](v148), v28))
  {
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    outlined destroy of Locale.Language.Components(&v130);
    LODWORD(v124) = 0;
    String.utf8CString.getter();
    v29 = uloc_getLanguage();

    v30 = 0;
    v31 = 0;
    if (v124 <= 0 && v29 > 0)
    {
      v103[v29] = 0;
      v30 = MEMORY[0x1865CAEB0](v103);
      v31 = v32;
    }

    v81 = v30;
    LODWORD(v124) = 0;
    String.utf8CString.getter();
    v33 = uloc_getScript();

    v34 = 0;
    v35 = 0;
    if (v124 <= 0 && v33 > 0)
    {
      v102[v33] = 0;
      v34 = MEMORY[0x1865CAEB0](v102, 0);
    }

    v77 = v35;
    LODWORD(v124) = 0;
    String.utf8CString.getter();

    v36 = uloc_getCountry();

    v37 = 0;
    v38 = 0;
    if (v124 <= 0 && v36 > 0)
    {
      v101[v36] = 0;
      v37 = MEMORY[0x1865CAEB0](v101, 0);
    }

    v76 = v38;
    if (v31)
    {
      v40 = String.lowercased()();
      v39 = v40._object;
      v41 = v40._countAndFlagsBits;
    }

    else
    {
      v81 = 0;
      v41 = 0;
      v39 = 0;
    }

    v75 = v39;
    v42 = v16;
    if (v77)
    {
      *&v124 = v34;
      *(&v124 + 1) = v77;

      String.init<A>(_:)();
      v58 = String._capitalized()();
      v74 = v58._countAndFlagsBits;
      v80 = v58._object;
    }

    else
    {
      v34 = 0;
      v74 = 0;
      v80 = 0;
    }

    v51 = v12;
    if (v76)
    {
      v59 = String.uppercased()();
      v60 = v59._countAndFlagsBits;
      v61 = v59._object;
    }

    else
    {
      v37 = 0;
      v60 = 0;
      v61 = 0;
    }

    v82 = v34;
    outlined consume of Locale.LanguageCode?(0, 0);
    outlined consume of Locale.LanguageCode?(0, 0);
    outlined consume of Locale.LanguageCode?(0, 0);
    if (v12 == 1)
    {
      v43 = v83;
      v45 = v94;
      v44 = v96;
      v47 = v90;
      v46 = v92;
      v48 = v88;
      v62 = v81;
      v64 = v76;
      v63 = v77;
      v65 = v74;
      v66 = v75;
      if (v31 != 1)
      {
        goto LABEL_51;
      }

      goto LABEL_36;
    }

    *&v78 = v60;
    *(&v78 + 1) = v61;
    v79 = v41;
    v43 = v83;
    v45 = v94;
    v44 = v96;
    v47 = v90;
    v46 = v92;
    v48 = v88;
    v53 = v80;
    v57 = v81;
    v52 = v76;
    v55 = v77;
    v54 = v74;
    v56 = v75;
  }

  else
  {
    v42 = v16;
    v43 = v83;
    v45 = v94;
    v44 = v96;
    v47 = v90;
    v46 = v92;
    v48 = v88;
    if (v12 == 1)
    {
LABEL_36:
      *&v130 = v85;
      v49 = 1;
      *(&v130 + 1) = 1;
      *&v131 = v43;
      *(&v131 + 1) = v44;
      *&v132 = v87;
      *(&v132 + 1) = v42;
      *&v133 = v45;
      *(&v133 + 1) = v46;
      *&v134 = v86;
      *(&v134 + 1) = v84;
      *&v135 = v47;
      *(&v135 + 1) = v48;
      v50 = &v130;
LABEL_53:
      outlined destroy of TermOfAddress?(v50, &_s10Foundation6LocaleV8LanguageVSgMd);
      return v49;
    }

    v51 = v12;
    v78 = 0uLL;
    v52 = 0;
    v37 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v82 = 0;
    v56 = 0;
    v79 = 0;
    v57 = 0;
    v31 = 1;
  }

  v95 = v45;
  v97 = v44;
  v91 = v47;
  v93 = v46;
  v89 = v48;
  *&v130 = v85;
  *(&v130 + 1) = v51;
  *&v131 = v43;
  *(&v131 + 1) = v44;
  *&v132 = v87;
  *(&v132 + 1) = v42;
  *&v133 = v45;
  *(&v133 + 1) = v46;
  *&v134 = v86;
  *(&v134 + 1) = v84;
  *&v135 = v47;
  *(&v135 + 1) = v48;
  v126 = v132;
  v127 = v133;
  v128 = v134;
  v129 = v135;
  v124 = v130;
  v125 = v131;
  if (v31 != 1)
  {
    v116[2] = v132;
    v116[3] = v133;
    v116[4] = v134;
    v116[5] = v135;
    v116[0] = v130;
    v116[1] = v131;
    v112 = v132;
    v113 = v133;
    v114 = v134;
    v115 = v135;
    v110 = v130;
    v111 = v131;
    *&v104 = v57;
    *(&v104 + 1) = v31;
    *&v105 = v79;
    *(&v105 + 1) = v56;
    *&v106 = v82;
    *(&v106 + 1) = v55;
    *&v107 = v54;
    *(&v107 + 1) = v53;
    *&v108 = v37;
    *(&v108 + 1) = v52;
    v109 = v78;
    outlined init with copy of Locale.Language?(&v130, &v118);
    outlined init with copy of Locale.Language.Components(v116, &v118);
    v49 = specialized static Locale.Language.Components.== infix(_:_:)(&v110, &v104);
    v117[2] = v106;
    v117[3] = v107;
    v117[4] = v108;
    v117[5] = v109;
    v117[0] = v104;
    v117[1] = v105;
    outlined destroy of Locale.Language.Components(v117);
    v120 = v112;
    v121 = v113;
    v122 = v114;
    v123 = v115;
    v118 = v110;
    v119 = v111;
    outlined destroy of Locale.Language.Components(&v118);
    v106 = v126;
    v107 = v127;
    v108 = v128;
    v109 = v129;
    v104 = v124;
    v105 = v125;
    outlined destroy of Locale.Language(&v104);
    *&v110 = v85;
    *(&v110 + 1) = v51;
    *&v111 = v43;
    *(&v111 + 1) = v97;
    *&v112 = v87;
    *(&v112 + 1) = v42;
    *&v113 = v95;
    *(&v113 + 1) = v93;
    *&v114 = v86;
    *(&v114 + 1) = v84;
    *&v115 = v91;
    *(&v115 + 1) = v89;
    v50 = &v110;
    goto LABEL_53;
  }

  v80 = v53;
  v120 = v132;
  v121 = v133;
  v122 = v134;
  v123 = v135;
  v118 = v130;
  v119 = v131;
  v67 = v57;
  v68 = v55;
  v69 = v54;
  v70 = v52;
  v71 = v37;
  v72 = v56;
  outlined init with copy of Locale.Language?(&v130, v117);
  outlined destroy of Locale.Language(&v118);
  v65 = v69;
  v66 = v72;
  v37 = v71;
  v64 = v70;
  v63 = v68;
  v62 = v67;
  v31 = 1;
  v45 = v95;
  v44 = v97;
  v47 = v91;
  v46 = v93;
  v48 = v89;
  v61 = *(&v78 + 1);
  v41 = v79;
  v60 = v78;
LABEL_51:
  *&v130 = v85;
  *(&v130 + 1) = v51;
  *&v131 = v43;
  *(&v131 + 1) = v44;
  *&v132 = v87;
  *(&v132 + 1) = v42;
  *&v133 = v45;
  *(&v133 + 1) = v46;
  *&v134 = v86;
  *(&v134 + 1) = v84;
  *&v135 = v47;
  *(&v135 + 1) = v48;
  v136 = v62;
  v137 = v31;
  v138 = v41;
  v139 = v66;
  v140 = v82;
  v141 = v63;
  v142 = v65;
  v143 = v80;
  v144 = v37;
  v145 = v64;
  v146 = v60;
  v147 = v61;
  outlined destroy of TermOfAddress?(&v130, &_s10Foundation6LocaleV8LanguageVSg_AFtMd);
  return 0;
}

__n128 Locale.Language.Components.init(language:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v30 = a1[2];
  v31 = v3;
  v4 = a1[5];
  v32 = a1[4];
  v33 = v4;
  v5 = a1[1];
  v28 = *a1;
  v29 = v5;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  memset(v34, 0, sizeof(v34));
  outlined destroy of Locale.Language.Components(v34);
  v27[4] = v30;
  v27[5] = v31;
  v27[6] = v32;
  v27[7] = v33;
  v27[2] = v28;
  v27[3] = v29;
  Locale.Language.languageCode.getter(v27);
  v6 = v30;
  v8 = *(&v30 + 1);
  v7 = v30;
  object = *(&v31 + 1);
  countAndFlagsBits = v31;
  v17 = v27[1];
  v18 = v27[0];
  if (!*(&v30 + 1))
  {
    LODWORD(v19[0]) = 0;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v20 = v28;
    v21 = v29;
    Locale.Language.maximalIdentifier.getter();
    String.utf8CString.getter();

    Script = uloc_getScript();

    if (Script > 0 && (v26[Script] = 0, v12 = MEMORY[0x1865CAEB0](v26), v13))
    {
      v7 = v12;
      v8 = v13;
      *&v20 = v12;
      *(&v20 + 1) = v13;
      swift_bridgeObjectRetain_n();
      String.init<A>(_:)();
      v14 = String._capitalized()();
      countAndFlagsBits = v14._countAndFlagsBits;
      object = v14._object;
    }

    else
    {

      v7 = 0;
      v8 = 0;
      countAndFlagsBits = 0;
      object = 0;
    }
  }

  v22 = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v20 = v28;
  v21 = v29;
  outlined copy of Locale.LanguageCode?(v6, *(&v6 + 1));
  Locale.Language.region.getter(v19);
  outlined destroy of Locale.Language(&v28);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  result = v19[0];
  v16 = v19[1];
  *a2 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = countAndFlagsBits;
  *(a2 + 56) = object;
  *(a2 + 64) = result;
  *(a2 + 80) = v16;
  return result;
}

char *specialized static Locale.NumberingSystem.validNumberingSystems(for:)(void *a1, uint64_t a2)
{
  v285 = *MEMORY[0x1E69E9840];
  memset(v284, 0, 96);
  outlined destroy of Locale.Language.Components(v284);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v217 = 0;
  v5 = 0;
  if (Language > 0)
  {
    v283[Language] = 0;
    v217 = MEMORY[0x1865CAEB0](v283);
    v5 = v6;
  }

  LODWORD(v237._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v8 = 0;
  v9 = 0;
  if (Script > 0)
  {
    v282[Script] = 0;
    v8 = MEMORY[0x1865CAEB0](v282);
    v9 = v10;
  }

  LODWORD(v237._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v12 = 0;
  v13 = 0;
  if (Country > 0)
  {
    v281[Country] = 0;
    v12 = MEMORY[0x1865CAEB0](v281);
    v13 = v14;
  }

  if (v5)
  {
    v15 = String.lowercased()();
    object = v15._object;
    countAndFlagsBits = v15._countAndFlagsBits;
    if (v9)
    {
LABEL_9:
      v237._countAndFlagsBits = v8;
      v237._object = v9;

      String.init<A>(_:)();
      v16 = String._capitalized()();
      v212 = v16._object;
      v213 = v16._countAndFlagsBits;

      goto LABEL_12;
    }
  }

  else
  {
    countAndFlagsBits = 0;
    v217 = 0;
    object = 0;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v8 = 0;
  v212 = 0;
  v213 = 0;
LABEL_12:
  v204 = a1;
  v228 = a2;
  if (v13)
  {
    v17 = String.uppercased()();
    v18 = v17._countAndFlagsBits;
    v19 = v17._object;
  }

  else
  {
    v12 = 0;
    v18 = 0;
    v19 = 0;
  }

  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  v280[0] = v217;
  v280[1] = v5;
  v280[2] = countAndFlagsBits;
  v280[3] = object;
  v280[4] = v8;
  v280[5] = v9;
  v280[6] = v213;
  v280[7] = v212;
  v280[8] = v12;
  v280[9] = v13;
  v280[10] = v18;
  v280[11] = v19;
  outlined copy of Locale.LanguageCode?(v217, v5);
  outlined copy of Locale.LanguageCode?(v8, v9);
  v226 = v19;
  v227 = v18;
  outlined copy of Locale.LanguageCode?(v12, v13);
  outlined destroy of Locale.Language.Components(v280);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  LODWORD(v237._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  if (Variant <= 0)
  {
    v181 = 0;
    v23 = 0;
  }

  else
  {
    v279[Variant] = 0;
    v21 = MEMORY[0x1865CAEB0](v279);
    v23 = v22;
    if (v22)
    {
      v181 = v21;
      v24 = String.lowercased()();
      v194 = v24._countAndFlagsBits;
      v218 = v24._object;
      outlined consume of Locale.LanguageCode?(0, 0);
      goto LABEL_21;
    }

    v181 = 0;
  }

  v194 = 0;
  v218 = 0;
LABEL_21:
  v203 = v23;
  v235 = 0;
  String.utf8CString.getter();
  v25 = uloc_openKeywords();

  v210 = 4;
  v211 = 7;
  countAndFlagsBits_low = 27;
  v230 = v13;
  v231 = v5;
  v225 = v12;
  v205 = v8;
  if (v25)
  {
    type metadata accessor for ICU.Enumerator();
    v202 = swift_allocObject();
    *(v202 + 16) = v25;
    LODWORD(v237._countAndFlagsBits) = 0;
    LODWORD(v234[0]) = 0;
    v26 = uenum_next();
    v199 = 0;
    v200 = 0;
    v222 = 0;
    v223 = 0;
    v219 = 0;
    v220 = 0;
    v195 = 0;
    v196 = 0;
    v206 = 0;
    v207 = 0;
    v182 = 0;
    v183 = 0;
    v191 = 0;
    v214 = 0;
    v139 = 0;
    v233._countAndFlagsBits = 0;
    v233._object = 0;
    v229 = 0;
    v232 = 0;
    v221 = 0;
    v197 = 0;
    v198 = 0;
    v208 = 0;
    v209 = 0;
    v184 = 0;
    v185 = 0;
    v187 = 0;
    countAndFlagsBits_low = 27;
    v211 = 7;
    v210 = 4;
    while (1)
    {
      if (!v26)
      {
LABEL_23:

        v27 = v229;
        if (v229)
        {

          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v31 = *(v29 + 2);
          v30 = *(v29 + 3);
          v32 = (v31 + 1);
          if (v31 >= v30 >> 1)
          {
            goto LABEL_249;
          }

          goto LABEL_28;
        }

        goto LABEL_24;
      }

      v140 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v140, v141, &v237._countAndFlagsBits);

      v142 = v237._object;
      if (v237._object)
      {
        v143 = v25;
        v144 = v139;
        v145 = v237._countAndFlagsBits;
        LODWORD(v237._countAndFlagsBits) = 0;
        String.utf8CString.getter();
        String.utf8CString.getter();
        KeywordValue = uloc_getKeywordValue();

        if (SLODWORD(v237._countAndFlagsBits) > 0 || KeywordValue <= 0)
        {

          goto LABEL_177;
        }

        v236[KeywordValue] = 0;
        v147 = MEMORY[0x1865CAEB0](v236);
        if (!v148)
        {

          goto LABEL_164;
        }

        v149 = v147;
        v150 = v148;
        if (v145 == 0x7261646E656C6163 && v142 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v151._countAndFlagsBits = v149;
          v151._object = v150;
          Calendar.Identifier.init(identifierString:)(v151);
          countAndFlagsBits_low = LOBYTE(v237._countAndFlagsBits);
          goto LABEL_164;
        }

        if (v145 == 0x6F6974616C6C6F63 && v142 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v152 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v185, v209);
          v185 = v149;
          v209 = v150;
          v198 = v152._countAndFlagsBits;
          v222 = v152._object;
          goto LABEL_164;
        }

        if (v145 == 0x79636E6572727563 && v142 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v153 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v184, v208);
          v184 = v149;
          v208 = v150;
          v197 = v153._countAndFlagsBits;
          v221 = v153._object;
          goto LABEL_164;
        }

        if (v145 == 0x737265626D756ELL && v142 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v154 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v232, v229);
          v232 = v149;
          v233 = v154;
          v229 = v150;
          goto LABEL_164;
        }

        if (v145 == 30566 && v142 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v286._countAndFlagsBits = v149;
          v286._object = v150;
          Locale.Weekday.init(rawValue:)(v286, &v237);
          v211 = LOBYTE(v237._countAndFlagsBits);
          goto LABEL_164;
        }

        if ((v145 != 0x7372756F68 || v142 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v145 == 0x6572757361656DLL && v142 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (v149 == 0x6C61697265706D69 && v150 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (one-time initialization token for uk != -1)
              {
                swift_once();
              }

              v158 = static Locale.MeasurementSystem.uk;
              v157 = *algn_1EA7AFAD8;
              v159 = xmmword_1EA7AFAE0;

              outlined consume of Locale.LanguageCode?(v183, v207);
              v183 = v158;
              v207 = v157;
              v220 = *(&v159 + 1);
              v196 = v159;
LABEL_177:
              v139 = v144;
            }

            else
            {
              v165 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v183, v207);
              v183 = v149;
              v207 = v150;
              v196 = v165._countAndFlagsBits;
              v220 = v165._object;
LABEL_164:
              v139 = v144;
            }

LABEL_165:
            v25 = v143;
            goto LABEL_166;
          }

          if (v145 == 26482 && v142 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (String.count.getter() > 2)
            {
              specialized Collection.prefix(_:)(2);

              v160 = Substring.uppercased()();

              v237 = v160;
              v161 = String.init<A>(_:)();
              v163 = v162;
              v164 = String.uppercased()();
              outlined consume of Locale.LanguageCode?(v144, v214);
              v139 = v161;
              v214 = v163;
              v191 = v164._countAndFlagsBits;
              v200 = v164._object;
              v5 = v231;
              goto LABEL_165;
            }

LABEL_236:
          }

          else if (v145 == 25715 && v142 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v166 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v182, v206);
            v182 = v149;
            v206 = v150;
            v195 = v166._countAndFlagsBits;
            v219 = v166._object;
          }

          else
          {
            if (v145 == 0x656E6F7A656D6974 && v142 == 0xE800000000000000)
            {
            }

            else
            {
              v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v168 & 1) == 0)
              {
                goto LABEL_236;
              }
            }

            if (one-time initialization token for cache != -1)
            {
              v167 = swift_once();
            }

            v169 = static TimeZoneCache.cache;
            MEMORY[0x1EEE9AC00](v167);
            v178 = v149;
            v179 = v150;
            os_unfair_lock_lock(v169 + 30);
            closure #1 in TimeZoneCache.fixed(_:)partial apply(&v237._countAndFlagsBits);
            os_unfair_lock_unlock(v169 + 30);
            v170 = v237._countAndFlagsBits;
            v171 = v237._object;

            if (v170)
            {
              v172 = v171;
            }

            else
            {
              v172 = 0;
            }

            v199 = v172;
            swift_unknownObjectRelease();
            v223 = v170;
          }

          v5 = v231;
          goto LABEL_177;
        }

        v155._countAndFlagsBits = v149;
        v155._object = v150;
        v156 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.HourCycle.init(rawValue:), v155);

        if (v156 > 1)
        {
          v139 = v144;
          v25 = v143;
          if (v156 == 2)
          {
            v210 = 2;
            goto LABEL_166;
          }

          if (v156 != 3)
          {
            goto LABEL_213;
          }

          v210 = 3;
        }

        else
        {
          v139 = v144;
          v25 = v143;
          if (!v156)
          {
            v210 = 0;
            goto LABEL_166;
          }

          if (v156 != 1)
          {
LABEL_213:
            v210 = 4;
            goto LABEL_166;
          }

          v210 = 1;
        }
      }

LABEL_166:
      LODWORD(v237._countAndFlagsBits) = 0;
      LODWORD(v234[0]) = 0;
      v26 = uenum_next();
      if (SLODWORD(v237._countAndFlagsBits) > 0)
      {
        goto LABEL_23;
      }
    }
  }

  v187 = 0;
  v208 = 0;
  v209 = 0;
  v197 = 0;
  v198 = 0;
  v221 = 0;
  v222 = 0;
  v183 = 0;
  v184 = 0;
  v232 = 0;
  v233._countAndFlagsBits = 0;
  v27 = 0;
  v233._object = 0;
  v206 = 0;
  v207 = 0;
  v195 = 0;
  v196 = 0;
  v219 = 0;
  v220 = 0;
  v139 = 0;
  v191 = 0;
  v199 = 0;
  v200 = 0;
  v182 = 0;
  v223 = 0;
  v185 = 0;
  v214 = 0;
LABEL_24:
  v188 = MEMORY[0x1E69E7CC0];
  v28 = v223;
  if (v5)
  {
    goto LABEL_29;
  }

LABEL_33:
  v38 = &outlined read-only object #1 of static Locale.NumberingSystem.validNumberingSystems(for:);
LABEL_34:
  v204 = v9;
  v39 = v38[2];
  v193 = v139;
  v202 = v39;
  v180 = v38;
  if (v39)
  {
    v40 = 0;
    v201 = (v38 + 4);
    v42 = v191 == v227 && v200 == v226;
    v190 = v42;
    v192 = v199 + 4;
    v186 = 7694452;
    while (1)
    {
      v45 = v27;
      v46 = v232;
      v228 = v40;
      v47 = &v201[16 * v40];
      v48 = v47[1];
      v232 = *v47;
      v233 = String.lowercased()();

      outlined consume of Locale.LanguageCode?(v46, v45);
      v139 = MEMORY[0x1E69E7CC0];
      if (countAndFlagsBits_low != 27)
      {
        LOBYTE(v237._countAndFlagsBits) = countAndFlagsBits_low;
        v49 = Calendar.Identifier.cldrIdentifier.getter();
        v51 = v50;
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v53 = v139[2];
        v52 = v139[3];
        if (v53 >= v52 >> 1)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v139);
        }

        v139[2] = v53 + 1;
        v54 = &v139[4 * v53];
        v54[4] = 0x7261646E656C6163;
        v54[5] = 0xE800000000000000;
        v54[6] = v49;
        v54[7] = v51;
      }

      if (!v209)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v230;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
      }

      v58 = v139[2];
      v57 = v139[3];
      if (v58 >= v57 >> 1)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v139);
      }

      v139[2] = v58 + 1;
      v59 = &v139[4 * v58];
      v59[4] = 0x6F6974616C6C6F63;
      v59[5] = 0xE90000000000006ELL;
      v60 = v222;
      v59[6] = v198;
      v59[7] = v60;
      if (v208)
      {
        goto LABEL_57;
      }

LABEL_62:
      if (v48)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
        }

        v66 = v139[2];
        v65 = v139[3];
        if (v66 >= v65 >> 1)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v139);
        }

        v139[2] = v66 + 1;
        v67 = &v139[4 * v66];
        v67[4] = 0x737265626D756ELL;
        v69 = v233._countAndFlagsBits;
        v68 = v233._object;
        v67[5] = 0xE700000000000000;
        v67[6] = v69;
        v67[7] = v68;
      }

      if (v211 > 3u)
      {
        if (v211 > 5u)
        {
          if (v211 != 6)
          {
            goto LABEL_92;
          }

          v70 = 7627123;
        }

        else if (v211 == 4)
        {
          v70 = v186;
        }

        else
        {
          v70 = 6910566;
        }
      }

      else if (v211 > 1u)
      {
        v70 = 6649204;
        if (v211 != 2)
        {
          v70 = 6579575;
        }
      }

      else if (v211)
      {
        v70 = 7237485;
      }

      else
      {
        v70 = 7239027;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
      }

      v80 = v139[2];
      v79 = v139[3];
      if (v80 >= v79 >> 1)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v139);
      }

      v139[2] = v80 + 1;
      v81 = &v139[4 * v80];
      v81[4] = 30566;
      v81[5] = 0xE200000000000000;
      v81[6] = v70;
      v81[7] = 0xE300000000000000;
LABEL_92:
      if (v210 <= 1u)
      {
        v82 = 3223912;
        if (v210)
        {
          v83 = 3223912;
LABEL_98:
          v82 = v83 + 0x10000;
        }
      }

      else
      {
        v82 = 3355240;
        if (v210 != 2)
        {
          if (v210 != 3)
          {
            goto LABEL_104;
          }

          v83 = 3355240;
          goto LABEL_98;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
      }

      v85 = v139[2];
      v84 = v139[3];
      if (v85 >= v84 >> 1)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v139);
      }

      v139[2] = v85 + 1;
      v86 = &v139[4 * v85];
      v86[4] = 0x7372756F68;
      v86[5] = 0xE500000000000000;
      v86[6] = v82;
      v86[7] = 0xE300000000000000;
LABEL_104:
      v229 = v48;
      if (v207)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
        }

        v88 = v139[2];
        v87 = v139[3];
        if (v88 >= v87 >> 1)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v139);
        }

        v139[2] = v88 + 1;
        v89 = &v139[4 * v88];
        v89[4] = 0x6572757361656DLL;
        v90 = v196;
        v89[5] = 0xE700000000000000;
        v89[6] = v90;
        v89[7] = v220;
      }

      v91 = v214;
      if (!v214)
      {
        goto LABEL_114;
      }

      if (v56)
      {
        if (v190)
        {
          v92 = v193;
          outlined copy of Locale.LanguageCode?(v193, v214);
          v93 = v225;
          outlined copy of Locale.LanguageCode?(v225, v56);
          outlined copy of Locale.LanguageCode?(v92, v91);
          outlined consume of Locale.LanguageCode?(v93, v56);

          outlined consume of Locale.LanguageCode?(v92, v91);
LABEL_114:
          v27 = v229;
          v94 = v231;
          goto LABEL_123;
        }

        v189 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v95 = v193;
        outlined copy of Locale.LanguageCode?(v193, v91);
        v97 = v56;
        v98 = v225;
        outlined copy of Locale.LanguageCode?(v225, v97);
        outlined copy of Locale.LanguageCode?(v95, v91);
        v99 = v98;
        v56 = v97;
        outlined consume of Locale.LanguageCode?(v99, v97);

        outlined consume of Locale.LanguageCode?(v95, v91);
        if (v189)
        {
          v27 = v229;
          v28 = v223;
          v94 = v231;
          goto LABEL_123;
        }
      }

      else
      {
        v95 = v193;
        outlined copy of Locale.LanguageCode?(v193, v214);
        v96 = v225;
        outlined copy of Locale.LanguageCode?(v225, 0);
        outlined copy of Locale.LanguageCode?(v95, v91);

        outlined consume of Locale.LanguageCode?(v95, v91);
        outlined consume of Locale.LanguageCode?(v96, 0);
      }

      v237._countAndFlagsBits = v95;
      v237._object = v91;

      MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
      v100 = String.lowercased()();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
      }

      v102 = v139[2];
      v101 = v139[3];
      v27 = v229;
      v28 = v223;
      if (v102 >= v101 >> 1)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v139);
      }

      v139[2] = v102 + 1;
      v103 = &v139[4 * v102];
      v103[2]._countAndFlagsBits = 26482;
      v103[2]._object = 0xE200000000000000;
      v103[3] = v100;
      v56 = v230;
      v94 = v231;
LABEL_123:
      if (v206)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
        }

        v105 = v139[2];
        v104 = v139[3];
        if (v105 >= v104 >> 1)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v139);
        }

        v139[2] = v105 + 1;
        v106 = &v139[4 * v105];
        v106[4] = 25715;
        v107 = v195;
        v106[5] = 0xE200000000000000;
        v106[6] = v107;
        v106[7] = v219;
      }

      if (!v28)
      {
        v9 = v225;
        if (!v203)
        {
          goto LABEL_142;
        }

LABEL_137:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
        }

        v116 = v139[2];
        v115 = v139[3];
        if (v116 >= v115 >> 1)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1, v139);
        }

        v139[2] = v116 + 1;
        v117 = &v139[4 * v116];
        v117[4] = 24950;
        v118 = v194;
        v117[5] = 0xE200000000000000;
        v117[6] = v118;
        v117[7] = v218;
        goto LABEL_142;
      }

      ObjectType = swift_getObjectType();
      v109 = v199[4](ObjectType);
      v111 = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
      }

      v113 = v139[2];
      v112 = v139[3];
      v9 = v225;
      if (v113 >= v112 >> 1)
      {
        v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v139);
      }

      v139[2] = v113 + 1;
      v114 = &v139[4 * v113];
      v114[4] = 0x656E6F7A656D6974;
      v114[5] = 0xE800000000000000;
      v114[6] = v109;
      v114[7] = v111;
      v56 = v230;
      if (v203)
      {
        goto LABEL_137;
      }

LABEL_142:
      v237._countAndFlagsBits = v217;
      v237._object = v94;
      v238._countAndFlagsBits = countAndFlagsBits;
      v238._object = object;
      v239 = v205;
      v240 = v204;
      v241 = v213;
      v242 = v212;
      v243 = v9;
      v244 = v56;
      v245 = v227;
      v246 = v226;
      v234[0] = Locale.Language.Components.identifier.getter();
      v234[1] = v119;
      v31 = v139[2];
      if (v31)
      {
        v32 = v234;
        MEMORY[0x1865CB0E0](64, 0xE100000000000000);
        v30 = v139[2];
        if (v30)
        {
          v120 = 0;
          v5 = (v31 - 1);
          v121 = v139 + 7;
          while (v120 < v30)
          {
            v123 = *(v121 - 1);
            v122 = *v121;
            v124 = *(v121 - 2);
            v237._countAndFlagsBits = *(v121 - 3);
            v237._object = v124;

            MEMORY[0x1865CB0E0](61, 0xE100000000000000);
            MEMORY[0x1865CB0E0](v123, v122);

            v31 = v237._object;
            v32 = v234;
            MEMORY[0x1865CB0E0](v237._countAndFlagsBits, v237._object);

            if (v5 != v120)
            {
              v32 = v234;
              MEMORY[0x1865CB0E0](59, 0xE100000000000000);
            }

            ++v120;
            v30 = v139[2];
            v121 += 4;
            if (v120 == v30)
            {
              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_249:
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v32, 1, v29);
LABEL_28:
          v28 = v223;
          *(v29 + 2) = v32;
          v188 = v29;
          v33 = &v29[32 * v31];
          v34 = v233._countAndFlagsBits;
          *(v33 + 4) = v232;
          *(v33 + 5) = v27;
          v35 = v233._object;
          *(v33 + 6) = v34;
          *(v33 + 7) = v35;
          if (!v5)
          {
            goto LABEL_33;
          }

LABEL_29:
          v36 = String.lowercased()();
          if (countAndFlagsBits == v36._countAndFlagsBits && object == v36._object)
          {
LABEL_31:

            goto LABEL_33;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_33;
          }

          v173 = String.lowercased()();
          if (countAndFlagsBits == v173._countAndFlagsBits && object == v173._object)
          {
            goto LABEL_31;
          }

          v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v174 & 1) != 0 || v217 == 7697783 && v5 == 0xE300000000000000)
          {
            goto LABEL_33;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            goto LABEL_33;
          }

          v175 = String.lowercased()();
          if (countAndFlagsBits == v175._countAndFlagsBits && object == v175._object)
          {
            goto LABEL_31;
          }

          v176 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v176)
          {
            goto LABEL_33;
          }

          v38 = &outlined read-only object #0 of static Locale.NumberingSystem.validNumberingSystems(for:);
          goto LABEL_34;
        }
      }

LABEL_42:

      LODWORD(v234[0]) = 0;
      String.utf8CString.getter();

      v43 = unumsys_open();

      if (SLODWORD(v234[0]) <= 0)
      {
        v71 = MEMORY[0x1865D32D0](v43);
        v28 = v223;
        v44 = v228;
        if (v71)
        {
          v5 = v231;
          goto LABEL_44;
        }

        v72 = MEMORY[0x1865D32C0](v43);
        v5 = v231;
        if (v72 != 10 || !MEMORY[0x1865D32B0](v43))
        {
          goto LABEL_44;
        }

        v73 = String.init(cString:)();
        v75 = v74;
        v76 = String.lowercased()();
        v237._countAndFlagsBits = v73;
        v237._object = v75;
        v238 = v76;
        MEMORY[0x1EEE9AC00](v76._countAndFlagsBits);
        v178 = &v237;
        v77 = v187;
        v78 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v177, v188);
        v187 = v77;
        if (v78)
        {
        }

        else
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v125 = v188;
          }

          else
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v188 + 2) + 1, 1, v188);
          }

          v127 = *(v125 + 2);
          v126 = *(v125 + 3);
          if (v127 >= v126 >> 1)
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v125);
          }

          *(v125 + 2) = v127 + 1;
          v188 = v125;
          v128 = &v125[32 * v127];
          v128[2]._countAndFlagsBits = v73;
          v128[2]._object = v75;
          v128[3] = v76;
        }
      }

      v5 = v231;
      v28 = v223;
      v44 = v228;
LABEL_44:
      v40 = v44 + 1;
      unumsys_close();
      if (v40 == v202)
      {
        goto LABEL_155;
      }
    }

    v56 = v230;
    if (!v208)
    {
      goto LABEL_62;
    }

LABEL_57:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
    }

    v62 = v139[2];
    v61 = v139[3];
    if (v62 >= v61 >> 1)
    {
      v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v139);
    }

    v139[2] = v62 + 1;
    v63 = &v139[4 * v62];
    v63[4] = 0x79636E6572727563;
    v64 = v197;
    v63[5] = 0xE800000000000000;
    v63[6] = v64;
    v63[7] = v221;
    goto LABEL_62;
  }

LABEL_155:

  v129 = String.lowercased()();
  v237._countAndFlagsBits = 1853120876;
  v237._object = 0xE400000000000000;
  v238 = v129;
  MEMORY[0x1EEE9AC00](v129._countAndFlagsBits);
  v178 = &v237;
  if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v177, v188))
  {

    v130 = v203;
    v131 = v204;
    v132 = v185;
  }

  else
  {
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v204;
    if (v133)
    {
      v134 = v188;
    }

    else
    {
      v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v188 + 2) + 1, 1, v188);
    }

    v136 = *(v134 + 2);
    v135 = *(v134 + 3);
    v132 = v185;
    if (v136 >= v135 >> 1)
    {
      v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1, v134);
      v132 = v185;
    }

    *(v134 + 2) = v136 + 1;
    v188 = v134;
    v137 = &v134[32 * v136];
    v137[2]._countAndFlagsBits = 1853120876;
    v137[2]._object = 0xE400000000000000;
    v137[3] = v129;
    v130 = v203;
  }

  v237._countAndFlagsBits = v217;
  v237._object = v5;
  v238._countAndFlagsBits = countAndFlagsBits;
  v238._object = object;
  v239 = v205;
  v240 = v131;
  v241 = v213;
  v242 = v212;
  v243 = v225;
  v244 = v230;
  v245 = v227;
  v246 = v226;
  v247 = countAndFlagsBits_low;
  v248 = v132;
  v249 = v209;
  v250 = v198;
  v251 = v222;
  v252 = v184;
  v253 = v208;
  v254 = v197;
  v255 = v221;
  v256 = v232;
  v257 = v27;
  v258 = v233;
  v259 = v211;
  v260 = v210;
  v261 = v183;
  v262 = v207;
  v263 = v196;
  v264 = v220;
  v265 = v193;
  v266 = v214;
  v267 = v191;
  v268 = v200;
  v269 = v182;
  v270 = v206;
  v271 = v195;
  v272 = v219;
  v273 = v28;
  v274 = v199;
  v275 = v181;
  v276 = v130;
  v277 = v194;
  v278 = v218;
  outlined destroy of Locale.Components(&v237);
  return v188;
}

uint64_t specialized static Locale.Currency.commonISOCurrencies.getter()
{
  v0 = ucurr_openISOCurrencies();
  v1 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v2 = v0;
    type metadata accessor for ICU.Enumerator();
    *(swift_initStackObject() + 16) = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    for (i = uenum_next(); i; i = uenum_next())
    {
      v4 = String.init(cString:)();
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v9;
      }

      *(v1 + 16) = v7 + 1;
      v8 = v1 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
    }
  }

  return v1;
}

uint64_t specialized static Locale.Currency.isoCurrencies.getter()
{
  v0 = ucurr_openISOCurrencies();
  v1 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v2 = v0;
    type metadata accessor for ICU.Enumerator();
    *(swift_initStackObject() + 16) = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    for (i = uenum_next(); i; i = uenum_next())
    {
      v4 = String.init(cString:)();
      v6 = v5;
      v9 = String.lowercased()();
      object = v9._object;
      countAndFlagsBits = v9._countAndFlagsBits;
      v11 = *(v1 + 16);
      v10 = *(v1 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        object = v9._object;
        countAndFlagsBits = v9._countAndFlagsBits;
      }

      *(v1 + 16) = v11 + 1;
      v12 = (v1 + 32 * v11);
      v12[4] = v4;
      v12[5] = v6;
      v12[6] = countAndFlagsBits;
      v12[7] = object;
    }
  }

  return v1;
}

uint64_t outlined init with copy of Locale.Language?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Locale.Region.Category and conformance Locale.Region.Category()
{
  result = lazy protocol witness table cache variable for type Locale.Region.Category and conformance Locale.Region.Category;
  if (!lazy protocol witness table cache variable for type Locale.Region.Category and conformance Locale.Region.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region.Category and conformance Locale.Region.Category);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Region.Category.Inner and conformance Locale.Region.Category.Inner()
{
  result = lazy protocol witness table cache variable for type Locale.Region.Category.Inner and conformance Locale.Region.Category.Inner;
  if (!lazy protocol witness table cache variable for type Locale.Region.Category.Inner and conformance Locale.Region.Category.Inner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region.Category.Inner and conformance Locale.Region.Category.Inner);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == *(v2 + 16) && *(a1 + 24) == *(v2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t PredicateExpressions.StringLocalizedStandardContains.evaluate(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[5];
  v38 = a2[3];
  v39 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v33 - v6;
  v8 = a2[4];
  v9 = a2[2];
  v10 = swift_getAssociatedTypeWitness();
  v37 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = *a1;
  *&v41 = v14;
  v15 = v40;
  v8[2](&v41, v9, v8, v11);
  if (v15)
  {
    return v8 & 1;
  }

  v35 = AssociatedTypeWitness;
  *&v41 = v14;
  (*(v39 + 16))(&v41, v38);
  v40 = 0;
  v17 = v10;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v41 = static LocaleCache.cache;
  v42 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v19 = v18;
  swift_unknownObjectRetain();
  v34 = v7;
  StringProtocol._ephemeralString.getter();
  v20 = v13;
  StringProtocol._ephemeralString.getter();
  v21 = String._bridgeToObjectiveCImpl()();

  v38 = String._bridgeToObjectiveCImpl()();

  dispatch thunk of Collection.startIndex.getter();
  v22 = v41;
  result = dispatch thunk of Collection.endIndex.getter();
  if (v43 >> 14 < v22 >> 14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v39 = v17;
  result = StringProtocol._toUTF16Offsets(_:)();
  v24 = v23 - result;
  if (__OFSUB__(v23, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = result;
  ObjectType = swift_getObjectType();
  v27 = (*(v19 + 488))(ObjectType, v19);
  v8 = [v21 rangeOfString:v38 options:129 range:v25 locale:{v24, v27}];
  v29 = v28;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  result = v8;
  v30 = v8 == 0x7FFFFFFFFFFFFFFFLL;
  LOBYTE(v8) = v8 != 0x7FFFFFFFFFFFFFFFLL;
  v31 = v35;
  v32 = v36;
  if (v30)
  {
LABEL_11:
    swift_unknownObjectRelease();
    (*(v32 + 8))(v34, v31);
    (*(v37 + 8))(v20, v39);
    swift_unknownObjectRelease();
    return v8 & 1;
  }

  if (!__OFADD__(result, v29))
  {
    StringProtocol._toUTF16Indices(_:)();
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.StringLocalizedStandardContains<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.StringLocalizedStandardContains.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.StringLocalizedStandardContains.description.getter()
{
  _StringGuts.grow(_:)(52);
  MEMORY[0x1865CB0E0](0xD000000000000026, 0x800000018147FFE0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A726568746F202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.StringLocalizedStandardContains<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(32);
  v8 = (*(a3 + 16))(a1, *(a2 + 16), a3);

  MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181480010);
  v9 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v8;
}

uint64_t PredicateExpressions.StringLocalizedStandardContains<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  return PredicateExpressions.StringLocalizedStandardContains<>.init(from:)(a1, a2, a3, a4, a5);
}

{
  v36 = a4;
  v38 = a3;
  v34 = a5;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v14;
  v39[0] = v14;
  v39[1] = v15;
  v39[2] = v16;
  v40 = v17;
  v41 = v19;
  v42 = v18;
  v21 = v20(0, v39, v12);
  v32 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v29 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v23;
  v31 = a1;
  v29 = v21;
  __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v24 = v37;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v25 = v30;
  (*(v35 + 32))(v30, v24, v43);
  __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v26 = v29;
  (*(v33 + 32))(&v25[*(v29 + 68)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v27 = v32;
  (*(v32 + 16))(v34, v25, v26);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return (*(v27 + 8))(v25, v26);
}

uint64_t PredicateExpressions.StringLocalizedStandardContains.init(root:other:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void, void *))
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v18 = a10(0, v20);
  return (*(*(a4 - 8) + 32))(a9 + *(v18 + 68), a2, a4);
}

id PredicateExpressions.StringLocalizedCompare.evaluate(_:)(id *a1, void *a2)
{
  v4 = a2[5];
  v24 = a2[3];
  v25 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v22 - v6;
  v7 = a2[4];
  v8 = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *a1;
  v28 = v14;
  v15 = v27;
  (*(v7 + 16))(&v28, v8, v7, v11);
  if (!v15)
  {
    v27 = v10;
    v16 = v23;
    v28 = v14;
    (*(v25 + 16))(&v28, v24);
    StringProtocol._ephemeralString.getter();
    v18 = String._bridgeToObjectiveCImpl()();

    v19 = AssociatedTypeWitness;
    v20 = v26;
    StringProtocol._ephemeralString.getter();
    v21 = String._bridgeToObjectiveCImpl()();

    v14 = [v18 localizedCompare_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v16 + 8))(v20, v19);
    (*(v27 + 8))(v13, v9);
  }

  return v14;
}

id protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.StringLocalizedCompare<A, B>@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = PredicateExpressions.StringLocalizedCompare.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static PredicateExpressions.build_localizedStandardContains<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void, void *))
{
  (*(*(a3 - 8) + 16))(a9, a1);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v18 = a10(0, v20);
  return (*(*(a4 - 8) + 16))(a9 + *(v18 + 68), a2, a4);
}

uint64_t PredicateExpressions.StringLocalizedCompare.description.getter()
{
  _StringGuts.grow(_:)(43);
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181480030);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A726568746F202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.StringLocalizedCompare<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(23);
  v8 = (*(a3 + 16))(a1, *(a2 + 16), a3);

  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181480050);
  v9 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v8;
}

uint64_t PredicateExpressions.StringLocalizedStandardContains<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

{
  return PredicateExpressions.StringLocalizedCompare<>.encode(to:)(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedCompare<A, B>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t getEnumTagSinglePayload for PredicateExpressions.StringLocalizedStandardContains(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *storeEnumTagSinglePayload for PredicateExpressions.StringLocalizedStandardContains(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t KeyPathComparator.order.getter()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 1, v2);
  v7[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
  v5 = v1(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5 & 1;
}

uint64_t KeyPathComparator.order.setter(char a1)
{
  (*(v1 + 64))(v3, v1 + 8, a1 & 1);
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);
  return outlined init with take of Equatable(v3, v1 + 8);
}

void (*KeyPathComparator.order.modify(uint64_t *a1))(__int128 **a1)
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
  *(v3 + 40) = v1;
  v5 = v1[10];
  v6 = v1[4];
  v7 = __swift_project_boxed_opaque_existential_1(v1 + 1, v6);
  *(v4 + 24) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v7, v6);
  LOBYTE(v7) = v5(v4);
  __swift_destroy_boxed_opaque_existential_1(v4);
  *(v4 + 48) = v7 & 1;
  return KeyPathComparator.order.modify;
}

void KeyPathComparator.order.modify(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  (*(v2 + 64))(v2 + 8, *(*a1 + 48));
  __swift_destroy_boxed_opaque_existential_1(v2 + 8);
  outlined init with take of Equatable(v1, v2 + 8);

  free(v1);
}

uint64_t KeyPathComparator.init<A, B>(_:comparator:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = (*a1 + *MEMORY[0x1E69E77B0]);
  v10 = v9[1];
  v22 = *v9;
  type metadata accessor for KeyPath();

  swift_dynamicCast();
  *a5 = v23;
  v11 = *(a4 + 8);
  a5[4] = a3;
  a5[5] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5 + 1);
  v13 = *(a3 - 8);
  (*(v13 + 16))(boxed_opaque_existential_0, a2, a3);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  a5[6] = closure #1 in AnySortComparator.init<A>(_:)partial apply;
  a5[7] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = closure #2 in AnySortComparator.init<A>(_:)partial apply;
  *(v16 + 24) = v15;
  a5[8] = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
  a5[9] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  a5[10] = closure #3 in AnySortComparator.init<A>(_:)partial apply;
  a5[11] = v17;

  v18 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v20 = v19;

  (*(v13 + 8))(a2, a3);
  result = swift_allocObject();
  *(result + 16) = v22;
  *(result + 24) = v10;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = v18;
  *(result + 56) = v20 & 1;
  *(result + 64) = v23;
  a5[12] = partial apply for closure #1 in KeyPathComparator.init<A, B>(_:comparator:);
  a5[13] = result;
  return result;
}

{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v22 = *v8;
  type metadata accessor for KeyPath();

  swift_dynamicCast();
  *a5 = v23;
  v10 = type metadata accessor for OptionalComparator();
  a5[4] = v10;
  a5[5] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5 + 1);
  v12 = *(a3 - 8);
  (*(v12 + 16))(boxed_opaque_existential_0, a2, a3);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  WitnessTable = swift_getWitnessTable();
  *(v13 + 24) = WitnessTable;
  a5[6] = closure #1 in AnySortComparator.init<A>(_:)partial apply;
  a5[7] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 24) = WitnessTable;
  v16 = swift_allocObject();
  *(v16 + 16) = closure #2 in AnySortComparator.init<A>(_:)partial apply;
  *(v16 + 24) = v15;
  a5[8] = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
  a5[9] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = WitnessTable;
  a5[10] = closure #3 in AnySortComparator.init<A>(_:)partial apply;
  a5[11] = v17;

  v18 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  LOBYTE(v10) = v19;

  (*(v12 + 8))(a2, a3);
  result = swift_allocObject();
  *(result + 16) = v22;
  *(result + 24) = *(v9 + 16);
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = v18;
  *(result + 56) = v10 & 1;
  *(result + 64) = v23;
  a5[12] = partial apply for closure #1 in KeyPathComparator.init<A, B>(_:comparator:);
  a5[13] = result;
  return result;
}

uint64_t KeyPathComparator.init<A, B>(_:comparator:order:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v45 = a3;
  v42 = *(a4 - 8);
  v11 = v42;
  v43 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v46[0] = v16;
  v18 = (v17 + *MEMORY[0x1E69E77B0]);
  v19 = *v18;
  v38 = v18[1];
  v39 = v19;
  type metadata accessor for KeyPath();
  v37 = a1;

  swift_dynamicCast();
  v20 = v47;
  *a6 = v47;
  v41 = *(a5 + 8);
  v21 = v41;
  a6[4] = a4;
  a6[5] = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6 + 1);
  v40 = *(v11 + 16);
  v40(boxed_opaque_existential_0, a2, a4);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  a6[6] = closure #1 in AnySortComparator.init<A>(_:)partial apply;
  a6[7] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  v25 = swift_allocObject();
  *(v25 + 16) = closure #2 in AnySortComparator.init<A>(_:)partial apply;
  *(v25 + 24) = v24;
  a6[8] = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
  a6[9] = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  a6[10] = closure #3 in AnySortComparator.init<A>(_:)partial apply;
  a6[11] = v26;

  v27 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v29 = v28;
  v30 = swift_allocObject();
  v31 = v38;
  *(v30 + 16) = v39;
  *(v30 + 24) = v31;
  *(v30 + 32) = a4;
  *(v30 + 40) = a5;
  *(v30 + 48) = v27;
  *(v30 + 56) = v29 & 1;
  *(v30 + 64) = v20;
  a6[12] = partial apply for closure #1 in KeyPathComparator.init<A, B>(_:comparator:order:);
  a6[13] = v30;
  v48 = MEMORY[0x1E69E69B8];
  v49 = MEMORY[0x1E69E69C0];
  *&v47 = swift_allocObject();
  outlined init with take of Equatable((a6 + 1), v46);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  swift_dynamicCast();
  (*(a5 + 40))(v45 & 1, a4, a5);
  v32 = v41;
  a6[4] = a4;
  a6[5] = v32;
  v33 = __swift_allocate_boxed_opaque_existential_0(a6 + 1);
  v34 = v40;
  v40(v33, v15, a4);
  v34(v44, v15, a4);
  AnyHashable.init<A>(_:)();
  v35 = *(v42 + 8);
  v35(v15, a4);

  v35(v43, a4);
  __swift_destroy_boxed_opaque_existential_1((a6 + 1));
  return outlined init with take of Equatable(&v47, (a6 + 1));
}

uint64_t KeyPathComparator.init<A, B>(_:comparator:order:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v45 = a3;
  v41 = a2;
  v11 = *a1;
  v12 = type metadata accessor for OptionalComparator();
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v43 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  v46 = a1;
  v17 = (v11 + *MEMORY[0x1E69E77B0]);
  v18 = *v17;
  v38 = v17[1];
  v39 = v18;
  type metadata accessor for KeyPath();
  v37[2] = a1;

  swift_dynamicCast();
  v19 = v47;
  *a6 = v47;
  a6[4] = v12;
  WitnessTable = swift_getWitnessTable();
  a6[5] = WitnessTable;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6 + 1);
  v42 = *(a4 - 8);
  v21 = a2;
  v22 = a4;
  (*(v42 + 16))(boxed_opaque_existential_0, v21, a4);
  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  v24 = swift_getWitnessTable();
  *(v23 + 24) = v24;
  a6[6] = closure #1 in AnySortComparator.init<A>(_:)partial apply;
  a6[7] = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v12;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = closure #2 in AnySortComparator.init<A>(_:)partial apply;
  *(v26 + 24) = v25;
  a6[8] = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
  a6[9] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v12;
  *(v27 + 24) = v24;
  a6[10] = closure #3 in AnySortComparator.init<A>(_:)partial apply;
  a6[11] = v27;

  v28 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  LOBYTE(v24) = v29;
  v30 = swift_allocObject();
  v31 = v38;
  *(v30 + 16) = v39;
  *(v30 + 24) = *(v31 + 16);
  *(v30 + 32) = v22;
  v37[0] = v22;
  v37[1] = v19;
  *(v30 + 40) = a5;
  *(v30 + 48) = v28;
  *(v30 + 56) = v24 & 1;
  *(v30 + 64) = v19;
  a6[12] = partial apply for closure #1 in KeyPathComparator.init<A, B>(_:comparator:order:);
  a6[13] = v30;
  v48 = MEMORY[0x1E69E69B8];
  v49 = MEMORY[0x1E69E69C0];
  *&v47 = swift_allocObject();
  outlined init with take of Equatable((a6 + 1), &v46);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  swift_dynamicCast();
  (*(a5 + 40))(v45 & 1, v22, a5);
  v32 = WitnessTable;
  a6[4] = v12;
  a6[5] = v32;
  v33 = __swift_allocate_boxed_opaque_existential_0(a6 + 1);
  v34 = v44;
  v35 = *(v44 + 16);
  v35(v33, v16, v12);
  v35(v43, v16, v12);
  AnyHashable.init<A>(_:)();
  (*(v34 + 8))(v16, v12);

  (*(v42 + 8))(v41, v37[0]);
  __swift_destroy_boxed_opaque_existential_1((a6 + 1));
  return outlined init with take of Equatable(&v47, (a6 + 1));
}

uint64_t closure #1 in KeyPathComparator.init<A>(_:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  a4[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  if (a3)
  {
    return swift_getAtKeyPath();
  }

  v11 = *(*(v8 - 8) + 16);

  return v11(boxed_opaque_existential_0, a1 + a2, v8);
}

uint64_t static KeyPathComparator.== infix(_:_:)(void *a1, void *a2)
{
  type metadata accessor for AnyKeyPath();
  if ((MEMORY[0x1865CBE20](*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = __swift_project_boxed_opaque_existential_1(a1 + 1, v4);
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2 + 1, v7);
  v9 = *(v5 + 8);

  return compare #1 <A, B>(_:_:) in static AnySortComparator.== infix(_:_:)(v6, v8, v4, v7, v9);
}

uint64_t KeyPathComparator.hash(into:)()
{
  type metadata accessor for PartialKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int KeyPathComparator.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for PartialKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*protocol witness for SortComparator.order.modify in conformance KeyPathComparator<A>(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = KeyPathComparator.order.modify(v2);
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KeyPathComparator<A>()
{
  Hasher.init(_seed:)();
  KeyPathComparator.hash(into:)();
  return Hasher._finalize()();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t, void)@<X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x1E69E69C0];
  a4[3] = MEMORY[0x1E69E69B8];
  a4[4] = v7;
  *a4 = swift_allocObject();
  return a3(a1, a2 & 1);
}

uint64_t specialized closure #3 in AnySortComparator.init<A>(_:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v3);
  swift_dynamicCast();
  return v2;
}

{
  outlined init with copy of Any(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMd);
  swift_dynamicCast();
  return v2;
}

unint64_t lazy protocol witness table accessor for type OptionalComparator<String.StandardComparator> and conformance OptionalComparator<A>()
{
  result = lazy protocol witness table cache variable for type OptionalComparator<String.StandardComparator> and conformance OptionalComparator<A>;
  if (!lazy protocol witness table cache variable for type OptionalComparator<String.StandardComparator> and conformance OptionalComparator<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalComparator<String.StandardComparator> and conformance OptionalComparator<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in KeyPathComparator.init<A, B>(_:comparator:order:)(uint64_t a1)
{
  return partial apply for closure #1 in KeyPathComparator.init<A, B>(_:comparator:)(a1, closure #1 in KeyPathComparator.init<A>(_:order:));
}

{
  return partial apply for closure #1 in KeyPathComparator.init<A, B>(_:comparator:)(a1, closure #1 in KeyPathComparator.init<A>(_:order:));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = MEMORY[0x1E69E69C0];
  a3[3] = MEMORY[0x1E69E69B8];
  a3[4] = v7;
  *a3 = swift_allocObject();
  return v6(a1, a2 & 1);
}

uint64_t SortDescriptor.AllowedComparison.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SortDescriptor.AllowedComparison.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SortDescriptor<A>.AllowedComparison.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance SortDescriptor<A>.AllowedComparison.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SortDescriptor<A>.AllowedComparison.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance SortDescriptor<A>.AllowedComparison.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SortDescriptor<A>.AllowedComparison.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SortDescriptor.AllowedComparison.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SortDescriptor<A>.AllowedComparison.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SortDescriptor.AllowedComparison.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SortDescriptor<A>.AllowedComparison.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = SortDescriptor.AllowedComparison.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SortDescriptor<A>.AllowedComparison.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for Sequence._customContainsEquatableElement(_:) in conformance AttributedString._InternalRuns();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SortDescriptor<A>.AllowedComparison.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SortDescriptor<A>.AllowedComparison.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SortDescriptor.AllowedComparison.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for SortDescriptor.AllowedComparison.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(a2 - 8);
  v10 = *(v9 + 16);
  v10(&v26, v3, a2);
  if (v29 <= 1u)
  {
    v21 = v6;
    (*(v9 + 8))(&v26, a2);
LABEL_8:
    v15 = type metadata accessor for EncodingError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v17[3] = a2;
    v18 = swift_allocObject();
    *v17 = v18;
    v10((v18 + 16), v3, a2);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v15);
    swift_willThrow();
    return (*(v22 + 8))(v8, v21);
  }

  if (v29 == 2)
  {
    v21 = v6;

    outlined destroy of AnySortComparator(&v26);
    goto LABEL_8;
  }

  if (v29 == 3)
  {
    v11 = v26;
    v12 = v27;
    v13 = v28;
    LOBYTE(v23) = 0;
    v14 = v21;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v14)
    {
      v23 = v11;
      v24 = v12;
      v25 = v13;
      v30 = 1;
      lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v22 + 8))(v8, v6);
}

uint64_t static SortDescriptor.AllowedComparison.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SortDescriptor.AllowedComparison();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v6(v25, a1, v4);
  v6(&v27, a2, v4);
  if (v26 <= 1u)
  {
    if (v26)
    {
      v6(&v20, v25, v4);
      v9 = v23;
      if (v33 != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6(&v20, v25, v4);
      v9 = v23;
      if (v33)
      {
LABEL_8:

        goto LABEL_22;
      }
    }

    v14 = v28.i64[0];
    if (v20 == v27.i64[0] && ((v21 ^ v27.u8[8]) & 1) == 0 && ((v22 ^ v27.u8[9]) & 1) == 0)
    {
      v15 = v9;
      type metadata accessor for AnyKeyPath();

      v8 = MEMORY[0x1865CBE20](v15, v14);

      goto LABEL_20;
    }

LABEL_26:

    (*(v5 + 8))(v25, v4);
    goto LABEL_23;
  }

  if (v26 == 2)
  {
    v6(&v20, v25, v4);
    v10 = v24;
    if (v33 != 2)
    {

      outlined destroy of AnySortComparator(&v20);
      goto LABEL_22;
    }

    v11 = v32.i64[1];
    v18[2] = v29;
    v18[3] = v30;
    v18[4] = v31;
    v19 = v32.i64[0];
    v18[0] = v27;
    v18[1] = v28;
    v12 = specialized static AnySortComparator.== infix(_:_:)(&v20, v18);
    outlined destroy of AnySortComparator(&v20);
    if (v12)
    {
      type metadata accessor for AnyKeyPath();

      v8 = MEMORY[0x1865CBE20](v10, v11);

      outlined destroy of AnySortComparator(v18);
LABEL_20:
      (*(v5 + 8))(v25, v4);
      return v8 & 1;
    }

    outlined destroy of AnySortComparator(v18);
    goto LABEL_26;
  }

  if (v26 != 3)
  {
    if (v33 == 4)
    {
      v13 = vorrq_s8(vorrq_s8(vorrq_s8(v29, v31), vorrq_s8(v30, v32)), vorrq_s8(v27, v28));
      if (!*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
      {
        (*(v5 + 8))(v25, v4);
        v8 = 1;
        return v8 & 1;
      }
    }

    goto LABEL_22;
  }

  v6(&v20, v25, v4);
  if (v33 != 3)
  {
LABEL_22:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 8))(v25, TupleTypeMetadata2);
LABEL_23:
    v8 = 0;
    return v8 & 1;
  }

  v7 = (v20 != v27.i64[0]) | v21 ^ v27.i8[8] | v22 ^ v27.i8[9];
  (*(v5 + 8))(v25, v4);
  v8 = v7 ^ 1;
  return v8 & 1;
}

uint64_t SortDescriptor.AllowedComparison.hash(into:)(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 16))(&v18, v2, a2);
  if (v24 <= 1u)
  {
    v7 = v18;
    v8 = BYTE8(v18);
    v9 = BYTE9(v18);
    v10 = v19;
    if (v24)
    {
      MEMORY[0x1865CD060](1);
      MEMORY[0x1865CD060](v7);
      Hasher._combine(_:)(v8);
      MEMORY[0x1865CD060](v9);
      *&v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v7);
      Hasher._combine(_:)(v8);
      MEMORY[0x1865CD060](v9);
      *&v12 = v10;
    }

    type metadata accessor for KeyPath();
    dispatch thunk of Hashable.hash(into:)();
  }

  if (v24 == 2)
  {
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    v12 = v18;
    v13 = v19;
    MEMORY[0x1865CD060](2);
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for PartialKeyPath();
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of AnySortComparator(&v12);
  }

  if (v24 == 3)
  {
    v3 = v18;
    v4 = BYTE8(v18);
    v5 = BYTE9(v18);
    MEMORY[0x1865CD060](4);
    MEMORY[0x1865CD060](v3);
    Hasher._combine(_:)(v4);
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  return MEMORY[0x1865CD060](v6);
}

Swift::Int SortDescriptor.AllowedComparison.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  SortDescriptor.AllowedComparison.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SortDescriptor<A>.AllowedComparison(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  SortDescriptor.AllowedComparison.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t SortDescriptor.init(_:comparator:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  type metadata accessor for KeyPath();
  result = swift_dynamicCast();
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  *(a2 + 40) = v7;
  *(a2 + 120) = 0;
  return result;
}

{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  type metadata accessor for KeyPath();
  result = swift_dynamicCast();
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  *(a2 + 40) = v7;
  *(a2 + 120) = 1;
  return result;
}

uint64_t SortDescriptor.init(_:comparator:order:)@<X0>(uint64_t *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2 & 1;
  *a3 = a2 & 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  type metadata accessor for KeyPath();
  result = swift_dynamicCast();
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  *(a3 + 33) = v6;
  *(a3 + 40) = v8;
  *(a3 + 120) = 0;
  return result;
}

{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2 & 1;
  *a3 = a2 & 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  type metadata accessor for KeyPath();
  result = swift_dynamicCast();
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  *(a3 + 33) = v6;
  *(a3 + 40) = v8;
  *(a3 + 120) = 1;
  return result;
}

uint64_t SortDescriptor.init<A>(_:comparator:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  return SortDescriptor.init<A>(_:comparator:)(a1, a2);
}

{
  return SortDescriptor.init<A>(_:comparator:)(a1, a2);
}

{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);

  v6 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  v8 = v7;

  if (v8)
  {
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *a2 = v5;
    if (one-time initialization token for lexical != -1)
    {
      swift_once();
    }

    v9 = static String.StandardComparator.lexical;
    v10 = word_1EA7AE628;
    v11 = HIBYTE(word_1EA7AE628);

    if (v3 != v9 || ((v4 ^ v10) & 1) != 0 || ((v5 ^ v11) & 1) != 0)
    {
      *(a2 + 32) = v4;
      *(a2 + 33) = 0;
      v13 = 3;
    }

    else
    {
      v3 = 0;
      *(a2 + 112) = 0;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 32) = 0u;
      v13 = 4;
    }

    *(a2 + 24) = v3;
    *(a2 + 120) = v13;
  }

  else
  {
    _StringGuts.grow(_:)(111);
    swift_getMetatypeMetadata();
    v14 = String.init<A>(describing:)();
    MEMORY[0x1865CB0E0](v14);

    MEMORY[0x1865CB0E0](0xD00000000000006DLL, 0x8000000181480090);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SortDescriptor.init<A>(_:comparator:order:)@<X0>(uint64_t *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  return SortDescriptor.init<A>(_:comparator:order:)(a1, a2, a3);
}

{
  return SortDescriptor.init<A>(_:comparator:order:)(a1, a2, a3);
}

{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  v10 = v9;

  if (v10)
  {
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
    *a3 = a2 & 1;
    if (one-time initialization token for lexical != -1)
    {
      swift_once();
    }

    v11 = static String.StandardComparator.lexical;
    v12 = word_1EA7AE628;
    v13 = HIBYTE(word_1EA7AE628);

    if (v5 != v11 || ((v6 ^ v12) & 1) != 0 || ((v7 ^ v13) & 1) != 0)
    {
      *(a3 + 32) = v6;
      *(a3 + 33) = 0;
      v15 = 3;
    }

    else
    {
      v5 = 0;
      *(a3 + 112) = 0;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 32) = 0u;
      v15 = 4;
    }

    *(a3 + 24) = v5;
    *(a3 + 120) = v15;
  }

  else
  {
    _StringGuts.grow(_:)(111);
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    MEMORY[0x1865CB0E0](v16);

    MEMORY[0x1865CB0E0](0xD00000000000006DLL, 0x8000000181480090);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void SortDescriptor.init<A>(_:comparing:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 key];
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v7);
    if (TaggedPointerTag)
    {
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

      v16 = [v8 UTF8String];
      if (!v16)
      {
        __break(1u);
        goto LABEL_70;
      }

      v17 = String.init(utf8String:)(v16);
      if (v18)
      {
LABEL_16:
        v10 = v17;
        v12 = v18;

        goto LABEL_21;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v44;
      v12 = v46;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_7:
  LOBYTE(v44) = 0;
  if (__CFStringIsCF())
  {

LABEL_11:
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

  if (![v13 length])
  {

    goto LABEL_11;
  }

  v10 = String.init(_cocoaString:)();
  v12 = v19;
LABEL_21:

LABEL_22:
  v20 = [a1 selector];
  if (!v20)
  {

LABEL_30:

    goto LABEL_31;
  }

  v21 = NSStringFromSelector(v20);
  if (!v21)
  {
LABEL_43:
    v27 = 0;
    goto LABEL_44;
  }

  v22 = v21;
  v23 = _objc_isTaggedPointer(v21);
  v24 = v22;
  v25 = v24;
  if (!v23)
  {
    goto LABEL_32;
  }

  v26 = _objc_getTaggedPointerTag(v24);
  if (!v26)
  {
    goto LABEL_39;
  }

  if (v26 != 22)
  {
    if (v26 == 2)
    {
      MEMORY[0x1EEE9AC00](v26);
      v27 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v29 = v28;

LABEL_48:
      if (v27 == 0x3A657261706D6F63 && v29 == 0xE800000000000000)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_32:
    LOBYTE(v45) = 0;
    if (__CFStringIsCF())
    {
      v27 = 0;

LABEL_44:
      v29 = 0xE000000000000000;
LABEL_50:
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
LABEL_51:

        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 4;
LABEL_67:
        v42 = v39 | v37;
        v43 = [a1 ascending];

        *a2 = v43 ^ 1;
        *(a2 + 1) = *v47;
        *(a2 + 4) = *&v47[3];
        *(a2 + 8) = v10;
        *(a2 + 16) = v12;
        *(a2 + 24) = v38;
        *(a2 + 32) = v42;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 88) = 0u;
        *(a2 + 104) = 0u;
        *(a2 + 120) = v40;
        return;
      }

      if (v27 == 0xD000000000000019 && 0x8000000181480100 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (one-time initialization token for localizedStandard != -1)
        {
          swift_once();
        }

        v38 = static String.StandardComparator.localizedStandard;
        v37 = word_1EA7AF548;
        if ((word_1EA7AF548 & 0x100) != 0)
        {
LABEL_58:
          v40 = 3;
          v39 = 256;
          goto LABEL_67;
        }

LABEL_66:
        v39 = 0;
        v40 = 3;
        goto LABEL_67;
      }

      if (v27 == 0xD000000000000011 && 0x8000000181480120 == v29)
      {

        goto LABEL_63;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
LABEL_63:
        if (one-time initialization token for localized != -1)
        {
          swift_once();
        }

        v38 = static String.StandardComparator.localized;
        v37 = word_1EA7AE610;
        if (HIBYTE(word_1EA7AE610) == 1)
        {
          goto LABEL_58;
        }

        goto LABEL_66;
      }

LABEL_31:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      *(a2 + 120) = 0;
      return;
    }

    v30 = v25;
    v31 = String.init(_nativeStorage:)();
    if (v32)
    {
      v27 = v31;
      v29 = v32;

      goto LABEL_48;
    }

    if (![(NSString *)v30 length])
    {

      goto LABEL_43;
    }

    v27 = String.init(_cocoaString:)();
    v29 = v36;
LABEL_47:

    goto LABEL_48;
  }

  v33 = [(NSString *)v25 UTF8String];
  if (v33)
  {
    v34 = String.init(utf8String:)(v33);
    if (v35)
    {
LABEL_40:
      v27 = v34;
      v29 = v35;

      goto LABEL_47;
    }

    __break(1u);
LABEL_39:
    _CFIndirectTaggedPointerStringGetContents();
    v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v35)
    {
      [(NSString *)v25 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v27 = v45;
      v29 = v46;
      goto LABEL_47;
    }

    goto LABEL_40;
  }

LABEL_70:
  __break(1u);
}

uint64_t SortDescriptor.compare(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = type metadata accessor for SortDescriptor.AllowedComparison();
  (*(*(v10 - 8) + 16))(v127, v3 + 24, v10);
  if (v129 > 2u)
  {
    v111 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v112 = v8;
    v113 = a1;
    v110 = a2;
    v39 = *(a3 - 8);
    v40 = *(v39 + 16);
    v40(v127, v3, a3);
    v40(&v121, v127, a3);
    if (!v122)
    {
      goto LABEL_66;
    }

    v41 = objc_allocWithZone(NSSortDescriptor);
    v42 = String._bridgeToObjectiveCImpl()();
    v43 = [v41 initWithKey:v42 ascending:(v121 & 1) == 0 selector:SortDescriptor.AllowedComparison.selector.getter(v10)];
    swift_unknownObjectRelease();
    v45 = *(v39 + 8);
    v44 = v39 + 8;
    v45(v127, a3);
    v45(&v121, a3);
    if (_swift_isClassOrObjCExistentialType())
    {
      v46 = v112;
      v47 = v111;
      if (v9 == 8)
      {
        v44 = *v113;
        swift_unknownObjectRetain();
        if (_swift_isClassOrObjCExistentialType())
        {
LABEL_18:
          v48 = *v110;
          swift_unknownObjectRetain();
LABEL_19:
          v38 = [v43 compareObject:v44 toObject:v48];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return v38;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v47 = v111;
      v46 = v112 + 16;
      v103 = *(v112 + 2);
      v103(v111, v113, v7);
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      if ((_swift_isClassOrObjCExistentialType() & 1) == 0)
      {
LABEL_58:
        v103(v47, v110, v7);
        v48 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        goto LABEL_19;
      }

      if (v9 == 8)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
LABEL_57:
    v103 = *(v46 + 2);
    goto LABEL_58;
  }

  if (!v129)
  {
    v49 = *&v127[0];
    v50 = BYTE8(v127[0]);
    v51 = BYTE9(v127[0]);

    swift_getAtKeyPath();

    swift_getAtKeyPath();

    v16 = *(&v116[0] + 1);
    LODWORD(v113) = v51;
    if (v50 != 1)
    {
      v75 = v49;
      v76 = Substring.init<A>(_:)();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v121 = v116[0];
      v83 = Substring.init<A>(_:)();
      v87 = Substring._unlocalizedCompare(other:options:)(v83, v84, v85, v86, v75, v76, v78, v80, v82);

      v88 = 1;
      if (v87 == 1)
      {
        v89 = -1;
      }

      else
      {
        v89 = v87;
      }

      if (v87 != -1)
      {
        v88 = v89;
      }

      if (v113)
      {
        return v88;
      }

      else
      {
        return v87;
      }
    }

    v111 = v49;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v121 = static LocaleCache.cache;
    *&v122 = qword_1ED4404B0;
    v14 = LocaleCache._currentAndCache.getter();
    v112 = v52;
    v114 = v116[0];
    v119 = v117;
    v120 = v118;
    lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol._ephemeralString.getter();
    v54 = v53;

    StringProtocol._ephemeralString.getter();
    v110 = String._bridgeToObjectiveCImpl()();

    v109 = String._bridgeToObjectiveCImpl()();

    v55 = StringProtocol._toUTF16Offsets(_:)();
    v57 = v56;

    v108 = v57 - v55;
    if (__OFSUB__(v57, v55))
    {
      __break(1u);
    }

    else
    {
      ObjectType = swift_getObjectType();
      v60 = *(v112 + 61);
      swift_unknownObjectRetain();
      v61 = v60(ObjectType, v112);
      v112 = v14;
      swift_unknownObjectRelease();
      v57 = type metadata accessor for NSLocale();
      *(&v122 + 1) = v57;
      *&v121 = v61;
      v62 = __swift_project_boxed_opaque_existential_1(&v121, v57);
      v107 = &v106;
      v16 = *(v57 - 8);
      v63 = v16[8];
      v64 = MEMORY[0x1EEE9AC00](v62);
      v14 = ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = (&v106 - v14);
      v15 = v16 + 2;
      v54 = v16[2];
      v54(&v106 - v14, v64);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      if (isClassOrObjCExistentialType)
      {
        if (v63 != 8)
        {
          __break(1u);
LABEL_62:
          swift_once();
          goto LABEL_8;
        }

        v65 = *v17;
        v66 = v16[1];
        swift_unknownObjectRetain();
        v66(&v106 - v14, v57);
LABEL_27:
        v67 = v113;
        v68 = v111;
        v70 = v109;
        v69 = v110;
        __swift_destroy_boxed_opaque_existential_1(&v121);
        v38 = [v69 compare:v70 options:v68 range:v55 locale:{v108, v65}];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v67)
        {
          goto LABEL_46;
        }

        return v38;
      }
    }

    v106 = &v106;
    v104 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    (v54)(&v106 - v14, v17, v57, v104);
    v65 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v16[1])(v17, v57);
    goto LABEL_27;
  }

  if (v129 != 1)
  {
    v123 = v127[2];
    v124 = v127[3];
    v125 = v127[4];
    v126 = v128;
    v121 = v127[0];
    v122 = v127[1];
    swift_retain_n();
    swift_getAtPartialKeyPath();

    swift_getAtPartialKeyPath();

    v71 = *(&v123 + 1);
    v72 = *(&v122 + 1);
    v73 = __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    v115 = v72;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v114);
    (*(*(v72 - 8) + 16))(boxed_opaque_existential_0, v73, v72);
    v38 = v71(&v114, &v117, v116);

    __swift_destroy_boxed_opaque_existential_1(v116);
    __swift_destroy_boxed_opaque_existential_1(&v117);
    __swift_destroy_boxed_opaque_existential_1(&v114);
    outlined destroy of AnySortComparator(&v121);
    return v38;
  }

  v11 = *&v127[0];
  v12 = BYTE8(v127[0]);
  v13 = BYTE9(v127[0]);

  swift_getAtKeyPath();
  v14 = v117;
  v15 = v118;

  swift_getAtKeyPath();
  v16 = *(&v116[0] + 1);
  if (!v118)
  {

    if (!*(&v116[0] + 1))
    {
      return 0;
    }

    if (*v3)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  v17 = *&v116[0];

  if (!*(&v116[0] + 1))
  {

    if (*v3)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  LODWORD(v113) = v13;
  if ((v12 & 1) == 0)
  {
    v90 = Substring.init<A>(_:)();
    v92 = v91;
    v93 = v11;
    v95 = v94;
    v97 = v96;
    v121 = v116[0];
    v98 = Substring.init<A>(_:)();
    v38 = Substring._unlocalizedCompare(other:options:)(v98, v99, v100, v101, v93, v90, v92, v95, v97);

    if (v113)
    {
      goto LABEL_46;
    }

    return v38;
  }

  v110 = v11;
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_62;
  }

LABEL_8:
  v121 = static LocaleCache.cache;
  *&v122 = qword_1ED4404B0;
  v18 = LocaleCache._currentAndCache.getter();
  v112 = v19;
  *&v114 = v17;
  *(&v114 + 1) = v16;
  v119 = v14;
  v120 = v15;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v21 = v20;

  v22 = MEMORY[0x1E69E6158];
  StringProtocol._ephemeralString.getter();
  v111 = String._bridgeToObjectiveCImpl()();

  v109 = String._bridgeToObjectiveCImpl()();

  v23 = StringProtocol._toUTF16Offsets(_:)();
  v25 = v24;

  v107 = (v25 - v23);
  v108 = v23;
  if (__OFSUB__(v25, v23))
  {
    __break(1u);
    goto LABEL_64;
  }

  v27 = swift_getObjectType();
  v28 = v112;
  v29 = *(v112 + 61);
  swift_unknownObjectRetain();
  v30 = v29(v27, v28);
  v112 = v18;
  swift_unknownObjectRelease();
  v25 = type metadata accessor for NSLocale();
  *(&v122 + 1) = v25;
  *&v121 = v30;
  v31 = __swift_project_boxed_opaque_existential_1(&v121, v25);
  v15 = *(v25 - 8);
  v32 = v15[8];
  v33 = MEMORY[0x1EEE9AC00](v31);
  v22 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v106 - v22;
  v21 = v15[2];
  v21(&v106 - v22, v33);
  v26 = _swift_isClassOrObjCExistentialType();
  if ((v26 & 1) == 0)
  {
LABEL_64:
    v106 = &v106;
    v105 = MEMORY[0x1EEE9AC00](v26);
    (v21)(&v106 - v22, v14, v25, v105);
    v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v15[1])(v14, v25);
LABEL_12:
    v36 = v113;
    v37 = v111;
    __swift_destroy_boxed_opaque_existential_1(&v121);
    v38 = [v37 compare:v109 options:v110 range:v108 locale:{v107, v34}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v36)
    {
LABEL_46:
      if (v38 == -1)
      {
        return 1;
      }

      else if (v38 == 1)
      {
        return -1;
      }
    }

    return v38;
  }

  if (v32 == 8)
  {
    v34 = *v14;
    v35 = v15[1];
    swift_unknownObjectRetain();
    v35(&v106 - v22, v25);
    goto LABEL_12;
  }

  __break(1u);
LABEL_66:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SortDescriptor.hash(into:)()
{
  if (*(v0 + 2))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1865CD060](*v0);
  v1 = type metadata accessor for SortDescriptor.AllowedComparison();
  (*(*(v1 - 8) + 16))(&v17, v0 + 24, v1);
  if (v23 <= 1u)
  {
    v6 = v17;
    v7 = BYTE8(v17);
    v8 = BYTE9(v17);
    v9 = v18;
    if (v23)
    {
      MEMORY[0x1865CD060](1);
      MEMORY[0x1865CD060](v6);
      Hasher._combine(_:)(v7);
      MEMORY[0x1865CD060](v8);
      *&v11 = v9;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v6);
      Hasher._combine(_:)(v7);
      MEMORY[0x1865CD060](v8);
      *&v11 = v9;
    }

    type metadata accessor for KeyPath();
    dispatch thunk of Hashable.hash(into:)();
  }

  if (v23 == 2)
  {
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v11 = v17;
    v12 = v18;
    MEMORY[0x1865CD060](2);
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for PartialKeyPath();
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of AnySortComparator(&v11);
  }

  if (v23 == 3)
  {
    v2 = v17;
    v3 = BYTE8(v17);
    v4 = BYTE9(v17);
    MEMORY[0x1865CD060](4);
    MEMORY[0x1865CD060](v2);
    Hasher._combine(_:)(v3);
    v5 = v4;
  }

  else
  {
    v5 = 3;
  }

  return MEMORY[0x1865CD060](v5);
}

uint64_t static SortDescriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v4 != v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v8;
      v10 = v9;
      a1 = v7;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v5)
  {
    return 0;
  }

  v11 = (a1 + 24);
  v12 = (a2 + 24);

  return static SortDescriptor.AllowedComparison.== infix(_:_:)(v11, v12);
}

uint64_t SortDescriptor.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564726FLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6972745379656BLL && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SortDescriptor<A>.CodingKeys()
{
  Hasher.init(_seed:)();
  URL.ParseStrategy.ComponentParseStrategy.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SortDescriptor<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SortDescriptor.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SortDescriptor<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized URL.ParseStrategy.ComponentParseStrategy.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SortDescriptor<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SortDescriptor<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int SortDescriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  SortDescriptor.hash(into:)();
  return Hasher._finalize()();
}

void (*protocol witness for SortComparator.order.modify in conformance SortDescriptor<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SortDescriptor.order.modify();
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SortDescriptor<A>()
{
  Hasher.init(_seed:)();
  SortDescriptor.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NSSortDescriptor.init<A>(_:)(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v3 = String._bridgeToObjectiveCImpl()();
    v4 = *a1;
    v5 = type metadata accessor for SortDescriptor.AllowedComparison();
    v6 = [v2 initWithKey:v3 ascending:(v4 & 1) == 0 selector:SortDescriptor.AllowedComparison.selector.getter(v5)];
    swift_unknownObjectRelease();
    v7 = type metadata accessor for SortDescriptor();
    (*(*(v7 - 8) + 8))(a1, v7);
    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for SortDescriptor<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SortDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 121))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SortDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SortDescriptor.AllowedComparison(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 97))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 96);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SortDescriptor.AllowedComparison(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SortDescriptor.AllowedComparison(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t String._lowercased(with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (*a1)
  {
    v9 = a1[1];
    ObjectType = swift_getObjectType();
    (*(v9 + 64))(ObjectType, v9);
  }

  v11 = specialized static ICU.CaseMap.caseMappingForLocale(_:)();

  if (v11 && (v12 = String.utf8CString.getter(), v13 = a4(32, v11, v12 + 32, *(v12 + 16)), v15 = v14, , , v15))
  {
    return v13;
  }

  else
  {
    return a5(a2, a3);
  }
}

uint64_t static String.StandardComparator.localizedStandard.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for localizedStandard != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EA7AF548;
  v2 = HIBYTE(word_1EA7AF548);
  *a1 = static String.StandardComparator.localizedStandard;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

NSComparisonResult __swiftcall String.StandardComparator.compare(_:_:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v5 = a1._object;
  v6 = a1._countAndFlagsBits;
  v7 = *v2;
  v8 = *(v2 + 9);
  if (*(v2 + 8) == 1)
  {
    v45 = *v2;
    v46 = v8;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v47 = static LocaleCache.cache;
    v48 = qword_1ED4404B0;
    LocaleCache._currentAndCache.getter();
    v10 = v9;
    v50[2] = countAndFlagsBits;
    v50[3] = object;
    v50[0] = v6;
    v50[1] = v5;
    v11 = lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    StringProtocol._ephemeralString.getter();
    v12 = String._bridgeToObjectiveCImpl()();

    v13 = String._bridgeToObjectiveCImpl()();

    v14 = v50;
    result = StringProtocol._toUTF16Offsets(_:)();
    if (__OFSUB__(v16, result))
    {
      __break(1u);
    }

    else
    {
      v5 = result;
      v42 = v16 - result;
      v43 = v13;
      v44 = v12;
      ObjectType = swift_getObjectType();
      v18 = *(v10 + 488);
      swift_unknownObjectRetain();
      v19 = v18(ObjectType, v10);
      swift_unknownObjectRelease();
      v14 = type metadata accessor for NSLocale();
      v49 = v14;
      *&v47 = v19;
      v20 = __swift_project_boxed_opaque_existential_1(&v47, v14);
      v6 = *(v14 - 1);
      v21 = v6[8];
      v22 = MEMORY[0x1EEE9AC00](v20);
      v12 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = (&v41 - v12);
      v13 = v6[2];
      v13(&v41 - v12, v22);
      result = _swift_isClassOrObjCExistentialType();
      if (result)
      {
        if (v21 != 8)
        {
          __break(1u);
          return result;
        }

        v23 = *v11;
        v24 = v6[1];
        swift_unknownObjectRetain();
        v24(&v41 - v12, v14);
        goto LABEL_8;
      }
    }

    v41 = &v41;
    v40 = MEMORY[0x1EEE9AC00](result);
    (v13)(&v41 - v12, v11, v14, v40);
    v23 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v6[1])(v11, v14);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v25 = [v44 compare:v43 options:v45 range:v5 locale:{v42, v23}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = v25;
    if (v46)
    {
      if (v25 == -1)
      {
        return 1;
      }

      else if (v25 == 1)
      {
        return -1;
      }
    }

    return result;
  }

  v26 = Substring.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  *&v47 = countAndFlagsBits;
  *(&v47 + 1) = object;

  v33 = Substring.init<A>(_:)();
  v37 = Substring._unlocalizedCompare(other:options:)(v33, v34, v35, v36, v7, v26, v28, v30, v32);

  v38 = NSOrderedDescending;
  if (v37 == NSOrderedDescending)
  {
    v39 = -1;
  }

  else
  {
    v39 = v37;
  }

  if (v37 != NSOrderedAscending)
  {
    v38 = v39;
  }

  if (v8)
  {
    return v38;
  }

  else
  {
    return v37;
  }
}

uint64_t static String.StandardComparator.localized.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for localized != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EA7AE610;
  v2 = HIBYTE(word_1EA7AE610);
  *a1 = static String.StandardComparator.localized;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

uint64_t static String.StandardComparator.lexical.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for lexical != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EA7AE628;
  v2 = HIBYTE(word_1EA7AE628);
  *a1 = static String.StandardComparator.lexical;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

unint64_t one-time initialization function for validAlgorithms()
{
  if (one-time initialization token for localizedStandard != -1)
  {
    swift_once();
  }

  v0 = static String.StandardComparator.localizedStandard;
  v1 = word_1EA7AF548;
  v2 = HIBYTE(word_1EA7AF548);
  if (one-time initialization token for localized != -1)
  {
    swift_once();
  }

  v3 = static String.StandardComparator.localized;
  v4 = word_1EA7AE610;
  v5 = HIBYTE(word_1EA7AE610);
  if (one-time initialization token for lexical != -1)
  {
    swift_once();
  }

  v42 = word_1EA7AE628;
  v6 = HIBYTE(word_1EA7AE628);
  v41 = static String.StandardComparator.lexical;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10FoundationE18StandardComparatorV10ObjectiveC8SelectorVGMd);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  if (v2)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v0, v8 | v1);
  if (v10)
  {
    __break(1u);
    goto LABEL_39;
  }

  v11 = v7 + 64;
  *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v12 = *(v7 + 48) + 16 * result;
  *v12 = v0;
  *(v12 + 8) = v1;
  *(v12 + 9) = v2;
  *(*(v7 + 56) + 8 * result) = sel_localizedStandardCompare_;
  v13 = *(v7 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v7 + 16) = v15;
  if (v2)
  {
    v16 = 0;
  }

  else
  {
    v16 = 256;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v0, v16 | v1);
  if (v17)
  {
    goto LABEL_40;
  }

  *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v18 = *(v7 + 48) + 16 * result;
  *v18 = v0;
  *(v18 + 8) = v1;
  *(v18 + 9) = v2 ^ 1;
  *(*(v7 + 56) + 8 * result) = sel_localizedStandardCompare_;
  v19 = *(v7 + 16);
  v14 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v14)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v7 + 16) = v20;
  if (v5)
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v3, v21 | v4);
  if (v22)
  {
    goto LABEL_42;
  }

  *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v23 = *(v7 + 48) + 16 * result;
  *v23 = v3;
  *(v23 + 8) = v4;
  *(v23 + 9) = v5;
  *(*(v7 + 56) + 8 * result) = sel_localizedCompare_;
  v24 = *(v7 + 16);
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v7 + 16) = v25;
  if (v5)
  {
    v26 = 0;
  }

  else
  {
    v26 = 256;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v3, v26 | v4);
  if (v27)
  {
    goto LABEL_44;
  }

  *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v28 = *(v7 + 48) + 16 * result;
  *v28 = v3;
  *(v28 + 8) = v4;
  *(v28 + 9) = v5 ^ 1;
  *(*(v7 + 56) + 8 * result) = sel_localizedCompare_;
  v29 = *(v7 + 16);
  v14 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v14)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v7 + 16) = v30;
  if (v6)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v41, v31 | v42);
  if (v32)
  {
    goto LABEL_46;
  }

  *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v33 = *(v7 + 48) + 16 * result;
  *v33 = v41;
  *(v33 + 8) = v42;
  *(v33 + 9) = v6;
  *(*(v7 + 56) + 8 * result) = sel_compare_;
  v34 = *(v7 + 16);
  v14 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v14)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v7 + 16) = v35;
  if (v6)
  {
    v36 = 0;
  }

  else
  {
    v36 = 256;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v41, v36 | v42);
  if (v37)
  {
    goto LABEL_48;
  }

  *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v38 = *(v7 + 48) + 16 * result;
  *v38 = v41;
  *(v38 + 8) = v42;
  *(v38 + 9) = v6 ^ 1;
  *(*(v7 + 56) + 8 * result) = sel_compare_;
  v39 = *(v7 + 16);
  v14 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v14)
  {
    *(v7 + 16) = v40;
    static String.StandardComparator.validAlgorithms = v7;
    return result;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance String.StandardComparator.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696C61636F4C7369;
  v4 = 0xEB0000000064657ALL;
  if (v2 != 1)
  {
    v3 = 0x726564726FLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x696C61636F4C7369;
  v8 = 0xEB0000000064657ALL;
  if (*a2 != 1)
  {
    v7 = 0x726564726FLL;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.StandardComparator.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance String.StandardComparator.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.StandardComparator.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance String.StandardComparator.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized String.StandardComparator.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance String.StandardComparator.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB0000000064657ALL;
  v5 = 0x696C61636F4C7369;
  if (v2 != 1)
  {
    v5 = 0x726564726FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736E6F6974706FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance String.StandardComparator.CodingKeys()
{
  v1 = 0x696C61636F4C7369;
  if (*v0 != 1)
  {
    v1 = 0x726564726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.StandardComparator.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized String.StandardComparator.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.StandardComparator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.StandardComparator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t String.StandardComparator.init(_:order:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 9) = a2 & 1;
  return result;
}

uint64_t String.StandardComparator.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE18StandardComparatorV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v24) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v24) = 1;
    LODWORD(v23) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v26) = 2;
    lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v24;
    if (one-time initialization token for validAlgorithms != -1)
    {
      swift_once();
    }

    if (*(static String.StandardComparator.validAlgorithms + 2) && (!v10 ? (v11 = 0) : (v11 = 256), specialized __RawDictionaryStorage.find<A>(_:)(v9, v11 & 0xFFFFFFFE | v23 & 1), v12 = v10, v13 = v23, (v14 & 1) != 0))
    {
      v15 = v5;
      v16 = v12;
      (*(v6 + 8))(v8, v15);
      *a2 = v9;
      *(a2 + 8) = v13 & 1;
      *(a2 + 9) = v16;
    }

    else
    {
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      v23 = KeyedDecodingContainer.codingPath.getter();
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v24 = 0xD000000000000014;
      v25 = 0x8000000181480310;
      v26 = &type metadata for String.StandardComparator;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE18StandardComparatorVmMd);
      v20 = String.init<A>(describing:)();
      MEMORY[0x1865CB0E0](v20);

      MEMORY[0x1865CB0E0](0xD00000000000001ALL, 0x8000000181480330);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B00], v17);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t String.StandardComparator.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  MEMORY[0x1865CD060](*v0);
  Hasher._combine(_:)(v1);
  return MEMORY[0x1865CD060](v2);
}

uint64_t String.StandardComparator.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE18StandardComparatorV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v12 = *(v1 + 8);
  v11 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = v11;
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v9;
    v13 = 2;
    lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int String.StandardComparator.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

NSComparisonResult protocol witness for SortComparator.compare(_:_:) in conformance String.StandardComparator(uint64_t *a1, Swift::String *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4._countAndFlagsBits = *a1;
  v4._object = v2;
  return String.StandardComparator.compare(_:_:)(v4, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.StandardComparator()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance String.StandardComparator()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  MEMORY[0x1865CD060](*v0);
  Hasher._combine(_:)(v1);
  return MEMORY[0x1865CD060](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.StandardComparator()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance String.Comparator.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C61636F6CLL;
  if (v2 != 1)
  {
    v4 = 0x726564726FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C61636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x726564726FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.Comparator.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance String.Comparator.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.Comparator.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance String.Comparator.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized String.Comparator.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance String.Comparator.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C61636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x726564726FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736E6F6974706FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance String.Comparator.CodingKeys()
{
  v1 = 0x656C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x726564726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.Comparator.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized String.Comparator.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.Comparator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.Comparator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 String.Comparator.init(options:locale:order:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 24) = a3 & 1;
  return result;
}

id String.Comparator.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 24) = *(a1 + 9);
  *a2 = v3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  result = LocaleCache._currentAndCache.getter();
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t String.Comparator.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE10ComparatorV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v15) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  v17 = 1;
  lazy protocol witness table accessor for type Locale? and conformance <A> A?(&lazy protocol witness table cache variable for type Locale? and conformance <A> A?, lazy protocol witness table accessor for type Locale and conformance Locale);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v15;
  v14 = v16;
  v17 = 2;
  lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v14;
  *(a2 + 24) = v11;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return swift_unknownObjectRelease();
}

NSComparisonResult __swiftcall String.Comparator.compare(_:_:)(Swift::String a1, Swift::String a2)
{
  object = a1._object;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v46[1] = a2;
  v46[0] = a1;
  if (!v5)
  {
    v26 = a2._object;
    countAndFlagsBits = a2._countAndFlagsBits;

    v28 = Substring.init<A>(_:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v45[0] = countAndFlagsBits;
    v45[1] = v26;

    v35 = Substring.init<A>(_:)();
    v24 = Substring._unlocalizedCompare(other:options:)(v35, v36, v37, v38, v4, v28, v30, v32, v34);

    if (v7)
    {
      goto LABEL_7;
    }

    return v24;
  }

  v43 = v4;
  v44 = v7;
  v8 = lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v10 = v9;
  StringProtocol._ephemeralString.getter();
  v11 = String._bridgeToObjectiveCImpl()();

  v12 = String._bridgeToObjectiveCImpl()();

  v13 = v46;
  result = StringProtocol._toUTF16Offsets(_:)();
  if (__OFSUB__(v15, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v41 = v15 - result;
  v42 = v11;
  ObjectType = swift_getObjectType();
  v17 = v6[61];
  swift_unknownObjectRetain();
  v18 = v17(ObjectType, v6);
  swift_unknownObjectRelease();
  v13 = type metadata accessor for NSLocale();
  v45[3] = v13;
  v45[0] = v18;
  v19 = __swift_project_boxed_opaque_existential_1(v45, v13);
  v10 = v13[-1]._object;
  v20 = v10[8];
  v21 = MEMORY[0x1EEE9AC00](v19);
  object = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = (v40 - object);
  v11 = v10[2];
  (v11)(v40 - object, v21);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
LABEL_17:
    v40[1] = v40;
    v39 = MEMORY[0x1EEE9AC00](result);
    (v11)(v40 - object, v6, v13, v39);
    v22 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v10[1])(v6, v13);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v45);
    v24 = [v42 compare:v12 options:v43 range:v8 locale:{v41, v22}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v44)
    {
LABEL_7:
      if (v24 == 1)
      {
        v25 = NSOrderedAscending;
      }

      else
      {
        v25 = v24;
      }

      if (v24 == -1)
      {
        return 1;
      }

      else
      {
        return v25;
      }
    }

    return v24;
  }

  if (v20 == 8)
  {
    v22 = *v6;
    v23 = v10[1];
    swift_unknownObjectRetain();
    v23(v40 - object, v13);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t String.Comparator.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  MEMORY[0x1865CD060](*v1);
  if (!v3)
  {
    goto LABEL_5;
  }

  Hasher._combine(_:)(1u);
  ObjectType = swift_getObjectType();
  if ((*(v4 + 48))(ObjectType, v4))
  {
    v7 = 1;
LABEL_6:
    Hasher._combine(_:)(v7);
    return MEMORY[0x1865CD060](v5);
  }

  Hasher._combine(_:)(0);
  (*(v4 + 64))(ObjectType, v4);
  String.hash(into:)();

  (*(v4 + 464))(&v44, ObjectType, v4);
  v52[6] = v50;
  v53[0] = *v51;
  *(v53 + 12) = *&v51[12];
  v52[2] = v46;
  v52[3] = v47;
  v52[4] = v48;
  v52[5] = v49;
  v52[0] = v44;
  v52[1] = v45;
  if (_s10Foundation17LocalePreferencesVSgWOg(v52) == 1)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9 = v44;
  v10 = *(&v44 + 1);
  v11 = *(&v45 + 1);
  v12 = *(&v46 + 1);
  v36 = v47;
  v37 = v48;
  v39 = v49;
  v13 = v50;
  v40 = *v51;
  v41 = *&v51[16];
  v42 = v51[24];
  v43 = v51[25];
  v14 = v51[26];
  v15 = v51[27];
  Hasher._combine(_:)(1u);
  if (v9 == 2)
  {
    v16 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v16 = v9 & 1;
  }

  Hasher._combine(_:)(v16);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v10 + 16));
    v17 = *(v10 + 16);
    if (v17)
    {
      v18 = v10 + 40;
      do
      {

        String.hash(into:)();

        v18 += 16;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v38 = v14;
  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v12)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v36)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v36, v19, v20, v21, v22, v23, v24);
    if (*(&v36 + 1))
    {
      goto LABEL_25;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v36 + 1))
    {
LABEL_25:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v36 + 1), v25, v26, v27, v28, v29, v30);
      if (v37)
      {
        goto LABEL_26;
      }

      goto LABEL_37;
    }
  }

  Hasher._combine(_:)(0);
  if (v37)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (*(&v37 + 1))
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
  if (*(&v37 + 1))
  {
LABEL_27:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v39)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_38:
  Hasher._combine(_:)(0);
  if (v39)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    v31 = v41;
    if (*(&v39 + 1))
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  Hasher._combine(_:)(0);
  v31 = v41;
  if (*(&v39 + 1))
  {
LABEL_29:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v13)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  Hasher._combine(_:)(0);
  if (v13)
  {
LABEL_30:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    v32 = v42;
    v33 = v43;
    if (*(&v13 + 1))
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

LABEL_41:
  Hasher._combine(_:)(0);
  v32 = v42;
  v33 = v43;
  if (*(&v13 + 1))
  {
LABEL_31:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, *(&v13 + 1));
    if (v40)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_42:
  Hasher._combine(_:)(0);
  if (v40)
  {
LABEL_32:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v40);
    if (v31)
    {
      goto LABEL_33;
    }

LABEL_44:
    Hasher._combine(_:)(0);
    if (v32 == 2)
    {
      goto LABEL_34;
    }

LABEL_45:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v32 & 1);
    goto LABEL_46;
  }

LABEL_43:
  Hasher._combine(_:)(0);
  if (!v31)
  {
    goto LABEL_44;
  }

LABEL_33:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v32 != 2)
  {
    goto LABEL_45;
  }

LABEL_34:
  Hasher._combine(_:)(0);
LABEL_46:
  if (v33 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v33 & 1);
  }

  if (v38 == 2)
  {
    v34 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v34 = v38 & 1;
  }

  Hasher._combine(_:)(v34);
  if (v15 == 2)
  {
    v35 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v35 = v15 & 1;
  }

  Hasher._combine(_:)(v35);
  outlined destroy of LocalePreferences?(&v44);
  return MEMORY[0x1865CD060](v5);
}

uint64_t String.Comparator.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE10ComparatorV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = v8;
  v15 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = v15;
    v13 = v12;
    v14 = v11;
    v16 = 1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
    lazy protocol witness table accessor for type Locale? and conformance <A> A?(&lazy protocol witness table cache variable for type Locale? and conformance <A> A?, lazy protocol witness table accessor for type Locale and conformance Locale);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    LOBYTE(v13) = v9;
    v16 = 2;
    lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

NSComparisonResult protocol witness for SortComparator.compare(_:_:) in conformance String.Comparator(uint64_t *a1, Swift::String *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4._countAndFlagsBits = *a1;
  v4._object = v2;
  return String.Comparator.compare(_:_:)(v4, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.Comparator()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2);
  if (!v1)
  {
    goto LABEL_5;
  }

  Hasher._combine(_:)(1u);
  ObjectType = swift_getObjectType();
  if ((*(v3 + 48))(ObjectType, v3))
  {
    v6 = 1;
LABEL_6:
    Hasher._combine(_:)(v6);
    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(ObjectType, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v44, ObjectType, v3);
  v52[6] = v50;
  v53[0] = *v51;
  *(v53 + 12) = *&v51[12];
  v52[2] = v46;
  v52[3] = v47;
  v52[4] = v48;
  v52[5] = v49;
  v52[0] = v44;
  v52[1] = v45;
  if (_s10Foundation17LocalePreferencesVSgWOg(v52) == 1)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v8 = v44;
  v9 = *(&v44 + 1);
  v10 = *(&v45 + 1);
  v11 = *(&v46 + 1);
  v37 = v47;
  v12 = v49;
  v38 = v48;
  v39 = *(&v49 + 1);
  v40 = v50;
  v13 = *v51;
  v14 = v51[24];
  v41 = *&v51[16];
  v42 = v51[25];
  v43 = v51[26];
  v15 = v51[27];
  Hasher._combine(_:)(1u);
  if (v8 == 2)
  {
    Hasher._combine(_:)(0);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v8 & 1);
    if (v9)
    {
LABEL_10:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v9 + 16));
      v16 = *(v9 + 16);
      if (v16)
      {
        v17 = v9 + 40;
        do
        {

          String.hash(into:)();

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      if (v10)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
  if (v10)
  {
LABEL_14:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_18;
  }

LABEL_17:
  Hasher._combine(_:)(0);
LABEL_18:
  v18 = v14;
  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = v12;
  if (v37)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v54, v37, v20, v21, v22, v23, v24, v25);
    v26 = v42;
    if (*(&v37 + 1))
    {
LABEL_23:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v54, *(&v37 + 1), v27, v28, v29, v30, v31, v32);
      goto LABEL_26;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v26 = v42;
    if (*(&v37 + 1))
    {
      goto LABEL_23;
    }
  }

  Hasher._combine(_:)(0);
LABEL_26:
  if (v38)
  {
    v33 = v18;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (*(&v38 + 1))
    {
LABEL_28:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      goto LABEL_31;
    }
  }

  else
  {
    v33 = v18;
    Hasher._combine(_:)(0);
    if (*(&v38 + 1))
    {
      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(0);
LABEL_31:
  if (v19)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v39)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v40)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (*(&v40 + 1))
    {
      goto LABEL_39;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v40 + 1))
    {
LABEL_39:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v54, *(&v40 + 1));
      if (v13)
      {
        goto LABEL_40;
      }

      goto LABEL_47;
    }
  }

  Hasher._combine(_:)(0);
  if (v13)
  {
LABEL_40:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v54, v13);
    v34 = v15;
    if (v41)
    {
      goto LABEL_41;
    }

    goto LABEL_48;
  }

LABEL_47:
  Hasher._combine(_:)(0);
  v34 = v15;
  if (v41)
  {
LABEL_41:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v33 == 2)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

LABEL_48:
  Hasher._combine(_:)(0);
  if (v33 == 2)
  {
LABEL_42:
    Hasher._combine(_:)(0);
    if (v26 != 2)
    {
      goto LABEL_43;
    }

LABEL_50:
    Hasher._combine(_:)(0);
    if (v43 != 2)
    {
      goto LABEL_44;
    }

LABEL_51:
    v35 = 0;
    goto LABEL_52;
  }

LABEL_49:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v33 & 1);
  if (v26 == 2)
  {
    goto LABEL_50;
  }

LABEL_43:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v26 & 1);
  if (v43 == 2)
  {
    goto LABEL_51;
  }

LABEL_44:
  Hasher._combine(_:)(1u);
  v35 = v43 & 1;
LABEL_52:
  Hasher._combine(_:)(v35);
  if (v34 == 2)
  {
    v36 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v36 = v34 & 1;
  }

  Hasher._combine(_:)(v36);
  outlined destroy of LocalePreferences?(&v44);
LABEL_7:
  MEMORY[0x1865CD060](v4);
  return Hasher._finalize()();
}

id static SortComparator<>.localizedStandard.getter@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    swift_once();
    a2 = v8;
    a3 = v9;
  }

  v5 = *a2;
  *(a4 + 24) = *a3;
  *a4 = v5;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  result = LocaleCache._currentAndCache.getter();
  *(a4 + 8) = result;
  *(a4 + 16) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys()
{
  result = lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator.CodingKeys and conformance String.StandardComparator.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys()
{
  result = lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Comparator.CodingKeys and conformance String.Comparator.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Locale? and conformance <A> A?(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation6LocaleVSgMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static String.Comparator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  if (!*(a1 + 8))
  {
    if (!v5)
    {
      return v4 ^ v6 ^ 1u;
    }

    goto LABEL_9;
  }

  v10 = *(a1 + 8);
  if (!v5)
  {
LABEL_9:
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v9 = v5;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v7 = specialized static Locale.== infix(_:_:)(&v10, &v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v7)
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type String.Comparator and conformance String.Comparator()
{
  result = lazy protocol witness table cache variable for type String.Comparator and conformance String.Comparator;
  if (!lazy protocol witness table cache variable for type String.Comparator and conformance String.Comparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Comparator and conformance String.Comparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.Comparator and conformance String.Comparator;
  if (!lazy protocol witness table cache variable for type String.Comparator and conformance String.Comparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Comparator and conformance String.Comparator);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for String.StandardComparator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for String.Comparator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type String.Comparator and conformance String.Comparator();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for String.Comparator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for String.Comparator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t specialized String.StandardComparator.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of String.StandardComparator.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized String.Comparator.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of String.Comparator.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t StringProtocol.localizedCapitalized.getter(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v3);
  v6 = String.init<A>(_:)();
  v8 = v7;
  if (one-time initialization token for cache != -1)
  {
LABEL_29:
    swift_once();
  }

  v69 = static LocaleCache.cache;
  v70 = qword_1ED4404B0;
  v9 = LocaleCache._currentAndCache.getter();
  v11 = v10;
  ObjectType = swift_getObjectType();
  (*(v11 + 64))(ObjectType, v11);
  v13 = specialized static ICU.CaseMap.caseMappingForLocale(_:)();

  v66 = v13;
  if (v13)
  {
    v59[1] = v9;
    v59[2] = v8;
    v72 = 0;
    v73 = 0xE000000000000000;
    v14 = String.subscript.getter();
    v16 = v15;
    v68 = v17;
    v19 = v18;
    v20 = MEMORY[0x1865CBC20](46, 0xE100000000000000);
    v64 = v22;
    v65 = v23;
    v24 = v14 >> 14;
    v8 = v16 >> 14;
    if (v14 >> 14 < v16 >> 14)
    {
      v61 = v21;
      v62 = v20;
      v63 = (v20 ^ v21) >> 14;
      v59[0] = v14 >> 14;
      v25 = v14 >> 14;
      v59[3] = v16;
      v59[4] = v19;
      v67 = v14;
      v60 = v16 >> 14;
      while (1)
      {
        if (v8 < v25)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v30 = Substring.subscript.getter();
        v6 = v32;
        if ((v30 ^ v31) < 0x4000 || !v63)
        {
          break;
        }

        v33 = specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v62, v61, v64, v65, 0, 0, 0, 0, 0, v30, v31);
        v35 = v34;
        v8 = v36;

        if ((v8 & 1) != 0 || (v24 = v35 >> 14, v33 >> 14 == v35 >> 14))
        {
          v24 = v25;
          v8 = v60;
          goto LABEL_22;
        }

        if (v33 >> 14 < v25)
        {
          goto LABEL_28;
        }

        v37 = Substring.subscript.getter();
        v39 = v38;
        v41 = v40;
        v6 = v42;
        v43 = *(v66 + 24);
        MEMORY[0x1EEE9AC00](v37);
        MEMORY[0x1EEE9AC00](v44);
        os_unfair_lock_lock(v43 + 4);
        closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply(&v69);
        os_unfair_lock_unlock(v43 + 4);
        object = *(&v69 + 1);
        if (*(&v69 + 1))
        {
          countAndFlagsBits = v69;
        }

        else
        {
          *&v69 = v37;
          *(&v69 + 1) = v39;
          v70 = v41;
          v71 = v6;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          String.init<A>(_:)();
          v6 = v26;
          v27 = String._capitalized()();
          countAndFlagsBits = v27._countAndFlagsBits;
          object = v27._object;
        }

        MEMORY[0x1865CB0E0](countAndFlagsBits, object);

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v25 = v35 >> 14;
        v8 = v60;
        if (v24 >= v60)
        {
          goto LABEL_22;
        }
      }

      if ((v30 ^ v31) >= 0x4000)
      {
        v24 = v59[0];
      }

      else
      {
        v24 = v25;
      }
    }

LABEL_22:

    if (v8 < v24)
    {
      __break(1u);
    }

    else
    {
      v47 = Substring.subscript.getter();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = *(v66 + 24);
      MEMORY[0x1EEE9AC00](v47);
      MEMORY[0x1EEE9AC00](v55);
      os_unfair_lock_lock(v54 + 4);
      partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(&v69);
      os_unfair_lock_unlock(v54 + 4);
      v56 = *(&v69 + 1);
      if (*(&v69 + 1))
      {
        v57 = v69;
      }

      else
      {
        *&v69 = v47;
        *(&v69 + 1) = v49;
        v70 = v51;
        v71 = v53;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.init<A>(_:)();
        v58 = String._capitalized()();
        v57 = v58._countAndFlagsBits;
        v56 = v58._object;
      }

      MEMORY[0x1865CB0E0](v57, v56);

      swift_unknownObjectRelease();
      return v72;
    }
  }

  else
  {
    *&v69 = v6;
    *(&v69 + 1) = v8;
    String.init<A>(_:)();
    v45 = String._capitalized()()._countAndFlagsBits;

    swift_unknownObjectRelease();
    return v45;
  }

  return result;
}

uint64_t StringProtocol.lowercased(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v10 = *v9;
  v11 = v9[1];
  (*(v12 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v7);
  v13 = String.init<A>(_:)();
  v17[0] = v10;
  v17[1] = v11;
  v15 = a4(v17, v13, v14);

  return v15;
}

Swift::String_optional __swiftcall _TimeZoneBridged.abbreviation(for:)(Foundation::Date a1)
{
  v3 = *(v2 + 16);
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v5 = [v3 abbreviationForDate_];

  if (!v5)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_25;
  }

  isTaggedPointer = _objc_isTaggedPointer(v5);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
    goto LABEL_29;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v23)
    {
      v24 = v22;
      v25 = v23;
    }

    else
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v24 = v28;
      v25 = v29;
    }

    goto LABEL_22;
  }

  if (TaggedPointerTag == 22)
  {
    v14 = [v8 UTF8String];
    if (v14)
    {
      v14 = String.init(utf8String:)(v14);
      if (v13)
      {
        v20 = v14;
        v21 = v13;

        v14 = v20;
        v13 = v21;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_29:
    if (__CFStringIsCF())
    {

LABEL_12:
      v14 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_25;
    }

    v15 = v8;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;
      v19 = v17;

      v13 = v19;
      v14 = v18;
      goto LABEL_25;
    }

    if (![v15 length])
    {

      goto LABEL_12;
    }

    v24 = String.init(_cocoaString:)();
    v25 = v26;
LABEL_22:

    v13 = v25;
    v14 = v24;
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

  v13 = v12;
  v14 = v10;
LABEL_25:
  result.value._object = v13;
  result.value._countAndFlagsBits = v14;
  return result;
}

Foundation::Date_optional __swiftcall _TimeZoneBridged.nextDaylightSavingTimeTransition(after:)(Foundation::Date after)
{
  v4 = v2;
  v5 = *(v3 + 16);
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v7 = [v5 nextDaylightSavingTimeTransitionAfterDate_];

  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *v4 = v11;
  *(v4 + 8) = v7 == 0;
  result.value = *&v9;
  result.is_nil = v8;
  return result;
}

id _TimeZoneBridged.localizedName(for:locale:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  if (*a2)
  {
    v5 = a2[1];
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 488))(ObjectType, v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 localizedName:a1 locale:v7];

  if (!v8)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v8);
  v10 = v8;
  v11 = v10;
  if (!isTaggedPointer)
  {
    goto LABEL_10;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v10);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      [v11 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = v24;
    }

LABEL_25:

    return v23;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v13 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v13;
    }

LABEL_10:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v15 = v11;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;

      return v18;
    }

    if (![v15 length])
    {

      return 0;
    }

    v23 = String.init(_cocoaString:)();
    goto LABEL_25;
  }

  result = [v11 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v19)
    {
      v20 = result;

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id protocol witness for _TimeZoneProtocol.identifier.getter in conformance _TimeZoneBridged()
{
  v1 = [*(v0 + 16) name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  return v2;
}

id protocol witness for _TimeZoneProtocol.secondsFromGMT(for:) in conformance _TimeZoneBridged(double *a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v4 = [v2 secondsFromGMTForDate_];

  return v4;
}

double protocol witness for _TimeZoneProtocol.rawAndDaylightSavingTimeOffset(for:repeatedTimePolicy:skippedTimePolicy:) in conformance _TimeZoneBridged(double *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  [v3 secondsFromGMTForDate_];

  v5 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  [v3 daylightSavingTimeOffsetForDate_];
  v7 = v6;

  return v7;
}

id protocol witness for _TimeZoneProtocol.isDaylightSavingTime(for:) in conformance _TimeZoneBridged(double *a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v4 = [v2 isDaylightSavingTimeForDate_];

  return v4;
}

double protocol witness for _TimeZoneProtocol.daylightSavingTimeOffset(for:) in conformance _TimeZoneBridged(double *a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  [v2 daylightSavingTimeOffsetForDate_];
  v5 = v4;

  return v5;
}

uint64_t protocol witness for _TimeZoneProtocol.bridgeToNSTimeZone() in conformance _TimeZoneBridged()
{
  [*(v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSTimeZone();
  swift_dynamicCast();
  return v2;
}

id protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _TimeZoneBridged()
{
  v1 = [*(*v0 + 16) name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  return v2;
}

unint64_t instantiation function for generic protocol witness table for _TimeZoneBridged(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged()
{
  result = lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged;
  if (!lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged)
  {
    type metadata accessor for _TimeZoneBridged();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged);
  }

  return result;
}

unint64_t type metadata accessor for NSTimeZone()
{
  result = lazy cache variable for type metadata for NSTimeZone;
  if (!lazy cache variable for type metadata for NSTimeZone)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTimeZone);
  }

  return result;
}

uint64_t _TimeZoneGMTICU.localizedName(for:locale:)(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = a2[1];
  v6 = a1 < 6;
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);

  v9 = MEMORY[0x1865CB200](v8, v7);
  if (v9)
  {
    v10 = v9;
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v9, 0);

    v12 = specialized Sequence._copySequenceContents(initializing:)(v22, (v11 + 4), v10, v8, v7);

    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11[2];
  if (!v5)
  {
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  (*(v4 + 64))(ObjectType, v4);
  if (v13 >> 31)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    v18 = MEMORY[0x1E69E7CC0];
LABEL_14:
    if ((v6 & v3) != 0)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18[2];
    }

    if (!(v20 >> 31))
    {
      udat_applyPattern();
      v16 = specialized _withResizingUCharBuffer(initialSize:_:)(32);

      udat_close();
      goto LABEL_19;
    }

LABEL_21:
    __break(1u);
  }

  while (1)
  {
    String.utf8CString.getter();

    v15 = udat_open();

    v16 = 0;
    if (!v15)
    {
      break;
    }

    v17 = String.UTF16View._nativeGetOffset(for:)();
    if (!v17)
    {
      goto LABEL_13;
    }

    v13 = v17;
    v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v17, 0);
    v19 = specialized Sequence._copySequenceContents(initializing:)(v22, (v18 + 4), v13, 1987475062, 0xE400000000000000);

    if (v19 == v13)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_11:
    if (v13 >> 31)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return v16;
}

uint64_t _TimeZoneGMTICU.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _TimeZoneICU.State.calendar(_:)(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = *v2;
  if (!*v2)
  {

    v6 = MEMORY[0x1865CB200](a1, a2);
    if (v6)
    {
      v7 = v6;
      v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v6, 0);

      v9 = specialized Sequence._copySequenceContents(initializing:)(v11, (v8 + 4), v7, a1, a2);

      if (v9 != v7)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    if (!(v8[2] >> 31))
    {
      v10 = ucal_open();

      result = 0;
      if (v10)
      {
        *v2 = v10;
        return v10;
      }

      return result;
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t _TimeZoneICU.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  partial apply for closure #1 in _TimeZoneICU.deinit();
  os_unfair_lock_unlock(v1 + 6);

  return swift_deallocClassInstance();
}

uint64_t _TimeZoneICU.init(identifier:)(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = a1;
  v6 = specialized static TimeZone.tryParseGMTName(_:)();
  if ((v7 & 1) == 0)
  {
    v8 = specialized static TimeZone.nameForSecondsFromGMT(_:)(v6);
    if (v9)
    {
      v10 = v8;
      v11 = v9;

      v5 = v10;
      v3 = v11;
LABEL_13:
      v2[3] = v5;
      v2[4] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA12_TimeZoneICUC0C0V_GMd);
      v19 = swift_allocObject();
      *(v19 + 24) = 0;
      *(v19 + 16) = 0;
      v2[2] = v19;
      return v2;
    }
  }

  v12 = MEMORY[0x1865CB200](v5, v3);
  if (!v12)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_11:
    specialized _withResizingUCharBuffer(initialSize:_:)(32, (v14 + 4), v14[2]);
    v18 = v17;

    if (v18)
    {

      goto LABEL_13;
    }

LABEL_14:

    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v12;
  v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v12, 0);

  v15 = specialized Sequence._copySequenceContents(initializing:)(v20, (v14 + 4), v13, v5, v3);

  if (v15 == v13)
  {

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t _TimeZoneICU.localizedName(for:locale:)(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v3 = a2[1];
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 64))(ObjectType, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v2 + 16);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v6 + 6);
  partial apply for closure #1 in _TimeZoneICU.localizedName(for:locale:)(&v8);
  os_unfair_lock_unlock(v6 + 6);

  return v8;
}

uint64_t closure #1 in _TimeZoneICU.localizedName(for:locale:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  result = _TimeZoneICU.State.calendar(_:)(v6, v5);
  if (!result)
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (a2 < 4)
  {
    goto LABEL_10;
  }

  if (a2 != 4)
  {
    if (a2 != 5)
    {
LABEL_10:

      v12 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v14 = v13;

      *a3 = v12;
      a3[1] = v14;
      return result;
    }

    v8 = MEMORY[0x1865CB200](v6, v5);
    if (v8)
    {
      v9 = v8;
      v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v8, 0);

      v11 = specialized Sequence._copySequenceContents(initializing:)(v31, (v10 + 4), v9, v6, v5);

      if (v11 != v9)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    if (v10[2] >> 31)
    {
      __break(1u);
      goto LABEL_33;
    }

    String.utf8CString.getter();
    v19 = udat_open();

    v20 = 0;
    if (!v19)
    {
      goto LABEL_26;
    }

    v21 = String.UTF16View._nativeGetOffset(for:)();
    if (!v21)
    {
      goto LABEL_30;
    }

    v22 = v21;
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v21, 0);
    v24 = specialized Sequence._copySequenceContents(initializing:)(v31, (v23 + 4), v22, 1987475062, 0xE400000000000000);

    if (v24 == v22)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_20;
  }

  v15 = MEMORY[0x1865CB200](v6, v5);
  if (!v15)
  {
LABEL_20:

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v16 = v15;
  v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v15, 0);

  v18 = specialized Sequence._copySequenceContents(initializing:)(v31, (v17 + 4), v16, v6, v5);

  if (v18 != v16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_21:
  if (v17[2] >> 31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  String.utf8CString.getter();
  v25 = udat_open();

  v20 = 0;
  if (v25)
  {
    v26 = String.UTF16View._nativeGetOffset(for:)();
    if (v26)
    {
      v20 = v26;
      v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v26, 0);
      v28 = specialized Sequence._copySequenceContents(initializing:)(v31, (v27 + 4), v20, 1987475062, 0xE400000000000000);

      if (v28 != v20)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    if (!(v27[2] >> 31))
    {
LABEL_30:
      udat_applyPattern();
      v20 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v29 = v30;

      udat_close();
      goto LABEL_31;
    }

LABEL_36:
    __break(1u);
  }

LABEL_26:
  v29 = v20;
LABEL_31:

  *a3 = v20;
  a3[1] = v29;
  return result;
}

char *one-time initialization function for icuTZIdentifiers()
{
  result = specialized static _TimeZoneICU.timeZoneNamesFromICU()();
  icuTZIdentifiers._rawValue = result;
  return result;
}

uint64_t static TimeZone.knownTimeZoneIdentifiers.getter()
{
  if (one-time initialization token for icuTZIdentifiers != -1)
  {
    swift_once();
  }
}

uint64_t static TimeZone.timeZoneDataVersion.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v0 = MEMORY[0x1865D2B50](&v3);
  result = 0;
  if (v0 && v3 <= 0)
  {
    result = MEMORY[0x1865CAEB0](v0, 0xE000000000000000);
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in _TimeZoneICU.deinit()
{
  result = _TimeZoneICU.State.calendar(_:)(*(v0 + 24), *(v0 + 32));
  if (result)
  {
    return ucal_close();
  }

  return result;
}

char *specialized static _TimeZoneICU.timeZoneNamesFromICU()()
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  ucal_openTimeZones();
  v19 = 0;
  isStackAllocationSafe = uenum_unext();
  v1 = MEMORY[0x1E69E7CC0];
  if (isStackAllocationSafe)
  {
    v2 = isStackAllocationSafe;
    while (1)
    {
      if (v19 >= 1)
      {
        if (v19 < 0x156 || (v12 = 3 * v19, v13 = v19, isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          closure #1 in String.init(_utf16:)(&v18 - ((v3 + 15) & 0x7FFFFFFF0), v2, v4, &v21);
          v5 = v22;
          if (v22)
          {
            v6 = v21;
LABEL_7:
            if (specialized Sequence<>.starts<A>(with:)() & 1) != 0 || (specialized Sequence<>.starts<A>(with:)() & 1) != 0 || (specialized Sequence<>.starts<A>(with:)() & 1) != 0 || (specialized Sequence<>.starts<A>(with:)() & 1) != 0 || (v7 = specialized Sequence<>.starts<A>(with:)(), (v7) || (v23 = v6, v24 = v5, MEMORY[0x1EEE9AC00](v7), v17[2] = &v23, (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v17, &outlined read-only object #0 of static _TimeZoneICU.timeZoneNamesFromICU())))
            {
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
              }

              v9 = *(v1 + 2);
              v8 = *(v1 + 3);
              v10 = v9 + 1;
              if (v9 >= v8 >> 1)
              {
                v18 = v9 + 1;
                v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v1);
                v10 = v18;
                v1 = v15;
              }

              *(v1 + 2) = v10;
              v11 = &v1[16 * v9];
              *(v11 + 4) = v6;
              *(v11 + 5) = v5;
            }
          }
        }

        else
        {
          v18 = v12;
          v14 = swift_slowAlloc();
          closure #1 in String.init(_utf16:)(v14, v2, v13, &v23);
          MEMORY[0x1865D2690](v14, -1, -1);
          v5 = v24;
          if (v24)
          {
            v6 = v23;
            goto LABEL_7;
          }
        }
      }

      isStackAllocationSafe = uenum_unext();
      if (isStackAllocationSafe)
      {
        v2 = isStackAllocationSafe;
        if (v20 <= 0)
        {
          continue;
        }
      }

      break;
    }
  }

  uenum_close();
  return v1;
}

id @objc static NSTimeZone._abbreviationDictionary()()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (!*(v0 + 72))
  {
    *(v0 + 72) = *(v0 + 112);
  }

  os_unfair_lock_unlock((v0 + 120));
  v1 = _NativeDictionary.bridged()();

  return v1;
}

uint64_t @objc static NSTimeZone._setAbbreviationDictionary(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(a3, &v5);
  if (v5)
  {
    if (one-time initialization token for cache != -1)
    {
      result = swift_once();
    }

    v4 = static TimeZoneCache.cache;
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 30);
    partial apply for closure #1 in TimeZoneCache.setTimeZoneAbbreviations(_:)(&v4[4]);
    os_unfair_lock_unlock(v4 + 30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id @objc static NSTimeZone._knownTimeZoneIdentifiers()()
{
  if (one-time initialization token for icuTZIdentifiers != -1)
  {
    swift_once();
  }

  v0 = _ContiguousArrayBuffer._asCocoaArray()();

  return v0;
}

id @objc static NSTimeZone._timeZoneDataVersion()()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v0 = MEMORY[0x1865D2B50](&v3);
  if (v0 && v3 <= 0)
  {
    MEMORY[0x1865CAEB0](v0);
  }

  v1 = String._bridgeToObjectiveCImpl()();

  return v1;
}

id _NSSwiftTimeZone.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for _NSSwiftTimeZone.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _NSSwiftTimeZone.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t closure #2 in static UIDNAHookICU.IDNACodedHostUTF16(_:encodeToASCII:)(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return specialized String.init(_utf16:)(result, a2);
  }

  if (!a2)
  {
LABEL_10:
    result = a3;
    return specialized String.init(_utf16:)(result, a2);
  }

  v4 = result;
  v5 = a3;
  v6 = a2;
  v7 = a2 & ~(a2 >> 63);
  while (v7)
  {
    v8 = *v5;
    v9 = *v4;
    if (v8 != v9 && (v8 > 0x7F || v9 != (((0x3FFE000000000uLL >> ((v8 - 1) >> 1)) & 0x20) + v8)))
    {
      return specialized String.init(_utf16:)(result, a2);
    }

    --v7;
    ++v5;
    ++v4;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static UIDNAHookICU.IDNACodedHost<A>(_:encodeToASCII:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v3);
    result = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v4, v5, v6, 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v7, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
LABEL_7:
    *a2 = result;
    a2[1] = v9;
    return result;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0 == 1)
  {
    result = 0;
    v9 = 0;
    goto LABEL_7;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttributedString.AttributeInvalidationCondition._Storage(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t static AttributedString.AttributeInvalidationCondition.attributeChanged<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(a2 + 24))(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t static AttributedString.AttributeInvalidationCondition.attributeChanged<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 24))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static AttributedString.AttributeInvalidationCondition.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t AttributedString.AttributeRunBoundaries.hash(into:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = v2[1];
  if (!v4)
  {
    return MEMORY[0x1865CD060](0);
  }

  v5 = *v2;
  MEMORY[0x1865CD060](1);

  return a2(a1, v5, v4);
}

Swift::Int AttributedString.AttributeRunBoundaries.hashValue.getter(void (*a1)(_BYTE *, uint64_t, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  Hasher.init(_seed:)();
  if (v4)
  {
    MEMORY[0x1865CD060](1);
    a1(v6, v3, v4);
  }

  else
  {
    MEMORY[0x1865CD060](0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString.AttributeRunBoundaries(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  Hasher.init(_seed:)();
  if (v6)
  {
    MEMORY[0x1865CD060](1);
    a3(v8, v5, v6);
  }

  else
  {
    MEMORY[0x1865CD060](0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributedString.AttributeRunBoundaries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4[1];
  if (!v6)
  {
    return MEMORY[0x1865CD060](0);
  }

  v7 = *v4;
  MEMORY[0x1865CD060](1);

  return a4(a1, v7, v6);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString.AttributeRunBoundaries(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  Hasher.init(_seed:)();
  if (v7)
  {
    MEMORY[0x1865CD060](1);
    a4(v9, v6, v7);
  }

  else
  {
    MEMORY[0x1865CD060](0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttributedString.AttributeInvalidationCondition(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

double static AttributedStringKey.runBoundaries.getter@<D0>(_OWORD *a1@<X8>)
{
  return static AttributedStringKey.runBoundaries.getter(a1);
}

{
  result = 0.0;
  *a1 = xmmword_1812187D0;
  return result;
}

void AttributeDynamicLookup.subscript.getter()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  AttributeDynamicLookup.subscript.getter();
}

{
  AttributeDynamicLookup.subscript.getter();
}

uint64_t key path setter for ScopedAttributeContainer.subscript<A>(dynamicMember:) : <A><A1>ScopedAttributeContainer<A>AA1(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *a3;
  (*(v12 + 16))(&v15 - v9, a1, v8);

  return ScopedAttributeContainer.subscript.setter(v10, v11, v13, v6);
}

uint64_t ScopedAttributeContainer.subscript.setter(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a2;
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v95 - v13;
  v15 = *(v11 + 16);
  v109 = v16;
  v15(&v95 - v13, a1, v12);
  v104 = *(a4 + 24);
  v105 = a4 + 24;
  v17 = v104(v9, a4);
  v19 = v18;
  v106 = a4;
  static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v14, v9, a4, v121);
  outlined init with copy of AttributedString._AttributeValue?(v121, &v116);
  v110 = v17;
  if (*(&v117 + 1))
  {
    v107 = v7;
    v103 = a1;
    v114[2] = v118;
    v114[3] = v119;
    v115 = v120;
    v114[0] = v116;
    v114[1] = v117;
    outlined init with copy of AttributedString._AttributeValue(v114, v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = *v5;
    v21 = v111;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v7) = v22;
      if (*(v21 + 24) < v26)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
        v27 = v111;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v110, v19);
        if ((v7 & 1) == (v29 & 1))
        {
          v23 = v28;
          a1 = v103;
          if ((v7 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_13;
        }

LABEL_55:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v21;
        a1 = v103;
        if (v22)
        {
LABEL_13:
          v39 = *(v27 + 56) + 72 * v23;
          v116 = *v39;
          v40 = *(v39 + 16);
          v41 = *(v39 + 32);
          v42 = *(v39 + 48);
          v120 = *(v39 + 64);
          v118 = v41;
          v119 = v42;
          v117 = v40;
          v43 = v112[1];
          v44 = v112[2];
          v45 = v112[3];
          *(v39 + 64) = v113;
          *(v39 + 32) = v44;
          *(v39 + 48) = v45;
          *v39 = v112[0];
          *(v39 + 16) = v43;
          outlined destroy of AttributedString._AttributeValue(v114);
          goto LABEL_33;
        }

LABEL_32:
        specialized _NativeDictionary._insert(at:key:value:)(v23, v110, v19, v112, v27);

        outlined destroy of AttributedString._AttributeValue(v114);
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0;
        goto LABEL_33;
      }
    }

    v96 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v46 = static _DictionaryStorage.copy(original:)();
    v27 = v46;
    if (!*(v21 + 16))
    {
LABEL_31:

      a1 = v103;
      v23 = v96;
      if (v7)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

    v47 = (v46 + 64);
    v48 = (v21 + 64);
    v49 = ((1 << *(v27 + 32)) + 63) >> 6;
    v95 = v21 + 64;
    if (v27 != v21 || v47 >= &v48[8 * v49])
    {
      memmove(v47, v48, 8 * v49);
    }

    v50 = 0;
    *(v27 + 16) = *(v21 + 16);
    v51 = 1 << *(v21 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v21 + 64);
    v54 = ((v51 + 63) >> 6);
    v97 = v54;
    if (v53)
    {
      do
      {
        v55 = __clz(__rbit64(v53));
        v102 = (v53 - 1) & v53;
LABEL_29:
        v58 = v55 | (v50 << 6);
        v99 = 16 * v58;
        v59 = *(v21 + 56);
        v60 = (*(v21 + 48) + 16 * v58);
        v61 = *v60;
        v100 = v60[1];
        v101 = v61;
        v98 = 72 * v58;
        outlined init with copy of AttributedString._AttributeValue(v59 + 72 * v58, &v116);
        v62 = v100;
        v63 = (*(v27 + 48) + v99);
        *v63 = v101;
        v63[1] = v62;
        v64 = *(v27 + 56) + v98;
        *v64 = v116;
        v65 = v117;
        v66 = v118;
        v67 = v119;
        *(v64 + 64) = v120;
        *(v64 + 32) = v66;
        *(v64 + 48) = v67;
        *(v64 + 16) = v65;

        v54 = v97;
        v53 = v102;
      }

      while (v102);
    }

    v56 = v50;
    while (1)
    {
      v50 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v50 >= v54)
      {
        goto LABEL_31;
      }

      v57 = *(v95 + 8 * v50);
      ++v56;
      if (v57)
      {
        v55 = __clz(__rbit64(v57));
        v102 = (v57 - 1) & v57;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  outlined destroy of AttributedString._AttributeValue?(&v116);
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
  if ((v31 & 1) == 0)
  {
    v120 = 0;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    goto LABEL_34;
  }

  v32 = v30;
  v107 = v7;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v5;
  if (v33)
  {
    v27 = *v5;
  }

  else
  {
    v103 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v75 = static _DictionaryStorage.copy(original:)();
    v27 = v75;
    if (*(v34 + 16))
    {
      v76 = (v75 + 64);
      v77 = ((1 << *(v27 + 32)) + 63) >> 6;
      v97 = (v34 + 64);
      if (v27 != v34 || v76 >= v34 + 64 + 8 * v77)
      {
        memmove(v76, v97, 8 * v77);
      }

      v78 = 0;
      *(v27 + 16) = *(v34 + 16);
      v79 = 1 << *(v34 + 32);
      v80 = -1;
      if (v79 < 64)
      {
        v80 = ~(-1 << v79);
      }

      v102 = v80 & *(v34 + 64);
      v96 = (v79 + 63) >> 6;
      for (i = v102; v102; i = v102)
      {
        v82 = __clz(__rbit64(i));
        v102 = (i - 1) & i;
LABEL_50:
        v85 = v82 | (v78 << 6);
        v99 = 16 * v85;
        v86 = *(v34 + 56);
        v87 = (*(v34 + 48) + 16 * v85);
        v88 = *v87;
        v100 = v87[1];
        v101 = v88;
        v98 = 72 * v85;
        outlined init with copy of AttributedString._AttributeValue(v86 + 72 * v85, &v116);
        v89 = v100;
        v90 = (*(v27 + 48) + v99);
        *v90 = v101;
        v90[1] = v89;
        v91 = *(v27 + 56) + v98;
        *v91 = v116;
        v92 = v117;
        v93 = v118;
        v94 = v119;
        *(v91 + 64) = v120;
        *(v91 + 32) = v93;
        *(v91 + 48) = v94;
        *(v91 + 16) = v92;
      }

      v83 = v78;
      while (1)
      {
        v78 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_54;
        }

        if (v78 >= v96)
        {
          break;
        }

        v84 = *(v97 + v78);
        ++v83;
        if (v84)
        {
          v82 = __clz(__rbit64(v84));
          v102 = (v84 - 1) & v84;
          goto LABEL_50;
        }
      }
    }

    a1 = v103;
  }

  v35 = *(v27 + 56) + 72 * v32;
  v116 = *v35;
  v37 = *(v35 + 32);
  v36 = *(v35 + 48);
  v38 = *(v35 + 64);
  v117 = *(v35 + 16);
  v118 = v37;
  v120 = v38;
  v119 = v36;
  specialized _NativeDictionary._delete(at:)(v32, v27);
LABEL_33:
  *v5 = v27;
LABEL_34:
  AttributedString._AttributeStorage._attributeModified(_:old:new:)(v110, v19, &v116, v121);
  outlined destroy of AttributedString._AttributeValue?(v121);
  outlined destroy of AttributedString._AttributeValue?(&v116);

  v68 = *(v11 + 8);
  v69 = v14;
  v70 = v109;
  v68(v69, v109);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(a1, 1) == 1)
  {
    v71 = v104(v9, v106);
    v73 = v72;

    v68(a1, v70);

    v5[2] = v71;
    v5[3] = v73;
  }

  else
  {

    return (v68)(a1, v70);
  }

  return result;
}

void (*ScopedAttributeContainer.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v11[4] = v13;
  v14 = *(v13 - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  AttributedString._AttributeStorage.subscript.getter(*v4, v12, a4, v16);
  return ScopedAttributeContainer.subscript.modify;
}

void ScopedAttributeContainer.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = *v2;
    (*(v6 + 16))(*(*a1 + 48), v4, v5);

    ScopedAttributeContainer.subscript.setter(v3, v8, v9, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = v2[2];
    v11 = *v2;

    ScopedAttributeContainer.subscript.setter(v4, v11, v12, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t outlined destroy of AttributedString._AttributeValue?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributedString.AttributeInvalidationCondition and conformance AttributedString.AttributeInvalidationCondition()
{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeInvalidationCondition and conformance AttributedString.AttributeInvalidationCondition;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeInvalidationCondition and conformance AttributedString.AttributeInvalidationCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeInvalidationCondition and conformance AttributedString.AttributeInvalidationCondition);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.AttributeInvalidationCondition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributedString.AttributeInvalidationCondition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AttributedString.AttributeRunBoundaries(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.AttributeInvalidationCondition._Storage and conformance AttributedString.AttributeInvalidationCondition._Storage()
{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeInvalidationCondition._Storage and conformance AttributedString.AttributeInvalidationCondition._Storage;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeInvalidationCondition._Storage and conformance AttributedString.AttributeInvalidationCondition._Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeInvalidationCondition._Storage and conformance AttributedString.AttributeInvalidationCondition._Storage);
  }

  return result;
}

uint64_t Array<A>._extend(with:)(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (!v6 || (v7 = v6 - 1, v8 = v5 + 16 * (v6 - 1), *(v8 + 40) != result))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v5);
      v5 = result;
    }

    v7 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (v7 >= v9 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v7 + 1;
    goto LABEL_11;
  }

  v4 = *(v8 + 32);
  if (v4 <= a2)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
    }

LABEL_11:
    v10 = v5 + 16 * v7;
    *(v10 + 32) = v4;
    *(v10 + 40) = a2;
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t AttributedString.Guts._constrainedAttributes(at:with:)(uint64_t a1, uint64_t *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = v2[9];
  v5 = v2[11];
  if (v4)
  {
    v6 = v2[11];
  }

  else
  {
    v6 = 0;
  }

  if (a1 < 0 || (v7 = a1, v6 < a1))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v8 = a2[1];
  v90 = *a2;
  v91 = v8;
  v92 = v2[10];
  v9 = v2[12];
  v82 = 0;
  if (!v4 || ((v3 = (v4 + 16), v10 = *(v4 + 16), v5 > a1) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v12 = swift_unknownObjectRetain();
    v3 = v92;
    v13 = specialized Rope._endPath.getter(v12);
    v14 = 0;
    v15 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v88 = v5;
  v89 = v9;
  v47 = *(v4 + 18);
  swift_unknownObjectRetain_n();
  if (!v47)
  {
    v5 = 0;
    v14 = v4;
    goto LABEL_90;
  }

  v5 = v47;
  v48 = v4;
  do
  {
    v49 = *v3;
    if (*v3)
    {
      v50 = 0;
      v51 = (v48 + 40);
      while (1)
      {
        v52 = *v51;
        v51 += 3;
        v53 = v7 - v52;
        if (__OFSUB__(v7, v52))
        {
          break;
        }

        if (__OFADD__(v53, 1))
        {
          goto LABEL_98;
        }

        if (v53 + 1 < 1)
        {
          v49 = v50;
          goto LABEL_57;
        }

        ++v50;
        v7 = v53;
        if (v49 == v50)
        {
          goto LABEL_66;
        }
      }

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

    v53 = v7;
LABEL_66:
    if (v53)
    {
      goto LABEL_104;
    }

    v7 = 0;
LABEL_57:
    v5 = (v49 << ((4 * v47 + 8) & 0x3C)) | ((-15 << ((4 * v47 + 8) & 0x3C)) - 1) & v5;
    v14 = *(v48 + 24 + 24 * v49);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v3 = (v14 + 16);
    LOBYTE(v47) = *(v14 + 18);
    v48 = v14;
  }

  while (v47);
  v10 = *v3;
  if (*v3)
  {
LABEL_90:
    v9 = v89;
    v3 = v92;
    v74 = 0;
    v73 = v10;
    v75 = 24;
    while (1)
    {
      v76 = *(v14 + v75);
      v44 = __OFSUB__(v7, v76);
      v7 -= v76;
      if (v44)
      {
        goto LABEL_102;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_103;
      }

      if (v7 + 1 < 1)
      {
        goto LABEL_96;
      }

      ++v74;
      v75 += 24;
      if (v10 == v74)
      {
        goto LABEL_95;
      }
    }
  }

  v73 = 0;
  v9 = v89;
  v3 = v92;
LABEL_95:
  v74 = v73;
  if (v7)
  {
    __break(1u);
  }

LABEL_96:
  swift_unknownObjectRelease();
  v13 = v5 & 0xFFFFFFFFFFFFF0FFLL | (v74 << 8);
  v8 = v91;
LABEL_13:
  specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v13, v14, v4, v3);
  swift_unknownObjectRelease();
  v15 = v14;
LABEL_14:
  v16 = v2[9];
  v17 = v2[10];
  v19 = v2[11];
  v18 = v2[12];
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v9, v13, v15, v16, v17, v19, v18);
  v5 = v20;
  v3 = v21;
  v22 = swift_unknownObjectRelease();
  MEMORY[0x1EEE9AC00](v22);
  v80[6] = v90;
  v80[7] = v8;
  MEMORY[0x1EEE9AC00](v23);
  v80[2] = partial apply for closure #1 in AttributedString.Guts._constrainedAttributes(at:with:);
  v80[3] = v25;
  v26 = *(v5 + 32);
  v4 = ((1 << v26) + 63) >> 6;
  if ((v26 & 0x3Fu) <= 0xD)
  {
LABEL_15:
    v83 = v4;
    v85 = v80;
    v86 = v3;
    MEMORY[0x1EEE9AC00](v24);
    v84 = (v80 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v84, v27);
    v88 = 0;
    v89 = v5;
    v28 = 0;
    v3 = (v5 + 64);
    v29 = 1 << *(v5 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v5 + 64);
    v32 = (v29 + 63) >> 6;
    while (1)
    {
      if (!v31)
      {
        v34 = v28;
        while (1)
        {
          v28 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_99;
          }

          if (v28 >= v32)
          {
            goto LABEL_49;
          }

          v35 = *&v3[4 * v28];
          ++v34;
          if (v35)
          {
            v33 = __clz(__rbit64(v35));
            v92 = (v35 - 1) & v35;
            goto LABEL_25;
          }
        }
      }

      v33 = __clz(__rbit64(v31));
      v92 = (v31 - 1) & v31;
LABEL_25:
      v36 = v33 | (v28 << 6);
      v37 = *(v5 + 56);
      v38 = (*(v5 + 48) + 16 * v36);
      v40 = *v38;
      v39 = v38[1];
      v87 = v36;
      outlined init with copy of AttributedString._AttributeValue(v37 + 72 * v36, v101);
      *&v98 = v40;
      *(&v98 + 1) = v39;
      outlined init with copy of AttributedString._AttributeValue(v101, v99);
      outlined init with copy of FloatingPointRoundingRule?(&v98, &v93, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      swift_bridgeObjectRetain_n();

      v41 = *(&v96 + 1);
      v4 = v97;
      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v96 + 1), v97);
      outlined destroy of AttributedString._AttributeValue(&v94);
      if (v4 == 1)
      {
        break;
      }

      if (v91 == 1)
      {

        outlined destroy of TermOfAddress?(&v98, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        v42 = v91;
LABEL_30:
        outlined consume of AttributedString.AttributeRunBoundaries?(v41, v4);
        outlined consume of AttributedString.AttributeRunBoundaries?(v90, v42);
        outlined destroy of AttributedString._AttributeValue(v101);

        v5 = v89;
        goto LABEL_31;
      }

      if (!v4)
      {
        v43 = v91;

        outlined destroy of TermOfAddress?(&v98, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        if (v43)
        {

          v5 = v89;
          goto LABEL_41;
        }

LABEL_44:
        outlined consume of AttributedString.AttributeRunBoundaries?(v41, v43);
        outlined destroy of AttributedString._AttributeValue(v101);

        v5 = v89;
LABEL_45:
        v31 = v92;
        goto LABEL_46;
      }

      if (!v91)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v41, v4);

        outlined destroy of TermOfAddress?(&v98, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
LABEL_41:
        outlined consume of AttributedString.AttributeRunBoundaries?(v41, v4);
        outlined destroy of AttributedString._AttributeValue(v101);

LABEL_31:
        v31 = v92;
        continue;
      }

      v43 = v91;
      if (v41 == v90 && v4 == v91)
      {

        v41 = v90;
        outlined copy of AttributedString.AttributeRunBoundaries?(v90, v43);

        outlined destroy of TermOfAddress?(&v98, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        goto LABEL_44;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined copy of AttributedString.AttributeRunBoundaries?(v41, v4);

      outlined destroy of TermOfAddress?(&v98, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      outlined consume of AttributedString.AttributeRunBoundaries?(v41, v4);
      outlined destroy of AttributedString._AttributeValue(v101);

      v5 = v89;
      v31 = v92;
      if ((v81 & 1) == 0)
      {
        continue;
      }

LABEL_46:
      *(v84 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
      v44 = __OFADD__(v88++, 1);
      if (v44)
      {
        __break(1u);
LABEL_49:
        if (!v88)
        {
          v45 = MEMORY[0x1E69E7CC8];
          goto LABEL_53;
        }

        if (v88 == *(v5 + 16))
        {

          v45 = v5;
          goto LABEL_53;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v45 = static _DictionaryStorage.allocate(capacity:)();
        v4 = 0;
        v54 = *v84;
        v3 = (v45 + 64);
        while (v54)
        {
          v58 = __clz(__rbit64(v54));
          v54 &= v54 - 1;
LABEL_78:
          v61 = v58 | (v4 << 6);
          v62 = (*(v5 + 48) + 16 * v61);
          v63 = *v62;
          v64 = v62[1];
          outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v61, &v98);
          v95 = v99[1];
          v96 = v99[2];
          v97 = v100;
          v93 = v98;
          v94 = v99[0];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v65 = Hasher._finalize()();
          v66 = -1 << *(v45 + 32);
          v67 = v65 & ~v66;
          v68 = v67 >> 6;
          if (((-1 << v67) & ~*&v3[4 * (v67 >> 6)]) == 0)
          {
            v69 = 0;
            v70 = (63 - v66) >> 6;
            while (++v68 != v70 || (v69 & 1) == 0)
            {
              v71 = v68 == v70;
              if (v68 == v70)
              {
                v68 = 0;
              }

              v69 |= v71;
              v72 = *&v3[4 * v68];
              if (v72 != -1)
              {
                v55 = __clz(__rbit64(~v72)) + (v68 << 6);
                goto LABEL_70;
              }
            }

            goto LABEL_101;
          }

          v55 = __clz(__rbit64((-1 << v67) & ~*&v3[4 * (v67 >> 6)])) | v67 & 0x7FFFFFFFFFFFFFC0;
LABEL_70:
          *(v3 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
          v56 = (*(v45 + 48) + 16 * v55);
          *v56 = v63;
          v56[1] = v64;
          v57 = *(v45 + 56) + 72 * v55;
          *(v57 + 16) = v94;
          *(v57 + 32) = v95;
          *(v57 + 48) = v96;
          *(v57 + 64) = v97;
          *v57 = v93;
          ++*(v45 + 16);
          if (!--v88)
          {
            goto LABEL_53;
          }
        }

        v59 = v4;
        while (1)
        {
          v4 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_100;
          }

          if (v4 >= v83)
          {
            goto LABEL_53;
          }

          v60 = v84[v4];
          ++v59;
          if (v60)
          {
            v58 = __clz(__rbit64(v60));
            v54 = (v60 - 1) & v60;
            goto LABEL_78;
          }
        }
      }
    }

    v42 = v91;

    outlined destroy of TermOfAddress?(&v98, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
    if (v42 != 1)
    {
      goto LABEL_30;
    }

    outlined consume of AttributedString.AttributeRunBoundaries?(v41, 1);
    outlined destroy of AttributedString._AttributeValue(v101);

    v5 = v89;
    goto LABEL_45;
  }

LABEL_106:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_15;
  }

  v77 = swift_slowAlloc();

  v78 = v82;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v77, v4, v5, partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
  if (v78)
  {

    result = MEMORY[0x1865D2690](v77, -1, -1);
    __break(1u);
  }

  else
  {
    v45 = v79;

    MEMORY[0x1865D2690](v77, -1, -1);
LABEL_53:

    return v45;
  }

  return result;
}