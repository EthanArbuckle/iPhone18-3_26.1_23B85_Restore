uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v13, v11, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v11, v12, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle@<X0>(NSDecimal **a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s10Foundation15ListFormatStyleV2eeoiySbACyxq_G_AEtFZAA06StringD0V_SaySSGTt1B5(unsigned int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  if (a4 == a1 && (((a4 ^ a1) >> 8) & 1) == 0)
  {
    v9[0] = a2;
    v9[1] = a3;
    v8[0] = a5;
    v8[1] = a6;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = specialized static Locale.== infix(_:_:)(v9, v8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v6 & 1;
}

uint64_t specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(Swift::String *a1, uint64_t a2, NSDecimal **a3)
{
  v5 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  v11 = *a1;
  String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.locale(_:)(&v11._countAndFlagsBits, v7);
  v9 = String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.format(_:)(v8);
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v7, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  v11 = v9;
  return String.init<A>(_:)();
}

uint64_t specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(Swift::String *a1, uint64_t a2, double *a3)
{
  v5 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  v11 = *a1;
  String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.locale(_:)(&v11._countAndFlagsBits, v7);
  v9 = String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.format(_:)(v8);
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v7, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  v11 = v9;
  return String.init<A>(_:)();
}

uint64_t specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  v21 = *(a2 + 64);
  v22 = v5;
  v6 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v6;
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v19 = *(a2 + 32);
  v20 = v7;
  v17 = *a3;
  v14 = v21;
  v15 = *(a2 + 80);
  v11 = v8;
  v23 = *(a2 + 96);
  v16 = *(a2 + 96);
  v12 = v19;
  v13 = v4;
  outlined init with copy of Date.IntervalFormatStyle(v18, v24);
  v10 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  Date.IntervalFormatStyle.format(_:)(&v17);
  v24[4] = v14;
  v24[5] = v15;
  v25 = v16;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  outlined destroy of Date.IntervalFormatStyle(v24);
  return String.init<A>(_:)();
}

uint64_t specialized static String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v106 = a1[4];
  v107 = v3;
  v4 = a1[5];
  v108[0] = a1[6];
  *(v108 + 10) = *(a1 + 106);
  v5 = a1[1];
  v103[0] = *a1;
  v103[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v104 = a1[2];
  v105 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v111 = a2[2];
  v112 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v109 = v9;
  v110 = v12;
  *(v115 + 10) = *(a2 + 106);
  v15 = a2[5];
  v115[0] = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v113 = a2[4];
  v114 = v17;
  v18 = a1[3];
  v116[2] = a1[2];
  v116[3] = v18;
  v19 = a1[1];
  v116[0] = *a1;
  v116[1] = v19;
  *(v117 + 10) = *(a1 + 106);
  v20 = a1[5];
  v116[4] = a1[4];
  v116[5] = v20;
  v117[3] = v10;
  v117[4] = v13;
  v117[0] = a1[6];
  v117[2] = v14;
  *(v118 + 10) = *(a2 + 106);
  v118[0] = a2[6];
  v117[7] = v15;
  v117[5] = v16;
  v117[6] = v113;
  v119[2] = v104;
  v119[3] = v2;
  v119[0] = v8;
  v119[1] = v7;
  v21 = a1[6];
  *&v120[10] = *(a1 + 106);
  v119[5] = v4;
  *v120 = v21;
  v119[4] = v106;
  v22 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v119);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v29 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v119);
      v100 = v113;
      v101 = v114;
      v102[0] = v115[0];
      *(v102 + 10) = *(v115 + 10);
      v96 = v109;
      v97 = v110;
      v98 = v111;
      v99 = v112;
      if (_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(&v96) == 2)
      {
        v30 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v96);
        v31 = v29[1];
        v87 = *v29;
        v88 = v31;
        v32 = v29[3];
        v89 = v29[2];
        v90 = v32;
        v86[0] = *v30;
        v86[1] = v30[1];
        v86[2] = v30[2];
        v86[3] = v30[3];
        outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v94);
        outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v94);
        outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v94);
        outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v94);
        v28 = specialized static Date.VerbatimFormatStyle.== infix(_:_:)(&v87, v86);
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    v48 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v119);
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    v83 = *(v48 + 24);
    v85 = *(v48 + 8);
    v52 = *(v48 + 5);
    v100 = v113;
    v101 = v114;
    v102[0] = v115[0];
    *(v102 + 10) = *(v115 + 10);
    v98 = v111;
    v99 = v112;
    v96 = v109;
    v97 = v110;
    if (_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(&v96) != 3)
    {
LABEL_33:
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, &v96);
      v58 = &v96;
LABEL_34:
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v58);
LABEL_35:
      outlined destroy of TermOfAddress?(v116, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
      goto LABEL_36;
    }

    v53 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v96);
    if (v49 != *v53 || v50 != v53[1] || v51 != v53[2])
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v94);
      v58 = v94;
      goto LABEL_34;
    }

    v79 = *(v53 + 8);
    v81 = *(v53 + 24);
    v54 = *(v53 + 5);
    v87 = v85;
    v86[0] = v79;
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v94);
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v94);
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v94);
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v94);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v55 = specialized static Locale.== infix(_:_:)(&v87, v86);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v55 & 1) == 0 || (v94[0] = v83, v87 = v81, swift_unknownObjectRetain(), swift_unknownObjectRetain(), v56 = specialized static Calendar.== infix(_:_:)(v94, &v87), swift_unknownObjectRelease(), swift_unknownObjectRelease(), (v56 & 1) == 0))
    {
      outlined destroy of TermOfAddress?(v116, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
      outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109);
      outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103);
      goto LABEL_36;
    }

    v57 = _sSh2eeoiySbShyxG_ABtFZs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5(v52, v54);
    outlined destroy of TermOfAddress?(v116, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
    outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109);
    outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103);
    if ((v57 & 1) == 0)
    {
LABEL_36:
      v33 = 0;
      return v33 & 1;
    }

LABEL_93:
    v33 = 1;
    return v33 & 1;
  }

  if (v22)
  {
    v34 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v119);
    v100 = v113;
    v101 = v114;
    v102[0] = v115[0];
    *(v102 + 10) = *(v115 + 10);
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    if (_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(&v96) != 1)
    {
      goto LABEL_33;
    }

    v35 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v96);
    v36 = v34[1];
    v37 = v34[3];
    v38 = v34[4];
    v39 = *(v34 + 1);
    v77 = *v34;
    v78 = *v35;
    v40 = v35[1];
    v41 = v35[2];
    v80 = v35[3];
    v42 = v35[4];
    v43 = *(v35 + 1);
    v82 = *(v34 + 2);
    v84 = *(v35 + 2);
    if (v34[2])
    {
      v44 = 0;
    }

    else
    {
      v44 = 58;
    }

    if (v34[2])
    {
      v45 = 0xE000000000000000;
    }

    else
    {
      v45 = 0xE100000000000000;
    }

    if (v41)
    {
      v46 = 0;
    }

    else
    {
      v46 = 58;
    }

    if (v41)
    {
      v47 = 0xE000000000000000;
    }

    else
    {
      v47 = 0xE100000000000000;
    }

    if (v44 == v46 && v45 == v47)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v94);
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v94);
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v94);
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v94);

      if ((v60 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v94[0] = v82;
    v87 = v84;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v61 = specialized static TimeZone.== infix(_:_:)(v94, &v87);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v61 & 1) == 0 || v39 != v43)
    {
      goto LABEL_35;
    }

    if (v38)
    {
      v62 = 2577447;
    }

    else
    {
      v62 = 32;
    }

    if (v38)
    {
      v63 = 0xE300000000000000;
    }

    else
    {
      v63 = 0xE100000000000000;
    }

    if (v42)
    {
      v64 = 2577447;
    }

    else
    {
      v64 = 32;
    }

    if (v42)
    {
      v65 = 0xE300000000000000;
    }

    else
    {
      v65 = 0xE100000000000000;
    }

    if (v62 == v64 && v63 == v65)
    {

      if (v36 != v40)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v66 & 1) == 0 || ((v36 ^ v40))
      {
        goto LABEL_35;
      }
    }

    if (v37)
    {
      v67 = 0;
    }

    else
    {
      v67 = 45;
    }

    if (v37)
    {
      v68 = 0xE000000000000000;
    }

    else
    {
      v68 = 0xE100000000000000;
    }

    if (v80)
    {
      v69 = 0;
    }

    else
    {
      v69 = 45;
    }

    if (v80)
    {
      v70 = 0xE000000000000000;
    }

    else
    {
      v70 = 0xE100000000000000;
    }

    if (v67 == v69 && v68 == v70)
    {
    }

    else
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v71 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (v77)
    {
      v72 = 0;
    }

    else
    {
      v72 = 58;
    }

    if (v77)
    {
      v73 = 0xE000000000000000;
    }

    else
    {
      v73 = 0xE100000000000000;
    }

    if (v78)
    {
      v74 = 0;
    }

    else
    {
      v74 = 58;
    }

    if (v78)
    {
      v75 = 0xE000000000000000;
    }

    else
    {
      v75 = 0xE100000000000000;
    }

    if (v72 == v74 && v73 == v75)
    {

      outlined destroy of TermOfAddress?(v116, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
      v33 = 1;
      return v33 & 1;
    }

    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of TermOfAddress?(v116, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
    if ((v76 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_93;
  }

  v23 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v119);
  v100 = v113;
  v101 = v114;
  v102[0] = v115[0];
  *(v102 + 10) = *(v115 + 10);
  v96 = v109;
  v97 = v110;
  v98 = v111;
  v99 = v112;
  if (_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(&v96))
  {
    goto LABEL_33;
  }

  v24 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v96);
  v94[4] = v23[4];
  v94[5] = v23[5];
  v95[0] = v23[6];
  *(v95 + 10) = *(v23 + 106);
  v94[0] = *v23;
  v94[1] = v23[1];
  v94[2] = v23[2];
  v94[3] = v23[3];
  v25 = v24[5];
  v91 = v24[4];
  v92 = v25;
  v93[0] = v24[6];
  *(v93 + 10) = *(v24 + 106);
  v26 = v24[1];
  v87 = *v24;
  v88 = v26;
  v27 = v24[3];
  v89 = v24[2];
  v90 = v27;
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v86);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v86);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103, v86);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109, v86);
  v28 = specialized static Date.FormatStyle.== infix(_:_:)(v94, &v87);
LABEL_8:
  v33 = v28;
  outlined destroy of TermOfAddress?(v116, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v109);
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v103);
  return v33 & 1;
}

unint64_t specialized closure #2 in Rope.find<A>(at:in:preferEnd:)(unint64_t result, uint64_t *a2, char a3)
{
  v3 = *result;
  v4 = *a2;
  if (*result)
  {
    result = 0;
    v5 = (a3 & 1) == 0;
    v6 = *a2;
    while ((v4 ^ result) != 0x8000000000000000)
    {
      if (__OFADD__(v6 - 1, v5))
      {
        goto LABEL_12;
      }

      if (v6 - 1 + v5 < 1)
      {
        return result;
      }

      ++result;
      --v6;
      if (v3 == result)
      {
        v4 -= v3;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    if (!v4)
    {
      return v3 - (a3 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *(&v598 + 1) = a1;
  v599 = a2;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v574);
  v581 = &v536 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v578 = &v536 - v4;
  v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v594 = *(v601 - 8);
  MEMORY[0x1EEE9AC00](v601);
  v582 = &v536 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v577 = &v536 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v580 = &v536 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v584 = &v536 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v579 = &v536 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v583 = &v536 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v590 = &v536 - v17;
  v585 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v585);
  v596 = &v536 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v595 = &v536 - v20;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v589 = *(v600 - 8);
  MEMORY[0x1EEE9AC00](v600);
  v575 = &v536 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v576 = &v536 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v593 = &v536 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v586 = &v536 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v536 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v536 - v32;
  v34 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v536 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v536 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v536 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v536 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v536 - v47;
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(*(&v598 + 1), v641);
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v599, &v643);
  if (v642 > 2u)
  {
    if (v642 > 4u)
    {
      if (v642 == 5)
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
        v91 = *&v618[0];
        if (v650 == 5)
        {
          LODWORD(v600) = BYTE8(v617);
          v92 = BYTE9(v617);
          v601 = *(&v618[0] + 1);
          v93 = BYTE8(v643);
          v94 = BYTE9(v643);
          v95 = v644;
          v96 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation23LocalizedStringResourceV_Tt1g5(v617, v643);

          if ((v96 & 1) == 0)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_140;
          }

          if (v92)
          {
            v97 = 256;
          }

          else
          {
            v97 = 0;
          }

          if (v94)
          {
            v98 = 256;
          }

          else
          {
            v98 = 0;
          }

          v99 = _s10Foundation15ListFormatStyleV2eeoiySbACyxq_G_AEtFZAA06StringD0V_SaySSGTt1B5(v97 | v600, v91, v601, v98 | v93, v95, *(&v95 + 1));
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
          return (v99 & 1) != 0;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
        if (v650 == 6)
        {
          v100 = v617;
          v101 = v643;
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
          return v100 == v101;
        }
      }

      goto LABEL_37;
    }

    if (v642 == 3)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
      if (v650 == 3)
      {
        v660 = v618[1];
        v661 = v619[0];
        v662 = v619[1];
        v663 = v619[2];
        v658 = v617;
        v659 = v618[0];
        v653 = v645;
        v654 = v646;
        v655 = v647;
        v656 = v648;
        v651 = v643;
        v652 = v644;
        v49 = (*&v618[0])(&v651);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v651);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v658);
        goto LABEL_39;
      }

      outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v617);
LABEL_37:
      outlined destroy of TermOfAddress?(v641, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO_AGtMd);
      return 0;
    }

    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
    v662 = v619[1];
    v663 = v619[2];
    v664 = v620;
    v658 = v617;
    v659 = v618[0];
    v660 = v618[1];
    v661 = v619[0];
    if (v650 != 4)
    {
      outlined destroy of LocalizedStringResource(&v658);
      goto LABEL_37;
    }

    v655 = v647;
    v656 = v648;
    v651 = v643;
    v652 = v644;
    v653 = v645;
    v654 = v646;
    v637 = v619[1];
    v638[0] = v619[2];
    v633 = v617;
    v634 = v618[0];
    v635 = v618[1];
    v636 = v619[0];
    v631 = v647;
    v632[0] = v648;
    v627 = v643;
    v628 = v644;
    v657 = v649;
    *&v638[1] = v620;
    *&v632[1] = v649;
    v629 = v645;
    v630 = v646;
    v49 = static LocalizedStringResource.== infix(_:_:)(&v633, &v627);
    outlined destroy of LocalizedStringResource(&v651);
    outlined destroy of LocalizedStringResource(&v658);
LABEL_39:
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
    return (v49 & 1) != 0;
  }

  v588 = v30;
  v570 = v33;
  v571 = v39;
  v572 = v45;
  v573 = v34;
  v568 = v36;
  v50 = v594;
  if (!v642)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
    if (v650)
    {
      __swift_destroy_boxed_opaque_existential_1(&v617);
      goto LABEL_37;
    }

    outlined init with take of Any(&v617, &v658);
    outlined init with take of Any(&v643, &v651);
    v102 = *(&v659 + 1);
    v103 = __swift_project_boxed_opaque_existential_1(&v658, *(&v659 + 1));
    *(&v634 + 1) = v102;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v633);
    (*(*(v102 - 8) + 16))(boxed_opaque_existential_0, v103, v102);
    v105 = *(&v652 + 1);
    v106 = __swift_project_boxed_opaque_existential_1(&v651, *(&v652 + 1));
    *(&v628 + 1) = v105;
    v107 = __swift_allocate_boxed_opaque_existential_0(&v627);
    (*(*(v105 - 8) + 16))(v107, v106, v105);
    v49 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(&v633, &v627);
    __swift_destroy_boxed_opaque_existential_1(&v627);
    __swift_destroy_boxed_opaque_existential_1(&v633);
    __swift_destroy_boxed_opaque_existential_1(&v651);
    __swift_destroy_boxed_opaque_existential_1(&v658);
    goto LABEL_39;
  }

  if (v642 != 1)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
    if (v650 != 2)
    {
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v617);
      goto LABEL_37;
    }

    v660 = v618[1];
    v661 = v619[0];
    v662 = v619[1];
    v663 = v619[2];
    v658 = v617;
    v659 = v618[0];
    v653 = v645;
    v654 = v646;
    v655 = v647;
    v656 = v648;
    v651 = v643;
    v652 = v644;
    v49 = (*&v618[0])(&v651);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v651);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v658);
    goto LABEL_39;
  }

  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, v640);
  v51 = v640[0];
  if (v650 != 1)
  {

    goto LABEL_37;
  }

  v566 = v42;
  v567 = v48;
  v552 = *(&v643 + 1);
  v52 = v643;
  v553 = v640[1];
  v749 = *(v640[0] + 24);
  v750 = *(v640[0] + 40);
  v751 = *(v640[0] + 56);
  v53 = BigString.startIndex.getter();
  *(&v598 + 1) = v55;
  v599 = v54;
  *&v598 = v56;
  v57 = BigString.endIndex.getter();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v746 = *(v52 + 24);
  v747 = *(v52 + 40);
  v592 = v52;
  v748 = *(v52 + 56);
  v64 = BigString.startIndex.getter();
  v562 = v65;
  v563 = v64;
  v560 = v67;
  v561 = v66;
  v68 = BigString.endIndex.getter();
  v558 = v69;
  v559 = v68;
  v556 = v71;
  v557 = v70;
  *&v617 = v53;
  *(&v617 + 1) = v599;
  *&v618[0] = *(&v598 + 1);
  *(&v618[0] + 1) = v598;
  *&v618[1] = v57;
  *(&v618[1] + 1) = v59;
  *&v619[0] = v61;
  *(&v619[0] + 1) = v63;
  v72 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v591 = v51;
  *v572 = v51;
  v565 = v72;
  RangeSet.init()();
  v73 = v590;
  RangeSet.ranges.getter();
  v74 = v595;
  v75 = v601;
  v554 = *(v50 + 16);
  v555 = v50 + 16;
  v554(v595, v73, v601);
  v76 = *(v585 + 36);
  v77 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v78 = *(v50 + 8);
  v594 = v50 + 8;
  v569 = v78;
  v78(v73, v75);
  v79 = v74;
  dispatch thunk of Collection.endIndex.getter();
  v80 = *(v74 + v76);
  v599 = v77;
  if (v80 != v617)
  {
    v587 = v76;
    do
    {
      v109 = dispatch thunk of Collection.subscript.read();
      v111 = v110[4];
      v112 = v110[7];
      *&v598 = v110[6];
      *(&v598 + 1) = v111;
      v597 = v112;
      v109(&v617, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v113 = v591;
      v743 = *(v591 + 24);
      v744 = *(v591 + 40);
      v745 = *(v591 + 56);
      swift_unknownObjectRetain();
      v114 = BigString.UnicodeScalarView.index(roundingDown:)();
      v116 = v115;
      v118 = v117;
      v120 = v119;
      swift_unknownObjectRelease();
      v740 = *(v113 + 24);
      v741 = *(v113 + 40);
      v742 = *(v113 + 56);
      swift_unknownObjectRetain();
      v121 = BigString.UnicodeScalarView.index(roundingDown:)();
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v75 = v601;
      swift_unknownObjectRelease();
      *&v617 = v114;
      *(&v617 + 1) = v116;
      *&v618[0] = v118;
      *(&v618[0] + 1) = v120;
      *&v618[1] = v121;
      *(&v618[1] + 1) = v123;
      *&v619[0] = v125;
      *(&v619[0] + 1) = v127;
      if ((v121 ^ v114) >= 0x400)
      {
        v128 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v128(&v658, 0);
      }

      v79 = v595;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v79 + v587) != v617);
  }

  outlined destroy of TermOfAddress?(v79, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v82 = v572;
  v81 = v573;
  v83 = *(v573 + 24);
  v84 = *(v589 + 16);
  v587 = v589 + 16;
  v564 = v84;
  v84(v572 + v83, v588, v600);
  v85 = v590;
  RangeSet.ranges.getter();
  v86 = RangeSet.Ranges.count.getter();
  v87 = v569;
  v569(v85, v75);
  v88 = *(v81 + 28);
  LODWORD(v551) = v86 > 1;
  *(v82 + v88) = v551;
  v89 = v583;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v658 == v617)
  {
    v90 = v89;
LABEL_47:
    v87(v90, v75);
    v135 = v590;
    v134 = v591;
    v136 = *(v591 + 72);
    v137 = v600;
    if (v136)
    {
      v597 = *(v136 + 18);
    }

    else
    {
      v597 = 0;
    }

    *(&v598 + 1) = *(v591 + 96);
    v737 = *(v591 + 24);
    v738 = *(v591 + 40);
    v739 = *(v591 + 56);
    v138 = BigString.startIndex.getter();
    v140 = v139;
    v142 = v141;
    v583 = v143;
    v144 = *(v134 + 72);
    *&v598 = *(v134 + 96);
    if (v144)
    {
      v595 = *(v144 + 18);
    }

    else
    {
      v595 = 0;
    }

    v145 = *(v589 + 8);
    v145(v588, v137);
    v588 = v145;
    v145(v570, v137);
    v734 = *(v134 + 24);
    v735 = *(v134 + 40);
    v736 = *(v134 + 56);
    v146 = BigString.startIndex.getter();
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = -1;
    v156 = v138;
    v157 = v138;
    v158 = v140;
    v159 = v140;
    v160 = v142;
    v161 = v142;
    v162 = v583;
    v163 = v583;
    v164 = v146;
    v165 = v147;
    v166 = v148;
    v167 = v149;
    v168 = -1;
    goto LABEL_55;
  }

  v129 = dispatch thunk of Collection.subscript.read();
  v131 = *v130;
  v549 = v130[1];
  v550 = v131;
  v132 = v130[2];
  v547 = v130[3];
  v548 = v132;
  v129(&v617, 0);
  v87(v89, v75);
  v133 = v579;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v90 = v133;
    goto LABEL_47;
  }

  v541 = v83;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v263 = dispatch thunk of Collection.subscript.read();
  v265 = v264[4];
  v583 = v264[5];
  v266 = v264[6];
  v267 = v264[7];
  v263(&v617, 0);
  v87(v133, v75);
  v268 = v591;
  AttributedString.Guts.findRun(at:)(v550, v547, &v617);
  v597 = *(&v617 + 1);
  *(&v598 + 1) = v617;
  v542 = *(&v618[0] + 1);
  v543 = *&v618[0];
  v579 = *(&v618[1] + 1);
  v269 = v75;
  v160 = *(&v619[0] + 1);
  v158 = *&v619[0];
  v162 = *&v619[1];
  v737 = *(v268 + 24);
  v738 = *(v268 + 40);
  v739 = *(v268 + 56);
  v270 = BigString.endIndex.getter();
  v545 = v266;
  v546 = v265;
  v544 = v267;
  if ((v270 ^ v265) >= 0x400)
  {
    AttributedString.Guts.findRun(at:)(v265, v267, &v617);
    v595 = *(&v617 + 1);
    *&v598 = v617;
    v154 = *&v618[0];
    v539 = *(&v618[1] + 1);
    v540 = *(&v618[0] + 1);
    v537 = *(&v619[0] + 1);
    v538 = *&v619[0];
    v536 = *&v619[1];
    v297 = v590;
    v298 = v600;
    RangeSet.ranges.getter();
    v168 = RangeSet.Ranges.count.getter();
    v569(v297, v269);
    v299 = *(v589 + 8);
    v299(v588, v298);
    v588 = v299;
    v299(v570, v298);
    v135 = v297;
    v146 = v539;
    v153 = v540;
    v164 = v546;
    v163 = v547;
    v149 = v536;
    v148 = v537;
    v147 = v538;
    v155 = 0;
    v152 = v551;
    v159 = v549;
    v157 = v550;
    v161 = v548;
    v156 = v579;
    v165 = v583;
    v167 = v544;
    v166 = v545;
    v150 = v542;
    v151 = v543;
  }

  else
  {
    v271 = *(v268 + 72);
    if (v271)
    {
      v272 = *(v268 + 80);
    }

    else
    {
      v272 = 0;
    }

    v540 = v272;
    v273 = *(v268 + 96);
    v274 = swift_unknownObjectRetain();
    *&v598 = v273;
    v595 = specialized Rope._endPath.getter(v274);
    v275 = v570;
    if (v271)
    {
      swift_unknownObjectRelease();
    }

    v135 = v590;
    v276 = v600;
    RangeSet.ranges.getter();
    v277 = v601;
    v168 = RangeSet.Ranges.count.getter();
    v569(v135, v277);
    v278 = *(v589 + 8);
    v278(v588, v276);
    v588 = v278;
    v278(v275, v276);
    v155 = 0;
    v154 = 0;
    v166 = v545;
    v164 = v546;
    v146 = v546;
    v165 = v583;
    v147 = v583;
    v148 = v545;
    v151 = v543;
    v167 = v544;
    v149 = v544;
    v152 = v551;
    v159 = v549;
    v157 = v550;
    v163 = v547;
    v161 = v548;
    v156 = v579;
    v150 = v542;
    v153 = v540;
  }

LABEL_55:
  v169 = v572;
  v572[1] = v150;
  v169[2] = *(&v598 + 1);
  v169[3] = v597;
  v169[4] = v151;
  v169[5] = v156;
  v169[6] = v158;
  v169[7] = v160;
  v169[8] = v162;
  v169[9] = v157;
  v169[10] = v159;
  v169[11] = v161;
  v169[12] = v163;
  v169[13] = v155;
  *(v169 + 112) = 0;
  *(v169 + 113) = v152;
  v170 = v598;
  v169[15] = v153;
  v169[16] = v170;
  v169[17] = v595;
  v169[18] = v154;
  v169[19] = v146;
  v169[20] = v147;
  v169[21] = v148;
  v169[22] = v149;
  v169[23] = v164;
  v169[24] = v165;
  v169[25] = v166;
  v169[26] = v167;
  v169[27] = v168;
  *(v169 + 224) = 0;
  *(v169 + 225) = v152;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v169, v567, type metadata accessor for AttributedString.Runs);
  *&v617 = v563;
  *(&v617 + 1) = v562;
  *&v618[0] = v561;
  *(&v618[0] + 1) = v560;
  *&v618[1] = v559;
  *(&v618[1] + 1) = v558;
  *&v619[0] = v557;
  *(&v619[0] + 1) = v556;
  v171 = v592;

  RangeSet.init(_:)();
  *v571 = v171;
  RangeSet.init()();
  RangeSet.ranges.getter();
  v172 = v596;
  v173 = v601;
  v554(v596, v135, v601);
  v174 = *(v585 + 36);
  dispatch thunk of Collection.startIndex.getter();
  v569(v135, v173);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v172 + v174) != v617)
  {
    v595 = v174;
    do
    {
      v183 = dispatch thunk of Collection.subscript.read();
      v185 = v184[4];
      *&v598 = v184[5];
      *(&v598 + 1) = v185;
      v597 = v184[6];
      v183(&v617, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v186 = v592;
      v731 = *(v592 + 24);
      v732 = *(v592 + 40);
      v733 = *(v592 + 56);
      swift_unknownObjectRetain();
      v187 = BigString.UnicodeScalarView.index(roundingDown:)();
      v189 = v188;
      v191 = v190;
      v193 = v192;
      swift_unknownObjectRelease();
      v728 = *(v186 + 24);
      v729 = *(v186 + 40);
      v730 = *(v186 + 56);
      swift_unknownObjectRetain();
      v194 = BigString.UnicodeScalarView.index(roundingDown:)();
      v196 = v195;
      v198 = v197;
      v200 = v199;
      swift_unknownObjectRelease();
      *&v617 = v187;
      *(&v617 + 1) = v189;
      *&v618[0] = v191;
      *(&v618[0] + 1) = v193;
      *&v618[1] = v194;
      *(&v618[1] + 1) = v196;
      *&v619[0] = v198;
      v173 = v601;
      *(&v619[0] + 1) = v200;
      if ((v194 ^ v187) >= 0x400)
      {
        v201 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v201(&v658, 0);
      }

      v172 = v596;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v172 + v595) != v617);
  }

  outlined destroy of TermOfAddress?(v172, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v175 = v573;
  v176 = *(v573 + 24);
  v177 = v571;
  v564(v571 + v176, v593, v600);
  v178 = v590;
  RangeSet.ranges.getter();
  v179 = RangeSet.Ranges.count.getter();
  v569(v178, v173);
  v180 = *(v175 + 28);
  LODWORD(v595) = v179 > 1;
  *(v177 + v180) = v595;
  v181 = v584;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v658 == v617)
  {
    v569(v181, v173);
    v182 = v592;
LABEL_64:
    v209 = *(v182 + 72);
    v210 = v600;
    v211 = v586;
    if (v209)
    {
      *(&v598 + 1) = *(v209 + 18);
    }

    else
    {
      *(&v598 + 1) = 0;
    }

    *&v598 = *(v182 + 96);
    v725 = *(v182 + 24);
    v726 = *(v182 + 40);
    v727 = *(v182 + 56);
    v212 = BigString.startIndex.getter();
    v214 = v213;
    v595 = v215;
    v217 = v216;
    v218 = *(v182 + 72);
    v597 = *(v182 + 96);
    v219 = v212;
    if (v218)
    {
      v596 = *(v218 + 18);
    }

    else
    {
      v596 = 0;
    }

    v220 = v588;
    (v588)(v593, v210);
    v220(v211, v210);
    v724[15] = *(v182 + 24);
    v724[16] = *(v182 + 40);
    v724[17] = *(v182 + 56);
    v224 = BigString.startIndex.getter();
    v225 = v221;
    v226 = v222;
    v227 = v223;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v232 = 0;
    v233 = -1;
    v234 = v219;
    v235 = v214;
    v236 = v214;
    v237 = v595;
    v238 = v595;
    v239 = v217;
    v240 = v217;
    v241 = v224;
    v242 = -1;
    v243 = v571;
    v244 = *(&v598 + 1);
    goto LABEL_71;
  }

  v202 = dispatch thunk of Collection.subscript.read();
  v204 = *(v203 + 8);
  v572 = *v203;
  v585 = v204;
  v205 = *(v203 + 24);
  v583 = *(v203 + 16);
  v579 = v205;
  v202(&v617, 0);
  v206 = v569;
  v569(v181, v173);
  v207 = v580;
  RangeSet.ranges.getter();
  v208 = dispatch thunk of Collection.isEmpty.getter();
  v182 = v592;
  if (v208)
  {
    v206(v207, v173);
    goto LABEL_64;
  }

  v557 = v176;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v279 = dispatch thunk of Collection.subscript.read();
  v281 = v280[4];
  v584 = v280[5];
  v282 = v280[7];
  v570 = v280[6];
  v563 = v282;
  v279(&v617, 0);
  v569(v207, v173);
  v219 = v572;
  AttributedString.Guts.findRun(at:)(v572, v579, &v617);
  v598 = v617;
  v558 = *(&v618[0] + 1);
  v559 = *&v618[0];
  v580 = *(&v618[1] + 1);
  v237 = *(&v619[0] + 1);
  v561 = *&v619[1];
  v562 = *&v619[0];
  v725 = *(v182 + 24);
  v726 = *(v182 + 40);
  v727 = *(v182 + 56);
  v283 = BigString.endIndex.getter();
  v560 = v281;
  if ((v283 ^ v281) >= 0x400)
  {
    v300 = v173;
    AttributedString.Guts.findRun(at:)(v281, v563, &v617);
    v596 = *(&v617 + 1);
    v597 = v617;
    v555 = *(&v618[0] + 1);
    v556 = *&v618[0];
    v224 = *(&v618[1] + 1);
    v226 = *(&v619[0] + 1);
    v225 = *&v619[0];
    v227 = *&v619[1];
    v301 = v590;
    v302 = v600;
    RangeSet.ranges.getter();
    v242 = RangeSet.Ranges.count.getter();
    v569(v301, v300);
    v303 = v588;
    (v588)(v593, v302);
    v303(v586, v302);
    v231 = v555;
    v232 = v556;
    v241 = v560;
    v239 = v561;
    v243 = v571;
    v219 = v572;
    v233 = 0;
    v230 = v595;
    v221 = v584;
    v236 = v585;
    v238 = v583;
    v240 = v579;
    v234 = v580;
    v244 = *(&v598 + 1);
    v235 = v562;
    v223 = v563;
    v222 = v570;
    v228 = v558;
    v229 = v559;
  }

  else
  {
    v284 = *(v182 + 72);
    if (v284)
    {
      v285 = *(v182 + 80);
    }

    else
    {
      v285 = 0;
    }

    v286 = *(v182 + 96);
    v287 = swift_unknownObjectRetain();
    v597 = v286;
    v596 = specialized Rope._endPath.getter(v287);
    v288 = v571;
    if (v284)
    {
      swift_unknownObjectRelease();
    }

    v289 = v590;
    v290 = v600;
    RangeSet.ranges.getter();
    v291 = v601;
    v242 = RangeSet.Ranges.count.getter();
    v569(v289, v291);
    v292 = v588;
    (v588)(v593, v290);
    v292(v586, v290);
    v243 = v288;
    v233 = 0;
    v232 = 0;
    v241 = v560;
    v239 = v561;
    v224 = v560;
    v221 = v584;
    v236 = v585;
    v225 = v584;
    v222 = v570;
    v226 = v570;
    v235 = v562;
    v223 = v563;
    v227 = v563;
    v230 = v595;
    v238 = v583;
    v240 = v579;
    v234 = v580;
    v244 = *(&v598 + 1);
    v228 = v558;
    v229 = v559;
    v231 = v285;
  }

LABEL_71:
  *(v243 + 8) = v228;
  *(v243 + 16) = v598;
  *(v243 + 24) = v244;
  *(v243 + 32) = v229;
  *(v243 + 40) = v234;
  *(v243 + 48) = v235;
  *(v243 + 56) = v237;
  *(v243 + 64) = v239;
  *(v243 + 72) = v219;
  *(v243 + 80) = v236;
  *(v243 + 88) = v238;
  *(v243 + 96) = v240;
  *(v243 + 104) = v233;
  *(v243 + 112) = 0;
  *(v243 + 113) = v230;
  v245 = v596;
  v246 = v597;
  *(v243 + 120) = v231;
  *(v243 + 128) = v246;
  *(v243 + 136) = v245;
  *(v243 + 144) = v232;
  *(v243 + 152) = v224;
  *(v243 + 160) = v225;
  *(v243 + 168) = v226;
  *(v243 + 176) = v227;
  *(v243 + 184) = v241;
  *(v243 + 192) = v221;
  *(v243 + 200) = v222;
  *(v243 + 208) = v223;
  *(v243 + 216) = v242;
  *(v243 + 224) = 0;
  *(v243 + 225) = v230;
  v247 = v566;
  result = outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v243, v566, type metadata accessor for AttributedString.Runs);
  v251 = v567;
  v252 = *v567;
  *(&v598 + 1) = *v247;
  if (v252 == *(&v598 + 1))
  {
    result = static RangeSet.== infix(_:_:)();
    if (result)
    {
      goto LABEL_112;
    }
  }

  v253 = v251[1];
  v254 = v251[9];
  v255 = v251[12];
  v256 = v251[15];
  v257 = v251[23];
  v258 = v251[26];
  v259 = v573;
  if (*(v251 + *(v573 + 28)) == 1)
  {
    v250 = 0;
    v366 = *(v251 + 112);
    v367 = v251[13];
    v555 = v257 >> 10;
    v368 = v251[8];
    v580 = v251[7];
    v369 = v251[5];
    v583 = v251[6];
    v584 = v252;
    v560 = v254 >> 10;
    v557 = v255;
    v558 = v589 + 8;
    v370 = v251[3];
    v371 = v251[4];
    v372 = v253;
    v546 = v254;
    v373 = v255;
    result = v258;
    v248 = v256;
    *&v598 = v370;
    v374 = v251[2];
    v375 = v600;
    v556 = v253;
LABEL_146:
    LOBYTE(v658) = v366;
    if (v372 >= v256 && (v256 < v372 || v258 == 2 || v373 != 2 && v254 >> 10 >= v555))
    {
      goto LABEL_316;
    }

    if (v372 < v253)
    {
      goto LABEL_325;
    }

    v385 = v253 < v372 || v255 == 2;
    v386 = v385;
    if (!v385)
    {
      if (v373 == 2)
      {
        goto LABEL_363;
      }

      if (v560 > v254 >> 10)
      {
        goto LABEL_339;
      }
    }

    if (v372 >= v248)
    {
      if (v248 < v372)
      {
        goto LABEL_340;
      }

      if (result == 2)
      {
        goto LABEL_364;
      }

      if (v373 == 2)
      {
        if (!v386)
        {
          goto LABEL_361;
        }

LABEL_171:
        if (v248 < v372)
        {
          goto LABEL_327;
        }

        if (v372 >= v248 && v373 != 2)
        {
          if (result == 2)
          {
            goto LABEL_366;
          }

          if (v257 >> 10 < v254 >> 10)
          {
            goto LABEL_342;
          }
        }

        v597 = v371;
        if (v371 == 1 || v374 != *(v252 + 12))
        {
          goto LABEL_359;
        }

        v579 = v257;
        v593 = v250;
        v571 = v248;
        v572 = result;
        v561 = v369 >> 11;
        v562 = v368;
        v570 = v369;
        v565 = v254;
        v585 = v373;
        v595 = v374;
        v596 = v372;
        if (v368 == 2)
        {
          v387 = *(v252 + 9);
          if (v387)
          {
            v388 = v252;
            v391 = v252 + 80;
            v389 = *(v252 + 10);
            v390 = *(v391 + 1);
            swift_unknownObjectRetain();
            v392 = v597;
            v393 = v389;
            v252 = v388;
            v394 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v595, v598, v597, v387, v393, v390);
            swift_unknownObjectRelease();
          }

          else
          {
            v394 = 0;
            v392 = v597;
          }

          v396 = *(v252 + 24);
          v684 = *(v252 + 40);
          v685 = *(v252 + 56);
          v683 = v396;
          v680 = *(v252 + 24);
          v681 = *(v252 + 40);
          v682 = *(v252 + 56);
          BigString.startIndex.getter();
          v395 = v252;
          v597 = v397;
          v586 = v398;
          v563 = v399;
          v760[0] = v683;
          v760[1] = v684;
          v761 = v685;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v760, &v617);
          v586 = v394;
          v563 = BigString.UTF8View.index(_:offsetBy:)();
          result = outlined destroy of BigString(&v683);
        }

        else
        {
          v677 = *(v252 + 24);
          v678 = *(v252 + 40);
          v679 = *(v252 + 56);
          v395 = v252;
          v586 = v677;
          swift_unknownObjectRetain();
          v563 = BigString.UTF8View.index(roundingDown:)();
          result = swift_unknownObjectRelease();
          v586 = (v369 >> 11);
          v392 = v597;
        }

        v400 = *(v395 + 9);
        v597 = *(v395 + 10);
        v401 = *(v395 + 12);
        v402 = v595;
        *&v617 = v595;
        *(&v617 + 1) = v598;
        *&v618[0] = v392;
        if (__OFADD__(v596, 1))
        {
          goto LABEL_329;
        }

        if (v595 != v401)
        {
          goto LABEL_331;
        }

        ++v596;
        if (v392)
        {
          v403 = *(v392 + 24 * ((v598 >> ((4 * *(v392 + 18) + 8) & 0x3C)) & 0xF) + 24);
          v384 = __OFADD__(v586, v403);
          v404 = &v586[v403];
          if (v384)
          {
            goto LABEL_337;
          }

          v586 = v404;
          if (!v400)
          {
            goto LABEL_328;
          }

          v405 = v392;
          result = swift_unknownObjectRetain();
        }

        else
        {
          v405 = 0;
          swift_unknownObjectRetain();
          v406 = specialized Rope._Node.subscript.getter(v598, v400);
          v559 = v407;

          if (__OFADD__(v586, v406))
          {
            goto LABEL_349;
          }

          v586 += v406;
          if (!v400)
          {
            goto LABEL_328;
          }
        }

        if (v598 >= (((-15 << ((4 * *(v400 + 18) + 8) & 0x3C)) - 1) & *(v400 + 18) | (*(v400 + 16) << ((4 * *(v400 + 18) + 8) & 0x3C))))
        {
          goto LABEL_328;
        }

        if (v405 && (v408 = v405, v409 = (4 * *(v405 + 18) + 8) & 0x3C, v410 = ((v598 >> v409) & 0xF) + 1, v410 < *(v408 + 16)))
        {
          swift_unknownObjectRelease();
          v411 = (v410 << v409) | ((-15 << v409) - 1) & v598;
        }

        else
        {
          if ((specialized Rope._Node.formSuccessor(of:)(&v617, v400) & 1) == 0)
          {
            v412 = *(v400 + 18);
            v413 = *(v400 + 16);
            swift_unknownObjectRelease();
            *&v617 = v402;
            *&v598 = ((-15 << ((4 * v412 + 8) & 0x3C)) - 1) & v412 | (v413 << ((4 * v412 + 8) & 0x3C));
            *(&v617 + 1) = v598;
            *&v618[0] = 0;
            goto LABEL_200;
          }

          swift_unknownObjectRelease();
          v411 = *(&v617 + 1);
        }

        *&v598 = v411;
LABEL_200:
        v595 = v617;
        v597 = *&v618[0];
        if ((v658 & 1) == 0)
        {
          v425 = v590;
          RangeSet.ranges.getter();
          v426 = v601;
          RangeSet.Ranges.subscript.getter();
          v423 = v569;
          result = (v569)(v425, v426);
          v424 = *&v618[1];
          goto LABEL_214;
        }

        v564(v576, v567 + *(v573 + 24), v375);
        if (v585 == 2)
        {
          v414 = v563;
        }

        else
        {
          v414 = v565;
        }

        v415 = v590;
        RangeSet.ranges.getter();
        v416 = v601;
        v417 = RangeSet.Ranges.count.getter();
        result = (v569)(v415, v416);
        if (v417 < 1)
        {
          goto LABEL_321;
        }

        v418 = 0;
        v419 = v414 >> 10;
        while (1)
        {
          if (__OFADD__(v418, v417))
          {
            goto LABEL_323;
          }

          v367 = (v418 + v417) / 2;
          v420 = v590;
          RangeSet.ranges.getter();
          v421 = v601;
          RangeSet.Ranges.subscript.getter();
          v422 = v420;
          v423 = v569;
          result = (v569)(v422, v421);
          if (v419 < v617 >> 10)
          {
            v417 = (v418 + v417) / 2;
          }

          else
          {
            v424 = *&v618[1];
            if (v419 < *&v618[1] >> 10)
            {
              v375 = v600;
              result = (v588)(v576, v600);
LABEL_214:
              if (v586 >= (v424 >> 11))
              {
                v384 = __OFADD__(v367++, 1);
                if (v384)
                {
                  goto LABEL_345;
                }

                v431 = v567;
                v432 = v590;
                RangeSet.ranges.getter();
                v433 = v601;
                v434 = RangeSet.Ranges.count.getter();
                v423(v432, v433);
                if (v367 == v434)
                {
                  v372 = v431[15];
                  v435 = v431[16];
                  v371 = v431[18];
                  *&v598 = v431[17];
                  v436 = v431[19];
                  v583 = v431[20];
                  v368 = v431[22];
                  v580 = v431[21];
                  v254 = v431[23];
                  v373 = v431[26];
                  v367 = v431[27];
                  v257 = v254;
                  result = v373;
                  v248 = v372;
                  v366 = *(v431 + 224);
                  v369 = v436;
                  v374 = v435;
                  v375 = v600;
                  v252 = v584;
                  v253 = v556;
                  v255 = v557;
                  v383 = v593;
                  goto LABEL_145;
                }

                RangeSet.ranges.getter();
                v437 = v601;
                RangeSet.Ranges.subscript.getter();
                v423(v432, v437);
                v585 = *(&v618[0] + 1);
                v583 = *&v618[0];
                v586 = *(&v617 + 1);
                v438 = *(v584 + 9);
                v439 = *(v584 + 10);
                v441 = *(v584 + 11);
                v440 = *(v584 + 12);
                v442 = v617;
                v443 = v617 >> 11;
                swift_unknownObjectRetain();
                result = specialized Rope.find<A>(at:in:preferEnd:)(v443, 0, v438, v439, v441, v440);
                v597 = v445;
                *&v598 = v444;
                v595 = v446;
                if (result != v440)
                {
                  goto LABEL_354;
                }

                v447 = v440;
                if (v438)
                {
                  v596 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v440, v598, v597, v438, v439);
                  result = swift_unknownObjectRelease();
                }

                else
                {
                  v596 = 0;
                }

                v448 = *(v584 + 40);
                v674 = *(v584 + 24);
                v675 = v448;
                v676 = *(v584 + 56);
                if (!__OFSUB__(0, v595))
                {
                  swift_unknownObjectRetain();
                  v449 = v442;
                  v450 = v585;
                  v570 = BigString.UTF8View.index(_:offsetBy:)();
                  v583 = v451;
                  v580 = v452;
                  v368 = v453;
                  swift_unknownObjectRelease();
                  v373 = v450;
                  v254 = v449;
                  v366 = 0;
                  v375 = v600;
                  v252 = v584;
                  v253 = v556;
                  v255 = v557;
                  v257 = v579;
                  v383 = v593;
                  v248 = v571;
                  result = v572;
                  v372 = v596;
                  v371 = v597;
                  v374 = v447;
                  v369 = v570;
                  goto LABEL_145;
                }
              }

              else
              {
                if (v562 == 2)
                {
                  v376 = *(v584 + 24);
                  v377 = *(v584 + 56);
                  v672 = *(v584 + 40);
                  v673 = v377;
                  v378 = *(v584 + 40);
                  v668 = *(v584 + 24);
                  v669 = v378;
                  v670 = *(v584 + 56);
                  v671 = v376;
                  BigString.startIndex.getter();
                  v585 = v379;
                  v762[0] = v671;
                  v762[1] = v672;
                  v763 = v673;
                  outlined init with copy of Rope<BigString._Chunk>._Node?(v762, &v617);
                  v369 = BigString.UTF8View.index(_:offsetBy:)();
                  v583 = v380;
                  v580 = v381;
                  v368 = v382;
                  outlined destroy of BigString(&v671);
                  goto LABEL_144;
                }

                v427 = *(v584 + 40);
                v665 = *(v584 + 24);
                v666 = v427;
                v667 = *(v584 + 56);
                if (!__OFSUB__(v586, v561))
                {
                  swift_unknownObjectRetain();
                  v369 = BigString.UTF8View.index(_:offsetBy:)();
                  v583 = v428;
                  v580 = v429;
                  v368 = v430;
                  swift_unknownObjectRelease();
LABEL_144:
                  v374 = v595;
                  v372 = v596;
                  v371 = v597;
                  v366 = 0;
                  v254 = v369;
                  v373 = v368;
                  v252 = v584;
                  v253 = v556;
                  v255 = v557;
                  v257 = v579;
                  v383 = v593;
                  v248 = v571;
                  result = v572;
LABEL_145:
                  v384 = __OFADD__(v383, 1);
                  v250 = v383 + 1;
                  if (!v384)
                  {
                    goto LABEL_146;
                  }

LABEL_335:
                  __break(1u);
LABEL_336:
                  __break(1u);
LABEL_337:
                  __break(1u);
LABEL_338:
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  __break(1u);
LABEL_342:
                  __break(1u);
LABEL_343:
                  __break(1u);
LABEL_344:
                  __break(1u);
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
LABEL_347:
                  __break(1u);
LABEL_348:
                  __break(1u);
LABEL_349:
                  __break(1u);
LABEL_350:
                  __break(1u);
LABEL_351:
                  __break(1u);
LABEL_352:
                  __break(1u);
                }

                __break(1u);
LABEL_354:
                __break(1u);
              }

              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
              return result;
            }

            v418 = v367 + 1;
          }

          if (v418 >= v417)
          {
            goto LABEL_321;
          }
        }
      }

      if (v254 >> 10 >= v257 >> 10)
      {
        goto LABEL_351;
      }
    }

    if ((v386 & 1) == 0)
    {
      if (v373 == 2)
      {
        goto LABEL_361;
      }

      if (v560 > v254 >> 10)
      {
        goto LABEL_347;
      }
    }

    goto LABEL_171;
  }

  v260 = v256 - v253;
  if (__OFSUB__(v256, v253))
  {
    __break(1u);
    goto LABEL_228;
  }

  v261 = v251[22];
  if (v258 == 2)
  {
    v262 = v261 != 2;
  }

  else
  {
    v262 = v261 == 2 || (v257 ^ v251[19]) > 0x3FF;
  }

  v250 = (v260 + v262);
  if (__OFADD__(v260, v262))
  {
LABEL_228:
    __break(1u);
LABEL_229:
    v571 = v248;
    v572 = result;
    v593 = v250;
    v579 = v257;
    v556 = v253;
    v557 = v255;
    v584 = v252;
    v454 = 0;
    v455 = v566[112];
    v456 = *(v566 + 12);
    v457 = *(v566 + 13);
    v458 = *(v566 + 8);
    v459 = *(v566 + 9);
    v570 = *(v566 + 7);
    v460 = *(v566 + 5);
    v576 = *(v566 + 6);
    v597 = *(v566 + 4);
    v546 = v254;
    v547 = v225 >> 10;
    v554 = (v459 >> 10);
    v555 = v456;
    v548 = v589 + 8;
    v549 = v249;
    v461 = v219;
    v462 = v456;
    v558 = v249;
    v463 = v237;
    v464 = *(v566 + 2);
    *&v598 = *(v566 + 3);
    v596 = v464;
    v465 = *(&v598 + 1);
    v551 = v237;
    while (1)
    {
      LOBYTE(v658) = v455;
      if (v461 >= v237 && (v237 < v461 || v549 == 2 || v462 != 2 && v459 >> 10 >= v547))
      {
        v247 = v566;
        v251 = v567;
        v296 = v582;
        v252 = v584;
        v254 = v546;
        v253 = v556;
        v255 = v557;
        v257 = v579;
        v248 = v571;
        result = v572;
        if (v593 == v454)
        {
          goto LABEL_104;
        }

LABEL_139:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v247, type metadata accessor for AttributedString.Runs);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v251, type metadata accessor for AttributedString.Runs);

LABEL_140:
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
        return 0;
      }

      if (v461 < v219)
      {
        goto LABEL_326;
      }

      v472 = v219 < v461 || v555 == 2;
      v473 = v472;
      if (!v472)
      {
        if (v462 == 2)
        {
          goto LABEL_365;
        }

        if (v554 > v459 >> 10)
        {
          goto LABEL_341;
        }
      }

      if (v461 >= v463)
      {
        if (v463 < v461)
        {
          goto LABEL_343;
        }

        if (v558 == 2)
        {
          goto LABEL_367;
        }

        if (v462 == 2)
        {
          if (!v473)
          {
            goto LABEL_362;
          }

          goto LABEL_258;
        }

        if (v459 >> 10 >= v225 >> 10)
        {
          goto LABEL_352;
        }
      }

      if ((v473 & 1) == 0)
      {
        if (v462 == 2)
        {
          goto LABEL_362;
        }

        if (v554 > v459 >> 10)
        {
          goto LABEL_348;
        }
      }

LABEL_258:
      if (v463 < v461)
      {
        goto LABEL_330;
      }

      if (v461 >= v463 && v462 != 2)
      {
        if (v558 == 2)
        {
          goto LABEL_368;
        }

        if (v225 >> 10 < v459 >> 10)
        {
          goto LABEL_344;
        }
      }

      v560 = v459;
      if (v597 == 1 || v596 != *(v465 + 96))
      {
        goto LABEL_360;
      }

      v583 = v454;
      v561 = v460;
      v562 = v463;
      v563 = v458;
      v585 = v462;
      v565 = (v460 >> 11);
      if (v458 == 2)
      {
        v474 = *(v465 + 72);
        if (v474)
        {
          v476 = *(v465 + 80);
          v475 = *(v465 + 88);
          v477 = v465;
          swift_unknownObjectRetain();
          v478 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v596, v598, v597, v474, v476, v475);
          swift_unknownObjectRelease();
          v465 = v477;
        }

        else
        {
          v478 = 0;
        }

        v480 = *(v465 + 24);
        v705 = *(v465 + 40);
        v706 = *(v465 + 56);
        v704 = v480;
        v701 = *(v465 + 24);
        v702 = *(v465 + 40);
        v703 = *(v465 + 56);
        v479 = v465;
        v595 = BigString.startIndex.getter();
        v589 = v481;
        v586 = v482;
        v756[0] = v704;
        v756[1] = v705;
        v757 = v706;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v756, &v617);
        v586 = v478;
        v559 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v704);
      }

      else
      {
        v698 = *(v465 + 24);
        v699 = *(v465 + 40);
        v700 = *(v465 + 56);
        v595 = v698;
        v479 = v465;
        swift_unknownObjectRetain();
        v559 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v586 = v565;
      }

      v483 = v479[9];
      v595 = v479[10];
      v484 = v479[12];
      v589 = v479[11];
      v485 = v596;
      v486 = v597;
      *&v617 = v596;
      *(&v617 + 1) = v598;
      *&v618[0] = v597;
      v384 = __OFADD__(v461, 1);
      v487 = v461 + 1;
      if (v384)
      {
        goto LABEL_333;
      }

      if (v596 != v484)
      {
LABEL_334:
        __break(1u);
        goto LABEL_335;
      }

      v580 = v487;
      if (v597)
      {
        v488 = *(v597 + 24 * ((v598 >> ((4 * *(v597 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v489 = &v586[v488];
        if (__OFADD__(v586, v488))
        {
          goto LABEL_338;
        }

        if (!v483)
        {
          goto LABEL_332;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v490 = specialized Rope._Node.subscript.getter(v598, v483);
        v550 = v491;

        v384 = __OFADD__(v586, v490);
        v489 = &v586[v490];
        if (v384)
        {
          goto LABEL_350;
        }

        if (!v483)
        {
          goto LABEL_332;
        }
      }

      if (v598 >= (((-15 << ((4 * *(v483 + 18) + 8) & 0x3C)) - 1) & *(v483 + 18) | (*(v483 + 16) << ((4 * *(v483 + 18) + 8) & 0x3C))))
      {
        goto LABEL_332;
      }

      v586 = v489;
      if (v486)
      {
        v492 = v486;
        v493 = (4 * *(v486 + 18) + 8) & 0x3C;
        v494 = ((v598 >> v493) & 0xF) + 1;
        if (v494 < *(v492 + 16))
        {
          swift_unknownObjectRelease();
          v495 = (v494 << v493) | ((-15 << v493) - 1) & v598;
LABEL_285:
          *&v598 = v495;
          goto LABEL_287;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v617, v483))
      {
        swift_unknownObjectRelease();
        v495 = *(&v617 + 1);
        goto LABEL_285;
      }

      v496 = *(v483 + 18);
      v497 = *(v483 + 16);
      swift_unknownObjectRelease();
      *&v617 = v485;
      *&v598 = ((-15 << ((4 * v496 + 8) & 0x3C)) - 1) & v496 | (v497 << ((4 * v496 + 8) & 0x3C));
      *(&v617 + 1) = v598;
      *&v618[0] = 0;
LABEL_287:
      v596 = v617;
      v597 = *&v618[0];
      if (v658)
      {
        v564(v575, &v566[*(v573 + 24)], v600);
        if (v585 == 2)
        {
          v498 = v559;
        }

        else
        {
          v498 = v560;
        }

        v499 = v590;
        RangeSet.ranges.getter();
        v500 = v601;
        v501 = RangeSet.Ranges.count.getter();
        result = (v569)(v499, v500);
        if (v501 < 1)
        {
          goto LABEL_322;
        }

        v502 = 0;
        v503 = v498 >> 10;
        while (1)
        {
          while (1)
          {
            if (__OFADD__(v502, v501))
            {
              goto LABEL_324;
            }

            v504 = (v502 + v501) / 2;
            v505 = v590;
            RangeSet.ranges.getter();
            v506 = v601;
            RangeSet.Ranges.subscript.getter();
            result = (v569)(v505, v506);
            if (v503 >= v617 >> 10)
            {
              break;
            }

            v501 = (v502 + v501) / 2;
            if (v502 >= v504)
            {
              goto LABEL_322;
            }
          }

          v457 = (v502 + v501) / 2;
          v507 = *&v618[1];
          if (v503 < *&v618[1] >> 10)
          {
            break;
          }

          v502 = v504 + 1;
          if (v504 + 1 >= v501)
          {
            goto LABEL_322;
          }
        }

        result = (v588)(v575, v600);
        v237 = v551;
      }

      else
      {
        v508 = v590;
        RangeSet.ranges.getter();
        v509 = v601;
        RangeSet.Ranges.subscript.getter();
        result = (v569)(v508, v509);
        v507 = *&v618[1];
      }

      if (v586 >= (v507 >> 11))
      {
        v384 = __OFADD__(v457++, 1);
        if (v384)
        {
          goto LABEL_346;
        }

        v513 = v566;
        v514 = v590;
        RangeSet.ranges.getter();
        v515 = v601;
        v516 = RangeSet.Ranges.count.getter();
        result = (v569)(v514, v515);
        if (v457 == v516)
        {
          v517 = *(v513 + 120);
          v518 = *(v513 + 128);
          v519 = *(v513 + 144);
          *&v598 = *(v513 + 136);
          v596 = v518;
          v597 = v519;
          v460 = *(v513 + 152);
          v576 = *(v513 + 160);
          v458 = *(v513 + 176);
          v570 = *(v513 + 168);
          v459 = *(v513 + 184);
          v462 = *(v513 + 208);
          v457 = *(v513 + 216);
          v225 = v459;
          v558 = v462;
          v463 = v517;
          v455 = *(v513 + 224);
          v461 = v517;
          v465 = *(&v598 + 1);
          v471 = v583;
        }

        else
        {
          v520 = v590;
          RangeSet.ranges.getter();
          v521 = v601;
          RangeSet.Ranges.subscript.getter();
          v569(v520, v521);
          v589 = *(&v617 + 1);
          v585 = *(&v618[0] + 1);
          v586 = *&v618[0];
          v522 = *(*(&v598 + 1) + 72);
          v523 = *(*(&v598 + 1) + 80);
          v525 = *(*(&v598 + 1) + 88);
          v524 = *(*(&v598 + 1) + 96);
          v526 = v617;
          v527 = v617 >> 11;
          swift_unknownObjectRetain();
          result = specialized Rope.find<A>(at:in:preferEnd:)(v527, 0, v522, v523, v525, v524);
          v597 = v529;
          *&v598 = v528;
          v595 = v530;
          v596 = v524;
          if (result != v524)
          {
            goto LABEL_357;
          }

          if (v522)
          {
            v580 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v596, v598, v597, v522, v523);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v580 = 0;
          }

          v695 = *(*(&v598 + 1) + 24);
          v696 = *(*(&v598 + 1) + 40);
          v697 = *(*(&v598 + 1) + 56);
          if (__OFSUB__(0, v595))
          {
            goto LABEL_358;
          }

          v531 = *(&v598 + 1);
          swift_unknownObjectRetain();
          v459 = v526;
          v532 = v585;
          v561 = BigString.UTF8View.index(_:offsetBy:)();
          v576 = v533;
          v570 = v534;
          v458 = v535;
          result = swift_unknownObjectRelease();
          v462 = v532;
          v455 = 0;
          v471 = v583;
          v237 = v551;
          v461 = v580;
          v465 = v531;
          v460 = v561;
          v463 = v562;
        }
      }

      else
      {
        if (v563 == 2)
        {
          v466 = *(*(&v598 + 1) + 24);
          v693 = *(*(&v598 + 1) + 40);
          v694 = *(*(&v598 + 1) + 56);
          v692 = v466;
          v689 = *(*(&v598 + 1) + 24);
          v690 = *(*(&v598 + 1) + 40);
          v691 = *(*(&v598 + 1) + 56);
          BigString.startIndex.getter();
          v595 = v467;
          v758[0] = v692;
          v758[1] = v693;
          v759 = v694;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v758, &v617);
          v460 = BigString.UTF8View.index(_:offsetBy:)();
          v576 = v468;
          v570 = v469;
          v458 = v470;
          result = outlined destroy of BigString(&v692);
        }

        else
        {
          v686 = *(*(&v598 + 1) + 24);
          v687 = *(*(&v598 + 1) + 40);
          v688 = *(*(&v598 + 1) + 56);
          if (__OFSUB__(v586, v565))
          {
            goto LABEL_356;
          }

          swift_unknownObjectRetain();
          v460 = BigString.UTF8View.index(_:offsetBy:)();
          v576 = v510;
          v570 = v511;
          v458 = v512;
          result = swift_unknownObjectRelease();
        }

        v461 = v580;
        v455 = 0;
        v459 = v460;
        v462 = v458;
        v471 = v583;
        v463 = v562;
        v465 = *(&v598 + 1);
      }

      v384 = __OFADD__(v471, 1);
      v454 = v471 + 1;
      if (v384)
      {
        goto LABEL_336;
      }
    }
  }

  result = v251[26];
  v248 = v251[15];
  while (1)
  {
    v219 = v247[1];
    v237 = v247[15];
    v225 = v247[23];
    v249 = v247[26];
    if (*(v247 + *(v259 + 28)))
    {
      goto LABEL_229;
    }

    v293 = v237 - v219;
    if (!__OFSUB__(v237, v219))
    {
      break;
    }

    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    v247 = v566;
    v259 = v573;
    v254 = v546;
  }

  v247 = v566;
  v251 = v567;
  v294 = *(v566 + 22);
  v295 = (v225 ^ *(v566 + 19)) > 0x3FF;
  if (v294 == 2)
  {
    v295 = 1;
  }

  if (v249 == 2)
  {
    v295 = v294 != 2;
  }

  v296 = v582;
  if (__OFADD__(v293, v295))
  {
    goto LABEL_315;
  }

  if (v250 != (v293 + v295))
  {
    goto LABEL_139;
  }

LABEL_104:
  if (v253 != v248)
  {
    goto LABEL_114;
  }

  if (v255 == 2)
  {
    if (result != 2)
    {
      goto LABEL_114;
    }
  }

  else if (result == 2 || (v257 ^ v254) >= 0x400)
  {
LABEL_114:
    v304 = AttributedString.Runs._isPartial.getter();
    v305 = v577;
    if ((v304 & 1) != 0 || (AttributedString.Runs._isPartial.getter() & 1) != 0 || (v724[12] = *(v252 + 24), v724[13] = *(v252 + 40), v724[14] = *(v252 + 56), v306 = BigString.count.getter(), v724[9] = *(*(&v598 + 1) + 24), v724[10] = *(*(&v598 + 1) + 40), v724[11] = *(*(&v598 + 1) + 56), v385 = v306 == BigString.count.getter(), v305 = v577, v385))
    {
      v584 = v252;
      RangeSet.ranges.getter();
      v307 = v305;
      v308 = v601;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v658 == v617)
      {
        v569(v305, v308);
      }

      else
      {
        v309 = dispatch thunk of Collection.subscript.read();
        v311 = v310[1];
        *&v598 = *v310;
        v593 = v311;
        v312 = v310[2];
        v595 = v310[3];
        v596 = v312;
        v309(&v617, 0);
        v313 = v569;
        v569(v307, v308);
        RangeSet.ranges.getter();
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v639 != v617)
        {
          v314 = dispatch thunk of Collection.subscript.read();
          v316 = v315[1];
          v590 = *v315;
          v600 = v316;
          v317 = v315[3];
          v599 = v315[2];
          v597 = v317;
          v314(&v617, 0);
          v313(v296, v308);
          v318 = v568;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v251, v568, type metadata accessor for AttributedString.Runs);
          v319 = v578;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v318, v578, type metadata accessor for AttributedString.Runs);
          v320 = v574;
          v321 = (v319 + *(v574 + 36));
          v322 = *(v318 + 72);
          v630 = *(v318 + 56);
          v631 = v322;
          v632[0] = *(v318 + 88);
          *(v632 + 10) = *(v318 + 98);
          v323 = *(v318 + 24);
          v627 = *(v318 + 8);
          v628 = v323;
          v629 = *(v318 + 40);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v318, type metadata accessor for AttributedString.Runs);
          v324 = v632[0];
          v321[4] = v631;
          v321[5] = v324;
          *(v321 + 90) = *(v632 + 10);
          v325 = v628;
          *v321 = v627;
          v321[1] = v325;
          v326 = v630;
          v321[2] = v629;
          v321[3] = v326;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v247, v318, type metadata accessor for AttributedString.Runs);
          v327 = v581;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v318, v581, type metadata accessor for AttributedString.Runs);
          v328 = (v327 + *(v320 + 36));
          v329 = *(v318 + 56);
          v330 = *(v318 + 88);
          v637 = *(v318 + 72);
          v638[0] = v330;
          *(v638 + 10) = *(v318 + 98);
          v331 = *(v318 + 24);
          v633 = *(v318 + 8);
          v634 = v331;
          v635 = *(v318 + 40);
          v636 = v329;
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v318, type metadata accessor for AttributedString.Runs);
          v332 = v638[0];
          v328[4] = v637;
          v328[5] = v332;
          *(v328 + 90) = *(v638 + 10);
          v333 = v634;
          *v328 = v633;
          v328[1] = v333;
          v334 = v636;
          v328[2] = v635;
          v328[3] = v334;
          v335 = v595;
          v336 = v596;
          while (1)
          {
            specialized IndexingIterator.next()(v611);
            v337 = v611[0];
            v338 = v611[1];
            v339 = v611[2];
            v340 = v614;
            specialized IndexingIterator.next()(&v603);
            v341 = v603;
            v342 = v604;
            v622 = v606;
            v623 = v607;
            v625 = v609;
            v626 = v610;
            *&v617 = v337;
            *(&v617 + 1) = v338;
            *(v618 + 8) = v612;
            *(&v618[1] + 1) = v613;
            *&v618[0] = v339;
            *&v619[0] = v340;
            *(&v619[1] + 8) = v616;
            *(v619 + 8) = v615;
            *(&v619[2] + 1) = v603;
            v620 = v604;
            v621 = v605;
            v624 = v608;
            if (!v337)
            {
              break;
            }

            if (!v603)
            {
              outlined destroy of TermOfAddress?(&v617, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
              outlined destroy of TermOfAddress?(v581, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
              v365 = v319;
              goto LABEL_137;
            }

            v589 = v608;
            v594 = v605;

            if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v337, v341) & 1) == 0)
            {

LABEL_135:
              outlined destroy of TermOfAddress?(&v617, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
LABEL_136:
              outlined destroy of TermOfAddress?(v581, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
              v365 = v578;
LABEL_137:
              outlined destroy of TermOfAddress?(v365, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
LABEL_138:
              v247 = v566;
              v251 = v567;
              goto LABEL_139;
            }

            v343 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v338, v342);

            if ((v343 & 1) == 0)
            {
              goto LABEL_135;
            }

            v344 = v584;
            v724[6] = *(v584 + 24);
            v724[7] = *(v584 + 40);
            v724[8] = *(v584 + 56);
            swift_unknownObjectRetain();
            v345 = v335;
            v346 = v593;
            v595 = v345;
            v601 = BigString.UTF8View.index(_:offsetBy:)();
            v587 = v348;
            v588 = v347;
            v596 = v349;
            swift_unknownObjectRelease();
            v350 = *(&v598 + 1);
            v724[3] = *(*(&v598 + 1) + 24);
            v724[4] = *(*(&v598 + 1) + 40);
            v724[5] = *(*(&v598 + 1) + 56);
            swift_unknownObjectRetain();
            v351 = v590;
            v594 = BigString.UTF8View.index(_:offsetBy:)();
            v589 = v352;
            v585 = v354;
            v586 = v353;
            result = swift_unknownObjectRelease();
            v724[0] = *(v344 + 24);
            v724[1] = *(v344 + 40);
            v724[2] = *(v344 + 56);
            if (v601 >> 10 < v598 >> 10)
            {
              __break(1u);
LABEL_320:
              __break(1u);
LABEL_321:
              __break(1u);
LABEL_322:
              __break(1u);
LABEL_323:
              __break(1u);
LABEL_324:
              __break(1u);
LABEL_325:
              __break(1u);
LABEL_326:
              __break(1u);
LABEL_327:
              __break(1u);
LABEL_328:
              __break(1u);
LABEL_329:
              __break(1u);
LABEL_330:
              __break(1u);
LABEL_331:
              __break(1u);
LABEL_332:
              __break(1u);
LABEL_333:
              __break(1u);
              goto LABEL_334;
            }

            v716 = v598;
            v717 = v346;
            v718 = v336;
            v719 = v595;
            v720 = v601;
            v336 = v587;
            v355 = v588;
            v721 = v588;
            v722 = v587;
            v723 = v596;
            v356 = *(v344 + 24);
            v753 = *(v344 + 7);
            v752[1] = *(v344 + 40);
            v752[0] = v356;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v752, v602);
            BigString.subscript.getter();
            result = outlined destroy of BigString(v724);
            v357 = *(v350 + 24);
            v715[1] = *(v350 + 40);
            v715[2] = *(v350 + 56);
            v715[0] = v357;
            v358 = v594;
            if (v594 >> 10 < v351 >> 10)
            {
              goto LABEL_320;
            }

            v359 = v355;
            v707 = v351;
            v708 = v600;
            v709 = v599;
            v710 = v597;
            v711 = v594;
            v360 = v589;
            v712 = v589;
            v362 = v585;
            v361 = v586;
            v713 = v586;
            v714 = v585;
            v363 = *(v350 + 24);
            v755 = *(v350 + 56);
            v754[1] = *(v350 + 40);
            v754[0] = v363;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v754, v602);
            BigString.subscript.getter();
            outlined destroy of BigString(v715);
            v364 = MEMORY[0x1865CA260](&v651, &v658);
            outlined destroy of BigSubstring(&v651);
            outlined destroy of TermOfAddress?(&v617, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
            outlined destroy of BigSubstring(&v658);
            if ((v364 & 1) == 0)
            {
              goto LABEL_136;
            }

            v590 = v358;
            v600 = v360;
            v599 = v361;
            v597 = v362;
            *&v598 = v601;
            v593 = v359;
            v335 = v596;
            v319 = v578;
          }

          outlined destroy of TermOfAddress?(v581, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          outlined destroy of TermOfAddress?(v319, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          outlined destroy of TermOfAddress?(&v617, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
          if (!v341)
          {
            v247 = v566;
            v251 = v567;
            goto LABEL_112;
          }

          goto LABEL_138;
        }

        v313(v296, v308);
      }
    }

    goto LABEL_139;
  }

LABEL_112:
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v247, type metadata accessor for AttributedString.Runs);
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v251, type metadata accessor for AttributedString.Runs);

  outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
  return v553 == v552;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for String.LocalizationValue.FormatArgument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 105))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 104);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for String.LocalizationValue.FormatArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for String.LocalizationValue.FormatArgument.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 105))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 104);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for String.LocalizationValue.FormatArgument.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for String.LocalizationValue.FormatArgument.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    v2 = a2 - 7;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 7;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle();
  a1[2] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle();
  result = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle();
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  a1[2] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  result = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  a1[2] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  result = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  a1[2] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  result = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1()
{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2()
{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Date> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation4DateVGMd);
    lazy protocol witness table accessor for type Date and conformance Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation4DateVGMd);
    lazy protocol witness table accessor for type Date and conformance Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation4DateVGMd);
    lazy protocol witness table accessor for type Date and conformance Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [LocalizedStringResource] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation23LocalizedStringResourceVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSQ_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(v7, v10);
    v3 = v11;
    v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = openEquatable #1 <A>(_:) in static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(v4, a2, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    outlined destroy of TermOfAddress?(v7, &_sSQ_pSgMd);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *(&v595 + 1) = a1;
  v596 = a2;
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v571);
  v578 = &v533 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v575 = &v533 - v4;
  v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v591 = *(v598 - 8);
  MEMORY[0x1EEE9AC00](v598);
  v579 = &v533 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v574 = &v533 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v577 = &v533 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v581 = &v533 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v576 = &v533 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v580 = &v533 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v587 = &v533 - v17;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v582);
  v593 = &v533 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v592 = &v533 - v20;
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v586 = *(v597 - 8);
  MEMORY[0x1EEE9AC00](v597);
  v572 = &v533 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v573 = &v533 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v590 = &v533 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v583 = &v533 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v533 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v533 - v32;
  v34 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v533 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v533 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v533 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v533 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v533 - v47;
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(*(&v595 + 1), v638);
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v596, &v640);
  if (v639 > 2u)
  {
    if (v639 > 4u)
    {
      if (v639 == 5)
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
        v91 = *&v615[0];
        if (v647 == 5)
        {
          LODWORD(v597) = BYTE8(v614);
          v92 = BYTE9(v614);
          v598 = *(&v615[0] + 1);
          v93 = BYTE8(v640);
          v94 = BYTE9(v640);
          v95 = v641;
          v96 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation23LocalizedStringResourceV_Tt1g5(v614, v640);

          if (v96)
          {
            if (v92)
            {
              v97 = 256;
            }

            else
            {
              v97 = 0;
            }

            if (v94)
            {
              v98 = 256;
            }

            else
            {
              v98 = 0;
            }

            v49 = _s10Foundation15ListFormatStyleV2eeoiySbACyxq_G_AEtFZAA06StringD0V_SaySSGTt1B5(v97 | v597, v91, v598, v98 | v93, v95, *(&v95 + 1));
          }

          else
          {
            v49 = 0;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_136;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
        if (v647 == 6)
        {
          v49 = v614 == v640;
          goto LABEL_136;
        }
      }
    }

    else if (v639 == 3)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
      if (v647 == 3)
      {
        v657 = v615[1];
        v658 = v616[0];
        v659 = v616[1];
        v660 = v616[2];
        v655 = v614;
        v656 = v615[0];
        v650 = v642;
        v651 = v643;
        v652 = v644;
        v653 = v645;
        v648 = v640;
        v649 = v641;
        v49 = (*&v615[0])(&v648);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v648);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v655);
        goto LABEL_136;
      }

      outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v614);
    }

    else
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
      v659 = v616[1];
      v660 = v616[2];
      v661 = v617;
      v655 = v614;
      v656 = v615[0];
      v657 = v615[1];
      v658 = v616[0];
      if (v647 == 4)
      {
        v652 = v644;
        v653 = v645;
        v648 = v640;
        v649 = v641;
        v650 = v642;
        v651 = v643;
        v634 = v616[1];
        v635[0] = v616[2];
        v630 = v614;
        v631 = v615[0];
        v632 = v615[1];
        v633 = v616[0];
        v628 = v644;
        v629[0] = v645;
        v624 = v640;
        v625 = v641;
        v654 = v646;
        *&v635[1] = v617;
        *&v629[1] = v646;
        v626 = v642;
        v627 = v643;
        v49 = static LocalizedStringResource.== infix(_:_:)(&v630, &v624);
        outlined destroy of LocalizedStringResource(&v648);
        outlined destroy of LocalizedStringResource(&v655);
        goto LABEL_136;
      }

      outlined destroy of LocalizedStringResource(&v655);
    }

    goto LABEL_35;
  }

  v585 = v30;
  v567 = v33;
  v568 = v39;
  v569 = v45;
  v570 = v34;
  v565 = v36;
  v50 = v591;
  if (!v639)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
    if (!v647)
    {
      outlined init with take of Any(&v614, &v655);
      outlined init with take of Any(&v640, &v648);
      v99 = *(&v656 + 1);
      v100 = __swift_project_boxed_opaque_existential_1(&v655, *(&v656 + 1));
      *(&v631 + 1) = v99;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v630);
      (*(*(v99 - 8) + 16))(boxed_opaque_existential_0, v100, v99);
      v102 = *(&v649 + 1);
      v103 = __swift_project_boxed_opaque_existential_1(&v648, *(&v649 + 1));
      *(&v625 + 1) = v102;
      v104 = __swift_allocate_boxed_opaque_existential_0(&v624);
      (*(*(v102 - 8) + 16))(v104, v103, v102);
      v49 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(&v630, &v624);
      __swift_destroy_boxed_opaque_existential_1(&v624);
      __swift_destroy_boxed_opaque_existential_1(&v630);
      __swift_destroy_boxed_opaque_existential_1(&v648);
      __swift_destroy_boxed_opaque_existential_1(&v655);
      goto LABEL_136;
    }

    __swift_destroy_boxed_opaque_existential_1(&v614);
    goto LABEL_35;
  }

  if (v639 != 1)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
    if (v647 == 2)
    {
      v657 = v615[1];
      v658 = v616[0];
      v659 = v616[1];
      v660 = v616[2];
      v655 = v614;
      v656 = v615[0];
      v650 = v642;
      v651 = v643;
      v652 = v644;
      v653 = v645;
      v648 = v640;
      v649 = v641;
      v49 = (*&v615[0])(&v648);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v648);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v655);
      goto LABEL_136;
    }

    outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v614);
    goto LABEL_35;
  }

  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, v637);
  v51 = v637[0];
  if (v647 != 1)
  {

LABEL_35:
    outlined destroy of TermOfAddress?(v638, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO_AGtMd);
    v49 = 0;
    return v49 & 1;
  }

  v563 = v42;
  v564 = v48;
  v549 = *(&v640 + 1);
  v52 = v640;
  v550 = v637[1];
  v746 = *(v637[0] + 24);
  v747 = *(v637[0] + 40);
  v748 = *(v637[0] + 56);
  v53 = BigString.startIndex.getter();
  *(&v595 + 1) = v55;
  v596 = v54;
  *&v595 = v56;
  v57 = BigString.endIndex.getter();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v743 = *(v52 + 24);
  v744 = *(v52 + 40);
  v589 = v52;
  v745 = *(v52 + 56);
  v64 = BigString.startIndex.getter();
  v559 = v65;
  v560 = v64;
  v557 = v67;
  v558 = v66;
  v68 = BigString.endIndex.getter();
  v555 = v69;
  v556 = v68;
  v553 = v71;
  v554 = v70;
  *&v614 = v53;
  *(&v614 + 1) = v596;
  *&v615[0] = *(&v595 + 1);
  *(&v615[0] + 1) = v595;
  *&v615[1] = v57;
  *(&v615[1] + 1) = v59;
  *&v616[0] = v61;
  *(&v616[0] + 1) = v63;
  v72 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v588 = v51;
  *v569 = v51;
  v562 = v72;
  RangeSet.init()();
  v73 = v587;
  RangeSet.ranges.getter();
  v74 = v592;
  v75 = v598;
  v551 = *(v50 + 16);
  v552 = v50 + 16;
  v551(v592, v73, v598);
  v76 = *(v582 + 36);
  v77 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v78 = *(v50 + 8);
  v591 = v50 + 8;
  v566 = v78;
  v78(v73, v75);
  v79 = v74;
  dispatch thunk of Collection.endIndex.getter();
  v80 = *(v74 + v76);
  v596 = v77;
  if (v80 != v614)
  {
    v584 = v76;
    do
    {
      v105 = dispatch thunk of Collection.subscript.read();
      v107 = v106[4];
      v108 = v106[7];
      *&v595 = v106[6];
      *(&v595 + 1) = v107;
      v594 = v108;
      v105(&v614, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v109 = v588;
      v740 = *(v588 + 24);
      v741 = *(v588 + 40);
      v742 = *(v588 + 56);
      swift_unknownObjectRetain();
      v110 = BigString.UnicodeScalarView.index(roundingDown:)();
      v112 = v111;
      v114 = v113;
      v116 = v115;
      swift_unknownObjectRelease();
      v737 = *(v109 + 24);
      v738 = *(v109 + 40);
      v739 = *(v109 + 56);
      swift_unknownObjectRetain();
      v117 = BigString.UnicodeScalarView.index(roundingDown:)();
      v119 = v118;
      v121 = v120;
      v123 = v122;
      v75 = v598;
      swift_unknownObjectRelease();
      *&v614 = v110;
      *(&v614 + 1) = v112;
      *&v615[0] = v114;
      *(&v615[0] + 1) = v116;
      *&v615[1] = v117;
      *(&v615[1] + 1) = v119;
      *&v616[0] = v121;
      *(&v616[0] + 1) = v123;
      if ((v117 ^ v110) >= 0x400)
      {
        v124 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v124(&v655, 0);
      }

      v79 = v592;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v79 + v584) != v614);
  }

  outlined destroy of TermOfAddress?(v79, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v82 = v569;
  v81 = v570;
  v83 = *(v570 + 24);
  v84 = *(v586 + 16);
  v584 = v586 + 16;
  v561 = v84;
  v84(v569 + v83, v585, v597);
  v85 = v587;
  RangeSet.ranges.getter();
  v86 = RangeSet.Ranges.count.getter();
  v87 = v566;
  v566(v85, v75);
  v88 = *(v81 + 28);
  LODWORD(v548) = v86 > 1;
  *(v82 + v88) = v548;
  v89 = v580;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v655 == v614)
  {
    v90 = v89;
LABEL_43:
    v87(v90, v75);
    v131 = v587;
    v130 = v588;
    v132 = *(v588 + 72);
    v133 = v597;
    if (v132)
    {
      v594 = *(v132 + 18);
    }

    else
    {
      v594 = 0;
    }

    *(&v595 + 1) = *(v588 + 96);
    v734 = *(v588 + 24);
    v735 = *(v588 + 40);
    v736 = *(v588 + 56);
    v134 = BigString.startIndex.getter();
    v136 = v135;
    v138 = v137;
    v580 = v139;
    v140 = *(v130 + 72);
    *&v595 = *(v130 + 96);
    if (v140)
    {
      v592 = *(v140 + 18);
    }

    else
    {
      v592 = 0;
    }

    v141 = *(v586 + 8);
    v141(v585, v133);
    v585 = v141;
    v141(v567, v133);
    v731 = *(v130 + 24);
    v732 = *(v130 + 40);
    v733 = *(v130 + 56);
    v142 = BigString.startIndex.getter();
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = -1;
    v152 = v134;
    v153 = v134;
    v154 = v136;
    v155 = v136;
    v156 = v138;
    v157 = v138;
    v158 = v580;
    v159 = v580;
    v160 = v142;
    v161 = v143;
    v162 = v144;
    v163 = v145;
    v164 = -1;
    goto LABEL_52;
  }

  v125 = dispatch thunk of Collection.subscript.read();
  v127 = *v126;
  v546 = v126[1];
  v547 = v127;
  v128 = v126[2];
  v544 = v126[3];
  v545 = v128;
  v125(&v614, 0);
  v87(v89, v75);
  v129 = v576;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v90 = v129;
    goto LABEL_43;
  }

  v538 = v83;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v260 = dispatch thunk of Collection.subscript.read();
  v262 = v261[4];
  v580 = v261[5];
  v263 = v261[6];
  v264 = v261[7];
  v260(&v614, 0);
  v87(v129, v75);
  v265 = v588;
  AttributedString.Guts.findRun(at:)(v547, v544, &v614);
  v594 = *(&v614 + 1);
  *(&v595 + 1) = v614;
  v539 = *(&v615[0] + 1);
  v540 = *&v615[0];
  v576 = *(&v615[1] + 1);
  v266 = v75;
  v156 = *(&v616[0] + 1);
  v154 = *&v616[0];
  v158 = *&v616[1];
  v734 = *(v265 + 24);
  v735 = *(v265 + 40);
  v736 = *(v265 + 56);
  v267 = BigString.endIndex.getter();
  v542 = v263;
  v543 = v262;
  v541 = v264;
  if ((v267 ^ v262) >= 0x400)
  {
    AttributedString.Guts.findRun(at:)(v262, v264, &v614);
    v592 = *(&v614 + 1);
    *&v595 = v614;
    v150 = *&v615[0];
    v536 = *(&v615[1] + 1);
    v537 = *(&v615[0] + 1);
    v534 = *(&v616[0] + 1);
    v535 = *&v616[0];
    v533 = *&v616[1];
    v294 = v587;
    v295 = v597;
    RangeSet.ranges.getter();
    v164 = RangeSet.Ranges.count.getter();
    v566(v294, v266);
    v296 = *(v586 + 8);
    v296(v585, v295);
    v585 = v296;
    v296(v567, v295);
    v131 = v294;
    v142 = v536;
    v149 = v537;
    v160 = v543;
    v159 = v544;
    v145 = v533;
    v144 = v534;
    v143 = v535;
    v151 = 0;
    v148 = v548;
    v155 = v546;
    v153 = v547;
    v157 = v545;
    v152 = v576;
    v161 = v580;
    v163 = v541;
    v162 = v542;
    v146 = v539;
    v147 = v540;
  }

  else
  {
    v268 = *(v265 + 72);
    if (v268)
    {
      v269 = *(v265 + 80);
    }

    else
    {
      v269 = 0;
    }

    v537 = v269;
    v270 = *(v265 + 96);
    v271 = swift_unknownObjectRetain();
    *&v595 = v270;
    v592 = specialized Rope._endPath.getter(v271);
    v272 = v567;
    if (v268)
    {
      swift_unknownObjectRelease();
    }

    v131 = v587;
    v273 = v597;
    RangeSet.ranges.getter();
    v274 = v598;
    v164 = RangeSet.Ranges.count.getter();
    v566(v131, v274);
    v275 = *(v586 + 8);
    v275(v585, v273);
    v585 = v275;
    v275(v272, v273);
    v151 = 0;
    v150 = 0;
    v162 = v542;
    v160 = v543;
    v142 = v543;
    v161 = v580;
    v143 = v580;
    v144 = v542;
    v147 = v540;
    v163 = v541;
    v145 = v541;
    v148 = v548;
    v155 = v546;
    v153 = v547;
    v159 = v544;
    v157 = v545;
    v152 = v576;
    v146 = v539;
    v149 = v537;
  }

LABEL_52:
  v165 = v569;
  v569[1] = v146;
  v165[2] = *(&v595 + 1);
  v165[3] = v594;
  v165[4] = v147;
  v165[5] = v152;
  v165[6] = v154;
  v165[7] = v156;
  v165[8] = v158;
  v165[9] = v153;
  v165[10] = v155;
  v165[11] = v157;
  v165[12] = v159;
  v165[13] = v151;
  *(v165 + 112) = 0;
  *(v165 + 113) = v148;
  v166 = v595;
  v165[15] = v149;
  v165[16] = v166;
  v165[17] = v592;
  v165[18] = v150;
  v165[19] = v142;
  v165[20] = v143;
  v165[21] = v144;
  v165[22] = v145;
  v165[23] = v160;
  v165[24] = v161;
  v165[25] = v162;
  v165[26] = v163;
  v165[27] = v164;
  *(v165 + 224) = 0;
  *(v165 + 225) = v148;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v165, v564, type metadata accessor for AttributedString.Runs);
  *&v614 = v560;
  *(&v614 + 1) = v559;
  *&v615[0] = v558;
  *(&v615[0] + 1) = v557;
  *&v615[1] = v556;
  *(&v615[1] + 1) = v555;
  *&v616[0] = v554;
  *(&v616[0] + 1) = v553;
  v167 = v589;

  RangeSet.init(_:)();
  *v568 = v167;
  RangeSet.init()();
  RangeSet.ranges.getter();
  v168 = v593;
  v169 = v598;
  v551(v593, v131, v598);
  v170 = *(v582 + 36);
  dispatch thunk of Collection.startIndex.getter();
  v566(v131, v169);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v168 + v170) != v614)
  {
    v592 = v170;
    do
    {
      v179 = dispatch thunk of Collection.subscript.read();
      v181 = v180[4];
      *&v595 = v180[5];
      *(&v595 + 1) = v181;
      v594 = v180[6];
      v179(&v614, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v182 = v589;
      v728 = *(v589 + 24);
      v729 = *(v589 + 40);
      v730 = *(v589 + 56);
      swift_unknownObjectRetain();
      v183 = BigString.UnicodeScalarView.index(roundingDown:)();
      v185 = v184;
      v187 = v186;
      v189 = v188;
      swift_unknownObjectRelease();
      v725 = *(v182 + 24);
      v726 = *(v182 + 40);
      v727 = *(v182 + 56);
      swift_unknownObjectRetain();
      v190 = BigString.UnicodeScalarView.index(roundingDown:)();
      v192 = v191;
      v194 = v193;
      v196 = v195;
      swift_unknownObjectRelease();
      *&v614 = v183;
      *(&v614 + 1) = v185;
      *&v615[0] = v187;
      *(&v615[0] + 1) = v189;
      *&v615[1] = v190;
      *(&v615[1] + 1) = v192;
      *&v616[0] = v194;
      v169 = v598;
      *(&v616[0] + 1) = v196;
      if ((v190 ^ v183) >= 0x400)
      {
        v197 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v197(&v655, 0);
      }

      v168 = v593;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v168 + v592) != v614);
  }

  outlined destroy of TermOfAddress?(v168, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v171 = v570;
  v172 = *(v570 + 24);
  v173 = v568;
  v561(v568 + v172, v590, v597);
  v174 = v587;
  RangeSet.ranges.getter();
  v175 = RangeSet.Ranges.count.getter();
  v566(v174, v169);
  v176 = *(v171 + 28);
  LODWORD(v592) = v175 > 1;
  *(v173 + v176) = v592;
  v177 = v581;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v655 == v614)
  {
    v566(v177, v169);
    v178 = v589;
LABEL_61:
    v205 = *(v178 + 72);
    v206 = v597;
    v207 = v583;
    if (v205)
    {
      *(&v595 + 1) = *(v205 + 18);
    }

    else
    {
      *(&v595 + 1) = 0;
    }

    *&v595 = *(v178 + 96);
    v722 = *(v178 + 24);
    v723 = *(v178 + 40);
    v724 = *(v178 + 56);
    v208 = BigString.startIndex.getter();
    v210 = v209;
    v592 = v211;
    v213 = v212;
    v214 = *(v178 + 72);
    v594 = *(v178 + 96);
    v215 = v208;
    if (v214)
    {
      v593 = *(v214 + 18);
    }

    else
    {
      v593 = 0;
    }

    v216 = v585;
    (v585)(v590, v206);
    v216(v207, v206);
    v721[15] = *(v178 + 24);
    v721[16] = *(v178 + 40);
    v721[17] = *(v178 + 56);
    v220 = BigString.startIndex.getter();
    v221 = v217;
    v222 = v218;
    v223 = v219;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
    v228 = 0;
    v229 = -1;
    v230 = v215;
    v231 = v210;
    v232 = v210;
    v233 = v592;
    v234 = v592;
    v235 = v213;
    v236 = v213;
    v237 = v220;
    v238 = -1;
    v239 = v568;
    v240 = *(&v595 + 1);
    goto LABEL_68;
  }

  v198 = dispatch thunk of Collection.subscript.read();
  v200 = *(v199 + 8);
  v569 = *v199;
  v582 = v200;
  v201 = *(v199 + 24);
  v580 = *(v199 + 16);
  v576 = v201;
  v198(&v614, 0);
  v202 = v566;
  v566(v177, v169);
  v203 = v577;
  RangeSet.ranges.getter();
  v204 = dispatch thunk of Collection.isEmpty.getter();
  v178 = v589;
  if (v204)
  {
    v202(v203, v169);
    goto LABEL_61;
  }

  v554 = v172;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v276 = dispatch thunk of Collection.subscript.read();
  v278 = v277[4];
  v581 = v277[5];
  v279 = v277[7];
  v567 = v277[6];
  v560 = v279;
  v276(&v614, 0);
  v566(v203, v169);
  v215 = v569;
  AttributedString.Guts.findRun(at:)(v569, v576, &v614);
  v595 = v614;
  v555 = *(&v615[0] + 1);
  v556 = *&v615[0];
  v577 = *(&v615[1] + 1);
  v233 = *(&v616[0] + 1);
  v558 = *&v616[1];
  v559 = *&v616[0];
  v722 = *(v178 + 24);
  v723 = *(v178 + 40);
  v724 = *(v178 + 56);
  v280 = BigString.endIndex.getter();
  v557 = v278;
  if ((v280 ^ v278) >= 0x400)
  {
    v297 = v169;
    AttributedString.Guts.findRun(at:)(v278, v560, &v614);
    v593 = *(&v614 + 1);
    v594 = v614;
    v552 = *(&v615[0] + 1);
    v553 = *&v615[0];
    v220 = *(&v615[1] + 1);
    v222 = *(&v616[0] + 1);
    v221 = *&v616[0];
    v223 = *&v616[1];
    v298 = v587;
    v299 = v597;
    RangeSet.ranges.getter();
    v238 = RangeSet.Ranges.count.getter();
    v566(v298, v297);
    v300 = v585;
    (v585)(v590, v299);
    v300(v583, v299);
    v227 = v552;
    v228 = v553;
    v237 = v557;
    v235 = v558;
    v239 = v568;
    v215 = v569;
    v229 = 0;
    v226 = v592;
    v217 = v581;
    v232 = v582;
    v234 = v580;
    v236 = v576;
    v230 = v577;
    v240 = *(&v595 + 1);
    v231 = v559;
    v219 = v560;
    v218 = v567;
    v224 = v555;
    v225 = v556;
  }

  else
  {
    v281 = *(v178 + 72);
    if (v281)
    {
      v282 = *(v178 + 80);
    }

    else
    {
      v282 = 0;
    }

    v283 = *(v178 + 96);
    v284 = swift_unknownObjectRetain();
    v594 = v283;
    v593 = specialized Rope._endPath.getter(v284);
    v285 = v568;
    if (v281)
    {
      swift_unknownObjectRelease();
    }

    v286 = v587;
    v287 = v597;
    RangeSet.ranges.getter();
    v288 = v598;
    v238 = RangeSet.Ranges.count.getter();
    v566(v286, v288);
    v289 = v585;
    (v585)(v590, v287);
    v289(v583, v287);
    v239 = v285;
    v229 = 0;
    v228 = 0;
    v237 = v557;
    v235 = v558;
    v220 = v557;
    v217 = v581;
    v232 = v582;
    v221 = v581;
    v218 = v567;
    v222 = v567;
    v231 = v559;
    v219 = v560;
    v223 = v560;
    v226 = v592;
    v234 = v580;
    v236 = v576;
    v230 = v577;
    v240 = *(&v595 + 1);
    v224 = v555;
    v225 = v556;
    v227 = v282;
  }

LABEL_68:
  *(v239 + 8) = v224;
  *(v239 + 16) = v595;
  *(v239 + 24) = v240;
  *(v239 + 32) = v225;
  *(v239 + 40) = v230;
  *(v239 + 48) = v231;
  *(v239 + 56) = v233;
  *(v239 + 64) = v235;
  *(v239 + 72) = v215;
  *(v239 + 80) = v232;
  *(v239 + 88) = v234;
  *(v239 + 96) = v236;
  *(v239 + 104) = v229;
  *(v239 + 112) = 0;
  *(v239 + 113) = v226;
  v241 = v593;
  v242 = v594;
  *(v239 + 120) = v227;
  *(v239 + 128) = v242;
  *(v239 + 136) = v241;
  *(v239 + 144) = v228;
  *(v239 + 152) = v220;
  *(v239 + 160) = v221;
  *(v239 + 168) = v222;
  *(v239 + 176) = v223;
  *(v239 + 184) = v237;
  *(v239 + 192) = v217;
  *(v239 + 200) = v218;
  *(v239 + 208) = v219;
  *(v239 + 216) = v238;
  *(v239 + 224) = 0;
  *(v239 + 225) = v226;
  v243 = v563;
  result = outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v239, v563, type metadata accessor for AttributedString.Runs);
  v248 = v564;
  v249 = *v564;
  *(&v595 + 1) = *v243;
  if (v249 == *(&v595 + 1))
  {
    result = static RangeSet.== infix(_:_:)();
    if (result)
    {
      goto LABEL_109;
    }
  }

  v250 = v248[1];
  v251 = v248[9];
  v252 = v248[12];
  v253 = v248[15];
  v254 = v248[23];
  v255 = v248[26];
  v256 = v570;
  if (*(v248 + *(v570 + 28)) == 1)
  {
    v247 = 0;
    v363 = *(v248 + 112);
    v364 = v248[13];
    v552 = v254 >> 10;
    v365 = v248[8];
    v577 = v248[7];
    v366 = v248[5];
    v580 = v248[6];
    v581 = v249;
    v557 = v251 >> 10;
    v554 = v252;
    v555 = v586 + 8;
    v367 = v248[3];
    v368 = v248[4];
    v369 = v250;
    v543 = v251;
    v370 = v252;
    result = v255;
    v245 = v253;
    *&v595 = v367;
    v371 = v248[2];
    v372 = v597;
    v553 = v250;
LABEL_142:
    LOBYTE(v655) = v363;
    if (v369 >= v253 && (v253 < v369 || v255 == 2 || v370 != 2 && v251 >> 10 >= v552))
    {
      goto LABEL_312;
    }

    if (v369 < v250)
    {
      goto LABEL_321;
    }

    v382 = v250 < v369 || v252 == 2;
    v383 = v382;
    if (!v382)
    {
      if (v370 == 2)
      {
        goto LABEL_359;
      }

      if (v557 > v251 >> 10)
      {
        goto LABEL_335;
      }
    }

    if (v369 >= v245)
    {
      if (v245 < v369)
      {
        goto LABEL_336;
      }

      if (result == 2)
      {
        goto LABEL_360;
      }

      if (v370 == 2)
      {
        if (!v383)
        {
          goto LABEL_357;
        }

LABEL_167:
        if (v245 < v369)
        {
          goto LABEL_323;
        }

        if (v369 >= v245 && v370 != 2)
        {
          if (result == 2)
          {
            goto LABEL_362;
          }

          if (v254 >> 10 < v251 >> 10)
          {
            goto LABEL_338;
          }
        }

        v594 = v368;
        if (v368 == 1 || v371 != *(v249 + 12))
        {
          goto LABEL_355;
        }

        v576 = v254;
        v590 = v247;
        v568 = v245;
        v569 = result;
        v558 = v366 >> 11;
        v559 = v365;
        v567 = v366;
        v562 = v251;
        v582 = v370;
        v592 = v371;
        v593 = v369;
        if (v365 == 2)
        {
          v384 = *(v249 + 9);
          if (v384)
          {
            v385 = v249;
            v388 = v249 + 80;
            v386 = *(v249 + 10);
            v387 = *(v388 + 1);
            swift_unknownObjectRetain();
            v389 = v594;
            v390 = v386;
            v249 = v385;
            v391 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v592, v595, v594, v384, v390, v387);
            swift_unknownObjectRelease();
          }

          else
          {
            v391 = 0;
            v389 = v594;
          }

          v393 = *(v249 + 24);
          v681 = *(v249 + 40);
          v682 = *(v249 + 56);
          v680 = v393;
          v677 = *(v249 + 24);
          v678 = *(v249 + 40);
          v679 = *(v249 + 56);
          BigString.startIndex.getter();
          v392 = v249;
          v594 = v394;
          v583 = v395;
          v560 = v396;
          v757[0] = v680;
          v757[1] = v681;
          v758 = v682;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v757, &v614);
          v583 = v391;
          v560 = BigString.UTF8View.index(_:offsetBy:)();
          result = outlined destroy of BigString(&v680);
        }

        else
        {
          v674 = *(v249 + 24);
          v675 = *(v249 + 40);
          v676 = *(v249 + 56);
          v392 = v249;
          v583 = v674;
          swift_unknownObjectRetain();
          v560 = BigString.UTF8View.index(roundingDown:)();
          result = swift_unknownObjectRelease();
          v583 = (v366 >> 11);
          v389 = v594;
        }

        v397 = *(v392 + 9);
        v594 = *(v392 + 10);
        v398 = *(v392 + 12);
        v399 = v592;
        *&v614 = v592;
        *(&v614 + 1) = v595;
        *&v615[0] = v389;
        if (__OFADD__(v593, 1))
        {
          goto LABEL_325;
        }

        if (v592 != v398)
        {
          goto LABEL_327;
        }

        ++v593;
        if (v389)
        {
          v400 = *(v389 + 24 * ((v595 >> ((4 * *(v389 + 18) + 8) & 0x3C)) & 0xF) + 24);
          v381 = __OFADD__(v583, v400);
          v401 = &v583[v400];
          if (v381)
          {
            goto LABEL_333;
          }

          v583 = v401;
          if (!v397)
          {
            goto LABEL_324;
          }

          v402 = v389;
          result = swift_unknownObjectRetain();
        }

        else
        {
          v402 = 0;
          swift_unknownObjectRetain();
          v403 = specialized Rope._Node.subscript.getter(v595, v397);
          v556 = v404;

          if (__OFADD__(v583, v403))
          {
            goto LABEL_345;
          }

          v583 += v403;
          if (!v397)
          {
            goto LABEL_324;
          }
        }

        if (v595 >= (((-15 << ((4 * *(v397 + 18) + 8) & 0x3C)) - 1) & *(v397 + 18) | (*(v397 + 16) << ((4 * *(v397 + 18) + 8) & 0x3C))))
        {
          goto LABEL_324;
        }

        if (v402 && (v405 = v402, v406 = (4 * *(v402 + 18) + 8) & 0x3C, v407 = ((v595 >> v406) & 0xF) + 1, v407 < *(v405 + 16)))
        {
          swift_unknownObjectRelease();
          v408 = (v407 << v406) | ((-15 << v406) - 1) & v595;
        }

        else
        {
          if ((specialized Rope._Node.formSuccessor(of:)(&v614, v397) & 1) == 0)
          {
            v409 = *(v397 + 18);
            v410 = *(v397 + 16);
            swift_unknownObjectRelease();
            *&v614 = v399;
            *&v595 = ((-15 << ((4 * v409 + 8) & 0x3C)) - 1) & v409 | (v410 << ((4 * v409 + 8) & 0x3C));
            *(&v614 + 1) = v595;
            *&v615[0] = 0;
            goto LABEL_196;
          }

          swift_unknownObjectRelease();
          v408 = *(&v614 + 1);
        }

        *&v595 = v408;
LABEL_196:
        v592 = v614;
        v594 = *&v615[0];
        if ((v655 & 1) == 0)
        {
          v422 = v587;
          RangeSet.ranges.getter();
          v423 = v598;
          RangeSet.Ranges.subscript.getter();
          v420 = v566;
          result = (v566)(v422, v423);
          v421 = *&v615[1];
          goto LABEL_210;
        }

        v561(v573, v564 + *(v570 + 24), v372);
        if (v582 == 2)
        {
          v411 = v560;
        }

        else
        {
          v411 = v562;
        }

        v412 = v587;
        RangeSet.ranges.getter();
        v413 = v598;
        v414 = RangeSet.Ranges.count.getter();
        result = (v566)(v412, v413);
        if (v414 < 1)
        {
          goto LABEL_317;
        }

        v415 = 0;
        v416 = v411 >> 10;
        while (1)
        {
          if (__OFADD__(v415, v414))
          {
            goto LABEL_319;
          }

          v364 = (v415 + v414) / 2;
          v417 = v587;
          RangeSet.ranges.getter();
          v418 = v598;
          RangeSet.Ranges.subscript.getter();
          v419 = v417;
          v420 = v566;
          result = (v566)(v419, v418);
          if (v416 < v614 >> 10)
          {
            v414 = (v415 + v414) / 2;
          }

          else
          {
            v421 = *&v615[1];
            if (v416 < *&v615[1] >> 10)
            {
              v372 = v597;
              result = (v585)(v573, v597);
LABEL_210:
              if (v583 >= (v421 >> 11))
              {
                v381 = __OFADD__(v364++, 1);
                if (v381)
                {
                  goto LABEL_341;
                }

                v428 = v564;
                v429 = v587;
                RangeSet.ranges.getter();
                v430 = v598;
                v431 = RangeSet.Ranges.count.getter();
                v420(v429, v430);
                if (v364 == v431)
                {
                  v369 = v428[15];
                  v432 = v428[16];
                  v368 = v428[18];
                  *&v595 = v428[17];
                  v433 = v428[19];
                  v580 = v428[20];
                  v365 = v428[22];
                  v577 = v428[21];
                  v251 = v428[23];
                  v370 = v428[26];
                  v364 = v428[27];
                  v254 = v251;
                  result = v370;
                  v245 = v369;
                  v363 = *(v428 + 224);
                  v366 = v433;
                  v371 = v432;
                  v372 = v597;
                  v249 = v581;
                  v250 = v553;
                  v252 = v554;
                  v380 = v590;
                  goto LABEL_141;
                }

                RangeSet.ranges.getter();
                v434 = v598;
                RangeSet.Ranges.subscript.getter();
                v420(v429, v434);
                v582 = *(&v615[0] + 1);
                v580 = *&v615[0];
                v583 = *(&v614 + 1);
                v435 = *(v581 + 9);
                v436 = *(v581 + 10);
                v438 = *(v581 + 11);
                v437 = *(v581 + 12);
                v439 = v614;
                v440 = v614 >> 11;
                swift_unknownObjectRetain();
                result = specialized Rope.find<A>(at:in:preferEnd:)(v440, 0, v435, v436, v438, v437);
                v594 = v442;
                *&v595 = v441;
                v592 = v443;
                if (result != v437)
                {
                  goto LABEL_350;
                }

                v444 = v437;
                if (v435)
                {
                  v593 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v437, v595, v594, v435, v436);
                  result = swift_unknownObjectRelease();
                }

                else
                {
                  v593 = 0;
                }

                v445 = *(v581 + 40);
                v671 = *(v581 + 24);
                v672 = v445;
                v673 = *(v581 + 56);
                if (!__OFSUB__(0, v592))
                {
                  swift_unknownObjectRetain();
                  v446 = v439;
                  v447 = v582;
                  v567 = BigString.UTF8View.index(_:offsetBy:)();
                  v580 = v448;
                  v577 = v449;
                  v365 = v450;
                  swift_unknownObjectRelease();
                  v370 = v447;
                  v251 = v446;
                  v363 = 0;
                  v372 = v597;
                  v249 = v581;
                  v250 = v553;
                  v252 = v554;
                  v254 = v576;
                  v380 = v590;
                  v245 = v568;
                  result = v569;
                  v369 = v593;
                  v368 = v594;
                  v371 = v444;
                  v366 = v567;
                  goto LABEL_141;
                }
              }

              else
              {
                if (v559 == 2)
                {
                  v373 = *(v581 + 24);
                  v374 = *(v581 + 56);
                  v669 = *(v581 + 40);
                  v670 = v374;
                  v375 = *(v581 + 40);
                  v665 = *(v581 + 24);
                  v666 = v375;
                  v667 = *(v581 + 56);
                  v668 = v373;
                  BigString.startIndex.getter();
                  v582 = v376;
                  v759[0] = v668;
                  v759[1] = v669;
                  v760 = v670;
                  outlined init with copy of Rope<BigString._Chunk>._Node?(v759, &v614);
                  v366 = BigString.UTF8View.index(_:offsetBy:)();
                  v580 = v377;
                  v577 = v378;
                  v365 = v379;
                  outlined destroy of BigString(&v668);
                  goto LABEL_140;
                }

                v424 = *(v581 + 40);
                v662 = *(v581 + 24);
                v663 = v424;
                v664 = *(v581 + 56);
                if (!__OFSUB__(v583, v558))
                {
                  swift_unknownObjectRetain();
                  v366 = BigString.UTF8View.index(_:offsetBy:)();
                  v580 = v425;
                  v577 = v426;
                  v365 = v427;
                  swift_unknownObjectRelease();
LABEL_140:
                  v371 = v592;
                  v369 = v593;
                  v368 = v594;
                  v363 = 0;
                  v251 = v366;
                  v370 = v365;
                  v249 = v581;
                  v250 = v553;
                  v252 = v554;
                  v254 = v576;
                  v380 = v590;
                  v245 = v568;
                  result = v569;
LABEL_141:
                  v381 = __OFADD__(v380, 1);
                  v247 = v380 + 1;
                  if (!v381)
                  {
                    goto LABEL_142;
                  }

LABEL_331:
                  __break(1u);
LABEL_332:
                  __break(1u);
LABEL_333:
                  __break(1u);
LABEL_334:
                  __break(1u);
LABEL_335:
                  __break(1u);
LABEL_336:
                  __break(1u);
LABEL_337:
                  __break(1u);
LABEL_338:
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  __break(1u);
LABEL_342:
                  __break(1u);
LABEL_343:
                  __break(1u);
LABEL_344:
                  __break(1u);
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
LABEL_347:
                  __break(1u);
LABEL_348:
                  __break(1u);
                }

                __break(1u);
LABEL_350:
                __break(1u);
              }

              __break(1u);
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
              return result;
            }

            v415 = v364 + 1;
          }

          if (v415 >= v414)
          {
            goto LABEL_317;
          }
        }
      }

      if (v251 >> 10 >= v254 >> 10)
      {
        goto LABEL_347;
      }
    }

    if ((v383 & 1) == 0)
    {
      if (v370 == 2)
      {
        goto LABEL_357;
      }

      if (v557 > v251 >> 10)
      {
        goto LABEL_343;
      }
    }

    goto LABEL_167;
  }

  v257 = v253 - v250;
  if (__OFSUB__(v253, v250))
  {
    __break(1u);
  }

  else
  {
    v258 = v248[22];
    if (v255 == 2)
    {
      v259 = v258 != 2;
    }

    else
    {
      v259 = v258 == 2 || (v254 ^ v248[19]) > 0x3FF;
    }

    v247 = (v257 + v259);
    if (!__OFADD__(v257, v259))
    {
      result = v248[26];
      v245 = v248[15];
      while (1)
      {
        v215 = v243[1];
        v233 = v243[15];
        v221 = v243[23];
        v246 = v243[26];
        if (*(v243 + *(v256 + 28)))
        {
          goto LABEL_225;
        }

        v290 = v233 - v215;
        if (__OFSUB__(v233, v215))
        {
          __break(1u);
        }

        else
        {
          v243 = v563;
          v248 = v564;
          v291 = *(v563 + 22);
          v292 = (v221 ^ *(v563 + 19)) > 0x3FF;
          if (v291 == 2)
          {
            v292 = 1;
          }

          if (v246 == 2)
          {
            v292 = v291 != 2;
          }

          v293 = v579;
          if (!__OFADD__(v290, v292))
          {
            if (v247 != (v290 + v292))
            {
              goto LABEL_135;
            }

LABEL_101:
            if (v250 != v245)
            {
              goto LABEL_110;
            }

            if (v252 == 2)
            {
              if (result != 2)
              {
                goto LABEL_110;
              }
            }

            else if (result == 2 || (v254 ^ v251) >= 0x400)
            {
LABEL_110:
              v301 = AttributedString.Runs._isPartial.getter();
              v302 = v574;
              if ((v301 & 1) != 0 || (AttributedString.Runs._isPartial.getter() & 1) != 0 || (v721[12] = *(v249 + 24), v721[13] = *(v249 + 40), v721[14] = *(v249 + 56), v303 = BigString.count.getter(), v721[9] = *(*(&v595 + 1) + 24), v721[10] = *(*(&v595 + 1) + 40), v721[11] = *(*(&v595 + 1) + 56), v382 = v303 == BigString.count.getter(), v302 = v574, v382))
              {
                v581 = v249;
                RangeSet.ranges.getter();
                v304 = v302;
                v305 = v598;
                dispatch thunk of Collection.startIndex.getter();
                dispatch thunk of Collection.endIndex.getter();
                if (v655 == v614)
                {
                  v566(v302, v305);
                }

                else
                {
                  v306 = dispatch thunk of Collection.subscript.read();
                  v308 = v307[1];
                  *&v595 = *v307;
                  v590 = v308;
                  v309 = v307[2];
                  v592 = v307[3];
                  v593 = v309;
                  v306(&v614, 0);
                  v310 = v566;
                  v566(v304, v305);
                  RangeSet.ranges.getter();
                  dispatch thunk of Collection.startIndex.getter();
                  dispatch thunk of Collection.endIndex.getter();
                  if (v636 != v614)
                  {
                    v311 = dispatch thunk of Collection.subscript.read();
                    v313 = v312[1];
                    v587 = *v312;
                    v597 = v313;
                    v314 = v312[3];
                    v596 = v312[2];
                    v594 = v314;
                    v311(&v614, 0);
                    v310(v293, v305);
                    v315 = v565;
                    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v248, v565, type metadata accessor for AttributedString.Runs);
                    v316 = v575;
                    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v315, v575, type metadata accessor for AttributedString.Runs);
                    v317 = v571;
                    v318 = (v316 + *(v571 + 36));
                    v319 = *(v315 + 72);
                    v627 = *(v315 + 56);
                    v628 = v319;
                    v629[0] = *(v315 + 88);
                    *(v629 + 10) = *(v315 + 98);
                    v320 = *(v315 + 24);
                    v624 = *(v315 + 8);
                    v625 = v320;
                    v626 = *(v315 + 40);
                    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v315, type metadata accessor for AttributedString.Runs);
                    v321 = v629[0];
                    v318[4] = v628;
                    v318[5] = v321;
                    *(v318 + 90) = *(v629 + 10);
                    v322 = v625;
                    *v318 = v624;
                    v318[1] = v322;
                    v323 = v627;
                    v318[2] = v626;
                    v318[3] = v323;
                    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v243, v315, type metadata accessor for AttributedString.Runs);
                    v324 = v578;
                    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v315, v578, type metadata accessor for AttributedString.Runs);
                    v325 = (v324 + *(v317 + 36));
                    v326 = *(v315 + 56);
                    v327 = *(v315 + 88);
                    v634 = *(v315 + 72);
                    v635[0] = v327;
                    *(v635 + 10) = *(v315 + 98);
                    v328 = *(v315 + 24);
                    v630 = *(v315 + 8);
                    v631 = v328;
                    v632 = *(v315 + 40);
                    v633 = v326;
                    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v315, type metadata accessor for AttributedString.Runs);
                    v329 = v635[0];
                    v325[4] = v634;
                    v325[5] = v329;
                    *(v325 + 90) = *(v635 + 10);
                    v330 = v631;
                    *v325 = v630;
                    v325[1] = v330;
                    v331 = v633;
                    v325[2] = v632;
                    v325[3] = v331;
                    v332 = v592;
                    v333 = v593;
                    while (1)
                    {
                      specialized IndexingIterator.next()(v608);
                      v334 = v608[0];
                      v335 = v608[1];
                      v336 = v608[2];
                      v337 = v611;
                      specialized IndexingIterator.next()(&v600);
                      v338 = v600;
                      v339 = v601;
                      v619 = v603;
                      v620 = v604;
                      v622 = v606;
                      v623 = v607;
                      *&v614 = v334;
                      *(&v614 + 1) = v335;
                      *(v615 + 8) = v609;
                      *(&v615[1] + 1) = v610;
                      *&v615[0] = v336;
                      *&v616[0] = v337;
                      *(&v616[1] + 8) = v613;
                      *(v616 + 8) = v612;
                      *(&v616[2] + 1) = v600;
                      v617 = v601;
                      v618 = v602;
                      v621 = v605;
                      if (!v334)
                      {
                        break;
                      }

                      if (!v600)
                      {
                        outlined destroy of TermOfAddress?(&v614, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
                        outlined destroy of TermOfAddress?(v578, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
                        v362 = v316;
                        goto LABEL_133;
                      }

                      v586 = v605;
                      v591 = v602;

                      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v334, v338) & 1) == 0)
                      {

LABEL_131:
                        outlined destroy of TermOfAddress?(&v614, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
LABEL_132:
                        outlined destroy of TermOfAddress?(v578, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
                        v362 = v575;
LABEL_133:
                        outlined destroy of TermOfAddress?(v362, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
LABEL_134:
                        v243 = v563;
                        v248 = v564;
                        goto LABEL_135;
                      }

                      v340 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v335, v339);

                      if ((v340 & 1) == 0)
                      {
                        goto LABEL_131;
                      }

                      v341 = v581;
                      v721[6] = *(v581 + 24);
                      v721[7] = *(v581 + 40);
                      v721[8] = *(v581 + 56);
                      swift_unknownObjectRetain();
                      v342 = v332;
                      v343 = v590;
                      v592 = v342;
                      v598 = BigString.UTF8View.index(_:offsetBy:)();
                      v584 = v345;
                      v585 = v344;
                      v593 = v346;
                      swift_unknownObjectRelease();
                      v347 = *(&v595 + 1);
                      v721[3] = *(*(&v595 + 1) + 24);
                      v721[4] = *(*(&v595 + 1) + 40);
                      v721[5] = *(*(&v595 + 1) + 56);
                      swift_unknownObjectRetain();
                      v348 = v587;
                      v591 = BigString.UTF8View.index(_:offsetBy:)();
                      v586 = v349;
                      v582 = v351;
                      v583 = v350;
                      result = swift_unknownObjectRelease();
                      v721[0] = *(v341 + 24);
                      v721[1] = *(v341 + 40);
                      v721[2] = *(v341 + 56);
                      if (v598 >> 10 < v595 >> 10)
                      {
                        __break(1u);
LABEL_316:
                        __break(1u);
LABEL_317:
                        __break(1u);
LABEL_318:
                        __break(1u);
LABEL_319:
                        __break(1u);
LABEL_320:
                        __break(1u);
LABEL_321:
                        __break(1u);
LABEL_322:
                        __break(1u);
LABEL_323:
                        __break(1u);
LABEL_324:
                        __break(1u);
LABEL_325:
                        __break(1u);
LABEL_326:
                        __break(1u);
LABEL_327:
                        __break(1u);
LABEL_328:
                        __break(1u);
LABEL_329:
                        __break(1u);
                        goto LABEL_330;
                      }

                      v713 = v595;
                      v714 = v343;
                      v715 = v333;
                      v716 = v592;
                      v717 = v598;
                      v333 = v584;
                      v352 = v585;
                      v718 = v585;
                      v719 = v584;
                      v720 = v593;
                      v353 = *(v341 + 24);
                      v750 = *(v341 + 7);
                      v749[1] = *(v341 + 40);
                      v749[0] = v353;
                      outlined init with copy of Rope<BigString._Chunk>._Node?(v749, v599);
                      BigString.subscript.getter();
                      result = outlined destroy of BigString(v721);
                      v354 = *(v347 + 24);
                      v712[1] = *(v347 + 40);
                      v712[2] = *(v347 + 56);
                      v712[0] = v354;
                      v355 = v591;
                      if (v591 >> 10 < v348 >> 10)
                      {
                        goto LABEL_316;
                      }

                      v356 = v352;
                      v704 = v348;
                      v705 = v597;
                      v706 = v596;
                      v707 = v594;
                      v708 = v591;
                      v357 = v586;
                      v709 = v586;
                      v359 = v582;
                      v358 = v583;
                      v710 = v583;
                      v711 = v582;
                      v360 = *(v347 + 24);
                      v752 = *(v347 + 56);
                      v751[1] = *(v347 + 40);
                      v751[0] = v360;
                      outlined init with copy of Rope<BigString._Chunk>._Node?(v751, v599);
                      BigString.subscript.getter();
                      outlined destroy of BigString(v712);
                      v361 = MEMORY[0x1865CA260](&v648, &v655);
                      outlined destroy of BigSubstring(&v648);
                      outlined destroy of TermOfAddress?(&v614, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
                      outlined destroy of BigSubstring(&v655);
                      if ((v361 & 1) == 0)
                      {
                        goto LABEL_132;
                      }

                      v587 = v355;
                      v597 = v357;
                      v596 = v358;
                      v594 = v359;
                      *&v595 = v598;
                      v590 = v356;
                      v332 = v593;
                      v316 = v575;
                    }

                    outlined destroy of TermOfAddress?(v578, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
                    outlined destroy of TermOfAddress?(v316, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
                    outlined destroy of TermOfAddress?(&v614, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
                    if (!v338)
                    {
                      v243 = v563;
                      v248 = v564;
                      goto LABEL_109;
                    }

                    goto LABEL_134;
                  }

                  v310(v293, v305);
                }
              }

              goto LABEL_135;
            }

LABEL_109:
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v243, type metadata accessor for AttributedString.Runs);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v248, type metadata accessor for AttributedString.Runs);

            v49 = v550 == v549;
            goto LABEL_136;
          }
        }

        __break(1u);
LABEL_312:
        v243 = v563;
        v256 = v570;
        v251 = v543;
      }
    }
  }

  __break(1u);
LABEL_225:
  v568 = v245;
  v569 = result;
  v590 = v247;
  v576 = v254;
  v553 = v250;
  v554 = v252;
  v581 = v249;
  v451 = 0;
  v452 = v563[112];
  v453 = *(v563 + 12);
  v454 = *(v563 + 13);
  v455 = *(v563 + 8);
  v456 = *(v563 + 9);
  v567 = *(v563 + 7);
  v457 = *(v563 + 5);
  v573 = *(v563 + 6);
  v594 = *(v563 + 4);
  v543 = v251;
  v544 = v221 >> 10;
  v551 = (v456 >> 10);
  v552 = v453;
  v545 = v586 + 8;
  v546 = v246;
  v458 = v215;
  v459 = v453;
  v555 = v246;
  v460 = v233;
  v461 = *(v563 + 2);
  *&v595 = *(v563 + 3);
  v593 = v461;
  v462 = *(&v595 + 1);
  v548 = v233;
  while (1)
  {
    LOBYTE(v655) = v452;
    if (v458 >= v233 && (v233 < v458 || v546 == 2 || v459 != 2 && v456 >> 10 >= v544))
    {
      break;
    }

    if (v458 < v215)
    {
      goto LABEL_322;
    }

    v469 = v215 < v458 || v552 == 2;
    v470 = v469;
    if (!v469)
    {
      if (v459 == 2)
      {
        goto LABEL_361;
      }

      if (v551 > v456 >> 10)
      {
        goto LABEL_337;
      }
    }

    if (v458 >= v460)
    {
      if (v460 < v458)
      {
        goto LABEL_339;
      }

      if (v555 == 2)
      {
        goto LABEL_363;
      }

      if (v459 == 2)
      {
        if (!v470)
        {
          goto LABEL_358;
        }

        goto LABEL_254;
      }

      if (v456 >> 10 >= v221 >> 10)
      {
        goto LABEL_348;
      }
    }

    if ((v470 & 1) == 0)
    {
      if (v459 == 2)
      {
        goto LABEL_358;
      }

      if (v551 > v456 >> 10)
      {
        goto LABEL_344;
      }
    }

LABEL_254:
    if (v460 < v458)
    {
      goto LABEL_326;
    }

    if (v458 >= v460 && v459 != 2)
    {
      if (v555 == 2)
      {
        goto LABEL_364;
      }

      if (v221 >> 10 < v456 >> 10)
      {
        goto LABEL_340;
      }
    }

    v557 = v456;
    if (v594 == 1 || v593 != *(v462 + 96))
    {
      goto LABEL_356;
    }

    v580 = v451;
    v558 = v457;
    v559 = v460;
    v560 = v455;
    v582 = v459;
    v562 = (v457 >> 11);
    if (v455 == 2)
    {
      v471 = *(v462 + 72);
      if (v471)
      {
        v473 = *(v462 + 80);
        v472 = *(v462 + 88);
        v474 = v462;
        swift_unknownObjectRetain();
        v475 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v593, v595, v594, v471, v473, v472);
        swift_unknownObjectRelease();
        v462 = v474;
      }

      else
      {
        v475 = 0;
      }

      v477 = *(v462 + 24);
      v702 = *(v462 + 40);
      v703 = *(v462 + 56);
      v701 = v477;
      v698 = *(v462 + 24);
      v699 = *(v462 + 40);
      v700 = *(v462 + 56);
      v476 = v462;
      v592 = BigString.startIndex.getter();
      v586 = v478;
      v583 = v479;
      v753[0] = v701;
      v753[1] = v702;
      v754 = v703;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v753, &v614);
      v583 = v475;
      v556 = BigString.UTF8View.index(_:offsetBy:)();
      result = outlined destroy of BigString(&v701);
    }

    else
    {
      v695 = *(v462 + 24);
      v696 = *(v462 + 40);
      v697 = *(v462 + 56);
      v592 = v695;
      v476 = v462;
      swift_unknownObjectRetain();
      v556 = BigString.UTF8View.index(roundingDown:)();
      result = swift_unknownObjectRelease();
      v583 = v562;
    }

    v480 = v476[9];
    v592 = v476[10];
    v481 = v476[12];
    v586 = v476[11];
    v482 = v593;
    v483 = v594;
    *&v614 = v593;
    *(&v614 + 1) = v595;
    *&v615[0] = v594;
    v381 = __OFADD__(v458, 1);
    v484 = v458 + 1;
    if (v381)
    {
      goto LABEL_329;
    }

    if (v593 != v481)
    {
LABEL_330:
      __break(1u);
      goto LABEL_331;
    }

    v577 = v484;
    if (v594)
    {
      v485 = *(v594 + 24 * ((v595 >> ((4 * *(v594 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v486 = &v583[v485];
      if (__OFADD__(v583, v485))
      {
        goto LABEL_334;
      }

      if (!v480)
      {
        goto LABEL_328;
      }

      result = swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v487 = specialized Rope._Node.subscript.getter(v595, v480);
      v547 = v488;

      v381 = __OFADD__(v583, v487);
      v486 = &v583[v487];
      if (v381)
      {
        goto LABEL_346;
      }

      if (!v480)
      {
        goto LABEL_328;
      }
    }

    if (v595 >= (((-15 << ((4 * *(v480 + 18) + 8) & 0x3C)) - 1) & *(v480 + 18) | (*(v480 + 16) << ((4 * *(v480 + 18) + 8) & 0x3C))))
    {
      goto LABEL_328;
    }

    v583 = v486;
    if (v483)
    {
      v489 = v483;
      v490 = (4 * *(v483 + 18) + 8) & 0x3C;
      v491 = ((v595 >> v490) & 0xF) + 1;
      if (v491 < *(v489 + 16))
      {
        swift_unknownObjectRelease();
        v492 = (v491 << v490) | ((-15 << v490) - 1) & v595;
LABEL_281:
        *&v595 = v492;
        goto LABEL_283;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v614, v480))
    {
      swift_unknownObjectRelease();
      v492 = *(&v614 + 1);
      goto LABEL_281;
    }

    v493 = *(v480 + 18);
    v494 = *(v480 + 16);
    swift_unknownObjectRelease();
    *&v614 = v482;
    *&v595 = ((-15 << ((4 * v493 + 8) & 0x3C)) - 1) & v493 | (v494 << ((4 * v493 + 8) & 0x3C));
    *(&v614 + 1) = v595;
    *&v615[0] = 0;
LABEL_283:
    v593 = v614;
    v594 = *&v615[0];
    if (v655)
    {
      v561(v572, &v563[*(v570 + 24)], v597);
      if (v582 == 2)
      {
        v495 = v556;
      }

      else
      {
        v495 = v557;
      }

      v496 = v587;
      RangeSet.ranges.getter();
      v497 = v598;
      v498 = RangeSet.Ranges.count.getter();
      result = (v566)(v496, v497);
      if (v498 < 1)
      {
        goto LABEL_318;
      }

      v499 = 0;
      v500 = v495 >> 10;
      while (1)
      {
        while (1)
        {
          if (__OFADD__(v499, v498))
          {
            goto LABEL_320;
          }

          v501 = (v499 + v498) / 2;
          v502 = v587;
          RangeSet.ranges.getter();
          v503 = v598;
          RangeSet.Ranges.subscript.getter();
          result = (v566)(v502, v503);
          if (v500 >= v614 >> 10)
          {
            break;
          }

          v498 = (v499 + v498) / 2;
          if (v499 >= v501)
          {
            goto LABEL_318;
          }
        }

        v454 = (v499 + v498) / 2;
        v504 = *&v615[1];
        if (v500 < *&v615[1] >> 10)
        {
          break;
        }

        v499 = v501 + 1;
        if (v501 + 1 >= v498)
        {
          goto LABEL_318;
        }
      }

      result = (v585)(v572, v597);
      v233 = v548;
    }

    else
    {
      v505 = v587;
      RangeSet.ranges.getter();
      v506 = v598;
      RangeSet.Ranges.subscript.getter();
      result = (v566)(v505, v506);
      v504 = *&v615[1];
    }

    if (v583 >= (v504 >> 11))
    {
      v381 = __OFADD__(v454++, 1);
      if (v381)
      {
        goto LABEL_342;
      }

      v510 = v563;
      v511 = v587;
      RangeSet.ranges.getter();
      v512 = v598;
      v513 = RangeSet.Ranges.count.getter();
      result = (v566)(v511, v512);
      if (v454 == v513)
      {
        v514 = *(v510 + 120);
        v515 = *(v510 + 128);
        v516 = *(v510 + 144);
        *&v595 = *(v510 + 136);
        v593 = v515;
        v594 = v516;
        v457 = *(v510 + 152);
        v573 = *(v510 + 160);
        v455 = *(v510 + 176);
        v567 = *(v510 + 168);
        v456 = *(v510 + 184);
        v459 = *(v510 + 208);
        v454 = *(v510 + 216);
        v221 = v456;
        v555 = v459;
        v460 = v514;
        v452 = *(v510 + 224);
        v458 = v514;
        v462 = *(&v595 + 1);
        v468 = v580;
      }

      else
      {
        v517 = v587;
        RangeSet.ranges.getter();
        v518 = v598;
        RangeSet.Ranges.subscript.getter();
        v566(v517, v518);
        v586 = *(&v614 + 1);
        v582 = *(&v615[0] + 1);
        v583 = *&v615[0];
        v519 = *(*(&v595 + 1) + 72);
        v520 = *(*(&v595 + 1) + 80);
        v522 = *(*(&v595 + 1) + 88);
        v521 = *(*(&v595 + 1) + 96);
        v523 = v614;
        v524 = v614 >> 11;
        swift_unknownObjectRetain();
        result = specialized Rope.find<A>(at:in:preferEnd:)(v524, 0, v519, v520, v522, v521);
        v594 = v526;
        *&v595 = v525;
        v592 = v527;
        v593 = v521;
        if (result != v521)
        {
          goto LABEL_353;
        }

        if (v519)
        {
          v577 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v593, v595, v594, v519, v520);
          result = swift_unknownObjectRelease();
        }

        else
        {
          v577 = 0;
        }

        v692 = *(*(&v595 + 1) + 24);
        v693 = *(*(&v595 + 1) + 40);
        v694 = *(*(&v595 + 1) + 56);
        if (__OFSUB__(0, v592))
        {
          goto LABEL_354;
        }

        v528 = *(&v595 + 1);
        swift_unknownObjectRetain();
        v456 = v523;
        v529 = v582;
        v558 = BigString.UTF8View.index(_:offsetBy:)();
        v573 = v530;
        v567 = v531;
        v455 = v532;
        result = swift_unknownObjectRelease();
        v459 = v529;
        v452 = 0;
        v468 = v580;
        v233 = v548;
        v458 = v577;
        v462 = v528;
        v457 = v558;
        v460 = v559;
      }
    }

    else
    {
      if (v560 == 2)
      {
        v463 = *(*(&v595 + 1) + 24);
        v690 = *(*(&v595 + 1) + 40);
        v691 = *(*(&v595 + 1) + 56);
        v689 = v463;
        v686 = *(*(&v595 + 1) + 24);
        v687 = *(*(&v595 + 1) + 40);
        v688 = *(*(&v595 + 1) + 56);
        BigString.startIndex.getter();
        v592 = v464;
        v755[0] = v689;
        v755[1] = v690;
        v756 = v691;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v755, &v614);
        v457 = BigString.UTF8View.index(_:offsetBy:)();
        v573 = v465;
        v567 = v466;
        v455 = v467;
        result = outlined destroy of BigString(&v689);
      }

      else
      {
        v683 = *(*(&v595 + 1) + 24);
        v684 = *(*(&v595 + 1) + 40);
        v685 = *(*(&v595 + 1) + 56);
        if (__OFSUB__(v583, v562))
        {
          goto LABEL_352;
        }

        swift_unknownObjectRetain();
        v457 = BigString.UTF8View.index(_:offsetBy:)();
        v573 = v507;
        v567 = v508;
        v455 = v509;
        result = swift_unknownObjectRelease();
      }

      v458 = v577;
      v452 = 0;
      v456 = v457;
      v459 = v455;
      v468 = v580;
      v460 = v559;
      v462 = *(&v595 + 1);
    }

    v381 = __OFADD__(v468, 1);
    v451 = v468 + 1;
    if (v381)
    {
      goto LABEL_332;
    }
  }

  v243 = v563;
  v248 = v564;
  v293 = v579;
  v249 = v581;
  v251 = v543;
  v250 = v553;
  v252 = v554;
  v254 = v576;
  v245 = v568;
  result = v569;
  if (v590 == v451)
  {
    goto LABEL_101;
  }

LABEL_135:
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v243, type metadata accessor for AttributedString.Runs);
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v248, type metadata accessor for AttributedString.Runs);

  v49 = 0;
LABEL_136:
  outlined destroy of String.LocalizationValue.FormatArgument.Storage(v638);
  return v49 & 1;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.CodableStorage.== infix(_:_:)(unint64_t a1, uint64_t a2)
{
  *&v785 = a2;
  v784 = a1;
  v919 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v767 = &v712 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v769 = &v712 - v5;
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  MEMORY[0x1EEE9AC00](v720);
  v726 = (&v712 - v6);
  v716 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
  MEMORY[0x1EEE9AC00](v716);
  v727 = &v712 - v7;
  v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  MEMORY[0x1EEE9AC00](v715);
  v722 = (&v712 - v8);
  v744 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v744);
  v734 = (&v712 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v735 = &v712 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v733 = &v712 - v13;
  v743 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  MEMORY[0x1EEE9AC00](v743);
  v745 = &v712 - v14;
  v15 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v749 = &v712 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v750 = (&v712 - v18);
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
  MEMORY[0x1EEE9AC00](v717);
  v723 = (&v712 - v19);
  v714 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
  MEMORY[0x1EEE9AC00](v714);
  v724 = &v712 - v20;
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd);
  MEMORY[0x1EEE9AC00](v713);
  v721 = (&v712 - v21);
  v739 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v739);
  *&v730 = &v712 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v731 = &v712 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v729 = (&v712 - v26);
  v738 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  MEMORY[0x1EEE9AC00](v738);
  v741 = &v712 - v27;
  v28 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v747 = (&v712 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v748 = &v712 - v31;
  v719 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v719);
  v736 = &v712 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v737 = &v712 - v34;
  v782 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v776 = *(v782 - 8);
  MEMORY[0x1EEE9AC00](v782);
  v725 = &v712 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v732 = &v712 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v742 = &v712 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v751 = &v712 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v740 = &v712 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v746 = &v712 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v775 = &v712 - v47;
  v766.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v766.i64[0]);
  *&v779 = &v712 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v778 = &v712 - v50;
  v781 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v771 = *(v781 - 8);
  MEMORY[0x1EEE9AC00](v781);
  v728 = &v712 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v777 = &v712 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v768 = &v712 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v780 = &v712 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v765 = &v712 - v59;
  v773 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v773);
  v718 = &v712 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v772 = &v712 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v752 = (&v712 - v64);
  MEMORY[0x1EEE9AC00](v65);
  *&v774 = &v712 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v770 = (&v712 - v68);
  *&v783 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
  MEMORY[0x1EEE9AC00](v783);
  v761 = &v712 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v758 = &v712 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v764 = &v712 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v760.i64[0] = &v712 - v75;
  MEMORY[0x1EEE9AC00](v76);
  *&v759 = &v712 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v763 = &v712 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v762 = (&v712 - v81);
  MEMORY[0x1EEE9AC00](v82);
  v756 = &v712 - v83;
  MEMORY[0x1EEE9AC00](v84);
  *&v755 = &v712 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v753 = (&v712 - v87);
  MEMORY[0x1EEE9AC00](v88);
  *&v754 = &v712 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v92 = (&v712 - v91);
  MEMORY[0x1EEE9AC00](v93);
  v95 = (&v712 - v94);
  MEMORY[0x1EEE9AC00](v96);
  v98 = (&v712 - v97);
  MEMORY[0x1EEE9AC00](v99);
  v101 = (&v712 - v100);
  MEMORY[0x1EEE9AC00](v102);
  v104 = (&v712 - v103);
  MEMORY[0x1EEE9AC00](v105);
  v107 = (&v712 - v106);
  MEMORY[0x1EEE9AC00](v108);
  v757 = &v712 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO_AGtMd);
  MEMORY[0x1EEE9AC00](v110 - 8);
  v112 = &v712 - v111;
  v114 = &v712 + *(v113 + 56) - v111;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v784, &v712 - v111, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
  v115 = v785;
  *&v785 = v114;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v115, v114, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v107, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v248 = v785;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_113;
      }

      v249 = *v107;
      goto LABEL_71;
    case 2u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v104, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v190 = v785;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_113;
      }

      v169 = *v104 == *v190;
      goto LABEL_91;
    case 3u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v101, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v248 = v785;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_113;
      }

      v249 = *v101;
LABEL_71:
      v251 = *v248;
      goto LABEL_74;
    case 4u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v98, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v168 = v785;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_113;
      }

      v169 = *v98 == *v168;
      goto LABEL_91;
    case 5u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v95, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v254 = v785;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_113;
      }

      v169 = *v95 == *v254;
      goto LABEL_91;
    case 6u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v92, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v189 = v785;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_113;
      }

      v250 = *v92;
      goto LABEL_90;
    case 7u:
      v188 = v754;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v754, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v189 = v785;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_68;
      }

      goto LABEL_113;
    case 8u:
      v361 = v753;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v753, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v363 = *v361;
      v362 = v361[1];
      v364 = v785;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        goto LABEL_113;
      }

      if (v363 == *v364 && v362 == v364[1])
      {
      }

      else
      {
        v377 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v377 & 1) == 0)
        {
          goto LABEL_244;
        }
      }

      v378 = v112;
      goto LABEL_121;
    case 9u:
      v188 = v755;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v755, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v189 = v785;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_113;
      }

LABEL_68:
      v250 = *v188;
LABEL_90:
      v169 = v250 == *v189;
      goto LABEL_91;
    case 0xAu:
      v273 = v756;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v756, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v275 = *v273;
      v274 = v273[1];
      v276 = v785;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

LABEL_113:
        outlined destroy of TermOfAddress?(v112, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO_AGtMd);
        goto LABEL_114;
      }

      v712 = v112;
      v277 = *v276;
      v744 = v276[1];
      v745 = v274;
      v278 = *(v275 + 40);
      v908 = *(v275 + 24);
      v909 = v278;
      v910 = *(v275 + 56);
      *&v785 = BigString.startIndex.getter();
      v784 = v279;
      v281 = v280;
      v283 = v282;
      v284 = BigString.endIndex.getter();
      v286 = v285;
      v288 = v287;
      v290 = v289;
      v291 = *(v277 + 40);
      v905 = *(v277 + 24);
      v906 = v291;
      v767 = v277;
      v907 = *(v277 + 56);
      v292 = BigString.startIndex.getter();
      v757 = v293;
      v758 = v292;
      v756 = v294;
      *&v755 = v295;
      v296 = BigString.endIndex.getter();
      v753 = v297;
      *&v754 = v296;
      v749 = v299;
      v750 = v298;
      *&v796[0] = v785;
      *(&v796[0] + 1) = v784;
      *&v796[1] = v281;
      *(&v796[1] + 1) = v283;
      *&v796[2] = v284;
      *(&v796[2] + 1) = v286;
      *&v796[3] = v288;
      *(&v796[3] + 1) = v290;
      v300 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

      RangeSet.init(_:)();
      v764 = v275;
      *v774 = v275;
      v301 = v780;
      v761 = v300;
      RangeSet.init()();
      v302 = v775;
      RangeSet.ranges.getter();
      v303 = v776;
      v304 = v778;
      v305 = v782;
      v747 = *(v776 + 16);
      v748 = v776 + 16;
      v747(v778, v302, v782);
      v306 = *(v766.i64[0] + 36);
      v307 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
      dispatch thunk of Collection.startIndex.getter();
      v308 = *(v303 + 8);
      v776 = v303 + 8;
      v762 = v308;
      (v308)(v302, v305);
      dispatch thunk of Collection.endIndex.getter();
      v309 = *&v306[v304];
      *&v785 = v307;
      if (v309 != *&v796[0])
      {
        v763 = v306;
        do
        {
          v379 = dispatch thunk of Collection.subscript.read();
          v381 = v380[5];
          v784 = v380[4];
          *&v783 = v381;
          v769 = v380[6];
          v379(v796, 0);
          dispatch thunk of Collection.formIndex(after:)();
          v382 = v764;
          v383 = *(v764 + 40);
          v902 = *(v764 + 24);
          v903 = v383;
          v904 = *(v764 + 56);
          swift_unknownObjectRetain();
          v384 = BigString.UnicodeScalarView.index(roundingDown:)();
          v386 = v385;
          v388 = v387;
          v390 = v389;
          swift_unknownObjectRelease();
          v391 = *(v382 + 40);
          v899 = *(v382 + 24);
          v900 = v391;
          v901 = *(v382 + 56);
          swift_unknownObjectRetain();
          v392 = BigString.UnicodeScalarView.index(roundingDown:)();
          v394 = v393;
          v396 = v395;
          v398 = v397;
          swift_unknownObjectRelease();
          *&v796[0] = v384;
          *(&v796[0] + 1) = v386;
          *&v796[1] = v388;
          v301 = v780;
          *(&v796[1] + 1) = v390;
          *&v796[2] = v392;
          *(&v796[2] + 1) = v394;
          v305 = v782;
          *&v796[3] = v396;
          *(&v796[3] + 1) = v398;
          if ((v392 ^ v384) >= 0x400)
          {
            v399 = RangeSet._ranges.modify();
            RangeSet.Ranges._insert(contentsOf:)();
            v399(&v829, 0);
          }

          v304 = v778;
          dispatch thunk of Collection.endIndex.getter();
        }

        while (*&v763[v304] != *&v796[0]);
      }

      outlined destroy of TermOfAddress?(v304, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
      v310 = v773;
      v311 = v771;
      v312 = *(v771 + 16);
      v313 = v774;
      v314 = v774 + *(v773 + 24);
      v315 = v301;
      v316 = v781;
      v769 = v771 + 16;
      v763 = v312;
      (v312)(v314, v315, v781);
      v317 = v775;
      RangeSet.ranges.getter();
      v318 = RangeSet.Ranges.count.getter();
      v319 = v762;
      (v762)(v317, v305);
      v320 = *(v310 + 28);
      LODWORD(v743) = v318 > 1;
      *(v313 + v320) = v743;
      v321 = v746;
      RangeSet.ranges.getter();
      specialized Collection.first.getter(v796);
      v319(v321, v305);
      v322 = *(&v796[1] + 1);
      if (*(&v796[1] + 1) == 2)
      {
        goto LABEL_100;
      }

      v746 = *(&v796[0] + 1);
      v323 = *&v796[0];
      v741 = *&v796[1];
      v324 = v740;
      RangeSet.ranges.getter();
      if (dispatch thunk of Collection.isEmpty.getter())
      {
        v319(v324, v305);
        v316 = v781;
        v311 = v771;
LABEL_100:
        v325 = v764;
        v326 = *(v764 + 96);
        v327 = swift_unknownObjectRetain();
        AttributedString._InternalRuns.startIndex.getter(v327, v326, v836);
        swift_unknownObjectRelease();
        v328 = *(v325 + 40);
        v896 = *(v325 + 24);
        v897 = v328;
        v898 = *(v325 + 56);
        v784 = BigString.startIndex.getter();
        *&v783 = v329;
        v778 = v330;
        v332 = v331;
        v759 = v836[0];
        v760 = v836[1];
        LOBYTE(v796[0]) = 0;
        v333 = *(v325 + 96);
        v334 = swift_unknownObjectRetain();
        v335 = 0;
        AttributedString._InternalRuns.startIndex.getter(v334, v333, &v837);
        swift_unknownObjectRelease();
        v336 = *(v311 + 8);
        v336(v780, v316);
        v337 = v765;
        v765 = v336;
        v336(v337, v316);
        v338 = *(v325 + 40);
        v893 = *(v325 + 24);
        v894 = v338;
        v895 = *(v325 + 56);
        v339 = BigString.startIndex.getter();
        v344 = v759;
        v343 = v760;
        v345 = v784;
        v346 = v778;
        v347 = v783;
        v348 = 0;
        v349 = v839;
        v350 = v837;
        v351 = -1;
        v352 = v838;
        v353 = v784;
        LOBYTE(v796[0]) = 0;
        v354 = v783;
        v355 = v778;
        v322 = v332;
        v356 = v339;
        v357 = v340;
        v358 = v341;
        v359 = v342;
        v360 = -1;
      }

      else
      {
        v411 = v324;
        v412 = v305;
        dispatch thunk of Collection.endIndex.getter();
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v413 = dispatch thunk of Collection.subscript.read();
        v414 = v323;
        v356 = v415[4];
        v416 = v415[5];
        v417 = v415[7];
        v738 = v415[6];
        v739 = v416;
        v733 = v417;
        v413(v796, 0);
        v319(v411, v305);
        v740 = v414;
        v418 = v764;
        AttributedString.Guts.findRun(at:)(v414, v322, v796);
        LODWORD(v735) = 0;
        v759 = v796[0];
        v760 = v796[1];
        v784 = *(&v796[2] + 1);
        v778 = *(&v796[3] + 1);
        *&v783 = *&v796[3];
        v734 = *&v796[4];
        v419 = *(v418 + 40);
        v896 = *(v418 + 24);
        v897 = v419;
        v898 = *(v418 + 56);
        if ((BigString.endIndex.getter() ^ v356) >= 0x400)
        {
          v439 = v733;
          AttributedString.Guts.findRun(at:)(v356, v733, v796);
          v730 = *(v796 + 8);
          v350 = *&v796[0];
          v731 = *(&v796[1] + 1);
          v729 = *(&v796[2] + 1);
          v726 = *(&v796[3] + 1);
          v727 = *&v796[3];
          v724 = *&v796[4];
          v440 = v775;
          v441 = v781;
          RangeSet.ranges.getter();
          v360 = RangeSet.Ranges.count.getter();
          (v762)(v440, v412);
          v442 = *(v771 + 8);
          v442(v780, v441);
          v443 = v765;
          v765 = v442;
          v442(v443, v441);
          v352 = v730;
          v349 = v731;
          v359 = v439;
          v358 = v738;
          v357 = v739;
          v342 = v724;
          v341 = v726;
          v340 = v727;
          v339 = v729;
          v351 = 0;
        }

        else
        {
          if (*(v418 + 72))
          {
            v420 = *(v418 + 80);
          }

          else
          {
            v420 = 0;
          }

          v731 = v420;
          v350 = *(v418 + 96);
          v421 = swift_unknownObjectRetain();
          v422 = specialized Rope._endPath.getter(v421);
          swift_unknownObjectRelease();
          v423 = v775;
          v424 = v781;
          RangeSet.ranges.getter();
          v360 = RangeSet.Ranges.count.getter();
          (v762)(v423, v412);
          v425 = *(v771 + 8);
          v425(v780, v424);
          v426 = v765;
          v765 = v425;
          v425(v426, v424);
          v349 = v731;
          v351 = 0;
          v352 = v422;
          v339 = v356;
          v358 = v738;
          v357 = v739;
          v340 = v739;
          v341 = v738;
          v359 = v733;
          v342 = v733;
        }

        v353 = v740;
        v355 = v741;
        v354 = v746;
        v345 = v784;
        v335 = v735;
        v347 = v783;
        v346 = v778;
        v332 = v734;
        v344 = v759;
        v343 = v760;
        v348 = v743;
      }

      v444 = v774;
      *(v774 + 24) = vextq_s8(v344, v343, 8uLL);
      *(v444 + 8) = vextq_s8(v343, v344, 8uLL);
      *(v444 + 40) = v345;
      *(v444 + 48) = v347;
      *(v444 + 56) = v346;
      *(v444 + 64) = v332;
      *(v444 + 72) = v353;
      *(v444 + 80) = v354;
      *(v444 + 88) = v355;
      *(v444 + 96) = v322;
      *(v444 + 104) = v351;
      *(v444 + 112) = v335;
      *(v444 + 113) = v348;
      *(v444 + 120) = v349;
      *(v444 + 128) = v350;
      *(v444 + 136) = v352;
      *(v444 + 152) = v339;
      *(v444 + 160) = v340;
      *(v444 + 168) = v341;
      *(v444 + 176) = v342;
      *(v444 + 184) = v356;
      *(v444 + 192) = v357;
      *(v444 + 200) = v358;
      *(v444 + 208) = v359;
      *(v444 + 216) = v360;
      *(v444 + 224) = 0;
      *(v444 + 225) = v348;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v444, v770, type metadata accessor for AttributedString.Runs);
      *&v796[0] = v758;
      *(&v796[0] + 1) = v757;
      *&v796[1] = v756;
      *(&v796[1] + 1) = v755;
      *&v796[2] = v754;
      *(&v796[2] + 1) = v753;
      *&v796[3] = v750;
      *(&v796[3] + 1) = v749;
      v445 = v767;

      RangeSet.init(_:)();
      *v772 = v445;
      RangeSet.init()();
      v446 = v775;
      RangeSet.ranges.getter();
      v447 = v779;
      v448 = v782;
      v747(v779, v446, v782);
      v449 = *(v766.i64[0] + 36);
      dispatch thunk of Collection.startIndex.getter();
      v450 = v447;
      (v762)(v446, v448);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v447 + v449) != *&v796[0])
      {
        v778 = v449;
        do
        {
          v459 = dispatch thunk of Collection.subscript.read();
          v461 = v460[5];
          v784 = v460[4];
          *&v783 = v461;
          v780 = v460[6];
          v459(v796, 0);
          dispatch thunk of Collection.formIndex(after:)();
          v462 = v767;
          v463 = *(v767 + 40);
          v890 = *(v767 + 24);
          v891 = v463;
          v892 = *(v767 + 56);
          swift_unknownObjectRetain();
          v464 = BigString.UnicodeScalarView.index(roundingDown:)();
          v466 = v465;
          v468 = v467;
          v470 = v469;
          swift_unknownObjectRelease();
          v471 = *(v462 + 40);
          v887 = *(v462 + 24);
          v888 = v471;
          v889 = *(v462 + 56);
          swift_unknownObjectRetain();
          v472 = BigString.UnicodeScalarView.index(roundingDown:)();
          v474 = v473;
          v476 = v475;
          v478 = v477;
          swift_unknownObjectRelease();
          *&v796[0] = v464;
          *(&v796[0] + 1) = v466;
          *&v796[1] = v468;
          *(&v796[1] + 1) = v470;
          *&v796[2] = v472;
          *(&v796[2] + 1) = v474;
          v448 = v782;
          *&v796[3] = v476;
          *(&v796[3] + 1) = v478;
          if ((v472 ^ v464) >= 0x400)
          {
            v479 = RangeSet._ranges.modify();
            RangeSet.Ranges._insert(contentsOf:)();
            v479(&v829, 0);
          }

          v450 = v779;
          dispatch thunk of Collection.endIndex.getter();
        }

        while (*(v450 + v778) != *&v796[0]);
      }

      outlined destroy of TermOfAddress?(v450, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
      v451 = v773;
      v452 = v772;
      (v763)(&v772[*(v773 + 24)], v777, v781);
      v453 = v775;
      RangeSet.ranges.getter();
      v454 = RangeSet.Ranges.count.getter();
      v455 = v453;
      v456 = v762;
      (v762)(v455, v448);
      v452[*(v451 + 28)] = v454 > 1;
      v457 = v751;
      RangeSet.ranges.getter();
      specialized Collection.first.getter(&v829);
      v456(v457, v448);
      if (*(&v830 + 1) == 2)
      {
        v458 = v767;
LABEL_163:
        v482 = *(v458 + 96);
        v483 = swift_unknownObjectRetain();
        AttributedString._InternalRuns.startIndex.getter(v483, v482, &v840);
        swift_unknownObjectRelease();
        v484 = *(v458 + 40);
        v884 = *(v458 + 24);
        v885 = v484;
        v886 = *(v458 + 56);
        v485 = BigString.startIndex.getter();
        v487 = v486;
        v489 = v488;
        v491 = v490;
        v492 = *(v458 + 96);
        v493 = swift_unknownObjectRetain();
        AttributedString._InternalRuns.startIndex.getter(v493, v492, &v842);
        swift_unknownObjectRelease();
        v494 = v771;
        v495 = v781;
        v496 = v765;
        (v765)(v777, v781);
        v496(v768, v495);
        v497 = *(v458 + 40);
        v883[15] = *(v458 + 24);
        v883[16] = v497;
        v883[17] = *(v458 + 56);
        v498 = BigString.startIndex.getter();
        v499 = v844;
        v500 = v843;
        v501 = vextq_s8(v841, v840, 8uLL);
        v502 = v772;
        *(v772 + 24) = vextq_s8(v840, v841, 8uLL);
        *(v502 + 8) = v501;
        *(v502 + 40) = v485;
        *(v502 + 48) = v487;
        *(v502 + 56) = v489;
        *(v502 + 64) = v491;
        *(v502 + 72) = v485;
        *(v502 + 80) = v487;
        *(v502 + 88) = v489;
        *(v502 + 96) = v491;
        *(v502 + 104) = -1;
        *(v502 + 112) = 0;
        *(v502 + 120) = v499;
        *(v502 + 128) = v842;
        *(v502 + 144) = v500;
        *(v502 + 152) = v498;
        *(v502 + 160) = v503;
        *(v502 + 168) = v504;
        *(v502 + 176) = v505;
        *(v502 + 184) = v498;
        *(v502 + 192) = v503;
        *(v502 + 200) = v504;
        *(v502 + 208) = v505;
        *(v502 + 216) = -1;
        *(v502 + 224) = 0;
        v258 = v712;
        goto LABEL_171;
      }

      *&v785 = *(&v830 + 1);
      LODWORD(v784) = v454 > 1;
      v480 = v829;
      v780 = v830;
      v481 = v742;
      RangeSet.ranges.getter();
      specialized BidirectionalCollection.last.getter(&v822);
      v456(v481, v448);
      v458 = v767;
      if (*(&v823 + 1) == 2)
      {
        goto LABEL_163;
      }

      v783 = v824;
      v779 = v825;
      v778 = v480;
      v506 = v780;
      AttributedString.Guts.findRun(at:)(v480, v785, v796);
      v766 = v796[1];
      v774 = *(&v796[3] + 8);
      v759 = *(&v796[2] + 8);
      v760 = v796[0];
      v507 = *(v458 + 40);
      v884 = *(v458 + 24);
      v885 = v507;
      v886 = *(v458 + 56);
      v508 = BigString.endIndex.getter();
      v509 = v783;
      v758 = *(&v480 + 1);
      if ((v508 ^ v783) >= 0x400)
      {
        AttributedString.Guts.findRun(at:)(v783, *(&v779 + 1), v796);
        v513 = *&v796[0];
        v521 = *&v796[1];
        v756 = *(&v796[0] + 1);
        v757 = *(&v796[1] + 1);
        v754 = *(&v796[3] + 8);
        v755 = *(&v796[2] + 8);
        v514 = v772;
        v525 = v775;
        v526 = v781;
        RangeSet.ranges.getter();
        v527 = v782;
        v518 = RangeSet.Ranges.count.getter();
        (v762)(v525, v527);
        v528 = v765;
        (v765)(v777, v526);
        v528(v768, v526);
        v524 = v754;
        v522 = v755;
        v520 = v783;
        v523 = v779;
      }

      else
      {
        if (*(v458 + 72))
        {
          v510 = *(v458 + 80);
        }

        else
        {
          v510 = 0;
        }

        v757 = v510;
        v511 = *(v458 + 96);
        v512 = swift_unknownObjectRetain();
        v513 = v511;
        v756 = specialized Rope._endPath.getter(v512);
        swift_unknownObjectRelease();
        v514 = v772;
        v515 = v775;
        v516 = v781;
        RangeSet.ranges.getter();
        v517 = v782;
        v518 = RangeSet.Ranges.count.getter();
        (v762)(v515, v517);
        v519 = v765;
        (v765)(v777, v516);
        v519(v768, v516);
        v520 = v783;
        v521 = 0;
        v522 = v783;
        v523 = v779;
        v524 = v779;
      }

      v529 = v784;
      v530 = v766;
      v531 = v760;
      *(v514 + 24) = vextq_s8(v760, v766, 8uLL);
      *(v514 + 8) = vextq_s8(v530, v531, 8uLL);
      *(v514 + 40) = v759;
      *(v514 + 56) = v774;
      v532 = v758;
      *(v514 + 9) = v778;
      *(v514 + 10) = v532;
      v533 = v785;
      *(v514 + 11) = v506;
      *(v514 + 12) = v533;
      *(v514 + 13) = 0;
      v514[112] = 0;
      v514[113] = v529;
      v534 = v756;
      *(v514 + 15) = v757;
      *(v514 + 16) = v513;
      *(v514 + 17) = v534;
      *(v514 + 18) = v521;
      *(v514 + 152) = v522;
      *(v514 + 168) = v524;
      *(v514 + 23) = v509;
      *(v514 + 12) = vextq_s8(v520, v523, 8uLL);
      *(v514 + 26) = v523.i64[1];
      *(v514 + 27) = v518;
      v514[224] = 0;
      v514[225] = v529;
      v494 = v771;
      v502 = v514;
      v258 = v712;
LABEL_171:
      v535 = v752;
      result = outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v502, v752, type metadata accessor for AttributedString.Runs);
      v536 = v770;
      v537 = *v770;
      *&v785 = *v535;
      if (v537 == v785)
      {
        result = static RangeSet.== infix(_:_:)();
        if (result)
        {
          goto LABEL_183;
        }
      }

      v538 = v536[1];
      v539 = v536[15];
      v540 = v536[23];
      v541 = v536[26];
      if (*(v536 + *(v773 + 28)) == 1)
      {
        v768 = v537;
        v771 = 0;
        v629 = *(v536 + 112);
        v630 = v536[12];
        v631 = v536[13];
        v632 = v536[9];
        v777 = v536[8];
        v633 = v536[6];
        v761 = v536[7];
        v765 = v633;
        v634 = v536[4];
        *&v774 = v536[5];
        *&v779 = v634;
        *&v755 = v540;
        v749 = v540 >> 10;
        v780 = v632;
        *&v754 = v632 >> 10;
        v750 = (v494 + 8);
        v751 = v541;
        v635 = v538;
        v756 = v630;
        v757 = v541;
        v784 = v630;
        v636 = v539;
        v637 = v536[2];
        v778 = v536[3];
        *&v783 = v637;
        while (1)
        {
          LOBYTE(v829) = v629;
          v772 = v636;
          if (v635 >= v539)
          {
            if (v539 < v635)
            {
              goto LABEL_357;
            }

            if (v751 == 2)
            {
              goto LABEL_357;
            }

            v636 = v772;
            if (v784 != 2 && v780 >> 10 >= v749)
            {
              goto LABEL_357;
            }
          }

          if (v635 < v538)
          {
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
LABEL_376:
            __break(1u);
LABEL_377:
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
            return result;
          }

          v638 = v538 < v635 || v756 == 2;
          v639 = v638;
          if (!v638)
          {
            if (v784 == 2)
            {
              goto LABEL_381;
            }

            if (v754 > v780 >> 10)
            {
              goto LABEL_370;
            }
          }

          if (v635 >= v636)
          {
            if (v636 < v635)
            {
              goto LABEL_371;
            }

            if (v757 == 2)
            {
              goto LABEL_382;
            }

            if (v784 == 2)
            {
              v640 = v768;
              v636 = v772;
              v641 = v783;
              v642 = v779;
              if (!v639)
              {
                goto LABEL_380;
              }

              goto LABEL_292;
            }

            v636 = v772;
            if (v780 >> 10 >= v755 >> 10)
            {
              goto LABEL_375;
            }
          }

          v640 = v768;
          v641 = v783;
          v642 = v779;
          if ((v639 & 1) == 0)
          {
            if (v784 == 2)
            {
              goto LABEL_380;
            }

            if (v754 > v780 >> 10)
            {
              goto LABEL_374;
            }
          }

LABEL_292:
          if (v636 < v635)
          {
            goto LABEL_364;
          }

          if (v635 >= v636 && v784 != 2)
          {
            if (v757 == 2)
            {
              goto LABEL_383;
            }

            if (v755 >> 10 < v780 >> 10)
            {
              goto LABEL_372;
            }
          }

          if (v642 == 1 || v641 != *(v640 + 12))
          {
            goto LABEL_379;
          }

          if (v777 == 2)
          {
            v643 = *(v640 + 9);
            if (v643)
            {
              v645 = *(v768 + 10);
              v644 = *(v768 + 11);
              swift_unknownObjectRetain();
              v646 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v783, v778, v779, v643, v645, v644);
              swift_unknownObjectRelease();
            }

            else
            {
              v646 = 0;
            }

            v760.i64[0] = v774 >> 11;
            v640 = v768;
            v648 = *(v768 + 24);
            v649 = *(v768 + 40);
            v865 = *(v768 + 56);
            v864 = v649;
            v863 = v648;
            v650 = *(v768 + 40);
            v860 = *(v768 + 24);
            v861 = v650;
            v862 = *(v768 + 56);
            BigString.startIndex.getter();
            v766.i64[0] = v651;
            *&v759 = v652;
            v915[0] = v863;
            v915[1] = v864;
            v916 = v865;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v915, v796);
            v766.i64[0] = v646;
            *&v759 = BigString.UTF8View.index(_:offsetBy:)();
            result = outlined destroy of BigString(&v863);
            v641 = v783;
            v642 = v779;
          }

          else
          {
            v760.i64[0] = v774 >> 11;
            v647 = *(v640 + 40);
            v857 = *(v640 + 24);
            v858 = v647;
            v859 = *(v640 + 56);
            swift_unknownObjectRetain();
            *&v759 = BigString.UTF8View.index(roundingDown:)();
            result = swift_unknownObjectRelease();
            v766.i64[0] = v760.i64[0];
          }

          v653 = *(v640 + 9);
          v654 = *(v640 + 12);
          *&v779 = *(v640 + 11);
          *&v796[0] = v641;
          v655 = v778;
          *(&v796[0] + 1) = v778;
          *&v796[1] = v642;
          v656 = __OFADD__(v635, 1);
          v657 = v635 + 1;
          if (v656)
          {
            goto LABEL_365;
          }

          if (v641 != v654)
          {
            goto LABEL_366;
          }

          if (v642)
          {
            v658 = *(v642 + 24 * ((v778 >> ((4 * *(v642 + 18) + 8) & 0x3C)) & 0xF) + 24);
            result = swift_unknownObjectRetain();
          }

          else
          {
            swift_unknownObjectRetain();
            v658 = specialized Rope._Node.subscript.getter(v655, v653);
            v753 = v659;
          }

          if (__OFADD__(v766.i64[0], v658))
          {
            goto LABEL_367;
          }

          if (v653)
          {
            v660 = ((-15 << ((4 * *(v653 + 18) + 8) & 0x3C)) - 1) & *(v653 + 18) | (*(v653 + 16) << ((4 * *(v653 + 18) + 8) & 0x3C));
          }

          else
          {
            v660 = 0;
          }

          if (v655 >= v660)
          {
            goto LABEL_368;
          }

          v758 = v657;
          v766.i64[0] += v658;
          if (v642 && (v661 = (4 * *(v642 + 18) + 8) & 0x3C, v662 = ((v655 >> v661) & 0xF) + 1, v662 < *(v642 + 16)))
          {
            v778 = (v662 << v661) | ((-15 << v661) - 1) & v655;
            swift_unknownObjectRelease();
          }

          else if (specialized Rope._Node.formSuccessor(of:)(v796, v653))
          {
            swift_unknownObjectRelease();
            v778 = *(&v796[0] + 1);
          }

          else
          {
            if (v653)
            {
              v663 = *(v653 + 18);
              v664 = *(v653 + 16);
              swift_unknownObjectRelease();
              v778 = ((-15 << ((4 * v663 + 8) & 0x3C)) - 1) & v663 | (v664 << ((4 * v663 + 8) & 0x3C));
            }

            else
            {
              v778 = 0;
            }

            *&v796[0] = v783;
            *(&v796[0] + 1) = v778;
            *&v796[1] = 0;
          }

          v665 = v782;
          v666 = *(v773 + 24);
          *&v783 = *&v796[0];
          *&v779 = *&v796[1];
          if (v829)
          {
            (v763)(v728, v770 + v666, v781);
            if (v784 == 2)
            {
              v667 = v759;
            }

            else
            {
              v667 = v780;
            }

            v668 = v775;
            RangeSet.ranges.getter();
            v669 = RangeSet.Ranges.count.getter();
            (v762)(v668, v665);
            if (v669 < 1)
            {
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
            }

            v670 = 0;
            v671 = v667 >> 10;
            while (1)
            {
              while (1)
              {
                if (__OFADD__(v670, v669))
                {
                  goto LABEL_362;
                }

                v672 = (v670 + v669) / 2;
                v673 = v775;
                RangeSet.ranges.getter();
                v674 = v782;
                RangeSet.Ranges.subscript.getter();
                (v762)(v673, v674);
                if (v671 >= *&v796[0] >> 10)
                {
                  break;
                }

                v669 = (v670 + v669) / 2;
                if (v670 >= v672)
                {
                  goto LABEL_361;
                }
              }

              v631 = (v670 + v669) / 2;
              v675 = *&v796[2];
              if (v671 < *&v796[2] >> 10)
              {
                break;
              }

              v670 = v672 + 1;
              if (v672 + 1 >= v669)
              {
                goto LABEL_361;
              }
            }

            result = (*v750)(v728, v781);
          }

          else
          {
            v676 = v775;
            RangeSet.ranges.getter();
            RangeSet.Ranges.subscript.getter();
            result = (v762)(v676, v665);
            v675 = *&v796[2];
          }

          if (v766.i64[0] >= (v675 >> 11))
          {
            v685 = v631 + 1;
            if (__OFADD__(v631, 1))
            {
              goto LABEL_373;
            }

            v686 = v770;
            v687 = v775;
            RangeSet.ranges.getter();
            v688 = v782;
            v689 = RangeSet.Ranges.count.getter();
            result = (v762)(v687, v688);
            if (v685 == v689)
            {
              v635 = v686[15];
              *&v783 = v686[16];
              v690 = v686[18];
              v778 = v686[17];
              *&v779 = v690;
              v680 = v686[19];
              v765 = v686[20];
              v684 = v686[22];
              v761 = v686[21];
              v691 = v686[26];
              v631 = v686[27];
              v780 = v686[23];
              *&v755 = v780;
              v784 = v691;
              v757 = v691;
              v636 = v635;
              v629 = *(v686 + 224);
              v692 = v771;
            }

            else
            {
              v631 = v685;
              v697 = v775;
              RangeSet.ranges.getter();
              v698 = v782;
              RangeSet.Ranges.subscript.getter();
              (v762)(v697, v698);
              v784 = *(&v796[1] + 1);
              v699 = *(v768 + 9);
              v700 = *(v768 + 10);
              v702 = *(v768 + 11);
              v701 = *(v768 + 12);
              v780 = *&v796[0];
              *&v783 = *&v796[0] >> 11;
              swift_unknownObjectRetain();
              result = specialized Rope.find<A>(at:in:preferEnd:)(v783, 0, v699, v700, v702, v701);
              v778 = v703;
              *&v779 = v704;
              v777 = v705;
              *&v783 = v701;
              if (result != v701)
              {
                goto LABEL_377;
              }

              if (v699)
              {
                v706 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v783, v778, v779, v699, v700);
                result = swift_unknownObjectRelease();
              }

              else
              {
                v706 = 0;
              }

              v707 = *(v768 + 40);
              v854 = *(v768 + 24);
              v855 = v707;
              v856 = *(v768 + 56);
              if (__OFSUB__(0, v777))
              {
                goto LABEL_378;
              }

              swift_unknownObjectRetain();
              v680 = BigString.UTF8View.index(_:offsetBy:)();
              v765 = v708;
              v761 = v709;
              v684 = v710;
              result = swift_unknownObjectRelease();
              v629 = 0;
              v692 = v771;
              v636 = v772;
              v635 = v706;
            }
          }

          else
          {
            if (v777 == 2)
            {
              v677 = *(v768 + 24);
              v678 = *(v768 + 40);
              v853 = *(v768 + 56);
              v852 = v678;
              v851 = v677;
              v679 = *(v768 + 40);
              v848 = *(v768 + 24);
              v849 = v679;
              v850 = *(v768 + 56);
              BigString.startIndex.getter();
              v917[0] = v851;
              v917[1] = v852;
              v918 = v853;
              outlined init with copy of Rope<BigString._Chunk>._Node?(v917, v796);
              v680 = BigString.UTF8View.index(_:offsetBy:)();
              v765 = v681;
              v761 = v682;
              v684 = v683;
              result = outlined destroy of BigString(&v851);
            }

            else
            {
              v693 = *(v768 + 40);
              v845 = *(v768 + 24);
              v846 = v693;
              v847 = *(v768 + 56);
              if (__OFSUB__(v766.i64[0], v760.i64[0]))
              {
                goto LABEL_376;
              }

              swift_unknownObjectRetain();
              v680 = BigString.UTF8View.index(_:offsetBy:)();
              v765 = v694;
              v761 = v695;
              v684 = v696;
              result = swift_unknownObjectRelease();
            }

            v629 = 0;
            v780 = v680;
            v784 = v684;
            v692 = v771;
            v636 = v772;
            v635 = v758;
          }

          v656 = __OFADD__(v692, 1);
          v711 = v692 + 1;
          if (v656)
          {
            goto LABEL_369;
          }

          v777 = v684;
          *&v774 = v680;
          v771 = v711;
        }
      }

      v542 = v539 - v538;
      if (__OFSUB__(v539, v538))
      {
        __break(1u);
        goto LABEL_356;
      }

      v543 = v536[22];
      if (v541 == 2)
      {
        v544 = v543 != 2;
      }

      else
      {
        v544 = v543 == 2 || (v540 ^ v536[19]) > 0x3FF;
      }

      v545 = v542 + v544;
      if (__OFADD__(v542, v544))
      {
LABEL_356:
        __break(1u);
LABEL_357:
        v258 = v712;
        v535 = v752;
        v536 = v770;
        v537 = v768;
        v545 = v771;
      }

      if (v545 != specialized Collection.count.getter())
      {
        goto LABEL_264;
      }

      if (specialized Collection.isEmpty.getter())
      {
LABEL_183:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v535, type metadata accessor for AttributedString.Runs);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v536, type metadata accessor for AttributedString.Runs);

        v134 = v745 == v744;
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v258, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
        return v134 & 1;
      }

      if ((AttributedString.Runs._isPartial.getter() & 1) == 0 && (AttributedString.Runs._isPartial.getter() & 1) == 0)
      {
        v546 = *(v537 + 40);
        v883[12] = *(v537 + 24);
        v883[13] = v546;
        v883[14] = *(v537 + 56);
        v547 = BigString.count.getter();
        v548 = *(v785 + 40);
        v883[9] = *(v785 + 24);
        v883[10] = v548;
        v883[11] = *(v785 + 56);
        if (v547 != BigString.count.getter())
        {
          goto LABEL_264;
        }
      }

      v768 = v537;
      v549 = v732;
      RangeSet.ranges.getter();
      specialized Collection.first.getter(v804);
      v550 = v549;
      v551 = v782;
      v552 = v762;
      (v762)(v550, v782);
      if (v805 == 2 || (v778 = v805, *&v783 = v804[0], v784 = v804[1], v780 = v804[2], v553 = v725, RangeSet.ranges.getter(), specialized Collection.first.getter(v802), v552(v553, v551), *&v779 = v803, v803 == 2))
      {
        v258 = v712;
LABEL_264:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v535, type metadata accessor for AttributedString.Runs);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v536, type metadata accessor for AttributedString.Runs);

LABEL_265:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v258, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
        goto LABEL_114;
      }

      v782 = v802[2];
      v781 = v802[1];
      v777 = v802[0];
      v571 = v718;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v536, v718, type metadata accessor for AttributedString.Runs);
      v572 = v737;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v571, v737, type metadata accessor for AttributedString.Runs);
      v573 = v719;
      v574 = (v572 + *(v719 + 36));
      v575 = *(v571 + 56);
      v576 = *(v571 + 88);
      v814 = *(v571 + 72);
      v815[0] = v576;
      *(v815 + 10) = *(v571 + 98);
      v577 = *(v571 + 24);
      v810 = *(v571 + 8);
      v811 = v577;
      v578 = *(v571 + 40);
      v813 = v575;
      v812 = v578;
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v571, type metadata accessor for AttributedString.Runs);
      v579 = v815[0];
      v574[4] = v814;
      v574[5] = v579;
      *(v574 + 90) = *(v815 + 10);
      v580 = v811;
      *v574 = v810;
      v574[1] = v580;
      v581 = v813;
      v574[2] = v812;
      v574[3] = v581;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v535, v571, type metadata accessor for AttributedString.Runs);
      v582 = v736;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v571, v736, type metadata accessor for AttributedString.Runs);
      v583 = (v582 + *(v573 + 36));
      v584 = *(v571 + 56);
      v585 = *(v571 + 88);
      v820 = *(v571 + 72);
      v821[0] = v585;
      *(v821 + 10) = *(v571 + 98);
      v586 = *(v571 + 24);
      v816 = *(v571 + 8);
      v817 = v586;
      v587 = *(v571 + 40);
      v819 = v584;
      v818 = v587;
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v571, type metadata accessor for AttributedString.Runs);
      v588 = v821[0];
      v583[4] = v820;
      v583[5] = v588;
      *(v583 + 90) = *(v821 + 10);
      v589 = v817;
      *v583 = v816;
      v583[1] = v589;
      v590 = v819;
      v583[2] = v818;
      v583[3] = v590;
      v591 = v784;
      v592 = v780;
      while (1)
      {
        specialized IndexingIterator.next()(&v806);
        v593 = v806;
        v594 = *&v807[0];
        v595 = *&v808[0];
        specialized IndexingIterator.next()(&v789);
        v596 = v789;
        v597 = v790;
        v797[1] = v791;
        v798 = v792;
        v598 = *(&v790 + 1);
        v800 = v794;
        v801 = v795;
        v796[0] = v593;
        *(&v796[1] + 8) = *(v807 + 8);
        *(&v796[2] + 1) = *(&v807[1] + 1);
        *&v796[1] = v594;
        *&v796[3] = v595;
        *(&v796[4] + 8) = *(&v808[1] + 8);
        *(&v796[3] + 8) = *(v808 + 8);
        *(&v796[5] + 1) = v789;
        v797[0] = v790;
        v799 = v793;
        if (!v593)
        {
          outlined destroy of TermOfAddress?(v736, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          outlined destroy of TermOfAddress?(v737, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          outlined destroy of TermOfAddress?(v796, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
          if (!v596)
          {
            v258 = v712;
            v535 = v752;
            v536 = v770;
            goto LABEL_183;
          }

          goto LABEL_262;
        }

        if (!v789)
        {
          goto LABEL_261;
        }

        v776 = v793;

        if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v593, v596) & 1) == 0)
        {

LABEL_261:
          outlined destroy of TermOfAddress?(v796, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
          outlined destroy of TermOfAddress?(v736, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          outlined destroy of TermOfAddress?(v737, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
LABEL_262:
          v258 = v712;
          v535 = v752;
          v536 = v770;
          goto LABEL_264;
        }

        v775 = v598;
        v599 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*(&v593 + 1), v597);

        if ((v599 & 1) == 0)
        {
          goto LABEL_261;
        }

        v600 = v768;
        v601 = *(v768 + 40);
        v883[6] = *(v768 + 24);
        v883[7] = v601;
        v883[8] = *(v768 + 56);
        swift_unknownObjectRetain();
        v602 = v778;
        v784 = BigString.UTF8View.index(_:offsetBy:)();
        *&v774 = v603;
        v773 = v604;
        v780 = v605;
        swift_unknownObjectRelease();
        v606 = v785;
        v607 = *(v785 + 40);
        v883[3] = *(v785 + 24);
        v883[4] = v607;
        v883[5] = *(v785 + 56);
        v776 = (v776 >> 11) - (v775 >> 11);
        swift_unknownObjectRetain();
        v246 = v777;
        v608 = v779;
        v776 = BigString.UTF8View.index(_:offsetBy:)();
        v775 = v609;
        v772 = v610;
        v771 = v611;
        swift_unknownObjectRelease();
        v612 = *(v600 + 40);
        v883[0] = *(v600 + 24);
        v883[1] = v612;
        v883[2] = *(v600 + 56);
        if (v784 >> 10 < v783 >> 10)
        {
          break;
        }

        v875 = v783;
        v876 = v591;
        v877 = v592;
        v878 = v602;
        v879 = v784;
        v591 = v774;
        v880 = v774;
        v613 = v773;
        v881 = v773;
        v882 = v780;
        v614 = *(v600 + 24);
        v912 = *(v600 + 7);
        v911[1] = *(v600 + 40);
        v911[0] = v614;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v911, v788);
        BigString.subscript.getter();
        outlined destroy of BigString(v883);
        v615 = *(v606 + 24);
        v616 = *(v606 + 40);
        v874[2] = *(v606 + 56);
        v874[1] = v616;
        v874[0] = v615;
        v617 = v776;
        if (v776 >> 10 < v246 >> 10)
        {
          goto LABEL_359;
        }

        v866 = v246;
        v867 = v781;
        v868 = v782;
        v869 = v608;
        v870 = v776;
        v618 = v775;
        v871 = v775;
        v619 = v772;
        v872 = v772;
        v620 = v771;
        v873 = v771;
        v621 = *(v606 + 24);
        v914 = *(v606 + 56);
        v622 = *(v606 + 40);
        v913[0] = v621;
        v913[1] = v622;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v913, v788);
        BigString.subscript.getter();
        outlined destroy of BigString(v874);
        v623 = MEMORY[0x1865CA260](&v822, &v829);
        outlined destroy of BigSubstring(&v822);
        outlined destroy of TermOfAddress?(v796, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
        outlined destroy of BigSubstring(&v829);
        v536 = v770;
        if ((v623 & 1) == 0)
        {
          outlined destroy of TermOfAddress?(v736, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          outlined destroy of TermOfAddress?(v737, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          v258 = v712;
          v535 = v752;
          goto LABEL_264;
        }

        v777 = v617;
        v781 = v618;
        v782 = v619;
        *&v779 = v620;
        *&v783 = v784;
        v592 = v613;
        v778 = v780;
      }

      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      v247 = 0;
LABEL_252:

      if (_So9NSDecimala__isNegative_getter(&v786))
      {
        if (v246)
        {
          goto LABEL_256;
        }

LABEL_133:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v767, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v769, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
LABEL_134:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v712, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
LABEL_114:
        v134 = 0;
      }

      else
      {
        if (v247)
        {
          goto LABEL_133;
        }

LABEL_256:
        v627 = v769;
        v628 = v767;
        v134 = specialized static String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.== infix(_:_:)(v769, v767);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v628, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v627, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
LABEL_257:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v712, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      }

      return v134 & 1;
    case 0xBu:
      v152 = v762;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v762, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v153 = *v152;
      v154 = *(v152 + 72);
      v796[5] = *(v152 + 88);
      v797[0] = *(v152 + 104);
      *(v797 + 10) = *(v152 + 114);
      v155 = *(v152 + 24);
      v796[0] = *(v152 + 8);
      v796[1] = v155;
      v156 = *(v152 + 56);
      v796[2] = *(v152 + 40);
      v796[3] = v156;
      v796[4] = v154;
      v157 = v785;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v796);
        goto LABEL_113;
      }

      v158 = *v157;
      v159 = *(v157 + 88);
      v833 = *(v157 + 72);
      v834 = v159;
      v835[0] = *(v157 + 104);
      *(v835 + 10) = *(v157 + 114);
      v160 = *(v157 + 24);
      v829 = *(v157 + 8);
      v830 = v160;
      v169 = v153 == v158;
      v161 = *(v157 + 56);
      v831 = *(v157 + 40);
      v832 = v161;
      if (!v169)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(&v829);
        outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v796);
        goto LABEL_244;
      }

      v162 = *(v152 + 88);
      v814 = *(v152 + 72);
      v815[0] = v162;
      v815[1] = *(v152 + 104);
      *(&v815[1] + 10) = *(v152 + 114);
      v163 = *(v152 + 24);
      v810 = *(v152 + 8);
      v811 = v163;
      v164 = *(v152 + 56);
      v812 = *(v152 + 40);
      v813 = v164;
      v165 = *(v157 + 88);
      v808[1] = *(v157 + 72);
      v808[2] = v165;
      v809[0] = *(v157 + 104);
      *(v809 + 10) = *(v157 + 114);
      v166 = *(v157 + 24);
      v806 = *(v157 + 8);
      v807[0] = v166;
      v167 = *(v157 + 56);
      v807[1] = *(v157 + 40);
      v808[0] = v167;
      v134 = specialized static String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.== infix(_:_:)(&v810, &v806);
      v820 = v808[1];
      v821[0] = v808[2];
      v821[1] = v809[0];
      *(&v821[1] + 10) = *(v809 + 10);
      v816 = v806;
      v817 = v807[0];
      v818 = v807[1];
      v819 = v808[0];
      outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v816);
      v826 = v814;
      v827 = v815[0];
      v828[0] = v815[1];
      *(v828 + 10) = *(&v815[1] + 10);
      v822 = v810;
      v823 = v811;
      v824 = v812;
      v825 = v813;
      outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v822);
      goto LABEL_94;
    case 0xCu:
      v170 = v763;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v763, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v172 = *v170;
      v171 = *(v170 + 1);
      v173 = *(v170 + 5);
      v796[5] = *(v170 + 6);
      LOWORD(v797[0]) = *(v170 + 56);
      v174 = *(v170 + 2);
      v796[0] = *(v170 + 1);
      v796[1] = v174;
      v175 = *(v170 + 3);
      v796[3] = *(v170 + 4);
      v796[4] = v173;
      v796[2] = v175;
      v176 = v785;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        outlined destroy of Date.IntervalFormatStyle(v796);
        goto LABEL_113;
      }

      v178 = *v176;
      v177 = *(v176 + 8);
      v179 = *(v176 + 96);
      v833 = *(v176 + 80);
      v834 = v179;
      LOWORD(v835[0]) = *(v176 + 112);
      v180 = *(v176 + 32);
      v829 = *(v176 + 16);
      v830 = v180;
      v181 = *(v176 + 48);
      v832 = *(v176 + 64);
      v831 = v181;
      if (v172 == v178 && v171 == v177)
      {
        v182 = *(v170 + 6);
        v826 = *(v170 + 5);
        v827 = v182;
        LOWORD(v828[0]) = *(v170 + 56);
        v183 = *(v170 + 2);
        v822 = *(v170 + 1);
        v823 = v183;
        v184 = *(v170 + 3);
        v825 = *(v170 + 4);
        v824 = v184;
        v185 = *(v176 + 96);
        v820 = *(v176 + 80);
        v821[0] = v185;
        LOWORD(v821[1]) = *(v176 + 112);
        v186 = *(v176 + 32);
        v816 = *(v176 + 16);
        v817 = v186;
        v187 = *(v176 + 48);
        v819 = *(v176 + 64);
        v818 = v187;
        v134 = specialized static Date.IntervalFormatStyle.== infix(_:_:)(&v822, &v816);
        outlined destroy of Date.IntervalFormatStyle(&v829);
        outlined destroy of Date.IntervalFormatStyle(v796);
        goto LABEL_94;
      }

      outlined destroy of Date.IntervalFormatStyle(&v829);
      outlined destroy of Date.IntervalFormatStyle(v796);
      goto LABEL_244;
    case 0xDu:
      v255 = v759;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v759, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v256 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd) + 48);
      v257 = v785;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v255 + v256, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        goto LABEL_113;
      }

      v258 = v112;
      v259 = *v255;
      v260 = *v257;
      v261 = v255 + v256;
      v262 = v748;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v261, v748, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      v263 = v257 + v256;
      v264 = v747;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, v747, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      if (v259 != v260)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        goto LABEL_265;
      }

      v265 = *(v738 + 48);
      v144 = v741;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v262, v741, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v264, v144 + v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v112 = v258;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v267 = v731;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v731, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v268 = v724;
            outlined init with take of IntegerFormatStyle<Int>.Percent(v144 + v265, v724, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
            v796[0] = *v267;
            v785 = *v268;
            v829 = v785;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v269 = specialized static Locale.== infix(_:_:)(v796, &v829);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v269 & 1) != 0 && (*(v267 + 16) == *(v268 + 16) && *(v267 + 24) == *(v268 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              v270 = static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(v267 + *(v714 + 40), v268 + *(v714 + 40));
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
              if (v270)
              {
                outlined destroy of TermOfAddress?(v268, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
                v271 = v267;
                v272 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
                goto LABEL_210;
              }
            }

            else
            {
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            }

            outlined destroy of TermOfAddress?(v268, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
            v569 = v267;
            v570 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
            goto LABEL_241;
          }

          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
          v434 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
          v556 = v267;
LABEL_197:
          outlined destroy of TermOfAddress?(v556, v434);
          v555 = &_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd;
          goto LABEL_198;
        }

        v433 = v730;
        outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v730, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v435 = v144 + v265;
          v436 = v723;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v435, v723, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
          v796[0] = *v433;
          v785 = *v436;
          v829 = v785;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v437 = specialized static Locale.== infix(_:_:)(v796, &v829);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v437)
          {
            v438 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v433 + *(v717 + 36), v436 + *(v717 + 36));
            outlined destroy of TermOfAddress?(v436, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            if (v438)
            {
              v272 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
LABEL_209:
              v271 = v433;
LABEL_210:
              outlined destroy of TermOfAddress?(v271, v272);
              v561 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format;
LABEL_211:
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v144, v561);
              v378 = v112;
LABEL_121:
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v378, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
              v134 = 1;
              return v134 & 1;
            }
          }

          else
          {
            outlined destroy of TermOfAddress?(v436, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
          }

          v570 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
          goto LABEL_240;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        v434 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
      }

      else
      {
        v433 = v729;
        outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v729, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
        if (!swift_getEnumCaseMultiPayload())
        {
          v564 = v144 + v265;
          v565 = v721;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v564, v721, &_s10Foundation18IntegerFormatStyleVySiGMd);
          v796[0] = *v433;
          v785 = *v565;
          v829 = v785;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v566 = specialized static Locale.== infix(_:_:)(v796, &v829);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v566)
          {
            v567 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v433 + *(v713 + 36), v565 + *(v713 + 36));
            outlined destroy of TermOfAddress?(v565, &_s10Foundation18IntegerFormatStyleVySiGMd);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            if (v567)
            {
              v272 = &_s10Foundation18IntegerFormatStyleVySiGMd;
              goto LABEL_209;
            }
          }

          else
          {
            outlined destroy of TermOfAddress?(v565, &_s10Foundation18IntegerFormatStyleVySiGMd);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
          }

          v570 = &_s10Foundation18IntegerFormatStyleVySiGMd;
LABEL_240:
          v569 = v433;
LABEL_241:
          outlined destroy of TermOfAddress?(v569, v570);
          v624 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format;
LABEL_242:
          v401 = v624;
          v400 = v144;
LABEL_243:
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v400, v401);
          goto LABEL_244;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        v434 = &_s10Foundation18IntegerFormatStyleVySiGMd;
      }

      v556 = v433;
      goto LABEL_197;
    case 0xEu:
      v135 = v760.i64[0];
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v760.i64[0], type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v136 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd) + 48);
      v137 = v785;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v135 + v136, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        goto LABEL_113;
      }

      v138 = *v135;
      v139 = *v137;
      v140 = v135 + v136;
      v141 = v750;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v140, v750, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
      v142 = v749;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v137 + v136, v749, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
      if (v138 != v139)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        v400 = v141;
        v401 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle;
        goto LABEL_243;
      }

      v143 = *(v743 + 48);
      v144 = v745;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v141, v745, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v142, v144 + v143, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
      v145 = swift_getEnumCaseMultiPayload();
      if (v145)
      {
        if (v145 == 1)
        {
          v146 = v735;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v735, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v147 = v727;
            outlined init with take of IntegerFormatStyle<Int>.Percent(v144 + v143, v727, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
            v796[0] = *v146;
            v785 = *v147;
            v829 = v785;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v148 = specialized static Locale.== infix(_:_:)(v796, &v829);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v148 & 1) != 0 && (*(v146 + 16) == *(v147 + 16) && *(v146 + 24) == *(v147 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              v149 = static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(v146 + *(v716 + 40), v147 + *(v716 + 40));
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
              if (v149)
              {
                outlined destroy of TermOfAddress?(v147, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
                v150 = v146;
                v151 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
LABEL_203:
                outlined destroy of TermOfAddress?(v150, v151);
                v561 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format;
                goto LABEL_211;
              }
            }

            else
            {
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            }

            outlined destroy of TermOfAddress?(v147, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
            v562 = v146;
            v563 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
LABEL_235:
            outlined destroy of TermOfAddress?(v562, v563);
            v624 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format;
            goto LABEL_242;
          }

          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          v428 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
          v554 = v146;
LABEL_193:
          outlined destroy of TermOfAddress?(v554, v428);
          v555 = &_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd;
LABEL_198:
          outlined destroy of TermOfAddress?(v144, v555);
LABEL_244:
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v112, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
          goto LABEL_114;
        }

        v427 = v734;
        outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v734, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v429 = v144 + v143;
          v430 = v726;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v429, v726, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
          v796[0] = *v427;
          v785 = *v430;
          v829 = v785;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v431 = specialized static Locale.== infix(_:_:)(v796, &v829);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v431)
          {
            v432 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v427 + *(v720 + 36), v430 + *(v720 + 36));
            outlined destroy of TermOfAddress?(v430, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            if (v432)
            {
              v151 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
LABEL_202:
              v150 = v427;
              goto LABEL_203;
            }
          }

          else
          {
            outlined destroy of TermOfAddress?(v430, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          }

          v563 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
          goto LABEL_234;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        v428 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
      }

      else
      {
        v427 = v733;
        outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v733, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
        if (!swift_getEnumCaseMultiPayload())
        {
          v557 = v144 + v143;
          v558 = v722;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v557, v722, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
          v796[0] = *v427;
          v785 = *v558;
          v829 = v785;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v559 = specialized static Locale.== infix(_:_:)(v796, &v829);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v559)
          {
            v560 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v427 + *(v715 + 36), v558 + *(v715 + 36));
            outlined destroy of TermOfAddress?(v558, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            if (v560)
            {
              v151 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
              goto LABEL_202;
            }
          }

          else
          {
            outlined destroy of TermOfAddress?(v558, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          }

          v563 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
LABEL_234:
          v562 = v427;
          goto LABEL_235;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        v428 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
      }

      v554 = v427;
      goto LABEL_193;
    case 0xFu:
      v712 = v112;
      v191 = v764;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v764, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v192 = *v191;
      v193 = *(v191 + 4);
      v194 = *(v191 + 6);
      v195 = *(v191 + 8);
      v196 = *(v191 + 10);
      LODWORD(v779) = *(v191 + 12);
      LODWORD(v780) = *(v191 + 14);
      LODWORD(v781) = *(v191 + 16);
      LODWORD(v782) = *(v191 + 18);
      v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd) + 48);
      v198 = v785;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v191 + v197, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
        v112 = v712;
        goto LABEL_113;
      }

      LODWORD(v784) = *v198;
      LODWORD(v783) = *(v198 + 4);
      LODWORD(v778) = *(v198 + 6);
      LODWORD(v777) = *(v198 + 8);
      LODWORD(v770) = v193;
      LODWORD(v776) = *(v198 + 10);
      LODWORD(v775) = *(v198 + 12);
      LODWORD(v772) = v192;
      LODWORD(v774) = *(v198 + 14);
      LODWORD(v771) = v195;
      LODWORD(v773) = *(v198 + 16);
      v199 = *(v198 + 18);
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v191 + v197, v769, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v198 + v197, v767, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      LODWORD(v796[0]) = v192;
      WORD2(v796[0]) = v193;
      WORD3(v796[0]) = v194;
      v200 = v771;
      WORD4(v796[0]) = v771;
      WORD5(v796[0]) = v196;
      v201 = v779;
      WORD6(v796[0]) = v779;
      v202 = v780;
      HIWORD(v796[0]) = v780;
      v203 = v781;
      LOWORD(v796[1]) = v781;
      v204 = v782;
      WORD1(v796[1]) = v782;
      v205 = _So9NSDecimala__exponent_getter(v796);
      LODWORD(v796[0]) = v784;
      WORD2(v796[0]) = v783;
      WORD3(v796[0]) = v778;
      WORD4(v796[0]) = v777;
      WORD5(v796[0]) = v776;
      WORD6(v796[0]) = v775;
      HIWORD(v796[0]) = v774;
      LOWORD(v796[1]) = v773;
      LODWORD(v785) = v199;
      WORD1(v796[1]) = v199;
      v169 = v205 == _So9NSDecimala__exponent_getter(v796);
      v206 = v203;
      v207 = v202;
      v208 = v201;
      v209 = v196;
      v210 = v200;
      v211 = v194;
      v212 = v206;
      v213 = v770;
      v214 = v772;
      v215 = v208;
      if (v169)
      {
        LODWORD(v796[0]) = v772;
        WORD2(v796[0]) = v770;
        WORD3(v796[0]) = v211;
        WORD4(v796[0]) = v210;
        WORD5(v796[0]) = v209;
        WORD6(v796[0]) = v208;
        HIWORD(v796[0]) = v207;
        LOWORD(v796[1]) = v206;
        WORD1(v796[1]) = v204;
        v216 = _So9NSDecimala__length_getter(v796);
        LODWORD(v796[0]) = v784;
        WORD2(v796[0]) = v783;
        WORD3(v796[0]) = v778;
        WORD4(v796[0]) = v777;
        WORD5(v796[0]) = v776;
        WORD6(v796[0]) = v775;
        HIWORD(v796[0]) = v774;
        LOWORD(v796[1]) = v773;
        WORD1(v796[1]) = v785;
        v169 = v216 == _So9NSDecimala__length_getter(v796);
        v214 = v772;
        if (v169)
        {
          LODWORD(v796[0]) = v772;
          WORD2(v796[0]) = v213;
          WORD3(v796[0]) = v211;
          WORD4(v796[0]) = v210;
          WORD5(v796[0]) = v209;
          WORD6(v796[0]) = v215;
          HIWORD(v796[0]) = v207;
          LOWORD(v796[1]) = v212;
          WORD1(v796[1]) = v204;
          isNegative_getter = _So9NSDecimala__isNegative_getter(v796);
          LODWORD(v796[0]) = v784;
          WORD2(v796[0]) = v783;
          WORD3(v796[0]) = v778;
          WORD4(v796[0]) = v777;
          WORD5(v796[0]) = v776;
          WORD6(v796[0]) = v775;
          HIWORD(v796[0]) = v774;
          LOWORD(v796[1]) = v773;
          WORD1(v796[1]) = v785;
          v169 = isNegative_getter == _So9NSDecimala__isNegative_getter(v796);
          v214 = v772;
          if (v169)
          {
            LODWORD(v796[0]) = v772;
            WORD2(v796[0]) = v213;
            WORD3(v796[0]) = v211;
            WORD4(v796[0]) = v210;
            WORD5(v796[0]) = v209;
            WORD6(v796[0]) = v215;
            HIWORD(v796[0]) = v207;
            LOWORD(v796[1]) = v212;
            WORD1(v796[1]) = v204;
            isCompact_getter = _So9NSDecimala__isCompact_getter(v796);
            LODWORD(v796[0]) = v784;
            WORD2(v796[0]) = v783;
            WORD3(v796[0]) = v778;
            WORD4(v796[0]) = v777;
            WORD5(v796[0]) = v776;
            WORD6(v796[0]) = v775;
            HIWORD(v796[0]) = v774;
            LOWORD(v796[1]) = v773;
            WORD1(v796[1]) = v785;
            v169 = isCompact_getter == _So9NSDecimala__isCompact_getter(v796);
            v214 = v772;
            if (v169)
            {
              LODWORD(v796[0]) = v772;
              WORD2(v796[0]) = v213;
              WORD3(v796[0]) = v211;
              WORD4(v796[0]) = v210;
              WORD5(v796[0]) = v209;
              WORD6(v796[0]) = v215;
              HIWORD(v796[0]) = v207;
              LOWORD(v796[1]) = v212;
              WORD1(v796[1]) = v204;
              v219 = _So9NSDecimala__reserved_getter(v796);
              LODWORD(v796[0]) = v784;
              WORD2(v796[0]) = v783;
              WORD3(v796[0]) = v778;
              WORD4(v796[0]) = v777;
              WORD5(v796[0]) = v776;
              WORD6(v796[0]) = v775;
              HIWORD(v796[0]) = v774;
              LOWORD(v796[1]) = v773;
              WORD1(v796[1]) = v785;
              v169 = v219 == _So9NSDecimala__reserved_getter(v796);
              v214 = v772;
              if (v169 && v213 == v783 && v211 == v778 && v210 == v777 && v209 == v776 && v215 == v775 && v207 == v774 && v212 == v773 && v204 == v785)
              {
                goto LABEL_256;
              }
            }
          }
        }
      }

      LODWORD(v796[0]) = v214;
      WORD2(v796[0]) = v213;
      WORD3(v796[0]) = v211;
      WORD4(v796[0]) = v210;
      WORD5(v796[0]) = v209;
      WORD6(v796[0]) = v215;
      HIWORD(v796[0]) = v207;
      LOWORD(v796[1]) = v212;
      WORD1(v796[1]) = v204;
      if (!_So9NSDecimala__length_getter(v796))
      {
        LODWORD(v796[0]) = v214;
        WORD2(v796[0]) = v213;
        WORD3(v796[0]) = v211;
        WORD4(v796[0]) = v210;
        WORD5(v796[0]) = v209;
        WORD6(v796[0]) = v215;
        HIWORD(v796[0]) = v207;
        LOWORD(v796[1]) = v212;
        WORD1(v796[1]) = v204;
        if (_So9NSDecimala__isNegative_getter(v796))
        {
          v402 = v784;
          LODWORD(v796[0]) = v784;
          v403 = v783;
          WORD2(v796[0]) = v783;
          v404 = v778;
          WORD3(v796[0]) = v778;
          v405 = v777;
          WORD4(v796[0]) = v777;
          v406 = v776;
          WORD5(v796[0]) = v776;
          v407 = v775;
          WORD6(v796[0]) = v775;
          v408 = v774;
          HIWORD(v796[0]) = v774;
          v409 = v773;
          LOWORD(v796[1]) = v773;
          v410 = v785;
          WORD1(v796[1]) = v785;
          if (!_So9NSDecimala__length_getter(v796))
          {
            LODWORD(v796[0]) = v402;
            WORD2(v796[0]) = v403;
            WORD3(v796[0]) = v404;
            WORD4(v796[0]) = v405;
            WORD5(v796[0]) = v406;
            WORD6(v796[0]) = v407;
            HIWORD(v796[0]) = v408;
            LOWORD(v796[1]) = v409;
            WORD1(v796[1]) = v410;
            if (_So9NSDecimala__isNegative_getter(v796))
            {
              goto LABEL_256;
            }
          }

          goto LABEL_133;
        }
      }

      LODWORD(v796[0]) = v784;
      v220 = v783;
      WORD2(v796[0]) = v783;
      LODWORD(v768) = v209;
      v221 = v778;
      WORD3(v796[0]) = v778;
      v222 = v777;
      WORD4(v796[0]) = v777;
      v223 = v776;
      WORD5(v796[0]) = v776;
      v224 = v775;
      WORD6(v796[0]) = v775;
      v225 = v774;
      HIWORD(v796[0]) = v774;
      v226 = v773;
      LOWORD(v796[1]) = v773;
      v766.i32[0] = v211;
      v227 = v785;
      WORD1(v796[1]) = v785;
      if (!_So9NSDecimala__length_getter(v796))
      {
        LODWORD(v796[0]) = v784;
        WORD2(v796[0]) = v220;
        WORD3(v796[0]) = v221;
        WORD4(v796[0]) = v222;
        WORD5(v796[0]) = v223;
        WORD6(v796[0]) = v224;
        HIWORD(v796[0]) = v225;
        LOWORD(v796[1]) = v226;
        WORD1(v796[1]) = v227;
        if (_So9NSDecimala__isNegative_getter(v796))
        {
          goto LABEL_133;
        }
      }

      LODWORD(v796[0]) = v214;
      WORD2(v796[0]) = v770;
      WORD3(v796[0]) = v766.i16[0];
      WORD4(v796[0]) = v771;
      WORD5(v796[0]) = v768;
      WORD6(v796[0]) = v779;
      HIWORD(v796[0]) = v780;
      LOWORD(v796[1]) = v781;
      WORD1(v796[1]) = v782;
      v228 = _So9NSDecimala__isNegative_getter(v796);
      LODWORD(v796[0]) = v784;
      WORD2(v796[0]) = v220;
      WORD3(v796[0]) = v221;
      WORD4(v796[0]) = v222;
      WORD5(v796[0]) = v223;
      WORD6(v796[0]) = v224;
      HIWORD(v796[0]) = v225;
      LOWORD(v796[1]) = v226;
      WORD1(v796[1]) = v227;
      if (_So9NSDecimala__isNegative_getter(v796) < v228)
      {
        goto LABEL_133;
      }

      LODWORD(v796[0]) = v772;
      WORD2(v796[0]) = v770;
      WORD3(v796[0]) = v766.i16[0];
      WORD4(v796[0]) = v771;
      WORD5(v796[0]) = v768;
      WORD6(v796[0]) = v779;
      HIWORD(v796[0]) = v780;
      LOWORD(v796[1]) = v781;
      WORD1(v796[1]) = v782;
      v229 = _So9NSDecimala__isNegative_getter(v796);
      LODWORD(v796[0]) = v784;
      WORD2(v796[0]) = v220;
      WORD3(v796[0]) = v221;
      WORD4(v796[0]) = v222;
      WORD5(v796[0]) = v223;
      WORD6(v796[0]) = v224;
      HIWORD(v796[0]) = v225;
      LOWORD(v796[1]) = v226;
      WORD1(v796[1]) = v227;
      if (v229 < _So9NSDecimala__isNegative_getter(v796))
      {
        goto LABEL_133;
      }

      LODWORD(v796[0]) = v772;
      WORD2(v796[0]) = v770;
      WORD3(v796[0]) = v766.i16[0];
      WORD4(v796[0]) = v771;
      WORD5(v796[0]) = v768;
      WORD6(v796[0]) = v779;
      HIWORD(v796[0]) = v780;
      LOWORD(v796[1]) = v781;
      WORD1(v796[1]) = v782;
      if (_So9NSDecimala__length_getter(v796))
      {
        v230 = v784;
        LODWORD(v796[0]) = v784;
        v231 = v783;
        WORD2(v796[0]) = v783;
        v232 = v778;
        WORD3(v796[0]) = v778;
        v233 = v777;
        WORD4(v796[0]) = v777;
        v234 = v776;
        WORD5(v796[0]) = v776;
        v235 = v775;
        WORD6(v796[0]) = v775;
        v236 = v774;
        HIWORD(v796[0]) = v774;
        v237 = v773;
        LOWORD(v796[1]) = v773;
        v238 = v785;
        WORD1(v796[1]) = v785;
        if (_So9NSDecimala__length_getter(v796))
        {
          LODWORD(v786) = v772;
          WORD2(v786) = v770;
          WORD3(v786) = v766.i16[0];
          WORD4(v786) = v771;
          WORD5(v786) = v768;
          WORD6(v786) = v779;
          HIWORD(v786) = v780;
          LOWORD(v787) = v781;
          HIWORD(v787) = v782;
          LODWORD(v796[0]) = v230;
          WORD2(v796[0]) = v231;
          WORD3(v796[0]) = v232;
          WORD4(v796[0]) = v233;
          WORD5(v796[0]) = v234;
          WORD6(v796[0]) = v235;
          HIWORD(v796[0]) = v236;
          LOWORD(v796[1]) = v237;
          WORD1(v796[1]) = v238;
          specialized static NSDecimal._normalize(a:b:roundingMode:)(&v786, v796);
          NSDecimal.asVariableLengthInteger()(v786, *(&v786 + 1), v787);
          v240 = v239;
          NSDecimal.asVariableLengthInteger()(*&v796[0], *(&v796[0] + 1), v796[1]);
          v242 = v241;
          v243 = v240;
          v244 = *(v240 + 16);
          v245 = *(v242 + 16);
          if (v245 < v244)
          {
            LODWORD(v246) = 0;
            v247 = 1;
            goto LABEL_252;
          }

          if (v244 >= v245)
          {
            v247 = 1;
            do
            {
              LODWORD(v246) = v244 == 0;
              if (!v244)
              {
                goto LABEL_360;
              }

              v625 = *(v243 + 30 + 2 * v244);
              v626 = *(v242 + 30 + 2 * v244);
              if (v626 < v625)
              {
                goto LABEL_252;
              }

              --v244;
            }

            while (v625 >= v626);
          }

          else
          {
            LODWORD(v246) = 0;
          }

          v247 = -1;
          goto LABEL_252;
        }

        LODWORD(v796[0]) = v772;
        WORD2(v796[0]) = v770;
        WORD3(v796[0]) = v766.i16[0];
        WORD4(v796[0]) = v771;
        WORD5(v796[0]) = v768;
        WORD6(v796[0]) = v779;
        HIWORD(v796[0]) = v780;
        LOWORD(v796[1]) = v781;
        WORD1(v796[1]) = v782;
        if (_So9NSDecimala__length_getter(v796))
        {
          goto LABEL_133;
        }
      }

      else
      {
        LODWORD(v796[0]) = v784;
        WORD2(v796[0]) = v783;
        WORD3(v796[0]) = v778;
        WORD4(v796[0]) = v777;
        WORD5(v796[0]) = v776;
        WORD6(v796[0]) = v775;
        HIWORD(v796[0]) = v774;
        LOWORD(v796[1]) = v773;
        WORD1(v796[1]) = v785;
        if (_So9NSDecimala__length_getter(v796))
        {
          v568 = -1;
        }

        else
        {
          v568 = 0;
        }

        if (v568)
        {
          goto LABEL_133;
        }
      }

      goto LABEL_256;
    case 0x10u:
      v121 = v758;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v758, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v122 = *v121;
      v123 = *(v121 + 8);
      v124 = *(v121 + 9);
      v126 = *(v121 + 16);
      v125 = *(v121 + 24);
      v127 = v785;
      if (swift_getEnumCaseMultiPayload() != 16)
      {

        swift_unknownObjectRelease();
        goto LABEL_113;
      }

      v712 = v112;
      v128 = *v127;
      LODWORD(v784) = *(v127 + 8);
      v129 = *(v127 + 9);
      v130 = *(v127 + 16);
      *&v785 = *(v127 + 24);
      v131 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation23LocalizedStringResourceV_Tt1g5(v122, v128);

      if ((v131 & 1) == 0)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_134;
      }

      if (v124)
      {
        v132 = 256;
      }

      else
      {
        v132 = 0;
      }

      if (v129)
      {
        v133 = 256;
      }

      else
      {
        v133 = 0;
      }

      v134 = _s10Foundation15ListFormatStyleV2eeoiySbACyxq_G_AEtFZAA06StringD0V_SaySSGTt1B5(v132 | v123, v126, v125, v133 | v784, v130, v785);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_257;
    case 0x11u:
      v252 = v761;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v761, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v253 = v785;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_113;
      }

      v249 = *v252;
      v251 = *v253;
LABEL_74:
      v169 = v249 == v251;
LABEL_91:
      v134 = v169;
      goto LABEL_94;
    default:
      v116 = v757;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v757, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v117 = *(v116 + 64);
      v796[5] = *(v116 + 80);
      *&v797[0] = *(v116 + 96);
      v118 = *(v116 + 16);
      v796[0] = *v116;
      v796[1] = v118;
      v119 = *(v116 + 32);
      v796[3] = *(v116 + 48);
      v796[4] = v117;
      v796[2] = v119;
      v120 = v785;
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of LocalizedStringResource(v796);
        goto LABEL_113;
      }

      v366 = *(v120 + 48);
      v367 = *(v120 + 80);
      v833 = *(v120 + 64);
      v834 = v367;
      v368 = *(v120 + 16);
      v829 = *v120;
      v830 = v368;
      v369 = *(v120 + 32);
      v371 = *v120;
      v370 = *(v120 + 16);
      v372 = v369;
      v832 = *(v120 + 48);
      v831 = v369;
      v373 = *(v116 + 80);
      v826 = *(v116 + 64);
      v827 = v373;
      v374 = *(v116 + 16);
      v822 = *v116;
      v823 = v374;
      v375 = *(v116 + 32);
      v825 = *(v116 + 48);
      v824 = v375;
      v376 = *(v120 + 80);
      v820 = v833;
      v821[0] = v376;
      v816 = v371;
      v817 = v370;
      *&v835[0] = *(v120 + 96);
      *&v828[0] = *(v116 + 96);
      *&v821[1] = *(v120 + 96);
      v819 = v366;
      v818 = v372;
      v134 = static LocalizedStringResource.== infix(_:_:)(&v822, &v816);
      outlined destroy of LocalizedStringResource(&v829);
      outlined destroy of LocalizedStringResource(v796);
LABEL_94:
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v112, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      return v134 & 1;
  }
}

uint64_t specialized static String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *&v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
  MEMORY[0x1EEE9AC00](v41);
  v42 = (&v40 - v3);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v40 - v6);
  v8 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v40 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v40 - v18;
  v21 = *(v20 + 56);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(a1, &v40 - v18, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v44, &v19[v21], type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v13, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v43;
        outlined init with take of IntegerFormatStyle<Int>.Percent(&v19[v21], v43, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
        v24 = *v13;
        v44 = *v23;
        v45 = v44;
        v46 = v24;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v25 = specialized static Locale.== infix(_:_:)(&v46, &v45);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v25 & 1) != 0 && (*(v13 + 2) == *(v23 + 16) && *(v13 + 3) == *(v23 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(&v13[*(v40 + 40)], v23 + *(v40 + 40)))
        {
          outlined destroy of TermOfAddress?(v23, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
          v26 = v13;
          v27 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
LABEL_23:
          outlined destroy of TermOfAddress?(v26, v27);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v19, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
          return 1;
        }

        outlined destroy of TermOfAddress?(v23, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
        v34 = v13;
        v35 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
        goto LABEL_28;
      }

      v28 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
      v29 = v13;
    }

    else
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v10, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v30 = v42;
        outlined init with take of IntegerFormatStyle<Int>.Percent(&v19[v21], v42, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
        v31 = *v10;
        v44 = *v30;
        v45 = v44;
        v46 = v31;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v32 = specialized static Locale.== infix(_:_:)(&v46, &v45);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v32)
        {
          v33 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v10 + *(v41 + 36), v30 + *(v41 + 36));
          outlined destroy of TermOfAddress?(v30, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
          if (v33)
          {
            v27 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
            v26 = v10;
            goto LABEL_23;
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(v30, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
        }

        v35 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
        v34 = v10;
        goto LABEL_28;
      }

      v28 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
      v29 = v10;
    }
  }

  else
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v16, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of IntegerFormatStyle<Int>.Percent(&v19[v21], v7, &_s10Foundation18IntegerFormatStyleVySiGMd);
      v36 = *v16;
      v44 = *v7;
      v45 = v44;
      v46 = v36;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v37 = specialized static Locale.== infix(_:_:)(&v46, &v45);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v37)
      {
        v38 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v16 + *(v5 + 36), v7 + *(v5 + 36));
        outlined destroy of TermOfAddress?(v7, &_s10Foundation18IntegerFormatStyleVySiGMd);
        if (v38)
        {
          v27 = &_s10Foundation18IntegerFormatStyleVySiGMd;
          v26 = v16;
          goto LABEL_23;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v7, &_s10Foundation18IntegerFormatStyleVySiGMd);
      }

      v35 = &_s10Foundation18IntegerFormatStyleVySiGMd;
      v34 = v16;
LABEL_28:
      outlined destroy of TermOfAddress?(v34, v35);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v19, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
      return 0;
    }

    v28 = &_s10Foundation18IntegerFormatStyleVySiGMd;
    v29 = v16;
  }

  outlined destroy of TermOfAddress?(v29, v28);
  outlined destroy of TermOfAddress?(v19, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  return 0;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *&v45 = a2;
  v42 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v41 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV07DecimaleD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v41 - v18;
  v21 = *(v20 + 56);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(a1, &v41 - v18, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v45, &v19[v21], type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v13, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = &v19[v21];
        v24 = v44;
        outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v23, v44, type metadata accessor for NSDecimal.FormatStyle.Currency);
        v25 = *v13;
        v45 = *v24;
        v46 = v45;
        v47 = v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v26 = specialized static Locale.== infix(_:_:)(&v47, &v46);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v26 & 1) != 0 && (*(v13 + 2) == *(v24 + 16) && *(v13 + 3) == *(v24 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(&v13[*(v41 + 24)], v24 + *(v41 + 24)))
        {
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v24, type metadata accessor for NSDecimal.FormatStyle.Currency);
          v27 = v13;
          v28 = type metadata accessor for NSDecimal.FormatStyle.Currency;
LABEL_23:
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v27, v28);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v19, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
          return 1;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v24, type metadata accessor for NSDecimal.FormatStyle.Currency);
        v35 = v13;
        v36 = type metadata accessor for NSDecimal.FormatStyle.Currency;
        goto LABEL_28;
      }

      v29 = type metadata accessor for NSDecimal.FormatStyle.Currency;
      v30 = v13;
    }

    else
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v10, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v43;
        outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(&v19[v21], v43, type metadata accessor for NSDecimal.FormatStyle.Percent);
        v32 = *v10;
        v45 = *v31;
        v46 = v45;
        v47 = v32;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v33 = specialized static Locale.== infix(_:_:)(&v47, &v46);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v33)
        {
          v34 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v10 + *(v42 + 20), v31 + *(v42 + 20));
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v31, type metadata accessor for NSDecimal.FormatStyle.Percent);
          if (v34)
          {
            v28 = type metadata accessor for NSDecimal.FormatStyle.Percent;
            v27 = v10;
            goto LABEL_23;
          }
        }

        else
        {
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v31, type metadata accessor for NSDecimal.FormatStyle.Percent);
        }

        v36 = type metadata accessor for NSDecimal.FormatStyle.Percent;
        v35 = v10;
        goto LABEL_28;
      }

      v29 = type metadata accessor for NSDecimal.FormatStyle.Percent;
      v30 = v10;
    }
  }

  else
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v16, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(&v19[v21], v7, type metadata accessor for NSDecimal.FormatStyle);
      v37 = *v16;
      v45 = *v7;
      v46 = v45;
      v47 = v37;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v38 = specialized static Locale.== infix(_:_:)(&v47, &v46);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v38)
      {
        v39 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v16 + *(v5 + 20), v7 + *(v5 + 20));
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v7, type metadata accessor for NSDecimal.FormatStyle);
        if (v39)
        {
          v28 = type metadata accessor for NSDecimal.FormatStyle;
          v27 = v16;
          goto LABEL_23;
        }
      }

      else
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v7, type metadata accessor for NSDecimal.FormatStyle);
      }

      v36 = type metadata accessor for NSDecimal.FormatStyle;
      v35 = v16;
LABEL_28:
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v35, v36);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v19, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
      return 0;
    }

    v29 = type metadata accessor for NSDecimal.FormatStyle;
    v30 = v16;
  }

  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v30, v29);
  outlined destroy of TermOfAddress?(v19, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV07DecimaleD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  return 0;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *&v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  MEMORY[0x1EEE9AC00](v41);
  v42 = (&v40 - v3);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v40 - v6);
  v8 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v40 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v40 - v18;
  v21 = *(v20 + 56);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(a1, &v40 - v18, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v44, &v19[v21], type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v13, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v43;
        outlined init with take of IntegerFormatStyle<Int>.Percent(&v19[v21], v43, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
        v24 = *v13;
        v44 = *v23;
        v45 = v44;
        v46 = v24;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v25 = specialized static Locale.== infix(_:_:)(&v46, &v45);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v25 & 1) != 0 && (*(v13 + 2) == *(v23 + 16) && *(v13 + 3) == *(v23 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(&v13[*(v40 + 40)], v23 + *(v40 + 40)))
        {
          outlined destroy of TermOfAddress?(v23, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
          v26 = v13;
          v27 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
LABEL_23:
          outlined destroy of TermOfAddress?(v26, v27);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v19, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
          return 1;
        }

        outlined destroy of TermOfAddress?(v23, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
        v34 = v13;
        v35 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
        goto LABEL_28;
      }

      v28 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
      v29 = v13;
    }

    else
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v10, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v30 = v42;
        outlined init with take of IntegerFormatStyle<Int>.Percent(&v19[v21], v42, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
        v31 = *v10;
        v44 = *v30;
        v45 = v44;
        v46 = v31;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v32 = specialized static Locale.== infix(_:_:)(&v46, &v45);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v32)
        {
          v33 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v10 + *(v41 + 36), v30 + *(v41 + 36));
          outlined destroy of TermOfAddress?(v30, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
          if (v33)
          {
            v27 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
            v26 = v10;
            goto LABEL_23;
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(v30, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
        }

        v35 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
        v34 = v10;
        goto LABEL_28;
      }

      v28 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
      v29 = v10;
    }
  }

  else
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v19, v16, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of IntegerFormatStyle<Int>.Percent(&v19[v21], v7, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
      v36 = *v16;
      v44 = *v7;
      v45 = v44;
      v46 = v36;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v37 = specialized static Locale.== infix(_:_:)(&v46, &v45);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v37)
      {
        v38 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v16 + *(v5 + 36), v7 + *(v5 + 36));
        outlined destroy of TermOfAddress?(v7, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
        if (v38)
        {
          v27 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
          v26 = v16;
          goto LABEL_23;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v7, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
      }

      v35 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
      v34 = v16;
LABEL_28:
      outlined destroy of TermOfAddress?(v34, v35);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v19, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
      return 0;
    }

    v28 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
    v29 = v16;
  }

  outlined destroy of TermOfAddress?(v29, v28);
  outlined destroy of TermOfAddress?(v19, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd);
  return 0;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys);
  }

  return result;
}