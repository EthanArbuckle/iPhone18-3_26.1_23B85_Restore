unint64_t URLComponents._URLComponents.fragment.getter()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 136);
    v3 = v1;
  }

  else
  {
    if (*(v0 + 16) & 1) == 0 || !*v0 || (*(*v0 + 216))
    {
      return 0;
    }

    v9 = *(v0 + 144);
    v10 = String.subscript.getter();
    v2 = MEMORY[0x1865CAE80](v10);
    v3 = v11;

    v1 = v9;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v13[0] = v2;
    v13[1] = v3;
    MEMORY[0x1EEE9AC00](v1);
    v12[2] = v13;
    v12[3] = MEMORY[0x1E69E7CD0];
    v12[4] = 4;

    v5 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v12, v2, v3);
    if (v6 == 1)
    {
      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v7 = v5;
    }

    swift_bridgeObjectRelease_n();

    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t _NSRuntimeIssuesLog()
{
  if (qword_1ED43F980 != -1)
  {
    dispatch_once(&qword_1ED43F980, &__block_literal_global_39);
  }

  return qword_1ED43F978;
}

uint64_t static Int32._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = [a1 *a3];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v7 = [objc_allocWithZone(NSNumber) *a4];
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    *a2 = v6;
    *(a2 + 4) = 0;
  }

  return v8 & 1;
}

void specialized static Int32._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 intValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithInt_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 4) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x3233746E49, 0xE500000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t _SwiftURL.standardized.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  result = _SwiftURL.isDecomposable.getter();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  v43 = a1;
  if (one-time initialization token for compatibility1 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility1 == 1 && ((*(*(v1 + 16) + 168) & 1) == 0 ? (v5 = String.subscript.getter()) : (v5 = MEMORY[0x1865CBC20](0, 0xE000000000000000)), v9 = specialized static StringProtocol.== infix<A>(_:_:)(v5, v6, v7, v8, 791555631, 0xE400000000000000), , (v9 & 1) != 0))
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    if (*(*(v1 + 16) + 168))
    {
      v12 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v12 = String.subscript.getter();
    }

    v13 = MEMORY[0x1865CAE80](v12);
    v15 = v14;

    v10 = String.removingDotSegments.getter(v13, v15);
    v11 = v16;
  }

  specialized URLComponents._URLComponents.init(parseInfo:)(v17, v56);
  v54[0] = v60[0];
  v54[1] = v60[1];
  v55[0] = v61[0];
  *(v55 + 10) = *(v61 + 10);
  v51 = v57;
  v52 = v58;
  v53[0] = v59[0];
  v53[1] = v59[1];
  v49 = v56[0];
  v50 = v56[1];
  v18 = String.removingDotSegments.getter(v10, v11);
  v20 = v18;
  v21 = v19;
  BYTE8(v49) = 0;
  BYTE14(v49) = 0;
  if ((v19 & 0x1000000000000000) != 0)
  {
    *&v64[0] = v18;
    *(&v64[0] + 1) = v19;
    v41 = lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v42 = String._bridgeToObjectiveCImpl()();

    v35 = [v42 _fastCharacterContents];
    v36 = v42;
    v42 = v35;
    if (v35)
    {
      *&v64[0] = v20;
      *(&v64[0] + 1) = v21;
      StringProtocol._ephemeralString.getter();
      v41 = String._bridgeToObjectiveCImpl()();

      v40 = [v41 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v42, v40, 0x10u, 1))
      {
        goto LABEL_51;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v20, v21, 0x10u, 1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if ((v19 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v19) & 0xF;
      *&v64[0] = v18;
      *(&v64[0] + 1) = v21 & 0xFFFFFFFFFFFFFFLL;
      v22 = v64;
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      v22 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = _StringObject.sharedUTF8.getter();
    }

    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v22, v23, 0x10u, 1))
    {
      goto LABEL_51;
    }
  }

  v24 = v57;
  v63 = *(v60 + 8);
  outlined destroy of TermOfAddress?(&v63, &_sSSSgMd);
  *(&v54[0] + 1) = v20;
  *&v54[1] = v21;
  if (v24)
  {

    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (BYTE9(v56[0]) & 1) == 0 || !*&v56[0] || (*(*&v56[0] + 48))
    {
      goto LABEL_37;
    }

    v25 = String.subscript.getter();
    MEMORY[0x1865CAE80](v25);

    if ((v11 & 0x2000000000000000) == 0)
    {
LABEL_23:
      if ((v10 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

  if ((v11 & 0xF00000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  v26 = URLParseInfo.netLocationRange.getter();
  if ((v28 & 1) == 0 && !((v26 ^ v27) >> 14))
  {
    BYTE8(v49) = 0;
    BYTE14(v49) = 0;
    v64[0] = xmmword_1812DB730;
    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v64, 1, 0x10u, 1))
    {

      *(v54 + 8) = xmmword_1812DB740;
      goto LABEL_36;
    }

LABEL_51:
    v39 = 0;
    v38 = 1001;
    goto LABEL_52;
  }

LABEL_36:
  URLComponents.encodedHost.getter();
  if (!v29)
  {
    BYTE8(v49) = 0;
    BYTE12(v49) = 0;
    BYTE9(v55[1]) = 0;
    if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(0, 0xE000000000000000))
    {
      if ((_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(0, 0xE000000000000000) & 1) == 0)
      {
LABEL_40:
        v39 = 0;
        v38 = 980;
LABEL_52:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v64[0] = 0uLL;
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v64, 0, 4u, 1))
      {
        goto LABEL_40;
      }
    }

    v62 = *(v59 + 8);
    v30 = outlined destroy of TermOfAddress?(&v62, &_sSSSgMd);
    *(v53 + 8) = xmmword_1812476D0;
    LOBYTE(v64[0]) = 37;
    MEMORY[0x1EEE9AC00](v30);
    v38 = v64;
    BYTE8(v55[1]) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v37, 0, 0xE000000000000000) & 1;
    goto LABEL_43;
  }

LABEL_37:

LABEL_43:
  v45[6] = v54[0];
  v45[7] = v54[1];
  v46[0] = v55[0];
  *(v46 + 10) = *(v55 + 10);
  v45[2] = v51;
  v45[3] = v52;
  v45[4] = v53[0];
  v45[5] = v53[1];
  v45[0] = v49;
  v45[1] = v50;
  v64[6] = v54[0];
  v64[7] = v54[1];
  v65[0] = v55[0];
  *(v65 + 10) = *(v55 + 10);
  v64[2] = v51;
  v64[3] = v52;
  v64[4] = v53[0];
  v64[5] = v53[1];
  v64[0] = v49;
  v64[1] = v50;
  outlined init with copy of URLComponents(v45, v47);
  v31 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v45);
  v44 = *(v2 + 24);
  swift_unknownObjectRetain();
  v32 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v31._countAndFlagsBits, v31._object, &v44);
  v47[6] = v54[0];
  v47[7] = v54[1];
  v48[0] = v55[0];
  *(v48 + 10) = *(v55 + 10);
  v47[2] = v51;
  v47[3] = v52;
  v47[4] = v53[0];
  v47[5] = v53[1];
  v47[0] = v49;
  v47[1] = v50;
  result = outlined destroy of URLComponents(v47);
  v33 = &protocol witness table for _SwiftURL;
  if (!v32)
  {
    v33 = 0;
  }

  v34 = v43;
  *v43 = v32;
  v34[1] = v33;
  return result;
}

BOOL _SwiftURL.isDecomposable.getter()
{
  v1 = *(v0 + 16);
  if (v1[48])
  {
    return 1;
  }

  String.subscript.getter();

  if (v1[72] != 1 || v1[96] != 1 || v1[120] != 1 || v1[144] != 1)
  {
    return 1;
  }

  if (v1[168])
  {
    v2 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v2 = String.subscript.getter();
  }

  if ((v2 ^ v3) >= 0x4000)
  {
    v5 = Substring.UTF8View.subscript.getter();

    return v5 == 47;
  }

  else
  {

    return 0;
  }
}

uint64_t URLComponents.encodedHost.getter()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    goto LABEL_31;
  }

  v2 = *v0;
  v3 = *(v0 + 10);
  v4 = *(v0 + 11);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  v7 = *(v0 + 12) != 1 || v2 == 0;
  if (!v7 && (v2[120] & 1) == 0)
  {
    v8 = String.subscript.getter();
    v1 = MEMORY[0x1865CAE80](v8);

    goto LABEL_31;
  }

  if (!*(v0 + 96))
  {
LABEL_13:
    v1 = 0;
    goto LABEL_31;
  }

  if (*(v0 + 13) && v2 && (v2[144] & 1) == 0)
  {
    v9 = String.subscript.getter();
    v13 = v12;
    if ((v9 ^ v10) >> 14)
    {
      v14 = v9;
      v15 = v10;
      v21 = v11;
      _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v9, v10, v11, v12, 10);
      if ((v16 & 0x100) != 0)
      {
        specialized _parseInteger<A, B>(ascii:radix:)(v14, v15, v21, v13, 10);
      }

      v17 = v16;

      v1 = 0;
      if ((v17 & 1) == 0 || v5)
      {
        goto LABEL_31;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v5)
  {
    goto LABEL_13;
  }

  if (v3 && v2 && (v2[72] & 1) == 0)
  {
    v18 = String.subscript.getter();
    MEMORY[0x1865CAE80](v18);

    goto LABEL_30;
  }

  v1 = v6;
  if (v6)
  {
LABEL_24:

LABEL_30:

    v1 = 0;
    goto LABEL_31;
  }

  if (v4 && v2)
  {
    if (v2[96])
    {
      v1 = 0;
      goto LABEL_31;
    }

    v20 = String.subscript.getter();
    MEMORY[0x1865CAE80](v20);

    goto LABEL_24;
  }

LABEL_31:

  return v1;
}

void Data.append(_:count:)(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    Data._Representation.append(contentsOf:)(a1, &a1[a2]);
  }
}

char *@objc static NSTimeZone._timeZoneWith(abbreviation:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static TimeZone.identifierForAbbreviation(_:)(v3, v4);
  v6 = v5;

  if (v6)
  {
    if (one-time initialization token for cache != -1)
    {
      v7 = swift_once();
    }

    v8 = static TimeZoneCache.cache;
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock(v8 + 30);
    partial apply for closure #1 in TimeZoneCache.bridgedFixed(_:)(&v11);
    os_unfair_lock_unlock(v8 + 30);
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id StringProtocol.data(using:allowLossyConversion:)(uint64_t *a1, char a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v14 - v6;
  v8 = *a1;
  if (v8 == 4)
  {
    dispatch thunk of StringProtocol.utf8.getter();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = specialized Data.init<A>(_:)(v7, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
    (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  else
  {
    StringProtocol._ephemeralString.getter();
    v11 = String._bridgeToObjectiveCImpl()();

    v10 = [v11 dataUsingEncoding:v8 allowLossyConversion:a2 & 1];
    swift_unknownObjectRelease();
    if (v10)
    {
      v12 = v10;
      v10 = specialized Data.init(referencing:)(v12);
    }
  }

  return v10;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_7;
  }

  if (!a2)
  {
    result = 0;
LABEL_7:
    v7 = 0xC000000000000000;
    goto LABEL_10;
  }

  if (a2 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, (a2 + result));
    v7 = v8 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = result;
    type metadata accessor for __DataStorage();
    v6 = swift_allocObject();
    __DataStorage.init(bytes:length:)(v5, a2);
    if (a2 >= 0x7FFFFFFF)
    {
      type metadata accessor for Data.RangeReference();
      result = swift_allocObject();
      *(result + 16) = 0;
      *(result + 24) = a2;
      v7 = v6 | 0x8000000000000000;
    }

    else
    {
      result = a2 << 32;
      v7 = v6 | 0x4000000000000000;
    }
  }

LABEL_10:
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Data.advanced(by:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v40[5] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    goto LABEL_52;
  }

  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = specialized RandomAccessCollection<>.index(_:offsetBy:)(*(a2 + 16), a1, a2, a3);
      goto LABEL_13;
    }
  }

  else if (v5)
  {
    v6 = specialized RandomAccessCollection<>.index(_:offsetBy:)(a2, a1, a2, a3);
LABEL_10:
    v7 = a2 >> 32;
    goto LABEL_14;
  }

  v6 = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, a1, a2, a3);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v7 = BYTE6(a3);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v5 == 3)
  {
    v7 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v7 = *(a2 + 24);
LABEL_14:
  if (v7 < v6)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v9 = *(a2 + 16);
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v8 = a2 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }

    if (v5)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v8 < v6 || v8 < v9)
  {
    goto LABEL_54;
  }

  v40[3] = &type metadata for Data;
  v40[4] = &protocol witness table for Data;
  v40[0] = Data._Representation.subscript.getter(v6, v8, a2, a3);
  v40[1] = v10;
  v11 = __swift_project_boxed_opaque_existential_1(v40, &type metadata for Data);
  v13 = *v11;
  v12 = v11[1];
  v14 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v14)
    {
      v38[0] = *v11;
      LOWORD(v38[1]) = v12;
      BYTE2(v38[1]) = BYTE2(v12);
      BYTE3(v38[1]) = BYTE3(v12);
      BYTE4(v38[1]) = BYTE4(v12);
      BYTE5(v38[1]) = BYTE5(v12);
      v15 = v38 + BYTE6(v12);
      v16 = v38;
      goto LABEL_48;
    }

    v27 = v13;
    v28 = v13 >> 32;
    v29 = v28 < v27;
    v30 = v28 - v27;
    if (!v29)
    {
      v31 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v32 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v32)
      {
        goto LABEL_47;
      }

      v33 = *(v31 + 40);
      v22 = __OFSUB__(v27, v33);
      v34 = v27 - v33;
      if (!v22)
      {
        v35 = *(v31 + 24);
        if (v35 < v30)
        {
          v30 = v35;
        }

        v16 = (v34 + v32);
        if (v34 + v32)
        {
          v15 = &v16[v30];
          goto LABEL_48;
        }

LABEL_47:
        v16 = 0;
        v15 = 0;
        goto LABEL_48;
      }

LABEL_57:
      __break(1u);
    }

    goto LABEL_55;
  }

  if (v14 != 2)
  {
    memset(v38, 0, 14);
    v16 = v38;
    v15 = v38;
    goto LABEL_48;
  }

  v17 = (v12 & 0x3FFFFFFFFFFFFFFFLL);
  v19 = *(v13 + 16);
  v18 = *(v13 + 24);
  v20 = v17[2];
  if (!v20)
  {
    v16 = 0;
    v22 = __OFSUB__(v18, v19);
    v24 = v18 - v19;
    if (!v22)
    {
      goto LABEL_34;
    }

    goto LABEL_51;
  }

  v21 = v17[5];
  v22 = __OFSUB__(v19, v21);
  v23 = v19 - v21;
  if (v22)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v16 = (v23 + v20);
  v22 = __OFSUB__(v18, v19);
  v24 = v18 - v19;
  if (v22)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_34:
  v25 = v17[3];
  if (v25 >= v24)
  {
    v25 = v24;
  }

  v26 = &v16[v25];
  if (v16)
  {
    v15 = v26;
  }

  else
  {
    v15 = 0;
  }

LABEL_48:
  closure #1 in Data.init<A>(_:)(v16, v15, &v39);
  v36 = v39;
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v36;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

void *_bestReadOnlySandboxExtensionTypeForURL(void *result)
{
  if (result)
  {
    v1 = result;
    getpid();
    [objc_msgSend(v1 "path")];
    if (sandbox_check())
    {
      return 0;
    }

    else
    {
      return *MEMORY[0x1E69E9BA8];
    }
  }

  return result;
}

uint64_t _issueSandboxExtension(void *a1, uint64_t a2, NSError **a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  [objc_msgSend(a1 "path")];
  v6 = sandbox_extension_issue_file();
  if (!v6)
  {
    v11 = *__error();
    v16 = @"NSLocalizedDescription";
    v12 = [_NSFoundationBundle() localizedStringForKey:@"Could not create sandbox extension of type %s for URL %@. Error: %s" value:&stru_1EEEFDF90 table:@"Extension"];
    v13 = [a1 path];
    v14 = __error();
    v17[0] = [NSString stringWithFormat:v12, a2, v13, strerror(*v14), @"NSLocalizedDescription"];
    v15 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSPOSIXErrorDomain", v11, [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1]);
    if (a3 && v15)
    {
      *a3 = v15;
    }

    return 0;
  }

  v7 = v6;
  v8 = strlen(v6) + 1;
  v9 = MEMORY[0x1E695DEF0];

  return [v9 dataWithBytesNoCopy:v7 length:v8 freeWhenDone:1];
}

uint64_t Data.range(of:options:in:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8)
{
  v11 = result;
  v70 = *MEMORY[0x1E69E9840];
  v12 = a8 >> 62;
  if ((a6 & 1) == 0)
  {
    if ((a8 >> 62) > 1)
    {
      v15 = 0;
      if (v12 == 2)
      {
        v15 = *(a7 + 16);
      }
    }

    else
    {
      v15 = a7;
      if (!v12)
      {
        v15 = 0;
      }
    }

    v13 = a4 - v15;
    if (__OFSUB__(a4, v15))
    {
      __break(1u);
    }

    else
    {
      v14 = a5 - a4;
      if (!__OFSUB__(a5, a4))
      {
        if (v12 <= 1)
        {
          if (!v12)
          {
LABEL_18:
            v64 = a7;
            v65 = a8;
            v66 = BYTE2(a8);
            v67 = BYTE3(a8);
            v68 = BYTE4(a8);
            v69 = BYTE5(a8);
            v18 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v64 length:BYTE6(a8) freeWhenDone:0];
            v19 = a2 >> 62;
            if ((a2 >> 62) > 1)
            {
              if (v19 != 2)
              {
                v20 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
                goto LABEL_59;
              }

              v33 = *(v11 + 16);
              v34 = *(v11 + 24);
            }

            else
            {
              if (!v19)
              {
                v58 = v11;
                v59 = a2;
                v60 = BYTE2(a2);
                v61 = BYTE3(a2);
                v62 = BYTE4(a2);
                v63 = BYTE5(a2);
                v20 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v58 length:BYTE6(a2)];
LABEL_59:
                v45 = v20;
                v46 = [v18 rangeOfData:v20 options:a3 range:{v13, v14}];
                v48 = v47;

                v49 = 0;
                goto LABEL_77;
              }

              v33 = v11;
              v34 = v11 >> 32;
              if (v11 >> 32 < v11)
              {
LABEL_103:
                __break(1u);
                goto LABEL_104;
              }
            }

            v20 = __DataStorage.bridgedReference(_:)(v33, v34);
            goto LABEL_59;
          }

          goto LABEL_29;
        }

        if (v12 != 2)
        {
          goto LABEL_36;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_93;
  }

  if ((a8 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = 0;
      v14 = BYTE6(a8);
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (v12 != 2)
  {
LABEL_35:
    v14 = 0;
    v13 = 0;
LABEL_36:
    v30 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
    v31 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v31 != 2)
      {
        v32 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
        goto LABEL_61;
      }

      v35 = *(v11 + 16);
      v36 = *(v11 + 24);
    }

    else
    {
      if (!v31)
      {
        v64 = v11;
        v65 = a2;
        v66 = BYTE2(a2);
        v67 = BYTE3(a2);
        v68 = BYTE4(a2);
        v69 = BYTE5(a2);
        v32 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v64 length:BYTE6(a2)];
LABEL_61:
        v50 = v32;
        v46 = [v30 rangeOfData:v32 options:a3 range:{v13, v14}];
        v48 = v51;

        v49 = 3;
        goto LABEL_77;
      }

      v35 = v11;
      v36 = v11 >> 32;
      if (v11 >> 32 < v11)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    v32 = __DataStorage.bridgedReference(_:)(v35, v36);
    goto LABEL_61;
  }

  v17 = *(a7 + 16);
  v16 = *(a7 + 24);
  v14 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v13 = 0;
LABEL_22:
  v21 = *(a7 + 16);
  v22 = *(a7 + 24);
  if (v21 != v22)
  {
    v37 = *((a8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (!v37)
    {
      __break(1u);
      goto LABEL_108;
    }

    v38 = *((a8 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    if (__OFSUB__(v21, v38))
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if (__OFSUB__(v22, v21))
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v37 + v21 - v38 length:v22 - v21 freeWhenDone:0];
    v39 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v39)
      {
        goto LABEL_48;
      }

      result = v11;
      v25 = v11 >> 32;
      if (v11 >> 32 < v11)
      {
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
      }

LABEL_71:
      v40 = __DataStorage.bridgedReference(_:)(result, v25);
      goto LABEL_76;
    }

    if (v39 != 2)
    {
LABEL_75:
      v40 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
      goto LABEL_76;
    }

LABEL_67:
    result = *(v11 + 16);
    v25 = *(v11 + 24);
    goto LABEL_71;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v24 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

  if (v24)
  {
    result = v11;
    v25 = v11 >> 32;
    if (v11 >> 32 < v11)
    {
      __break(1u);
LABEL_27:
      if (__OFSUB__(HIDWORD(a7), a7))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v13 = 0;
      v14 = HIDWORD(a7) - a7;
LABEL_29:
      if (a7 >> 32 < a7)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (a7 >> 32 == a7)
      {
        v26 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
        v27 = a2 >> 62;
        if ((a2 >> 62) <= 1)
        {
          if (v27)
          {
            v28 = v11;
            v29 = v11 >> 32;
            if (v11 >> 32 < v11)
            {
              __break(1u);
              goto LABEL_35;
            }

            goto LABEL_73;
          }

          goto LABEL_53;
        }

        if (v27 != 2)
        {
LABEL_65:
          v44 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
          goto LABEL_74;
        }

        goto LABEL_69;
      }

      v41 = *((a8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (v41)
      {
        v42 = *((a8 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        if (__OFSUB__(a7, v42))
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v26 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v41 + a7 - v42 length:(a7 >> 32) - a7 freeWhenDone:0];
        v43 = a2 >> 62;
        if ((a2 >> 62) <= 1)
        {
          if (!v43)
          {
LABEL_53:
            v64 = v11;
            v65 = a2;
            v66 = BYTE2(a2);
            v67 = BYTE3(a2);
            v68 = BYTE4(a2);
            v69 = BYTE5(a2);
            v44 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v64 length:BYTE6(a2)];
LABEL_74:
            v52 = v44;
            v46 = [v26 rangeOfData:v44 options:a3 range:{v13, v14}];
            v48 = v53;

            v49 = 1;
            goto LABEL_77;
          }

          v28 = v11;
          v29 = v11 >> 32;
          if (v11 >> 32 < v11)
          {
            goto LABEL_106;
          }

LABEL_73:
          v44 = __DataStorage.bridgedReference(_:)(v28, v29);
          goto LABEL_74;
        }

        if (v43 != 2)
        {
          goto LABEL_65;
        }

LABEL_69:
        v28 = *(v11 + 16);
        v29 = *(v11 + 24);
        goto LABEL_73;
      }

LABEL_108:
      __break(1u);
      return result;
    }

    goto LABEL_71;
  }

LABEL_48:
  v64 = v11;
  v65 = a2;
  v66 = BYTE2(a2);
  v67 = BYTE3(a2);
  v68 = BYTE4(a2);
  v69 = BYTE5(a2);
  v40 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v64 length:BYTE6(a2)];
LABEL_76:
  v54 = v40;
  v46 = [v23 rangeOfData:v40 options:a3 range:{v13, v14}];
  v48 = v55;

  v49 = 2;
LABEL_77:
  if (v46 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v56 = 0;
  result = v46;
  if (v49 <= 1)
  {
    if (!v49)
    {
      goto LABEL_86;
    }

    v56 = a7;
    result = &v46[a7];
    if (!__OFADD__(v46, a7))
    {
      goto LABEL_86;
    }

    __break(1u);
  }

  if (v49 == 2)
  {
    v56 = *(a7 + 16);
    result = &v46[v56];
    if (__OFADD__(v46, v56))
    {
      goto LABEL_100;
    }
  }

LABEL_86:
  v57 = &v46[v56];
  if (__OFADD__(v46, v56))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (__OFADD__(v57, v48))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (&v57[v48] < result)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  return result;
}

void *_bestReadWriteSandboxExtensionTypeForURL(void *result)
{
  if (result)
  {
    v1 = result;
    getpid();
    [objc_msgSend(v1 "path")];
    if (sandbox_check())
    {

      return _bestReadOnlySandboxExtensionTypeForURL(v1);
    }

    else
    {
      return *MEMORY[0x1E69E9BB0];
    }
  }

  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE17LocalizationValueV14FormatArgumentV07CodableC0OGMd);
  v10 = *(type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.CodableStorage.init(_:fallbackLocale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a2;
  v158 = a3;
  v159 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleV7PercentVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v132 = &v122 - v4;
  v5 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  v133 = *(v5 - 8);
  v134 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleV8CurrencyVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v155 = &v122 - v8;
  v135 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  v141 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v130 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v154 = &v122 - v11;
  v12 = type metadata accessor for NSDecimal.FormatStyle(0);
  v147 = *(v12 - 8);
  v148 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v138 = &v122 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  v139 = *(v16 - 8);
  v140 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v122 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v146 = &v122 - v19;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
  v145 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v136 = &v122 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v152 = &v122 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v150 = *(v23 - 8);
  v151 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v142 = &v122 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v144 = &v122 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
  v143 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v122 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v122 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
  v149 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v122 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v122 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v122 - v41;
  v43 = *v156;
  v156 = v156[1];
  v157 = v43;
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v159, &v182);
  if (v189 > 3u)
  {
    switch(v189)
    {
      case 4u:
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        swift_unknownObjectRelease();
        v53 = v187;
        v54 = v158;
        *(v158 + 64) = v186;
        *(v54 + 80) = v53;
        *(v54 + 96) = v188;
        v55 = v183;
        *v54 = v182;
        *(v54 + 16) = v55;
        v56 = v185;
        *(v54 + 32) = v184;
        *(v54 + 48) = v56;
        type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
        return swift_storeEnumTagMultiPayload();
      case 5u:
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        swift_unknownObjectRelease();
        v57 = BYTE8(v182);
        v58 = BYTE9(v182);
        v59 = v158;
        *v158 = v182;
        *(v59 + 8) = v57;
        *(v59 + 9) = v58;
        *(v59 + 16) = v183;
        type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
        return swift_storeEnumTagMultiPayload();
      case 6u:
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        swift_unknownObjectRelease();
        *v158 = v182;
        type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
        return swift_storeEnumTagMultiPayload();
    }

LABEL_15:
    v60 = v159;
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v159, &v167);
    *&v160 = v157;
    *(&v160 + 1) = v156;
    String.LocalizationValue.FormatArgument.CodableStorage.init(coercing:fallbackLocale:)(&v167, &v160, v158);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(v60);
    return outlined destroy of String.LocalizationValue.FormatArgument.Storage(&v182);
  }

  v127 = v40;
  v128 = v38;
  v124 = v35;
  v125 = v42;
  v126 = v32;
  v123 = v29;
  v45 = v152;
  v44 = v153;
  v47 = v154;
  v46 = v155;
  if (v189)
  {
    if (v189 != 2)
    {
      goto LABEL_15;
    }

    v180[0] = v184;
    v180[1] = v185;
    v181[0] = v186;
    v181[1] = v187;
    v179[0] = v182;
    v179[1] = v183;
    outlined init with copy of Any(v180, &v167);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
    if (swift_dynamicCast())
    {
      v48 = v160;
      outlined init with copy of Any(v181, &v174);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        v164 = v171;
        v165 = v172;
        v166[0] = v173[0];
        *(v166 + 10) = *(v173 + 10);
        v160 = v167;
        v161 = v168;
        v162 = v169;
        v163 = v170;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi_(&v160);
        v49 = v158;
        *v158 = v48;
        v50 = v165;
        *(v49 + 72) = v164;
        *(v49 + 88) = v50;
        *(v49 + 104) = v166[0];
        *(v49 + 114) = *(v166 + 10);
        v51 = v161;
        *(v49 + 8) = v160;
        *(v49 + 24) = v51;
        v52 = v163;
        *(v49 + 40) = v162;
        *(v49 + 56) = v52;
        type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
        return swift_storeEnumTagMultiPayload();
      }

      outlined init with copy of Any(v181, &v174);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        v167 = v160;
        v168 = v161;
        v169 = v162;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi0_(&v167);
LABEL_45:
        v88 = v158;
        *v158 = v48;
        v89 = v172;
        *(v88 + 72) = v171;
        *(v88 + 88) = v89;
        *(v88 + 104) = v173[0];
        *(v88 + 114) = *(v173 + 10);
        v90 = v168;
        *(v88 + 8) = v167;
        *(v88 + 24) = v90;
        v91 = v170;
        *(v88 + 40) = v169;
        *(v88 + 56) = v91;
        type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
        return swift_storeEnumTagMultiPayload();
      }

      outlined init with copy of Any(v181, &v174);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        v167 = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi1_(&v167);
        goto LABEL_45;
      }

      outlined init with copy of Any(v181, &v174);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        v167 = v160;
        v168 = v161;
        v169 = v162;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi2_(&v167);
        goto LABEL_45;
      }

      goto LABEL_58;
    }

    outlined init with copy of Any(v180, &v167);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd);
    if (swift_dynamicCast())
    {
      v62 = v160;
      outlined init with copy of Any(v181, &v160);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        v63 = v158;
        *v158 = v62;
        v64 = v172;
        *(v63 + 80) = v171;
        *(v63 + 96) = v64;
        *(v63 + 112) = v173[0];
        v65 = v168;
        *(v63 + 16) = v167;
        *(v63 + 32) = v65;
        v66 = v170;
        *(v63 + 48) = v169;
        *(v63 + 64) = v66;
        type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    outlined init with copy of Any(v180, &v167);
    if (swift_dynamicCast())
    {
      v67 = v160;
      outlined init with copy of Any(v181, &v167);
      v68 = v128;
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        (*(v127 + 56))(v68, 0, 1, v39);
        v69 = v125;
        outlined init with take of IntegerFormatStyle<Int>.Percent(v68, v125, &_s10Foundation18IntegerFormatStyleVySiGMd);
        v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd) + 48);
        v71 = v158;
        *v158 = v67;
        outlined init with take of IntegerFormatStyle<Int>.Percent(v69, v71 + v70, &_s10Foundation18IntegerFormatStyleVySiGMd);
        type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
        goto LABEL_28;
      }

      (*(v127 + 56))(v68, 1, 1, v39);
      outlined destroy of TermOfAddress?(v68, &_s10Foundation18IntegerFormatStyleVySiGSgMd);
      outlined init with copy of Any(v181, &v167);
      v78 = v126;
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        (*(v149 + 56))(v78, 0, 1, v33);
        v79 = v124;
        outlined init with take of IntegerFormatStyle<Int>.Percent(v78, v124, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
        v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd) + 48);
        v81 = v158;
        *v158 = v67;
        outlined init with take of IntegerFormatStyle<Int>.Percent(v79, v81 + v80, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
        type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
        return swift_storeEnumTagMultiPayload();
      }

      (*(v149 + 56))(v78, 1, 1, v33);
      outlined destroy of TermOfAddress?(v78, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GSgMd);
      outlined init with copy of Any(v181, &v167);
      v98 = v144;
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        (*(v143 + 56))(v98, 0, 1, v27);
        v99 = v123;
        outlined init with take of IntegerFormatStyle<Int>.Percent(v98, v123, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
        v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd) + 48);
        v101 = v158;
        *v158 = v67;
        outlined init with take of IntegerFormatStyle<Int>.Percent(v99, v101 + v100, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
        type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
        goto LABEL_28;
      }

      (*(v143 + 56))(v98, 1, 1, v27);
      outlined destroy of TermOfAddress?(v98, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GSgMd);
LABEL_58:
      v112 = v159;
      outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v159, &v167);
      *&v160 = v157;
      *(&v160 + 1) = v156;
      String.LocalizationValue.FormatArgument.CodableStorage.init(coercing:fallbackLocale:)(&v167, &v160, v158);
      v113 = v112;
LABEL_59:
      outlined destroy of String.LocalizationValue.FormatArgument.Storage(v113);
      return outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
    }

    outlined init with copy of Any(v180, &v167);
    if (swift_dynamicCast())
    {
      v72 = v160;
      outlined init with copy of Any(v181, &v167);
      v73 = v151;
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        (*(v150 + 56))(v45, 0, 1, v73);
        v74 = v45;
        v75 = v142;
        outlined init with take of IntegerFormatStyle<Int>.Percent(v74, v142, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
        v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd) + 48);
        v77 = v158;
        *v158 = v72;
        outlined init with take of IntegerFormatStyle<Int>.Percent(v75, v77 + v76, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
        type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
      }

      else
      {
        (*(v150 + 56))(v45, 1, 1, v73);
        outlined destroy of TermOfAddress?(v45, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
        outlined init with copy of Any(v181, &v167);
        v92 = v146;
        v93 = swift_dynamicCast();
        v94 = v159;
        if (v93)
        {
          swift_unknownObjectRelease();
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v94);
          outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
          (*(v145 + 56))(v92, 0, 1, v44);
          v95 = v136;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v92, v136, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
          v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd) + 48);
          v97 = v158;
          *v158 = v72;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v95, v97 + v96, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
          type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
        }

        else
        {
          (*(v145 + 56))(v92, 1, 1, v44);
          outlined destroy of TermOfAddress?(v92, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GSgMd);
          outlined init with copy of Any(v181, &v167);
          v107 = v138;
          v108 = v140;
          if ((swift_dynamicCast() & 1) == 0)
          {
            (*(v139 + 56))(v107, 1, 1, v108);
            outlined destroy of TermOfAddress?(v107, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GSgMd);
            outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v94, &v167);
            *&v160 = v157;
            *(&v160 + 1) = v156;
            String.LocalizationValue.FormatArgument.CodableStorage.init(coercing:fallbackLocale:)(&v167, &v160, v158);
            v113 = v94;
            goto LABEL_59;
          }

          swift_unknownObjectRelease();
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v94);
          outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
          (*(v139 + 56))(v107, 0, 1, v108);
          v109 = v131;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v107, v131, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
          v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd) + 48);
          v111 = v158;
          *v158 = v72;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v109, v111 + v110, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
          type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
        }
      }
    }

    else
    {
      outlined init with copy of Any(v180, &v160);
      type metadata accessor for NSDecimal(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_58;
      }

      v177 = v174;
      v178 = v175;
      outlined init with copy of Any(v181, &v167);
      v82 = v148;
      v83 = swift_dynamicCast();
      v84 = v159;
      if (v83)
      {
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v84);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
        (*(v147 + 56))(v47, 0, 1, v82);
        v85 = v137;
        outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v47, v137, type metadata accessor for NSDecimal.FormatStyle);
        v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd) + 48);
        v87 = v158;
        *v158 = v177;
        *(v87 + 16) = v178;
        outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v85, v87 + v86, type metadata accessor for NSDecimal.FormatStyle);
        type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
      }

      else
      {
        (*(v147 + 56))(v47, 1, 1, v82);
        outlined destroy of TermOfAddress?(v47, &_sSo9NSDecimala10FoundationE11FormatStyleVSgMd);
        outlined init with copy of Any(v181, &v167);
        v102 = v46;
        v103 = v135;
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v84);
          outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
          (*(v141 + 56))(v102, 0, 1, v103);
          v104 = v130;
          outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v102, v130, type metadata accessor for NSDecimal.FormatStyle.Currency);
          v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd) + 48);
          v106 = v158;
          *v158 = v177;
          *(v106 + 16) = v178;
          outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v104, v106 + v105, type metadata accessor for NSDecimal.FormatStyle.Currency);
          type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
        }

        else
        {
          (*(v141 + 56))(v102, 1, 1, v103);
          outlined destroy of TermOfAddress?(v102, &_sSo9NSDecimala10FoundationE11FormatStyleV8CurrencyVSgMd);
          outlined init with copy of Any(v181, &v167);
          v114 = v132;
          v115 = v134;
          if ((swift_dynamicCast() & 1) == 0)
          {
            (*(v133 + 56))(v114, 1, 1, v115);
            outlined destroy of TermOfAddress?(v114, &_sSo9NSDecimala10FoundationE11FormatStyleV7PercentVSgMd);
            outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v84, &v167);
            v176[0] = v157;
            v176[1] = v156;
            String.LocalizationValue.FormatArgument.CodableStorage.init(coercing:fallbackLocale:)(&v167, v176, v158);
            v113 = v84;
            goto LABEL_59;
          }

          swift_unknownObjectRelease();
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v84);
          outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v179);
          (*(v133 + 56))(v114, 0, 1, v115);
          v116 = v129;
          outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v114, v129, type metadata accessor for NSDecimal.FormatStyle.Percent);
          v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd) + 48);
          v118 = v158;
          *v158 = v177;
          *(v118 + 16) = v178;
          outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v116, v118 + v117, type metadata accessor for NSDecimal.FormatStyle.Percent);
          type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
        }
      }
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
    type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
    return swift_storeEnumTagMultiPayload();
  }

  outlined init with take of Any(&v182, &v160);
  outlined init with copy of Any(&v160, &v167);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  if (swift_dynamicCast())
  {
LABEL_42:
    swift_unknownObjectRelease();
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
    __swift_destroy_boxed_opaque_existential_1(&v160);
    *v158 = v179[0];
    type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
    return swift_storeEnumTagMultiPayload();
  }

  outlined init with copy of Any(&v160, &v167);
  if (swift_dynamicCast())
  {
    goto LABEL_69;
  }

  outlined init with copy of Any(&v160, &v167);
  if (swift_dynamicCast())
  {
    goto LABEL_42;
  }

  outlined init with copy of Any(&v160, &v167);
  if (swift_dynamicCast())
  {
    goto LABEL_69;
  }

  outlined init with copy of Any(&v160, &v167);
  if (swift_dynamicCast())
  {
    goto LABEL_42;
  }

  outlined init with copy of Any(&v160, &v167);
  if (swift_dynamicCast())
  {
    goto LABEL_69;
  }

  outlined init with copy of Any(&v160, &v167);
  if (swift_dynamicCast())
  {
    goto LABEL_69;
  }

  outlined init with copy of Any(&v160, &v167);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
    __swift_destroy_boxed_opaque_existential_1(&v160);
    v119 = *(&v179[0] + 1);
    v120 = v158;
    *v158 = *&v179[0];
    *(v120 + 8) = v119;
    type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
    return swift_storeEnumTagMultiPayload();
  }

  outlined init with copy of Any(&v160, &v167);
  if (swift_dynamicCast())
  {
LABEL_69:
    swift_unknownObjectRelease();
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(v159);
    __swift_destroy_boxed_opaque_existential_1(&v160);
    *v158 = *&v179[0];
    type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
    return swift_storeEnumTagMultiPayload();
  }

  v121 = v159;
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v159, &v167);
  *&v179[0] = v157;
  *(&v179[0] + 1) = v156;
  String.LocalizationValue.FormatArgument.CodableStorage.init(coercing:fallbackLocale:)(&v167, v179, v158);
  outlined destroy of String.LocalizationValue.FormatArgument.Storage(v121);
  return __swift_destroy_boxed_opaque_existential_1(&v160);
}

uint64_t outlined init with take of String.LocalizationValue.FormatArgument.CodableStorage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL __PlistReferencingEncoderBPlist.canEncodeNewValue.getter()
{
  v1 = *(v0[2] + 16);
  v2 = v0[5];

  v3 = _CodingPathNode.path.getter(v2);

  v4 = *(v3 + 16);

  v5 = *(v0[12] + 40);

  v6 = _CodingPathNode.path.getter(v5);

  v7 = *(v6 + 16);

  return v1 == v4 + ~v7;
}

uint64_t String.LocalizationValue.FormatArgument.CodableStorage.encode(to:)(void *a1)
{
  v123 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v123);
  v143 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v122);
  v142 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v121);
  v141 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys2OGMd);
  v6 = *(v5 - 8);
  v145 = v5;
  v146 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v144 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v121 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v121 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v121 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v121 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v121 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO26AttributedStringCodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v134 = *(v18 - 8);
  v135 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v133 = &v121 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v21 = *(v20 - 8);
  v147 = v20;
  v148 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v129 = &v121 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v128 = &v121 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v127 = &v121 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v125 = &v121 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v124 = &v121 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v121 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v121 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v126 = &v121 - v44;
  v45 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v121 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v167 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v49 = &v121 - v48;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys();
  v151 = v49;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v149, v47, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v160[0] = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v102 = v151;
      v80 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v103 = v147;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v148 + 8))(v42, v103);
      v104 = *(v167 + 8);
      v105 = v102;
      goto LABEL_25;
    case 2u:
      v160[0] = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v81 = v151;
      v80 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v82 = v147;
      KeyedEncodingContainer.encode(_:forKey:)();
      goto LABEL_24;
    case 3u:
      v160[0] = 3;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v97 = v124;
      v99 = v151;
      v98 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v100 = v147;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v148 + 8))(v97, v100);
      goto LABEL_42;
    case 4u:
      v160[0] = 4;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v39 = v125;
      v81 = v151;
      v80 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v82 = v147;
      KeyedEncodingContainer.encode(_:forKey:)();
      goto LABEL_24;
    case 5u:
      v160[0] = 5;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v88 = v127;
      v69 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v89 = v147;
      KeyedEncodingContainer.encode(_:forKey:)();
      goto LABEL_31;
    case 6u:
      v160[0] = 6;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v88 = v128;
      v69 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v89 = v147;
      KeyedEncodingContainer.encode(_:forKey:)();
      goto LABEL_31;
    case 7u:
      v101 = *v47;
      v160[0] = 7;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v88 = v129;
      v69 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *v160 = v101;
      lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      goto LABEL_21;
    case 8u:
      v160[0] = 8;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v118 = v130;
      v99 = v151;
      v98 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v119 = v147;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v148 + 8))(v118, v119);
      goto LABEL_42;
    case 9u:
      v92 = *v47;
      v160[0] = 9;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v88 = v131;
      v69 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *v160 = v92;
      lazy protocol witness table accessor for type Date and conformance Date();
LABEL_21:
      v89 = v147;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
LABEL_31:
      v91 = v148;
      goto LABEL_32;
    case 0xAu:
      v114 = *v47;
      v160[0] = 10;
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys();
      v115 = v133;
      v99 = v151;
      v98 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *v160 = v114;
      LOBYTE(v153) = 0;
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
      v116 = v135;
      v117 = v150;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v117)
      {
        (*(v134 + 8))(v115, v116);
        (*(v167 + 8))(v99, v98);
      }

      v160[0] = 1;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v134 + 8))(v115, v116);
LABEL_42:
      v104 = *(v167 + 8);
      v105 = v99;
      v107 = v98;
      goto LABEL_43;
    case 0xBu:
      v73 = *v47;
      v74 = *(v47 + 88);
      v163 = *(v47 + 72);
      v164 = v74;
      *v165 = *(v47 + 104);
      *&v165[10] = *(v47 + 114);
      v75 = *(v47 + 24);
      *v160 = *(v47 + 8);
      *&v160[16] = v75;
      v76 = *(v47 + 56);
      v161 = *(v47 + 40);
      v162 = v76;
      LOBYTE(v153) = 11;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v77 = v137;
      v69 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v153 = v73;
      v166 = 0;
      lazy protocol witness table accessor for type Date and conformance Date();
      v78 = v145;
      v79 = v150;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v79)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v160);
        (*(v146 + 8))(v77, v78);
        goto LABEL_33;
      }

      v157 = v163;
      v158 = v164;
      v159[0] = *v165;
      *(v159 + 10) = *&v165[10];
      v153 = *v160;
      v154 = *&v160[16];
      v155 = v161;
      v156 = v162;
      v166 = 1;
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v146 + 8))(v77, v78);
      (*(v167 + 8))(v69, v68);
      result = outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v160);
      break;
    case 0xCu:
      v83 = *v47;
      v84 = *(v47 + 1);
      v85 = *(v47 + 6);
      v163 = *(v47 + 5);
      v164 = v85;
      *v165 = *(v47 + 56);
      v86 = *(v47 + 2);
      *v160 = *(v47 + 1);
      *&v160[16] = v86;
      v87 = *(v47 + 4);
      v161 = *(v47 + 3);
      v162 = v87;
      LOBYTE(v153) = 12;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v88 = v139;
      v69 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v153 = v83;
      *(&v153 + 1) = v84;
      v166 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd);
      lazy protocol witness table accessor for type Range<Date> and conformance <> Range<A>();
      v89 = v145;
      v90 = v150;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v90)
      {
        outlined destroy of Date.IntervalFormatStyle(v160);
        v91 = v146;
LABEL_32:
        (*(v91 + 8))(v88, v89);
LABEL_33:
        v104 = *(v167 + 8);
        v105 = v69;
LABEL_34:
        v107 = v68;
LABEL_43:
        result = v104(v105, v107);
      }

      else
      {
        v157 = v163;
        v158 = v164;
        LOWORD(v159[0]) = *v165;
        v153 = *v160;
        v154 = *&v160[16];
        v155 = v161;
        v156 = v162;
        v166 = 1;
        lazy protocol witness table accessor for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v146 + 8))(v88, v89);
        (*(v167 + 8))(v69, v68);
        result = outlined destroy of Date.IntervalFormatStyle(v160);
      }

      break;
    case 0xDu:
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd);
      v109 = v141;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(&v47[*(v108 + 48)], v141, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      v160[0] = 13;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v110 = v136;
      v111 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v160[0] = 0;
      v112 = v145;
      v113 = v150;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v113)
      {
        v160[0] = 1;
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v146 + 8))(v110, v112);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v109, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      v104 = *(v167 + 8);
      v105 = v111;
      goto LABEL_34;
    case 0xEu:
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd);
      v66 = v142;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(&v47[*(v65 + 48)], v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
      v160[0] = 14;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v67 = v138;
      v69 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v160[0] = 0;
      v70 = v145;
      v71 = v150;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v71)
      {
        v160[0] = 1;
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v146 + 8))(v67, v70);
      v72 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle;
      goto LABEL_18;
    case 0xFu:
      *v160 = *v47;
      *&v160[16] = *(v47 + 4);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd);
      v66 = v143;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(&v47[*(v93 + 48)], v143, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      LOBYTE(v153) = 15;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v94 = v140;
      v69 = v151;
      v68 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v153 = *v160;
      LODWORD(v154) = *&v160[16];
      v166 = 0;
      type metadata accessor for NSDecimal(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal, type metadata accessor for NSDecimal);
      v95 = v145;
      v96 = v150;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v96)
      {
        LOBYTE(v153) = 1;
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v146 + 8))(v94, v95);
      v72 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle;
LABEL_18:
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v66, v72);
      goto LABEL_33;
    case 0x10u:
      v58 = *v47;
      LODWORD(v148) = v47[8];
      v59 = v47[9];
      v149 = *(v47 + 1);
      v160[0] = 16;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v60 = v144;
      v62 = v151;
      v61 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *v160 = v58;
      LOBYTE(v153) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation23LocalizedStringResourceVGMd);
      lazy protocol witness table accessor for type [LocalizedStringResource] and conformance <A> [A](&lazy protocol witness table cache variable for type [LocalizedStringResource] and conformance <A> [A], lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource);
      v63 = v145;
      v64 = v150;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v64)
      {
        swift_unknownObjectRelease();
        (*(v146 + 8))(v60, v63);
        (*(v167 + 8))(v62, v61);
      }

      else
      {

        v160[0] = v148;
        v160[1] = v59;
        *&v160[8] = v149;
        LOBYTE(v153) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMd);
        v120 = v144;
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>, &_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMd);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v146 + 8))(v120, v63);
        (*(v167 + 8))(v62, v61);
        return swift_unknownObjectRelease();
      }

    case 0x11u:
      v106 = *v47;
      v160[0] = 17;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v39 = v132;
      v81 = v151;
      v80 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v160[0] = v106;
      lazy protocol witness table accessor for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder();
      v82 = v147;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
LABEL_24:
      (*(v148 + 8))(v39, v82);
      v104 = *(v167 + 8);
      v105 = v81;
LABEL_25:
      v107 = v80;
      goto LABEL_43;
    default:
      v50 = *(v47 + 5);
      v163 = *(v47 + 4);
      v164 = v50;
      *v165 = *(v47 + 12);
      v51 = *(v47 + 1);
      *v160 = *v47;
      *&v160[16] = v51;
      v52 = *(v47 + 3);
      v161 = *(v47 + 2);
      v162 = v52;
      LOBYTE(v153) = 0;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v53 = v126;
      v55 = v151;
      v54 = v152;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v157 = v163;
      v158 = v164;
      *&v159[0] = *v165;
      v153 = *v160;
      v154 = *&v160[16];
      v155 = v161;
      v156 = v162;
      lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource();
      v56 = v147;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v148 + 8))(v53, v56);
      (*(v167 + 8))(v55, v54);
      return outlined destroy of LocalizedStringResource(v160);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Data()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Data.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_So8NSStringC3key_AH5valuets5NeverOTg5061_s10Foundation10JSONWriterV15serializeObject_5depthySDySSAA16ef11OG_SitKFSo8G31C3key_AG5valuetSSAK_AgLt_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v32;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  v29 = v3;
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

    v30 = v7;
    v11 = *(v3 + 56) + 24 * v6;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v31 = String._bridgeToObjectiveCImpl()();
    result = outlined copy of JSONEncoderValue(v12, v13, v14);
    v16 = *(v32 + 16);
    v15 = *(v32 + 24);
    if (v16 >= v15 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    *(v32 + 16) = v16 + 1;
    v17 = v32 + 32 * v16;
    *(v17 + 32) = v31;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = v14;
    v3 = v29;
    v9 = 1 << *(v29 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v29 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v27, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v26)
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

uint64_t _NSPointerFunctionCoding_isValidOptions(__int16 a1)
{
  v1 = a1 & 7;
  v3 = v1 == 5 || v1 == 0;
  v4 = v1 <= 5 && v3;
  v5 = a1 & 0x700;
  if (v5 <= 0x500)
  {
    v7 = vdupq_n_s64(v5);
    v8 = vandq_s8(vuzp1q_s32(vceqq_s64(v7, xmmword_1813059C0), vceqq_s64(v7, xmmword_181406490)), xmmword_1814064A0);
    v8.i32[0] = vaddvq_s32(v8);
    v9 = vcnt_s8(*v8.i8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.i32[0];
    if (v5 == 1024)
    {
      v10 = v9.i32[0] + 1;
    }

    if (v5 == 1280)
    {
      ++v10;
    }

    if (v10 == 1)
    {
      v11 = v5 - 256;
      v12 = v11 > 0x4FF;
      v6 = 2u >> SBYTE1(v11);
      if (v12)
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v4 & v6;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

id String.init(contentsOf:encoding:)(__int128 *a1, uint64_t *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v51 = *a1;
  v4 = specialized Data.init(contentsOf:options:)(&v51, 0);
  if (v2)
  {
    return v3;
  }

  v6 = v4;
  v7 = v5;
  _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA4DataV_Tt1B5(v4, v5, v3);
  if (v9)
  {
    v3 = v8;
    outlined consume of Data._Representation(v6, v7);
    return v3;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v12 = @"NSCocoaErrorDomain";
  v13 = v12;
  if (!isTaggedPointer)
  {
    goto LABEL_10;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v12);
  switch(TaggedPointerTag)
  {
    case 0:
LABEL_19:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v18)
      {
        [(__CFString *)v13 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_25;
      }

      goto LABEL_20;
    case 0x16:
      result = [(__CFString *)v13 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      String.init(utf8String:)(result);
      if (v17)
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_19;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_25;
  }

LABEL_10:
  LOBYTE(v49) = 0;
  *&v51 = 0;
  if (!__CFStringIsCF())
  {
    v15 = v13;
    String.init(_nativeStorage:)();
    if (v16 || (*&v51 = [(__CFString *)v15 length], !v51))
    {

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!v51)
  {
LABEL_20:

    goto LABEL_25;
  }

LABEL_24:
  String.init(_cocoaString:)();
LABEL_25:
  v19 = objc_allocWithZone(NSError);
  v20 = String._bridgeToObjectiveCImpl()();

  v21 = [v19 initWithDomain:v20 code:259 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v22 = [v21 domain];
  if (!v22)
  {
    v28 = 0;
    v30 = 0xE000000000000000;
LABEL_50:
    v37 = v13;
    v38 = v37;
    if (!isTaggedPointer)
    {
LABEL_55:
      *&v51 = 0;
      if (__CFStringIsCF())
      {
        v3 = v51;
        if (!v51)
        {

          v41 = 0xE000000000000000;
          goto LABEL_70;
        }
      }

      else
      {
        v42 = v38;
        v43 = String.init(_nativeStorage:)();
        if (v44)
        {
          v3 = v43;
          v41 = v44;

          goto LABEL_70;
        }

        *&v51 = [(__CFString *)v42 length];
        if (!v51)
        {

          v3 = 0;
          v41 = 0xE000000000000000;
          goto LABEL_70;
        }
      }

      v3 = String.init(_cocoaString:)();
      v41 = v47;
LABEL_70:
      if (v28 == v3 && v30 == v41)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {
          __break(1u);
        }
      }

      swift_willThrow();
      outlined consume of Data._Representation(v6, v7);
      return v3;
    }

    v39 = _objc_getTaggedPointerTag(v37);
    if (!v39)
    {
      goto LABEL_64;
    }

    if (v39 != 22)
    {
      if (v39 == 2)
      {
        MEMORY[0x1EEE9AC00](v39);
        v3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v41 = v40;

        goto LABEL_70;
      }

      goto LABEL_55;
    }

    result = [(__CFString *)v38 UTF8String];
    if (result)
    {
      v45 = String.init(utf8String:)(result);
      if (v46)
      {
        goto LABEL_65;
      }

      __break(1u);
LABEL_64:
      _CFIndirectTaggedPointerStringGetContents();
      v45 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v46)
      {
        [(__CFString *)v38 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v3 = v49;
        v41 = v50;
        goto LABEL_70;
      }

LABEL_65:
      v3 = v45;
      v41 = v46;

      goto LABEL_70;
    }

    goto LABEL_77;
  }

  v48 = isTaggedPointer;
  v23 = v22;
  v24 = _objc_isTaggedPointer(v22);
  v25 = v23;
  v26 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_31;
  }

  v27 = _objc_getTaggedPointerTag(v25);
  if (!v27)
  {
    goto LABEL_42;
  }

  if (v27 != 22)
  {
    if (v27 == 2)
    {
      MEMORY[0x1EEE9AC00](v27);
      v28 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v30 = v29;

LABEL_49:
      isTaggedPointer = v48;
      goto LABEL_50;
    }

LABEL_31:
    LOBYTE(v49) = 0;
    *&v51 = 0;
    if (__CFStringIsCF())
    {
      if (v51)
      {
LABEL_47:
        v28 = String.init(_cocoaString:)();
        v30 = v36;
        goto LABEL_48;
      }
    }

    else
    {
      v31 = v26;
      v32 = String.init(_nativeStorage:)();
      if (v33)
      {
        v28 = v32;
        v30 = v33;

        goto LABEL_49;
      }

      *&v51 = [v31 length];
      if (v51)
      {
        goto LABEL_47;
      }
    }

    v28 = 0;
    v30 = 0xE000000000000000;
    goto LABEL_49;
  }

  result = [v26 UTF8String];
  if (result)
  {
    v34 = String.init(utf8String:)(result);
    if (v35)
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_42:
    _CFIndirectTaggedPointerStringGetContents();
    v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v35)
    {
      [v26 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v28 = v49;
      v30 = v50;
      goto LABEL_48;
    }

LABEL_43:
    v28 = v34;
    v30 = v35;

LABEL_48:
    goto LABEL_49;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t JSONEncoder.keyEncodingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[17];

  os_unfair_lock_lock(v4 + 4);

  v5 = v1[14];
  v1[14] = v2;
  v1[15] = v3;
  sub_1807A5C7C(v5);
  v6 = v1[17];

  os_unfair_lock_unlock(v6 + 4);
}

BOOL BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1 >> (BYTE2(a3) & 0xF);
  if ((a3 & 0xFFF00000) != 0)
  {
    v3 = 0;
  }

  v4 = *(a2 + v3);
  if ((WORD2(a3) & a1) <= 0x1Fu)
  {
    v5 = (1 << (BYTE4(a3) & a1));
  }

  else
  {
    v5 = 0;
  }

  return (v5 & v4) != 0;
}

uint64_t BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(uint64_t result, unsigned __int8 a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = &v24;
    }

    else if (a2 == 4)
    {
      v2 = &v40;
    }

    else
    {
      v2 = &v42;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = &v6;
    }

    else
    {
      v2 = &v10;
    }
  }

  else
  {
    v2 = &v4;
  }

  v4 = 2;
  v5 = &__CFUniCharLowercaseLetterCharacterSetBitmap_0;
  v6 = 2;
  v7 = &__CFUniCharUppercaseLetterCharacterSetBitmap;
  v8 = 15;
  v9 = &__CFUniCharNonBaseCharacterSetBitmap;
  v10 = 3;
  v11 = &__CFUniCharCanonicalDecomposableCharacterSetBitmap;
  v12 = 15;
  v13 = &__CFUniCharAlphanumericCharacterSetBitmap;
  v14 = 2;
  v15 = &__CFUniCharPunctuationCharacterSetBitmap;
  v16 = 15;
  v17 = &__CFUniCharLegalCharacterSetBitmap;
  v18 = 1;
  v19 = &__CFUniCharTitlecaseLetterCharacterSetBitmap;
  v20 = 2;
  v21 = &__CFUniCharSymbolAndOperatorCharacterSetBitmap;
  v22 = 2;
  v23 = &__CFUniCharCompatibilityDecomposableCharacterSetBitmap;
  v24 = 2;
  v25 = &__CFUniCharHfsPlusDecomposableCharacterSetBitmap;
  v26 = 2;
  v27 = &__CFUniCharStrongRightToLeftCharacterSetBitmap;
  v28 = 2;
  v29 = &__CFUniCharHasNonSelfLowercaseMappingBitmap;
  v30 = 2;
  v31 = &__CFUniCharHasNonSelfUppercaseMappingBitmap;
  v32 = 2;
  v33 = &__CFUniCharHasNonSelfTitlecaseMappingBitmap;
  v34 = 1;
  v35 = &__CFUniCharHasNonSelfCaseFoldingMappingBitmap;
  v36 = 2;
  v37 = &__CFUniCharHasMirroredMappingBitmap;
  v38 = 15;
  v39 = &__CFUniCharControlAndFormatterBitmap;
  v40 = 15;
  v41 = &__CFUniCharCaseIgnorableCharacterSetBitmap;
  v42 = 15;
  v43 = &__CFUniCharGraphemeExtendCharacterSetBitmap;
  if (*v2 <= result)
  {
    return 0;
  }

  v3 = *(v2 + 1);
  if (v3)
  {
    return *(v3 + 8 * result);
  }

  __break(1u);
  return result;
}

uint64_t StringProtocol.capitalized(with:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v7 = *v5;
  v6 = v5[1];
  (*(v8 + 16))(&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a2, v3);
  v10 = String.init<A>(_:)();
  v12 = v11;
  if (v7)
  {
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(ObjectType, v6);
  }

  v14 = specialized static ICU.CaseMap.caseMappingForLocale(_:)();

  v71 = v14;
  if (v14)
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    v62 = v12;
    v15 = String.subscript.getter();
    v17 = v16;
    v73 = v18;
    v20 = v19;
    result = MEMORY[0x1865CBC20](46, 0xE100000000000000);
    v69 = v23;
    v70 = v24;
    v25 = v15 >> 14;
    v26 = v17 >> 14;
    if (v15 >> 14 < v17 >> 14)
    {
      v66 = v22;
      v67 = result;
      v68 = (result ^ v22) >> 14;
      v61 = v15 >> 14;
      v27 = v15 >> 14;
      v63 = v17;
      v64 = v20;
      v72 = v15;
      v65 = v17 >> 14;
      while (1)
      {
        if (v26 < v27)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v31 = Substring.subscript.getter();
        if ((v31 ^ v32) < 0x4000 || !v68)
        {
          break;
        }

        v33 = specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v67, v66, v69, v70, 0, 0, 0, 0, 0, v31, v32);
        v35 = v34;
        v37 = v36;

        if ((v37 & 1) != 0 || (v25 = v35 >> 14, v33 >> 14 == v35 >> 14))
        {
          v25 = v27;
          v26 = v65;
          goto LABEL_23;
        }

        if (v33 >> 14 < v27)
        {
          goto LABEL_29;
        }

        v38 = Substring.subscript.getter();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v45 = *(v71 + 24);
        MEMORY[0x1EEE9AC00](v38);
        MEMORY[0x1EEE9AC00](v46);
        os_unfair_lock_lock(v45 + 4);
        closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply(&v74);
        os_unfair_lock_unlock(v45 + 4);
        object = *(&v74 + 1);
        if (*(&v74 + 1))
        {
          countAndFlagsBits = v74;
        }

        else
        {
          *&v74 = v38;
          *(&v74 + 1) = v40;
          v75 = v42;
          v76 = v44;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          String.init<A>(_:)();
          v28 = String._capitalized()();
          countAndFlagsBits = v28._countAndFlagsBits;
          object = v28._object;
        }

        MEMORY[0x1865CB0E0](countAndFlagsBits, object);

        result = MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v27 = v35 >> 14;
        v26 = v65;
        if (v25 >= v65)
        {
          goto LABEL_23;
        }
      }

      if ((v31 ^ v32) >= 0x4000)
      {
        v25 = v61;
      }

      else
      {
        v25 = v27;
      }
    }

LABEL_23:

    if (v26 < v25)
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v48 = Substring.subscript.getter();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v55 = *(v71 + 24);
      MEMORY[0x1EEE9AC00](v48);
      MEMORY[0x1EEE9AC00](v56);
      os_unfair_lock_lock(v55 + 4);
      closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply(&v74);
      os_unfair_lock_unlock(v55 + 4);
      v57 = *(&v74 + 1);
      if (*(&v74 + 1))
      {
        v58 = v74;
      }

      else
      {
        *&v74 = v48;
        *(&v74 + 1) = v50;
        v75 = v52;
        v76 = v54;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.init<A>(_:)();
        v59 = String._capitalized()();
        v58 = v59._countAndFlagsBits;
        v57 = v59._object;
      }

      MEMORY[0x1865CB0E0](v58, v57);

      return v77;
    }
  }

  else
  {
    *&v74 = v10;
    *(&v74 + 1) = v12;
    String.init<A>(_:)();
    v47 = String._capitalized()()._countAndFlagsBits;

    return v47;
  }

  return result;
}

uint64_t partial apply for closure #1 in ICU.CaseMap.titlecase(_:)@<X0>(uint64_t *a1@<X8>)
{
  return closure #1 in ICU.CaseMap.titlecase(_:)(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

{
  return partial apply for closure #1 in ICU.CaseMap.titlecase(_:)(a1);
}

uint64_t closure #1 in ICU.CaseMap.titlecase(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a4;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v24 = a1;
  v25 = a2;
  v26 = a3;

  if ((v7 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v8 = v26;
    v7 = v27;
    v10 = v24;
    v9 = v25;
  }

  v12 = v10 >> 16;
  v13 = v9 >> 16;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v23[0] = v8;
    v23[1] = v7 & 0xFFFFFFFFFFFFFFLL;

    v18 = specialized _withResizingCharBuffer(initialSize:_:)(32, a5, v23 + v12, v13 - v12);
    v20 = v22;

    goto LABEL_9;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v14 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v14 = _StringObject.sharedUTF8.getter();
    if (!v14)
    {

      v16 = a5;
      v15 = 0;
      v17 = 0;
      goto LABEL_7;
    }
  }

  v15 = v14 + v12;
  v16 = a5;
  v17 = v13 - v12;
LABEL_7:
  v18 = specialized _withResizingCharBuffer(initialSize:_:)(32, v16, v15, v17);
  v20 = v19;

LABEL_9:
  *a6 = v18;
  a6[1] = v20;
  return result;
}

id URLResourceValues.linkCount.getter(void **a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = [v7 integerValue];

  return v5;
}

unint64_t JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v37 = a2;
  v38 = a7;
  v36 = a3;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    v35 = v13;
    v39 = v7;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
    v20 = v19;

    if ((v20 & 1) == 0 || ((v21 = *(a4 + 56) + 24 * v18, v22 = *v21, v23 = *(v21 + 8), v24 = *(v21 + 16), v25 = v23 | *v21, (v24 & 0xE0) == 0xA0) ? (v26 = v25 == 0) : (v26 = 0), v26 && v24 == 160))
    {
      v31 = 0;
      v32 = 1;
    }

    else
    {
      v27 = *(a5 - 8);
      (*(v27 + 16))(v15, a1, a5);
      (*(v27 + 56))(v15, 0, 1, a5);
      v28 = v39;
      v29 = v38(v22, v23, v24, v36, v15, a5, a6);
      if (v28)
      {
        return (*(v35 + 8))(v15, v12);
      }

      v33 = v29;
      (*(v35 + 8))(v15, v12);
      v32 = 0;
      v31 = v33;
    }
  }

  else
  {

    v31 = 0;
    v32 = 1;
  }

  v40 = v32;
  return v31 | (v32 << 32);
}

id DateInterval.debugDescription.getter()
{

  return DateInterval.description.getter();
}

void _FileManagerImpl.copyItem(atPath:toPath:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v14 = 1;
    v15 = (a5 << 10) & 0x4000000;
    v16 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = v12;
    v13[7] = &v14;
    specialized String.withFileSystemRepresentation<A>(_:)(partial apply for specialized closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:), v13, a1, a2);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t specialized closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7 & 1;
  v31 = HIDWORD(a7);
  v32 = a8;
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v28[2] = v8;
    v28[3] = v9;
    v28[4] = v10;
    v28[5] = v11;
    v28[6] = &v30;
    return specialized String.withFileSystemRepresentation<A>(_:)(partial apply for specialized closure #1 in closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:), v28, v8, v9);
  }

  if (_foundation_swift_url_feature_enabled())
  {

    v15 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
    v17 = v16;

    v33 = 3;
    type metadata accessor for _SwiftURL();
    v29[0] = 0;
    v29[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v15, v17, 0, &v33, v29);
    v18 = _SwiftURL.convertingFileReference()();
    v20 = v19;
  }

  else
  {
    v21 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v22 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v21);
    if (!v22)
    {

      v25 = String._bridgeToObjectiveCImpl()();
      goto LABEL_10;
    }

    v23 = v22;
    v18 = _BridgedURL.convertingFileReference()();
    v20 = v24;
  }

  v25 = String._bridgeToObjectiveCImpl()();
  if (!v18)
  {
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v27 = (*(v20 + 432))(ObjectType, v20);
  swift_unknownObjectRelease();
LABEL_11:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

uint64_t partial apply for specialized closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(uint64_t a1)
{
  return specialized closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

{
  return specialized closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), **(v1 + 56), *(*(v1 + 56) + 8));
}

uint64_t specialized closure #1 in closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(char *a1, unint64_t a2, unint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    return _s10Foundation15_FileOperationsO011_linkOrCopyB033_0F974932CC9FBACA9047618113061023LL__4with8delegateySPys4Int8VG_AJSo13NSFileManagerCxtKAA04LinkeF8DelegateAELLRzlFZAC04copyB0_2toAF7optionsySS_SSALSo0mnF7OptionsVtKFZ0fbP0L_V_Tt3g5Tf4nndn_n(a4, a1, a6 & 0xFFFFFFFF00000001, a7);
  }

  if (_foundation_swift_url_feature_enabled())
  {

    v10 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
    v12 = v11;

    v24 = 3;
    type metadata accessor for _SwiftURL();
    v23[0] = 0;
    v23[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v10, v12, 0, &v24, v23);
    v13 = _SwiftURL.convertingFileReference()();
    v15 = v14;
  }

  else
  {
    v16 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v17 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v16);
    if (!v17)
    {

      v20 = String._bridgeToObjectiveCImpl()();
      goto LABEL_10;
    }

    v18 = v17;
    v13 = _BridgedURL.convertingFileReference()();
    v15 = v19;
  }

  v20 = String._bridgeToObjectiveCImpl()();
  if (!v13)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v22 = (*(v15 + 432))(ObjectType, v15);
  swift_unknownObjectRelease();
LABEL_11:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

uint64_t partial apply for specialized closure #1 in closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(char *a1)
{
  return specialized closure #1 in closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), **(v1 + 48) | (*(*(v1 + 48) + 4) << 32), *(*(v1 + 48) + 8));
}

{
  return specialized closure #1 in closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), **(v1 + 48), *(*(v1 + 48) + 8));
}

uint64_t _s10Foundation15_FileOperationsO011_linkOrCopyB033_0F974932CC9FBACA9047618113061023LL__4with8delegateySPys4Int8VG_AJSo13NSFileManagerCxtKAA04LinkeF8DelegateAELLRzlFZAC04copyB0_2toAF7optionsySS_SSALSo0mnF7OptionsVtKFZ0fbP0L_V_Tt3g5Tf4nndn_n(const char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (swift_stdlib_isStackAllocationSafe())
  {
    result = specialized closure #1 in static _FileOperations._linkOrCopyFile<A>(_:_:with:delegate:)(v11, 1026, a2, a1, a3 & 0xFFFFFFFF00000001, a4);
    if (v4)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v10 = swift_slowAlloc();
    specialized closure #1 in static _FileOperations._linkOrCopyFile<A>(_:_:with:delegate:)(v10, 1026, a2, a1, a3 & 0xFFFFFFFF00000001, a4);
    return MEMORY[0x1865D2690](v10, -1, -1);
  }

  return result;
}

uint64_t specialized closure #1 in static _FileOperations._linkOrCopyFile<A>(_:_:with:delegate:)(char *a1, int a2, char *__source, const char *a4, unint64_t a5, uint64_t a6)
{
  v283 = a6;
  v272 = a5;
  v292 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_327;
  }

  v7 = v6;
  v9 = a1;
  v10 = strlcpy(a1, __source, 0x402uLL);
  v281 = strlen(a4);
  v282 = v10;
  v280 = 1026 - v10;
  if (__OFSUB__(1026, v10))
  {
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
    goto LABEL_322;
  }

  type metadata accessor for _FTSSequence.Iterator();
  swift_initStackObject();
  v11 = _FTSSequence.Iterator.init(_:_:)(a4, 20);
  v12 = _FTSSequence.Iterator.next()();
  if (v15 == 0xFF)
  {
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v279 = HIDWORD(v272);
  v273 = @"NSPOSIXErrorDomain";
  if (v272)
  {
    v20 = 17694735;
  }

  else
  {
    v20 = 917519;
  }

  v251 = v20;
  v278 = v11;
  v277 = v9;
  while ((v19 & 1) == 0)
  {
    fts_path = v16->fts_path;
    if (!fts_path)
    {
      goto LABEL_326;
    }

    strlcpy(&v9[v282], &fts_path[v281], v280);
    if (v16->fts_info == 6)
    {
      if (v16->fts_level)
      {
        v32 = 0;
      }

      else
      {
        v32 = v279;
      }

LABEL_19:
      _s10Foundation15_FileOperationsO26_safeCopyDirectoryMetadata33_0F974932CC9FBACA90476181130610233src3dst8delegate10extraFlagsySPys4Int8VG_ALxs5Int32VtKAA06LinkOrE8DelegateAELLRzlFZAC04copyB0_2to4with7optionsySS_SSSo13NSFileManagerCSo0yzE7OptionsVtKFZ0ebT0L_V_Tt3g5Tf4nnxn_nTm(fts_path, v9, v283, v32, 0x79706F43, &selRef_fileManager_shouldProceedAfterError_copyingItemAtURL_toURL_, &selRef_fileManager_shouldProceedAfterError_copyingItemAtPath_toPath_);
      if (v7)
      {
      }

      goto LABEL_12;
    }

    v33 = String.init(cString:)();
    v35 = v34;
    v36 = String.init(cString:)();
    LOBYTE(v33) = NSFileManager._shouldCopyItemAtPath(_:to:)(v33, v35, v36, v37, &selRef_fileManager_shouldCopyItemAtURL_toURL_, &selRef_fileManager_shouldCopyItemAtPath_toPath_);

    fts_info = v16->fts_info;
    if ((v33 & 1) == 0)
    {
      if (fts_info == 1)
      {
        v9 = v277;
        if (!*(v278 + 40))
        {
          fts_set(*(v278 + 16), v16, 4);
          v39 = _FTSSequence.Iterator.next()();
          outlined consume of _FTSSequence.Element?(v39, v40, v41, v42);
        }

        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (v16->fts_level)
    {
      v32 = 0;
    }

    else
    {
      v32 = v279;
    }

    if (v16->fts_info <= 7u)
    {
      v9 = v277;
      if (v16->fts_info > 3u)
      {
        if (fts_info == 4)
        {
          goto LABEL_37;
        }

        if (fts_info != 6)
        {
          if (fts_info != 7)
          {
            goto LABEL_12;
          }

          goto LABEL_37;
        }

        goto LABEL_19;
      }

      if (fts_info == 1)
      {
        if ((v32 & 0x80000000) != 0)
        {
          goto LABEL_319;
        }

        if (!copyfile(fts_path, v277, 0, v32 | 0xE0008))
        {
          goto LABEL_12;
        }

        v275 = v18;
        LODWORD(v18) = MEMORY[0x1865CA7A0]();
        v92 = String.init(cString:)();
        v94 = v93;
        v95 = String.init(cString:)();
        v97 = v96;

        v274 = v17;
        v271 = v94;
        v270 = v97;
        v269 = v92;
        v267 = v95;
        if (v18 > 27)
        {
          if (v18 <= 62)
          {
            if (v18 != 28)
            {
              if (v18 == 30)
              {
                v95 = v92;
                v107 = 642;
                goto LABEL_236;
              }

              goto LABEL_172;
            }
          }

          else
          {
            if (v18 == 102)
            {
              v130 = 0;
              v95 = v92;
              v265 = 512;
              goto LABEL_242;
            }

            if (v18 != 69)
            {
              if (v18 == 63)
              {

                Path = String._lastPathComponent.getter(v95, v97);
                v100 = specialized String.withFileSystemRepresentation<A>(_:)(Path, v99);
                v101 = v270;

                v102 = specialized String.withFileSystemRepresentation<A>(_:)(v95, v101);
                if (v100 <= 255)
                {
                  v94 = v271;
                  v150 = v269;
                  if (v102 < 1025)
                  {

                    v95 = v150;
                  }

                  else
                  {

                    v94 = v101;
                    v95 = v267;
                  }
                }

                else
                {

                  v94 = v101;
                }

                v107 = 514;
LABEL_236:
                v265 = v107;
                v276 = v7;
                if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                {
                  goto LABEL_329;
                }

                v195 = v273;
                static String._unconditionallyBridgeFromObjectiveC(_:)(v273);
                v196 = POSIXErrorCode.rawValue.getter();
                v197 = objc_allocWithZone(NSError);
                v198 = String._bridgeToObjectiveCImpl()();

                v130 = [v197 initWithDomain:v198 code:v196 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v199 = [v130 domain];
                v200 = static String._unconditionallyBridgeFromObjectiveC(_:)(v199);
                v202 = v201;

                if (v200 == static String._unconditionallyBridgeFromObjectiveC(_:)(v195) && v202 == v203)
                {
                }

                else
                {
                  v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v204 & 1) == 0)
                  {
                    goto LABEL_325;
                  }
                }

                v7 = v276;
LABEL_242:

                URL.init(_fileManagerFailableFileURLWithPath:)(v95, v94, &v287);

                v205 = v287;
                v206 = v288;
                v264 = String._bridgeToObjectiveCImpl()();

                if (v205)
                {
                  ObjectType = swift_getObjectType();
                  v260 = (*(v206 + 432))(ObjectType, v206);
                  swift_unknownObjectRelease();
                  if (v130)
                  {
                    goto LABEL_244;
                  }

LABEL_247:
                  v276 = v130;
                  v254 = 0;
                }

                else
                {
                  v260 = 0;
                  if (!v130)
                  {
                    goto LABEL_247;
                  }

LABEL_244:
                  v284 = v130;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v208 = v130;
                  v209 = _getErrorEmbeddedNSError<A>(_:)();

                  v276 = v208;
                  if (v209)
                  {
                  }

                  else
                  {
                    swift_allocError();
                    *v210 = v208;
                  }

                  v254 = _swift_stdlib_bridgeErrorToNSError();
                }

                v211 = objc_opt_self();
                v212 = String._bridgeToObjectiveCImpl()();
                v213 = String._bridgeToObjectiveCImpl()();
                v265 = [v211 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v188 = v265;
                v189 = v188;
                v190 = v269;
                v191 = v271;
                v192 = v267;
                v193 = &v292;
                goto LABEL_232;
              }

LABEL_172:
              v95 = v92;
              v107 = 512;
              goto LABEL_236;
            }
          }

          v95 = v92;
          v107 = 640;
          goto LABEL_236;
        }

        if (v18 > 12)
        {
          if (v18 != 13)
          {
            if (v18 == 17)
            {
              v95 = v92;
              v107 = 516;
              goto LABEL_236;
            }

            goto LABEL_172;
          }
        }

        else if (v18 != 1)
        {
          if (v18 == 2)
          {
            v95 = v92;
            v107 = 4;
            goto LABEL_236;
          }

          goto LABEL_172;
        }

        v95 = v92;
        v107 = 513;
        goto LABEL_236;
      }

      if (fts_info != 3)
      {
        goto LABEL_12;
      }

LABEL_46:
      if ((v272 & 1) == 0)
      {
        if (!link(fts_path, v9))
        {
          goto LABEL_12;
        }

        v275 = v18;
        LODWORD(v18) = MEMORY[0x1865CA7A0]();
        v79 = String.init(cString:)();
        v81 = v80;
        v82 = String.init(cString:)();
        v84 = v83;

        v270 = v81;
        v265 = v84;
        v269 = v79;
        v267 = v82;
        if (v18 > 27)
        {
          if (v18 <= 62)
          {
            if (v18 != 28)
            {
              if (v18 == 30)
              {
                v276 = v7;
                v257 = v79;
                v105 = 642;
                goto LABEL_199;
              }

              goto LABEL_166;
            }
          }

          else
          {
            if (v18 == 102)
            {
              v127 = 0;
              v257 = v79;
              v262 = 512;
              goto LABEL_205;
            }

            if (v18 != 69)
            {
              if (v18 == 63)
              {

                v85 = v82;
                v86 = String._lastPathComponent.getter(v82, v84);
                v87 = v7;
                v89 = specialized String.withFileSystemRepresentation<A>(_:)(v86, v88);
                v90 = v85;

                v91 = specialized String.withFileSystemRepresentation<A>(_:)(v85, v84);
                v276 = v87;
                if (v89 <= 255)
                {
                  v81 = v270;
                  if (v91 < 1025)
                  {

                    v131 = &v291;
                  }

                  else
                  {

                    v81 = v84;
                    v131 = &v290;
                  }

                  v257 = *(v131 - 32);
                }

                else
                {

                  v81 = v84;
                  v257 = v90;
                }

                v105 = 514;
LABEL_199:
                v262 = v105;
                v151 = v17;
                if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                {
                  goto LABEL_329;
                }

                v152 = v273;
                static String._unconditionallyBridgeFromObjectiveC(_:)(v273);
                v153 = POSIXErrorCode.rawValue.getter();
                v154 = objc_allocWithZone(NSError);
                v155 = String._bridgeToObjectiveCImpl()();

                v156 = [v154 initWithDomain:v155 code:v153 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v271 = v156;
                v157 = [v156 domain];
                v158 = static String._unconditionallyBridgeFromObjectiveC(_:)(v157);
                v160 = v159;

                if (v158 == static String._unconditionallyBridgeFromObjectiveC(_:)(v152) && v160 == v161)
                {
                }

                else
                {
                  v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v162 & 1) == 0)
                  {
                    goto LABEL_323;
                  }
                }

                v17 = v151;
                v7 = v276;
                v127 = v271;
LABEL_205:

                URL.init(_fileManagerFailableFileURLWithPath:)(v257, v81, &v287);

                v163 = v287;
                v164 = v288;
                v165 = String._bridgeToObjectiveCImpl()();

                if (v163)
                {
                  v166 = swift_getObjectType();
                  v259 = (*(v164 + 432))(v166, v164);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v259 = 0;
                }

                v274 = v17;
                v276 = v165;
                if (v127)
                {
                  v284 = v127;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v148 = v127;
                  v167 = _getErrorEmbeddedNSError<A>(_:)();

                  v271 = v148;
                  if (v167)
                  {
                    goto LABEL_210;
                  }

                  goto LABEL_229;
                }

                v271 = 0;
                v253 = 0;
                goto LABEL_231;
              }

LABEL_166:
              v276 = v7;
              v257 = v79;
              v105 = 512;
              goto LABEL_199;
            }
          }

          v276 = v7;
          v257 = v79;
          v105 = 640;
          goto LABEL_199;
        }

        if (v18 > 12)
        {
          if (v18 != 13)
          {
            if (v18 == 17)
            {
              v276 = v7;
              v257 = v79;
              v105 = 516;
              goto LABEL_199;
            }

            goto LABEL_166;
          }
        }

        else if (v18 != 1)
        {
          if (v18 == 2)
          {
            v276 = v7;
            v257 = v79;
            v105 = 4;
            goto LABEL_199;
          }

          goto LABEL_166;
        }

        v276 = v7;
        v257 = v79;
        v105 = 513;
        goto LABEL_199;
      }

      if ((v32 & 0x80000000) != 0)
      {
        goto LABEL_320;
      }

      if (!copyfile(fts_path, v9, 0, v32 | 0x10E000F))
      {
        goto LABEL_12;
      }

      v275 = v18;
      LODWORD(v18) = MEMORY[0x1865CA7A0]();
      v52 = String.init(cString:)();
      v54 = v53;
      v55 = String.init(cString:)();
      v57 = v56;

      v270 = v54;
      v265 = v57;
      v269 = v52;
      v267 = v55;
      if (v18 > 27)
      {
        if (v18 <= 62)
        {
          if (v18 != 28)
          {
            if (v18 == 30)
            {
              v276 = v7;
              v255 = v52;
              v106 = 642;
              goto LABEL_216;
            }

            goto LABEL_171;
          }
        }

        else
        {
          if (v18 == 102)
          {
            v128 = 0;
            v255 = v52;
            v262 = 512;
            goto LABEL_222;
          }

          if (v18 != 69)
          {
            if (v18 == 63)
            {

              v58 = v55;
              v59 = String._lastPathComponent.getter(v55, v57);
              v60 = v7;
              v62 = specialized String.withFileSystemRepresentation<A>(_:)(v59, v61);
              v63 = v58;

              v64 = specialized String.withFileSystemRepresentation<A>(_:)(v58, v57);
              v276 = v60;
              if (v62 <= 255)
              {
                v54 = v270;
                if (v64 < 1025)
                {

                  v132 = &v291;
                }

                else
                {

                  v54 = v57;
                  v132 = &v290;
                }

                v255 = *(v132 - 32);
              }

              else
              {

                v54 = v57;
                v255 = v63;
              }

              v106 = 514;
LABEL_216:
              v262 = v106;
              v168 = v17;
              if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
              {
                goto LABEL_329;
              }

              v169 = v273;
              static String._unconditionallyBridgeFromObjectiveC(_:)(v273);
              v170 = POSIXErrorCode.rawValue.getter();
              v171 = objc_allocWithZone(NSError);
              v172 = String._bridgeToObjectiveCImpl()();

              v173 = [v171 initWithDomain:v172 code:v170 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v271 = v173;
              v174 = [v173 domain];
              v175 = static String._unconditionallyBridgeFromObjectiveC(_:)(v174);
              v177 = v176;

              if (v175 == static String._unconditionallyBridgeFromObjectiveC(_:)(v169) && v177 == v178)
              {
              }

              else
              {
                v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v179 & 1) == 0)
                {
                  goto LABEL_324;
                }
              }

              v17 = v168;
              v7 = v276;
              v128 = v271;
LABEL_222:

              URL.init(_fileManagerFailableFileURLWithPath:)(v255, v54, &v287);

              v180 = v287;
              v181 = v288;
              v276 = String._bridgeToObjectiveCImpl()();

              if (v180)
              {
                v182 = swift_getObjectType();
                v259 = (*(v181 + 432))(v182, v181);
                swift_unknownObjectRelease();
              }

              else
              {
                v259 = 0;
              }

              v274 = v17;
              if (v128)
              {
                v284 = v128;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v148 = v128;
                v183 = _getErrorEmbeddedNSError<A>(_:)();

                v271 = v148;
                if (!v183)
                {
                  goto LABEL_229;
                }

LABEL_210:

                goto LABEL_230;
              }

              v271 = 0;
              v253 = 0;
              goto LABEL_231;
            }

LABEL_171:
            v276 = v7;
            v255 = v52;
            v106 = 512;
            goto LABEL_216;
          }
        }

        v276 = v7;
        v255 = v52;
        v106 = 640;
        goto LABEL_216;
      }

      if (v18 > 12)
      {
        if (v18 != 13)
        {
          if (v18 == 17)
          {
            v276 = v7;
            v255 = v52;
            v106 = 516;
            goto LABEL_216;
          }

          goto LABEL_171;
        }
      }

      else if (v18 != 1)
      {
        if (v18 == 2)
        {
          v276 = v7;
          v255 = v52;
          v106 = 4;
          goto LABEL_216;
        }

        goto LABEL_171;
      }

      v276 = v7;
      v255 = v52;
      v106 = 513;
      goto LABEL_216;
    }

    v9 = v277;
    if ((fts_info - 12) >= 2)
    {
      if (fts_info != 8)
      {
        if (fts_info != 10)
        {
          goto LABEL_12;
        }

LABEL_37:
        v275 = v18;
        LODWORD(v18) = v16->fts_errno;
        v43 = String.init(cString:)();
        v45 = v44;
        v46 = String.init(cString:)();
        v48 = v47;

        v274 = v17;
        v269 = v45;
        v268 = v16;
        v271 = v43;
        v270 = v46;
        if (v18 > 27)
        {
          if (v18 <= 62)
          {
            if (v18 != 28)
            {
              if (v18 == 30)
              {
                v265 = v43;
                v78 = 642;
                goto LABEL_151;
              }

              goto LABEL_99;
            }
          }

          else
          {
            if (v18 == 102)
            {
              v16 = v48;
              v104 = 0;
              v267 = 512;
              goto LABEL_157;
            }

            if (v18 != 69)
            {
              if (v18 == 63)
              {

                v49 = String._lastPathComponent.getter(v46, v48);
                v276 = specialized String.withFileSystemRepresentation<A>(_:)(v49, v50);

                v51 = specialized String.withFileSystemRepresentation<A>(_:)(v46, v48);
                if (v276 <= 255)
                {
                  v45 = v269;
                  if (v51 < 1025)
                  {

                    v108 = &v293;
                  }

                  else
                  {

                    v45 = v48;
                    v108 = &v292;
                  }

                  v265 = *(v108 - 32);
                }

                else
                {

                  v45 = v48;
                  v265 = v46;
                }

                v78 = 514;
LABEL_151:
                v267 = v78;
                v16 = v48;
                v276 = v7;
                v110 = v19;
                if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                {
                  goto LABEL_329;
                }

                v111 = v273;
                static String._unconditionallyBridgeFromObjectiveC(_:)(v273);
                v112 = POSIXErrorCode.rawValue.getter();
                v113 = objc_allocWithZone(NSError);
                v114 = String._bridgeToObjectiveCImpl()();

                v104 = [v113 initWithDomain:v114 code:v112 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v115 = [v104 domain];
                v116 = static String._unconditionallyBridgeFromObjectiveC(_:)(v115);
                v118 = v117;

                if (v116 == static String._unconditionallyBridgeFromObjectiveC(_:)(v111) && v118 == v119)
                {

                  v19 = v110;
                }

                else
                {
                  v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v19 = v110;
                  if ((v120 & 1) == 0)
                  {
                    goto LABEL_318;
                  }
                }

                v7 = v276;
                v43 = v265;
LABEL_157:

                URL.init(_fileManagerFailableFileURLWithPath:)(v43, v45, &v287);

                v121 = v287;
                v122 = v288;
                v265 = String._bridgeToObjectiveCImpl()();

                if (v121)
                {
                  v123 = swift_getObjectType();
                  v258 = (*(v122 + 432))(v123, v122);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v258 = 0;
                }

                v276 = v7;
                v266 = v19;
                if (v104)
                {
                  v284 = v104;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v124 = v104;
                  v125 = _getErrorEmbeddedNSError<A>(_:)();

                  if (v125)
                  {
                  }

                  else
                  {
                    swift_allocError();
                    *v126 = v124;
                  }

                  v261 = v124;
                  v252 = _swift_stdlib_bridgeErrorToNSError();
                }

                else
                {
                  v261 = 0;
                  v252 = 0;
                }

                v21 = objc_opt_self();
                v22 = String._bridgeToObjectiveCImpl()();
                v23 = v269;
                v24 = String._bridgeToObjectiveCImpl()();
                v25 = [v21 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v26 = v25;
                v27 = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v26, v271, v23, v270, v16, &selRef_fileManager_shouldProceedAfterError_copyingItemAtURL_toURL_, &selRef_fileManager_shouldProceedAfterError_copyingItemAtPath_toPath_);

                if ((v27 & 1) == 0)
                {
                  swift_willThrow();
                  v227 = v274;
                  LOBYTE(v19) = v266;
                  v16 = v268;
                  goto LABEL_314;
                }

                outlined consume of _FTSSequence.Element?(v268, v274, v275, v266);
                v7 = v276;
LABEL_11:
                v9 = v277;
                goto LABEL_12;
              }

LABEL_99:
              v265 = v43;
              v78 = 512;
              goto LABEL_151;
            }
          }

          v265 = v43;
          v78 = 640;
          goto LABEL_151;
        }

        if (v18 > 12)
        {
          if (v18 != 13)
          {
            if (v18 == 17)
            {
              v265 = v43;
              v78 = 516;
              goto LABEL_151;
            }

            goto LABEL_99;
          }
        }

        else if (v18 != 1)
        {
          if (v18 == 2)
          {
            v265 = v43;
            v78 = 4;
            goto LABEL_151;
          }

          goto LABEL_99;
        }

        v265 = v43;
        v78 = 513;
        goto LABEL_151;
      }

      goto LABEL_46;
    }

    if ((v32 & 0x80000000) != 0)
    {
      goto LABEL_317;
    }

    if (!copyfile(fts_path, v277, 0, v32 | v251))
    {
      goto LABEL_12;
    }

    v275 = v18;
    LODWORD(v18) = MEMORY[0x1865CA7A0]();
    v65 = String.init(cString:)();
    v67 = v66;
    v68 = String.init(cString:)();
    v70 = v69;

    v270 = v67;
    v265 = v70;
    v269 = v65;
    v267 = v68;
    if (v18 <= 27)
    {
      if (v18 > 12)
      {
        if (v18 != 13)
        {
          if (v18 == 17)
          {
            v276 = v7;
            v256 = v65;
            v103 = 516;
            goto LABEL_180;
          }

LABEL_147:
          v276 = v7;
          v256 = v65;
          v103 = 512;
          goto LABEL_180;
        }
      }

      else if (v18 != 1)
      {
        if (v18 == 2)
        {
          v276 = v7;
          v256 = v65;
          v103 = 4;
LABEL_180:
          v262 = v103;
          v133 = v17;
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_329;
          }

          v134 = v273;
          static String._unconditionallyBridgeFromObjectiveC(_:)(v273);
          v135 = POSIXErrorCode.rawValue.getter();
          v136 = objc_allocWithZone(NSError);
          v137 = String._bridgeToObjectiveCImpl()();

          v138 = [v136 initWithDomain:v137 code:v135 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v271 = v138;
          v139 = [v138 domain];
          v140 = static String._unconditionallyBridgeFromObjectiveC(_:)(v139);
          v142 = v141;

          if (v140 == static String._unconditionallyBridgeFromObjectiveC(_:)(v134) && v142 == v143)
          {
          }

          else
          {
            v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v144 & 1) == 0)
            {
              goto LABEL_321;
            }
          }

          v17 = v133;
          v7 = v276;
          v109 = v271;
          goto LABEL_186;
        }

        goto LABEL_147;
      }

      v276 = v7;
      v256 = v65;
      v103 = 513;
      goto LABEL_180;
    }

    if (v18 <= 62)
    {
      if (v18 != 28)
      {
        if (v18 == 30)
        {
          v276 = v7;
          v256 = v65;
          v103 = 642;
          goto LABEL_180;
        }

        goto LABEL_147;
      }

LABEL_119:
      v276 = v7;
      v256 = v65;
      v103 = 640;
      goto LABEL_180;
    }

    if (v18 != 102)
    {
      if (v18 != 69)
      {
        if (v18 == 63)
        {

          v71 = v68;
          v72 = String._lastPathComponent.getter(v68, v70);
          v73 = v7;
          v75 = specialized String.withFileSystemRepresentation<A>(_:)(v72, v74);
          v76 = v71;

          v77 = specialized String.withFileSystemRepresentation<A>(_:)(v71, v70);
          v276 = v73;
          if (v75 <= 255)
          {
            v67 = v270;
            if (v77 < 1025)
            {

              v129 = &v291;
            }

            else
            {

              v67 = v70;
              v129 = &v290;
            }

            v256 = *(v129 - 32);
          }

          else
          {

            v67 = v70;
            v256 = v76;
          }

          v103 = 514;
          goto LABEL_180;
        }

        goto LABEL_147;
      }

      goto LABEL_119;
    }

    v109 = 0;
    v256 = v65;
    v262 = 512;
LABEL_186:

    URL.init(_fileManagerFailableFileURLWithPath:)(v256, v67, &v287);

    v145 = v287;
    v146 = v288;
    v276 = String._bridgeToObjectiveCImpl()();

    if (v145)
    {
      v147 = swift_getObjectType();
      v259 = (*(v146 + 432))(v147, v146);
      swift_unknownObjectRelease();
    }

    else
    {
      v259 = 0;
    }

    v274 = v17;
    if (v109)
    {
      v284 = v109;
      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
      v148 = v109;
      v149 = _getErrorEmbeddedNSError<A>(_:)();

      v271 = v148;
      if (v149)
      {
        goto LABEL_210;
      }

LABEL_229:
      swift_allocError();
      *v184 = v148;
LABEL_230:
      v253 = _swift_stdlib_bridgeErrorToNSError();
      goto LABEL_231;
    }

    v271 = 0;
    v253 = 0;
LABEL_231:
    v185 = objc_opt_self();
    v186 = String._bridgeToObjectiveCImpl()();
    v187 = String._bridgeToObjectiveCImpl()();
    v263 = [v185 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v188 = v263;
    v189 = v188;
    v190 = v269;
    v191 = v270;
    v192 = v267;
    v193 = &v289;
LABEL_232:
    v194 = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v188, v190, v191, v192, *(v193 - 32), &selRef_fileManager_shouldProceedAfterError_copyingItemAtURL_toURL_, &selRef_fileManager_shouldProceedAfterError_copyingItemAtPath_toPath_);

    if ((v194 & 1) == 0)
    {
      swift_willThrow();
      v227 = v274;
      goto LABEL_314;
    }

    outlined consume of _FTSSequence.Element?(v16, v274, v275, v19);
    v9 = v277;
LABEL_12:
    v16 = _FTSSequence.Iterator.next()();
    v17 = v28;
    v18 = v29;
    v19 = v30;
    if (v30 == 0xFF)
    {
    }
  }

  v275 = v18;
  if (v16 <= 26)
  {
    switch(v16)
    {
      case 1:
        goto LABEL_255;
      case 2:
        v214 = 260;
        break;
      case 0xD:
LABEL_255:
        v214 = 257;
        break;
      default:
LABEL_261:
        v214 = 256;
        break;
    }

LABEL_264:
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_331;
    }

    v216 = v273;
    isTaggedPointer = _objc_isTaggedPointer(v273);
    v218 = v216;
    v219 = v218;
    v274 = v17;
    v283 = v214;
    if (!isTaggedPointer)
    {
      goto LABEL_270;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v218);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_300;
        }

LABEL_270:
        LOBYTE(v284) = 0;
        v287 = 0;
        LOBYTE(v285) = 0;
        v286 = 0;
        IsCF = __CFStringIsCF();
        if (!IsCF)
        {
          v222 = v219;
          String.init(_nativeStorage:)();
          if (v223 || (v287 = [(__CFString *)v222 length]) == 0)
          {

            goto LABEL_300;
          }

          goto LABEL_299;
        }

        if (v287)
        {
          if (v286 == 1)
          {
            if (v284)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_300:
            v231 = POSIXErrorCode.rawValue.getter();
            v232 = objc_allocWithZone(NSError);
            v233 = String._bridgeToObjectiveCImpl()();

            v215 = [v232 initWithDomain:v233 code:v231 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v234 = [v215 domain];
            v235 = static String._unconditionallyBridgeFromObjectiveC(_:)(v234);
            v237 = v236;

            if (v235 == static String._unconditionallyBridgeFromObjectiveC(_:)(v273) && v237 == v238)
            {

              v18 = v275;
              goto LABEL_304;
            }

            v239 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v18 = v275;
            if (v239)
            {
LABEL_304:
              v17 = v274;
              goto LABEL_305;
            }

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
          }

          if (v285)
          {
            if (v284 != 1)
            {
              IsCF = [(__CFString *)v219 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v228 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v230 = HIBYTE(v229) & 0xF;
            if ((v229 & 0x2000000000000000) == 0)
            {
              v230 = v228 & 0xFFFFFFFFFFFFLL;
            }

            if (v230)
            {
              goto LABEL_297;
            }
          }

LABEL_299:
          String.init(_cocoaString:)();
          goto LABEL_300;
        }

LABEL_297:

        goto LABEL_300;
      }

      v224 = [(__CFString *)v219 UTF8String];
      if (!v224)
      {
        __break(1u);
LABEL_329:
        v287 = 0xD000000000000014;
        v288 = 0x80000001814813E0;
        for (LODWORD(v284) = v18; ; LODWORD(v284) = v16)
        {
          v250 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v250);

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_331:
          v287 = 0;
          v288 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v287 = 0xD000000000000014;
          v288 = 0x80000001814813E0;
        }
      }

      String.init(utf8String:)(v224);
      if (v225)
      {
        goto LABEL_297;
      }

      __break(1u);
    }

    v285 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v226)
    {
      [(__CFString *)v219 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_300;
    }

    goto LABEL_297;
  }

  if (v16 == 27)
  {
    v214 = 263;
    goto LABEL_264;
  }

  if (v16 == 63)
  {
    v214 = 258;
    goto LABEL_264;
  }

  if (v16 != 102)
  {
    goto LABEL_261;
  }

  v215 = 0;
  v283 = 256;
LABEL_305:
  outlined copy of _FTSSequence.Element(v16, v17, v18, 1);
  URL.init(_fileManagerFailableFileURLWithPath:)(v17, v18, &v287);
  outlined consume of _FTSSequence.Element?(v16, v17, v18, v19);
  v240 = v287;
  v241 = v288;
  v242 = String._bridgeToObjectiveCImpl()();
  if (v240)
  {
    v243 = swift_getObjectType();
    v244 = (*(v241 + 432))(v243, v241);
    swift_unknownObjectRelease();
    v245 = v17;
    if (v215)
    {
      goto LABEL_307;
    }

LABEL_310:
    v247 = 0;
  }

  else
  {
    v244 = 0;
    v245 = v17;
    if (!v215)
    {
      goto LABEL_310;
    }

LABEL_307:
    v284 = v215;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v215 = v215;
    v246 = _getErrorEmbeddedNSError<A>(_:)();

    if (v246)
    {
    }

    else
    {
      swift_allocError();
      *v248 = v215;
    }

    v247 = _swift_stdlib_bridgeErrorToNSError();
  }

  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  swift_willThrow();
  v227 = v245;
LABEL_314:
  outlined consume of _FTSSequence.Element?(v16, v227, v275, v19);
}

uint64_t JSONDecoder.nonConformingFloatDecodingStrategy.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v6 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v8 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 40);
  v9 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 48);
  v10 = *(a1 + 16);
  *(v7 + 40) = *a1;
  *(v7 + 56) = v10;
  *(v7 + 72) = v3;
  *(v7 + 80) = v4;
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v8, v9);
  v11 = *(v1 + v5);

  os_unfair_lock_unlock(v11 + 4);
}

void _SwiftURL.resolvingSymlinksInPath()(uint64_t *a1@<X8>)
{
  v109 = *v1;
  if ((*(v1 + 48) & 1) == 0)
  {
    if (*(*(v1 + 16) + 48))
    {
      if (!*(v1 + 24) || (v3 = *(v1 + 32), ObjectType = swift_getObjectType(), (*(v3 + 136))(ObjectType, v3), !v5))
      {
LABEL_53:
        *a1 = 0;
        a1[1] = 0;
        return;
      }
    }

    else
    {
      v6 = String.subscript.getter();
      MEMORY[0x1865CAE80](v6);
    }

    v7 = String.lowercased()();

    if (one-time initialization token for fileSchemeUTF8 != -1)
    {
      swift_once();
    }

    v8 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v7._countAndFlagsBits, v7._object);

    if ((v8 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v9 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v10 = String._droppingTrailingSlashes.getter(v9._countAndFlagsBits, v9._object);
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v13 = static _SetStorage.allocate(capacity:)();
  v14 = v13 + 56;
  v15 = *(v13 + 40);
  v16 = byte_1EEED3C08;
  v17 = MEMORY[0x1865CD020](v15, byte_1EEED3C08, 1);
  v18 = -1 << *(v13 + 32);
  v19 = v17 & ~v18;
  v20 = v19 >> 6;
  v21 = *(v13 + 56 + 8 * (v19 >> 6));
  v22 = 1 << v19;
  v23 = *(v13 + 48);
  if (((1 << v19) & v21) != 0)
  {
    v24 = ~v18;
    while (*(v23 + v19) != v16)
    {
      v19 = (v19 + 1) & v24;
      v20 = v19 >> 6;
      v21 = *(v14 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *(v14 + 8 * v20) = v22 | v21;
    *(v23 + v19) = v16;
    v25 = *(v13 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_94;
    }

    *(v13 + 16) = v27;
  }

  v28 = byte_1EEED3C09;
  v17 = MEMORY[0x1865CD020](v15, byte_1EEED3C09, 1);
  v29 = -1 << *(v13 + 32);
  v30 = v17 & ~v29;
  v31 = v30 >> 6;
  v32 = *(v14 + 8 * (v30 >> 6));
  v33 = 1 << v30;
  v34 = *(v13 + 48);
  if (((1 << v30) & v32) == 0)
  {
LABEL_20:
    *(v14 + 8 * v31) = v33 | v32;
    *(v34 + v30) = v28;
    v36 = *(v13 + 16);
    v26 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (!v26)
    {
      *(v13 + 16) = v37;
      goto LABEL_22;
    }

LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v35 = ~v29;
  while (*(v34 + v30) != v28)
  {
    v30 = (v30 + 1) & v35;
    v31 = v30 >> 6;
    v32 = *(v14 + 8 * (v30 >> 6));
    v33 = 1 << v30;
    if (((1 << v30) & v32) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v38 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v38 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v110 = v10;
    v111 = v12;
    MEMORY[0x1EEE9AC00](v17);
    v106 = &v110;
    v107 = v13;
    v108 = 4;

    v15 = 0;
    v39 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v105, v10, v12);
    if (v40 == 1)
    {
      v39 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v10, v12, v13, 4);
    }

    v41 = v39;
    v42 = v40;

    if (!v42)
    {
      v43 = 0;
      v42 = 0xE000000000000000;
      goto LABEL_31;
    }
  }

  else
  {

    v41 = 0;
    v15 = 0;
    v42 = 0xE000000000000000;
  }

  v43 = v41 & 0xFFFFFFFFFFFFLL;
LABEL_31:

  v44 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v44 = v43;
  }

  if (!v44)
  {
    goto LABEL_53;
  }

  v45 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v46 = String._droppingTrailingSlashes.getter(v45._countAndFlagsBits, v45._object);
  v12 = v47;

  v48 = static _SetStorage.allocate(capacity:)();
  v49 = v48 + 56;
  v13 = *(v48 + 40);
  v50 = byte_1EEED3C30;
  v17 = MEMORY[0x1865CD020](v13, byte_1EEED3C30, 1);
  v51 = -1 << *(v48 + 32);
  v52 = v17 & ~v51;
  v53 = v52 >> 6;
  v54 = *(v48 + 56 + 8 * (v52 >> 6));
  v55 = 1 << v52;
  v56 = *(v48 + 48);
  if (((1 << v52) & v54) != 0)
  {
    v57 = ~v51;
    while (*(v56 + v52) != v50)
    {
      v52 = (v52 + 1) & v57;
      v53 = v52 >> 6;
      v54 = *(v49 + 8 * (v52 >> 6));
      v55 = 1 << v52;
      if (((1 << v52) & v54) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    *(v49 + 8 * v53) = v55 | v54;
    *(v56 + v52) = v50;
    v58 = *(v48 + 16);
    v26 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v26)
    {
      goto LABEL_95;
    }

    *(v48 + 16) = v59;
  }

  v60 = byte_1EEED3C31;
  v17 = MEMORY[0x1865CD020](v13, byte_1EEED3C31, 1);
  v61 = -1 << *(v48 + 32);
  v62 = v17 & ~v61;
  v63 = v62 >> 6;
  v64 = *(v49 + 8 * (v62 >> 6));
  v65 = 1 << v62;
  v66 = *(v48 + 48);
  if (((1 << v62) & v64) != 0)
  {
    v67 = ~v61;
    while (*(v66 + v62) != v60)
    {
      v62 = (v62 + 1) & v67;
      v63 = v62 >> 6;
      v64 = *(v49 + 8 * (v62 >> 6));
      v65 = 1 << v62;
      if (((1 << v62) & v64) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    v70 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v70 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v70)
    {
      v110 = v46;
      v111 = v12;
      MEMORY[0x1EEE9AC00](v17);
      v106 = &v110;
      v107 = v48;
      v108 = 4;

      v71 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v105, v46, v12);
      if (v72 == 1)
      {
        v71 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v46, v12, v48, 4);
      }

      v73 = v71;
      v74 = v72;

      if (v74)
      {
LABEL_56:
        if ((specialized Collection.first.getter(v73, v74) & 0x1FF) != 0x7E)
        {
          goto LABEL_78;
        }

        v75 = specialized Collection<>.firstIndex(of:)(47, v73, v74);
        if (v76)
        {
          v77 = HIBYTE(v74) & 0xF;
          if ((v74 & 0x2000000000000000) == 0)
          {
            v77 = v73;
          }

          v78 = v77 << 16;
          if ((v74 & 0x1000000000000000) != 0 && (v73 & 0x800000000000000) == 0)
          {
            v79 = v78 | 0xB;
LABEL_63:
            v80 = HIBYTE(v74) & 0xF;
            if ((v74 & 0x2000000000000000) == 0)
            {
              v80 = v73 & 0xFFFFFFFFFFFFLL;
            }

            if (!v80)
            {
              goto LABEL_97;
            }

            v81 = String.UTF8View._foreignIndex(after:)();
            goto LABEL_71;
          }

          v79 = v78 | 7;
          if ((v74 & 0x1000000000000000) != 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v79 = v75;
          if ((v74 & 0x1000000000000000) != 0)
          {
            goto LABEL_63;
          }
        }

        v81 = 65540;
LABEL_71:
        if (v79 >> 14 == v81 >> 14)
        {
          v82 = static String.homeDirectoryPath()();
          v84 = v83;
LABEL_82:
          v90 = specialized Collection.suffix(from:)(v79, v73, v74);
          v114 = v82;
          v115 = v84;
          v110 = v90;
          v111 = v91;
          v112 = v92;
          v113 = v93;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          String.append<A>(contentsOf:)();

          v73 = v114;
          v88 = v115;
LABEL_83:
          v94 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v94 = v73 & 0xFFFFFFFFFFFFLL;
          }

          if (v94)
          {

            specialized String.withFileSystemRepresentation<A>(_:)(v73, v88, v73, v88);
            v96 = v95;

            if (v96)
            {
            }
          }

          v15 = String._standardizingPath.getter();
          v12 = v97;

          LOBYTE(v17) = _SwiftURL.hasDirectoryPath.getter();
          LOBYTE(v13) = 1;
          if (one-time initialization token for compatibility2 == -1)
          {
            goto LABEL_89;
          }

          goto LABEL_96;
        }

        if (v79 >> 14 < v81 >> 14)
        {
          __break(1u);
LABEL_97:
          __break(1u);
          return;
        }

        v85 = String.subscript.getter();
        MEMORY[0x1865CAE80](v85);

        if (!issetugid() && getenv("CFFIXED_USER_HOME"))
        {
          v86 = String.init(cString:)();
          goto LABEL_81;
        }

        v86 = specialized static Platform.homeDirectory(forUserName:)();
        if (v87)
        {
LABEL_81:
          v82 = String.standardizingPath.getter(v86, v87);
          v84 = v89;

          goto LABEL_82;
        }

LABEL_78:

        v88 = v74;
        goto LABEL_83;
      }
    }

    else
    {
    }

    v73 = 0;
    v74 = 0xE000000000000000;
    goto LABEL_56;
  }

LABEL_44:
  *(v49 + 8 * v63) = v65 | v64;
  *(v66 + v62) = v60;
  v68 = *(v48 + 16);
  v26 = __OFADD__(v68, 1);
  v69 = v68 + 1;
  if (!v26)
  {
    *(v48 + 16) = v69;
    goto LABEL_46;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  v104 = v17;
  swift_once();
  LOBYTE(v17) = v104;
LABEL_89:
  v98 = v13 & ~v17;
  v99 = v109;
  if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v99 = type metadata accessor for _BridgedURL();
    v100 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v100 = &protocol witness table for _SwiftURL;
  }

  LOBYTE(v114) = v98;
  v110 = 0;
  v111 = 0;
  (v100[9])(v15, v12, &v114, &v110);
  v101 = (v100[56])(v99, v100);
  v103 = v102;
  swift_unknownObjectRelease();
  *a1 = v101;
  a1[1] = v103;
}

uint64_t _SwiftURL.hasDirectoryPath.getter()
{
  v1 = v0[2];
  if (v1[168])
  {
    v2 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v2 = String.subscript.getter();
  }

  v3 = MEMORY[0x1865CAE80](v2);
  v5 = v4;

  if ((specialized BidirectionalCollection.last.getter(v3, v5) & 0x1FF) == 0x2F)
  {
LABEL_27:

    return 1;
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if (String._lastPathComponent.getter(v3, v5) == 46 && v7 == 0xE100000000000000)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        Path = String._lastPathComponent.getter(v3, v5);
        v12 = v11;

        if (Path != 11822 || v12 != 0xE200000000000000)
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v14 & 1;
        }
      }
    }

    goto LABEL_27;
  }

  if (v1[48])
  {
    if (v1[72] == 1 && v1[96] == 1 && v1[120] == 1 && v1[144] == 1 && v0[3])
    {
      v16 = v0[4];
      ObjectType = swift_getObjectType();
      return (*(v16 + 304))(ObjectType, v16) & 1;
    }
  }

  else
  {
    String.subscript.getter();
  }

  return 0;
}

void *mallocAcquire(void *result, uint64_t (*a2)(void *), int a3)
{
  v3 = result;
  if (a3)
  {
    v4 = a2(result);
    v5 = malloc_type_calloc(1uLL, v4, 0xCD470835uLL);

    return memmove(v5, v3, v4);
  }

  return result;
}

id StringProtocol.precomposedStringWithCompatibilityMapping.getter(uint64_t a1, uint64_t a2)
{

  return StringProtocol.decomposedStringWithCanonicalMapping.getter(a1, a2, &selRef_precomposedStringWithCompatibilityMapping);
}

uint64_t __CharacterSetStorage.union(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 16);
  result = CFCharacterSetCreateMutableCopy(0, v8);
  v10 = result;
  if (v7)
  {
    if (result)
    {
LABEL_5:

      a2(v10, *(a1 + 16));
      result = swift_allocObject();
      *(result + 16) = v10;
      *(result + 24) = 1;
      *a3 = result;
      return result;
    }

    __break(1u);
  }

  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *Data._copyBytesHelper(to:from:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a3 - a2;
  if (a3 != a2)
  {
    v6 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v6 != 2)
      {
        if (!(a3 | a2))
        {
          return result;
        }

        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a4 + 16);
      if (v7 > a2)
      {
        __break(1u);
        goto LABEL_26;
      }

      v8 = *(a4 + 24);
      if (v8 >= a3 && v7 <= a3 && v8 >= a2)
      {
        return __DataStorage.copyBytes(to:from:)(result, a2, a3);
      }

      __break(1u);
    }

    else if (!v6)
    {
      if (BYTE6(a5) >= a2 && BYTE6(a5) >= a3)
      {
        v9 = a4;
        v10 = a5;
        v11 = WORD2(a5);
        if (v5 <= 13)
        {
          if (v5 < 1)
          {
            return result;
          }

          return memcpy(result, &v9 + a2, v5);
        }

LABEL_22:
        v5 = 14;
        return memcpy(result, &v9 + a2, v5);
      }

LABEL_27:
      __break(1u);
      return result;
    }

    if (a4 >> 32 >= a3 && a4 <= a3 && a4 >> 32 >= a2 && a4 <= a2)
    {
      return __DataStorage.copyBytes(to:from:)(result, a2, a3);
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

void *Data.copyBytes<A>(to:from:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return 0;
    }

    v11 = *(a6 + 16);
    v10 = *(a6 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (v12)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v9 < 1)
    {
      return 0;
    }
  }

  else if (v8)
  {
    LODWORD(v9) = HIDWORD(a6) - a6;
    if (__OFSUB__(HIDWORD(a6), a6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v9 = v9;
    if (v9 < 1)
    {
      return 0;
    }
  }

  else
  {
    v9 = BYTE6(a7);
    if (!BYTE6(a7))
    {
      return 0;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (a3 != a4)
    {
      v13 = *(a8 - 8);
      a8 -= 8;
      v14 = *(v13 + 72);
      v9 = a2 * v14;
      if ((a2 * v14) >> 64 != (a2 * v14) >> 63)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v8 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      if (v8 < v9)
      {
        v9 = a4 - a3;
      }

      v15 = a3 + v9;
      if (__OFADD__(a3, v9))
      {
        goto LABEL_43;
      }

      if (v15 >= a3)
      {
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_23;
    }

    return 0;
  }

  if (v8)
  {
    if (v8 == 2)
    {
      a3 = *(a6 + 16);
    }

    else
    {
      a3 = a6;
    }

    goto LABEL_25;
  }

LABEL_23:
  a3 = v8;
LABEL_25:
  v16 = *(*(a8 - 8) + 72);
  if ((a2 * v16) >> 64 != (a2 * v16) >> 63)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v9 >= a2 * v16)
  {
    v9 = a2 * v16;
  }

  v15 = a3 + v9;
  if (__OFADD__(a3, v9))
  {
    goto LABEL_39;
  }

  if (v15 < a3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_30:
  if (a3 == v15)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_44;
  }

  v17 = a3;
  Data._copyBytesHelper(to:from:)(result, a3, v15, a6, a7);
  result = (v15 - v17);
  if (__OFSUB__(v15, v17))
  {
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  v8 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v4, v10, type metadata accessor for AttributedString.Runs);
  outlined init with copy of AttributedString.Runs(v10, a3, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_181218E20;
  v12 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  *(v11 + 32) = (*(a2 + 24))(v12, a2);
  *(v11 + 40) = v13;
  v14 = type metadata accessor for AttributedString.Runs.AttributesSlice1();
  *(a3 + *(v14 + 36)) = v11;
  (*(a2 + 32))(v43, v12, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v15 = static _SetStorage.allocate(capacity:)();
  v16 = v15 + 56;
  v17 = v43[0];
  v18 = v43[1];
  Hasher.init(_seed:)();
  v42 = v14;
  if (v18 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v18)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  result = Hasher._finalize()();
  v20 = -1 << *(v15 + 32);
  v21 = result & ~v20;
  v22 = v21 >> 6;
  v23 = *(v16 + 8 * (v21 >> 6));
  v24 = 1 << v21;
  if (((1 << v21) & v23) != 0)
  {
    v40 = v10;
    v41 = a3;
    v25 = ~v20;
    while (1)
    {
      v28 = (*(v15 + 48) + 16 * v21);
      v29 = *v28;
      v30 = v28[1];
      if (v30 == 1)
      {
        break;
      }

      if (v18 == 1)
      {
        goto LABEL_9;
      }

      if (v30)
      {
        if (v18)
        {
          if (v29 == v17 && v30 == v18)
          {
            outlined copy of AttributedString.AttributeRunBoundaries?(v17, v18);
            outlined copy of AttributedString.AttributeRunBoundaries?(v17, v18);

            goto LABEL_30;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of AttributedString.AttributeRunBoundaries?(v29, v30);
          outlined copy of AttributedString.AttributeRunBoundaries?(v17, v18);
          outlined copy of AttributedString.AttributeRunBoundaries?(v29, v30);

          if (v32)
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v17, v18);
            v17 = v29;
            v18 = v30;
LABEL_30:
            v37 = v17;
            v38 = v18;
            goto LABEL_32;
          }
        }

        else
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v28, v28[1]);
          outlined copy of AttributedString.AttributeRunBoundaries?(v17, 0);
          outlined copy of AttributedString.AttributeRunBoundaries?(v29, v30);
        }

        v26 = v29;
        v27 = v30;
      }

      else
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v28, 0);
        if (!v18)
        {
          swift_bridgeObjectRelease_n();
          v37 = v29;
          v38 = 0;
LABEL_32:
          outlined consume of AttributedString.AttributeRunBoundaries?(v37, v38);
          v10 = v40;
          a3 = v41;
LABEL_33:
          v39 = v42;
          outlined destroy of AttributedString.Runs(v10, type metadata accessor for AttributedString.Runs);
          result = outlined destroy of TermOfAddress?(v43, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
          *(a3 + *(v39 + 40)) = v15;
          return result;
        }

        outlined copy of AttributedString.AttributeRunBoundaries?(v17, v18);

        v26 = v29;
        v27 = 0;
      }

LABEL_10:
      result = outlined consume of AttributedString.AttributeRunBoundaries?(v26, v27);
      v21 = (v21 + 1) & v25;
      v22 = v21 >> 6;
      v23 = *(v16 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if ((v23 & (1 << v21)) == 0)
      {
        v10 = v40;
        a3 = v41;
        goto LABEL_26;
      }
    }

    if (v18 == 1)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v28, 1);
      v37 = v29;
      v38 = 1;
      goto LABEL_32;
    }

LABEL_9:
    outlined copy of AttributedString.AttributeRunBoundaries?(*v28, v28[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(v17, v18);
    outlined consume of AttributedString.AttributeRunBoundaries?(v29, v30);
    v26 = v17;
    v27 = v18;
    goto LABEL_10;
  }

LABEL_26:
  *(v16 + 8 * v22) = v23 | v24;
  v33 = (*(v15 + 48) + 16 * v21);
  *v33 = v17;
  v33[1] = v18;
  v34 = *(v15 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (!v35)
  {
    *(v15 + 16) = v36;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of AttributedString.Runs(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation16AttributedStringV4RunsVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v15 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t specialized _JSONSimpleValueArrayElement<>.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, uint64_t a2)
{
  v7[3] = a2;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = *(*(a1 + 16) + 16);
  v7[0] = v3;
  v7[1] = v5;
  specialized String.withUTF8<A>(_:)(v7);

  return *(*(a1 + 16) + 16) - v4;
}

uint64_t outlined destroy of AttributedString.Runs(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation16AttributedStringV4RunsVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation16AttributedStringV4RunsVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedString.AttributeRunBoundaries(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AttributedString.Runs.AttributesSlice1<A>(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t AttributedString.Runs.AttributesSlice1.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v5);
  result = (v8)(a2, v7, a1);
  v10 = *(v7 + 12);
  if (v10 == 2)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v7 + 11);
    v14 = *(v7 + 72);
    v12 = *(*v7 + 16);
    (*(v4 + 8))(v7, a1);
    result = type metadata accessor for AttributedString.Runs.AttributesSlice1.Iterator();
    v13 = a2 + *(result + 36);
    *v13 = v14;
    *(v13 + 16) = v11;
    *(v13 + 24) = v10;
    *(v13 + 32) = v12;
  }

  return result;
}

uint64_t AttributedString.Runs.AttributesSlice1.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v323 = a2;
  v336.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v334.i64[0] = *(v336.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v336.i64[0]);
  v6 = v294 - v5;
  v327.i64[0] = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v327.i64[0]);
  v335 = (v294 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v332 = (v294 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v331 = (v294 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v294 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v333.i64[0] = v294 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v321 = v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v315 = v294 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v314 = v294 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v313 = v294 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v318 = v294 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v317 = v294 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v316 = v294 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v319 = v294 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v322.i64[0] = v294 - v34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = v294 - v37;
  v324 = (v2 + *(a1 + 36));
  v39 = *v324;
  v41 = *(v40 + 16);
  v326 = v3;
  v330 = v40 + 16;
  v328 = v41;
  result = (v41)(v294 - v37, v3, a1, v36);
  if (*(v38 + 26) != 2)
  {
    v43 = *(v38 + 23);
    v45 = *(a1 + 16);
    v44 = *(a1 + 24);
    v329 = a1;
    v46 = type metadata accessor for AttributedString.Runs.AttributesSlice1();
    v47 = *(v46 - 8);
    v48 = *(v47 + 8);
    v49 = v47 + 8;
    v50 = v38;
    v51 = v46;
    v48(v50, v46);
    v325 = v39;
    v337 = v39 >> 10;
    if (v39 >> 10 == v43 >> 10)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for Optional();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v323, 1, 1, TupleTypeMetadata2);
    }

    v305 = v44;
    v306 = v45;
    v53 = v322.i64[0];
    v54 = v326;
    (v328)(v322.i64[0], v326, v329);
    v55 = v333.i64[0];
    outlined init with copy of AttributedString.Runs(v53, v333.i64[0], type metadata accessor for AttributedString.Runs);
    v48(v53, v51);
    v56 = *(v55 + *(v327.i64[0] + 28));
    outlined destroy of AttributedString.Runs(v55, type metadata accessor for AttributedString.Runs);
    v57 = v51;
    v58 = (v334.i64[0] + 8);
    v311 = v48;
    v312 = v57;
    v320 = v49;
    if (v56 == 1)
    {
      v59 = v319;
      (v328)(v319, v54, v329);
      outlined init with copy of AttributedString.Runs(v59, v14, type metadata accessor for AttributedString.Runs);
      v48(v59, v57);
      v60 = v324[2];
      v309 = v324[1];
      *&v310 = v60;
      *(&v310 + 1) = v324[3];
      v334.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v61 = v336.i64[0];
      v62 = RangeSet.Ranges.count.getter();
      v335 = *v58;
      result = v335(v6, v61);
      if (v62 >= 1)
      {
        v63 = 0;
        while (!__OFADD__(v63, v62))
        {
          v64 = (v63 + v62) / 2;
          RangeSet.ranges.getter();
          v65 = v336.i64[0];
          RangeSet.Ranges.subscript.getter();
          result = v335(v6, v65);
          v66 = v338.i64[0] >> 10;
          if (v337 >= v338.i64[0] >> 10)
          {
            v67 = *v340;
            if (v337 < *v340 >> 10)
            {
              v333.i64[0] = v58;
              v300 = v338;
              v299 = v339;
              v80 = *v14;
              v81 = v325;
              AttributedString.Guts.findRun(at:)(v325, *(&v310 + 1), v338.i64);
              v319 = v338.u64[1];
              v321 = v338.i64[0];
              v298 = v341;
              v322 = *&v340[8];
              v83 = *(v80 + 72);
              v82 = *(v80 + 80);
              v84 = *(v80 + 96);
              v307 = *(v80 + 88);
              v308 = v339.i64[0];
              swift_unknownObjectRetain();
              v85 = specialized Rope.subscript.getter(v321, v319, v308, v83, v82, v307, v84);
              v87 = v86;
              v307 = v88;
              result = swift_unknownObjectRelease();
              v89 = v85 + (v322.i64[0] >> 11);
              if (__OFADD__(v85, v322.i64[0] >> 11))
              {
                goto LABEL_88;
              }

              LODWORD(v321) = v66 < v322.i64[0] >> 10;
              if ((v67 >> 11) < v89)
              {
                v89 = v67 >> 11;
              }

              v90 = *(v80 + 40);
              v373 = *(v80 + 24);
              v374 = v90;
              v375 = *(v80 + 56);
              v91 = v329;
              if (__OFSUB__(v89, v81 >> 11))
              {
                goto LABEL_90;
              }

              swift_unknownObjectRetain();
              v296 = BigString.UTF8View.index(_:offsetBy:)();
              v302 = v93;
              v303 = v92;
              v301 = v94;
              swift_unknownObjectRelease();
              v304 = v80;

              outlined destroy of AttributedString.Runs(v14, type metadata accessor for AttributedString.Runs);
              v95 = v316;
              v96 = v326;
              v97 = v328;
              (v328)(v316);
              outlined init with copy of AttributedString.Runs(v95, v331, type metadata accessor for AttributedString.Runs);
              v308 = v87;

              v99 = v311;
              v98 = v312;
              v311(v95, v312);
              v100 = v317;
              (v97)(v317, v96, v91);
              v101 = *&v100[*(v98 + 36)];

              v99(v100, v98);
              v102 = v318;
              (v97)(v318, v326, v91);
              v316 = *(v102 + *(v98 + 40));

              result = (v99)(v102, v98);
              v297 = v101;
              if (!v101[2])
              {
                goto LABEL_92;
              }

              v317 = *v331;
              AttributedString.Guts.findRun(at:)(v325, *(&v310 + 1), v338.i64);
              v294[2] = *&v340[16];
              v295 = *&v340[8];
              v294[0] = v341.i64[1];
              v294[1] = v341.i64[0];
              v363[0] = v338;
              v363[1] = v339;
              v364 = *v340;
              RangeSet.ranges.getter();
              v103 = v336.i64[0];
              v104 = RangeSet.Ranges.count.getter();
              result = v335(v6, v103);
              if (v104 >= 1)
              {
                v105 = 0;
                v106 = vdup_n_s32(v321);
                v107.i64[0] = v106.u32[0];
                v107.i64[1] = v106.u32[1];
                v108 = vcltzq_s64(vshlq_n_s64(v107, 0x3FuLL));
                v299 = vbslq_s8(v108, v298, v299);
                v300 = vbslq_s8(v108, v322, v300);
                while (1)
                {
                  if (__OFADD__(v105, v104))
                  {
                    goto LABEL_86;
                  }

                  v109 = (v105 + v104) / 2;
                  RangeSet.ranges.getter();
                  v110 = v336.i64[0];
                  RangeSet.Ranges.subscript.getter();
                  result = v335(v6, v110);
                  if (v337 >= v338.i64[0] >> 10)
                  {
                    v111 = *v340;
                    v112 = *v340 >> 10;
                    if (v337 < *v340 >> 10)
                    {
                      v113 = *&v340[8];
                      v114 = *&v340[16];
                      v115 = v341.i64[0];
                      v116 = v316;
                      if (*(v316 + 16) != 1 || (specialized Set.contains(_:)(0, 1, v316) & 1) != 0)
                      {
                        v318 = v115;
                        v319 = v111;
                        v321 = v114;
                        v322.i64[0] = v113;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v363, v297, v344);

                        v117 = v317;
                        v118 = *(v317 + 9);
                        v119 = *(v317 + 10);
                        v121 = *(v317 + 11);
                        v120 = *(v317 + 12);
                        v297 = v344[0];
                        v298.i64[0] = v120;
                        v122 = v344[1];
                        v123 = v344[4];
                        v124 = v344[2];
                        swift_unknownObjectRetain();
                        v125 = specialized Rope.subscript.getter(v297, v122, v124, v118, v119, v121, v298.i64[0]);
                        swift_unknownObjectRelease();

                        v126 = v123 + v125;
                        v127 = v325;
                        if (__OFADD__(v123, v125))
                        {
                          goto LABEL_96;
                        }

                        v128 = v117 + 24;
                        v129 = *(v117 + 40);
                        v130 = *(v117 + 56);
                        v370 = *(v117 + 24);
                        v371 = v129;
                        v372 = v130;
                        if (__OFSUB__(v126, v295 >> 11))
                        {
                          goto LABEL_97;
                        }

                        swift_unknownObjectRetain();
                        v131 = BigString.UTF8View.index(_:offsetBy:)();
                        v133 = v132;
                        v135 = v134;
                        v298.i64[0] = v136;
                        result = swift_unknownObjectRelease();
                        if (v131 >> 10 >= v112)
                        {
                          v184 = *v128;
                          v185 = v128[2];
                          v361 = v128[1];
                          v362 = v185;
                          v360 = v184;
                          *&v365 = v127;
                          *(&v365 + 1) = v309;
                          v366 = v310;
                          *&v367 = v319;
                          *(&v367 + 1) = v322.i64[0];
                          v368 = v321;
                          v369 = v318;
                          v186 = *v128;
                          v187 = v128[1];
                          v378 = *(v128 + 4);
                          v376 = v186;
                          v377 = v187;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v376, &v338);
                          v188 = BigString._firstConstraintBreak(in:with:)(&v365, v316);
                          v190 = v189;
                          v192 = v191;
                          v194 = v193;

                          outlined destroy of BigString(&v360);
                          v195 = v326;
                          v196 = v331;
                          v197 = v311;
                          if (v112 != v188 >> 10)
                          {
                            v318 = v194;
                            v319 = v188;
                            v321 = v192;
                            v322.i64[0] = v190;
                          }
                        }

                        else
                        {
                          v137 = v128[1];
                          v360 = *v128;
                          v361 = v137;
                          v362 = v128[2];
                          v138 = v316;
                          if (v131 >> 10 < v337)
                          {
                            goto LABEL_100;
                          }

                          *&v365 = v127;
                          *(&v365 + 1) = v309;
                          v366 = v310;
                          *&v367 = v131;
                          *(&v367 + 1) = v133;
                          v368 = v135;
                          v369 = v298.i64[0];
                          v139 = *v128;
                          v140 = v128[1];
                          v378 = *(v128 + 4);
                          v376 = v139;
                          v377 = v140;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v376, &v338);
                          v141 = BigString._firstConstraintBreak(in:with:)(&v365, v138);
                          v318 = v142;
                          v319 = v141;
                          v321 = v144;
                          v322.i64[0] = v143;

                          v145 = &v360;
LABEL_48:
                          outlined destroy of BigString(v145);
                          v195 = v326;
                          v196 = v331;
                          v197 = v311;
                        }

                        v331 = *(v317 + 2);
                        outlined destroy of AttributedString.Runs(v196, type metadata accessor for AttributedString.Runs);
                        v206 = v313;
                        v207 = v195;
                        v208 = v328;
                        v209 = v329;
                        (v328)(v313, v195, v329);
                        outlined init with copy of AttributedString.Runs(v206, v332, type metadata accessor for AttributedString.Runs);
                        v210 = v206;
                        v211 = v312;
                        v212 = v197;
                        v197(v210, v312);
                        v213 = v314;
                        (v208)(v314, v195, v209);
                        v214 = *(v213 + *(v211 + 36));

                        v212(v213, v211);
                        v215 = v315;
                        (v208)(v315, v207, v209);
                        v330 = *(v215 + *(v211 + 40));

                        result = (v212)(v215, v211);
                        v328 = v214;
                        if (!v214[2])
                        {
                          goto LABEL_94;
                        }

                        v329 = *v332;
                        AttributedString.Guts.findRun(at:)(v319, v318, v338.i64);
                        v216 = *&v340[8];
                        v325 = v341.i64[0];
                        v326 = *&v340[16];
                        v320 = v341.i64[1];
                        v349[0] = v338;
                        v349[1] = v339;
                        v350 = *v340;
                        v217 = *(v327.i64[0] + 24);
                        RangeSet.ranges.getter();
                        v218 = v336.i64[0];
                        v219 = RangeSet.Ranges.count.getter();
                        result = v335(v6, v218);
                        if (v219 >= 1)
                        {
                          v220 = 0;
                          v337 = v319 >> 10;
                          while (1)
                          {
                            if (__OFADD__(v220, v219))
                            {
                              goto LABEL_87;
                            }

                            v221 = (v220 + v219) / 2;
                            RangeSet.ranges.getter();
                            v222 = v336.i64[0];
                            RangeSet.Ranges.subscript.getter();
                            result = v335(v6, v222);
                            if (v337 >= v338.i64[0] >> 10)
                            {
                              v223 = v217;
                              v224 = *v340;
                              v225 = *v340 >> 10;
                              if (v337 < *v340 >> 10)
                              {
                                v226 = *&v340[8];
                                v316 = v341.i64[0];
                                v317 = *&v340[16];
                                v227 = v330;
                                v228 = *(v330 + 16);
                                v327.i64[0] = *&v340[8];
                                if (v228 != 1 || (specialized Set.contains(_:)(0, 1, v330) & 1) != 0)
                                {
                                  AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v349, v328, v345);

                                  v229 = v329;
                                  v231 = *(v329 + 72);
                                  v230 = *(v329 + 80);
                                  v232 = *(v329 + 96);
                                  v314 = *(v329 + 88);
                                  v315 = v230;
                                  v312 = v345[0];
                                  v313 = v232;
                                  v311 = v345[1];
                                  v328 = v345[4];
                                  v233 = v345[2];
                                  swift_unknownObjectRetain();
                                  v234 = specialized Rope.subscript.getter(v312, v311, v233, v231, v315, v314, v313);
                                  v314 = v235;
                                  v315 = v234;
                                  swift_unknownObjectRelease();

                                  v236 = v328 + v315;
                                  if (__OFADD__(v328, v315))
                                  {
                                    goto LABEL_98;
                                  }

                                  v238 = *(v229 + 24);
                                  v237 = (v229 + 24);
                                  v239 = v237[1];
                                  v240 = v237[2];
                                  v357 = v238;
                                  v358 = v239;
                                  v359 = v240;
                                  v328 = &v236[-(v216 >> 11)];
                                  if (__OFSUB__(v236, v216 >> 11))
                                  {
                                    goto LABEL_99;
                                  }

                                  swift_unknownObjectRetain();
                                  v241 = BigString.UTF8View.index(_:offsetBy:)();
                                  v243 = v242;
                                  v328 = v244;
                                  v326 = v245;
                                  result = swift_unknownObjectRelease();
                                  v246 = v332;
                                  if (v241 >> 10 < v225)
                                  {
                                    v247 = v243;
                                    v248 = v237[1];
                                    v346 = *v237;
                                    v347 = v248;
                                    v348 = v237[2];
                                    v249 = v330;
                                    if (v241 >> 10 < v337)
                                    {
                                      goto LABEL_101;
                                    }

                                    *&v351 = v319;
                                    *(&v351 + 1) = v322.i64[0];
                                    *&v352 = v321;
                                    *(&v352 + 1) = v318;
                                    v353 = v241;
                                    v354 = v247;
                                    v355 = v328;
                                    v356 = v326;
                                    v250 = *v237;
                                    v251 = v237[1];
                                    v381 = *(v237 + 4);
                                    v379 = v250;
                                    v380 = v251;
                                    outlined init with copy of Rope<BigString._Chunk>._Node?(&v379, &v338);
                                    v224 = BigString._firstConstraintBreak(in:with:)(&v351, v249);
                                    v253 = v252;
                                    v255 = v254;
                                    v257 = v256;

                                    outlined destroy of BigString(&v346);
LABEL_74:
                                    v280 = *(v329 + 16);
LABEL_75:
                                    v281 = v324;
LABEL_76:
                                    result = outlined destroy of AttributedString.Runs(v246, type metadata accessor for AttributedString.Runs);
                                    if (v337 < *v281 >> 10)
                                    {
                                      goto LABEL_95;
                                    }

                                    v337 = *v281;
                                    v283 = v281[4];
                                    v335 = v281[3];
                                    v336.i64[0] = v283;
                                    v284 = v281[1];
                                    v334.i64[0] = v281[2];
                                    v333.i64[0] = v284;
                                    *v281 = v224;
                                    v281[1] = v253;
                                    v281[2] = v255;
                                    v281[3] = v257;
                                    v281[4] = v280;
                                    v183 = v305;
                                    v173 = v306;
                                    v160 = v296;
                                    v180 = v299;
                                    v179 = v300;
                                    v182 = v318;
                                    v170 = v319;
                                    goto LABEL_78;
                                  }

                                  v258 = *v237;
                                  v259 = v237[2];
                                  v347 = v237[1];
                                  v348 = v259;
                                  v346 = v258;
                                  *&v351 = v319;
                                  *(&v351 + 1) = v322.i64[0];
                                  *&v352 = v321;
                                  *(&v352 + 1) = v318;
                                  v353 = v224;
                                  v354 = v327.i64[0];
                                  v355 = v317;
                                  v356 = v316;
                                  v260 = *v237;
                                  v261 = v237[1];
                                  v381 = *(v237 + 4);
                                  v379 = v260;
                                  v380 = v261;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v379, &v338);
                                  v262 = BigString._firstConstraintBreak(in:with:)(&v351, v330);
                                  v328 = v263;
                                  v227 = v264;
                                  v326 = v265;
                                  outlined destroy of BigString(&v346);
                                  if (v225 != v262 >> 10)
                                  {

                                    v253 = v328;
                                    v280 = *(v329 + 16);
                                    v224 = v262;
                                    v255 = v227;
                                    v257 = v326;
                                    goto LABEL_75;
                                  }

                                  RangeSet.ranges.getter();
                                  v266 = v336.i64[0];
                                  v226 = RangeSet.Ranges.count.getter();
                                  v335(v6, v266);
                                  v267 = v226 - 1;
                                  if (!__OFSUB__(v226, 1))
                                  {
LABEL_70:
                                    if (v221 != v267)
                                    {
                                      RangeSet.ranges.getter();
                                      v282 = v336.i64[0];
                                      RangeSet.Ranges.subscript.getter();

                                      v335(v6, v282);
                                      v253 = v338.i64[1];
                                      v224 = v338.i64[0];
                                      v257 = v339.i64[1];
                                      v255 = v339.i64[0];
                                      goto LABEL_74;
                                    }

                                    v280 = *(v329 + 16);
                                    v281 = v324;
                                    v257 = v316;
                                    v255 = v317;
                                    v253 = v327.i64[0];
                                    goto LABEL_76;
                                  }

                                  __break(1u);
                                }

                                v268 = v329;
                                v269 = *(v329 + 24);
                                v270 = *(v329 + 56);
                                v358 = *(v329 + 40);
                                v359 = v270;
                                v357 = v269;
                                *&v351 = v319;
                                *(&v351 + 1) = v322.i64[0];
                                *&v352 = v321;
                                *(&v352 + 1) = v318;
                                v353 = v224;
                                v354 = v226;
                                v355 = v317;
                                v356 = v316;
                                v271 = *(v329 + 24);
                                *&v348 = *(v329 + 56);
                                v272 = *(v329 + 40);
                                v346 = v271;
                                v347 = v272;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v346, &v338);
                                v273 = BigString._firstConstraintBreak(in:with:)(&v351, v227);
                                v275 = v274;
                                v328 = v276;
                                v326 = v277;
                                outlined destroy of BigString(&v357);
                                if (v225 != v273 >> 10)
                                {

                                  v280 = *(v268 + 16);
                                  v224 = v273;
                                  v253 = v275;
                                  v255 = v328;
                                  v257 = v326;
                                  v281 = v324;
                                  v246 = v332;
                                  goto LABEL_76;
                                }

                                v246 = v332;
                                RangeSet.ranges.getter();
                                v278 = v336.i64[0];
                                v279 = RangeSet.Ranges.count.getter();
                                result = v335(v6, v278);
                                v267 = v279 - 1;
                                if (__OFSUB__(v279, 1))
                                {
                                  goto LABEL_102;
                                }

                                goto LABEL_70;
                              }

                              v220 = v221 + 1;
                              v221 = v219;
                              v217 = v223;
                            }

                            v219 = v221;
                            if (v220 >= v221)
                            {
                              goto LABEL_83;
                            }
                          }
                        }

                        goto LABEL_83;
                      }

                      v198 = *(v317 + 24);
                      v199 = *(v317 + 40);
                      v372 = *(v317 + 56);
                      v370 = v198;
                      v371 = v199;
                      *&v365 = v325;
                      *(&v365 + 1) = v309;
                      v366 = v310;
                      *&v367 = v111;
                      *(&v367 + 1) = v113;
                      v368 = v114;
                      v369 = v115;
                      v200 = *(v317 + 24);
                      *&v362 = *(v317 + 7);
                      v201 = *(v317 + 40);
                      v360 = v200;
                      v361 = v201;
                      outlined init with copy of Rope<BigString._Chunk>._Node?(&v360, &v338);
                      v202 = BigString._firstConstraintBreak(in:with:)(&v365, v116);
                      v318 = v203;
                      v319 = v202;
                      v321 = v205;
                      v322.i64[0] = v204;

                      v145 = &v370;
                      goto LABEL_48;
                    }

                    v105 = v109 + 1;
                    v109 = v104;
                  }

                  v104 = v109;
                  if (v105 >= v109)
                  {
                    goto LABEL_82;
                  }
                }
              }

              goto LABEL_82;
            }

            v63 = v64 + 1;
            v64 = v62;
          }

          v62 = v64;
          if (v63 >= v64)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_84;
      }

LABEL_80:
      __break(1u);
    }

    else
    {
      v68 = v321;
      (v328)(v321, v54, v329);
      outlined init with copy of AttributedString.Runs(v68, v335, type metadata accessor for AttributedString.Runs);
      v48(v68, v57);
      v69 = v324[1];
      v331 = v324[2];
      v332 = v69;
      v321 = v324[3];
      v70 = *(v327.i64[0] + 24);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      v334.i64[0] = v70;
      v333.i64[0] = v71;
      RangeSet.ranges.getter();
      v72 = v336.i64[0];
      v73 = RangeSet.Ranges.count.getter();
      v74 = *v58;
      result = (*v58)(v6, v72);
      if (v73 >= 1)
      {
        v75 = 0;
        while (!__OFADD__(v75, v73))
        {
          v76 = (v75 + v73) / 2;
          RangeSet.ranges.getter();
          v77 = v336.i64[0];
          RangeSet.Ranges.subscript.getter();
          result = v74(v6, v77);
          v78 = v338.i64[0] >> 10;
          if (v337 >= v338.i64[0] >> 10)
          {
            v79 = *v340;
            if (v337 < *v340 >> 10)
            {
              v334 = v338;
              v333 = v339;
              v146 = *v335;
              AttributedString.Guts.findRun(at:)(v325, v321, v338.i64);
              v147 = v338.u64[1];
              v337 = v338.i64[0];
              v148 = v339.i64[0];
              v327 = v341;
              v336 = *&v340[8];
              v149 = *(v146 + 72);
              v150 = *(v146 + 80);
              v152 = *(v146 + 88);
              v151 = *(v146 + 96);
              swift_unknownObjectRetain();
              v153 = specialized Rope.subscript.getter(v337, v147, v148, v149, v150, v152, v151);
              v308 = v154;
              v156 = v155;
              result = swift_unknownObjectRelease();
              v157 = v78 < v336.i64[0] >> 10;
              v158 = v153 + (v336.i64[0] >> 11);
              if (__OFADD__(v153, v336.i64[0] >> 11))
              {
                goto LABEL_89;
              }

              if ((v79 >> 11) < v158)
              {
                v158 = v79 >> 11;
              }

              v159 = *(v146 + 40);
              v365 = *(v146 + 24);
              v366 = v159;
              v367 = *(v146 + 56);
              if (__OFSUB__(v158, v325 >> 11))
              {
                goto LABEL_91;
              }

              swift_unknownObjectRetain();
              v160 = BigString.UTF8View.index(_:offsetBy:)();
              v302 = v162;
              v303 = v161;
              v301 = v163;
              swift_unknownObjectRelease();
              v304 = v146;

              outlined destroy of AttributedString.Runs(v335, type metadata accessor for AttributedString.Runs);
              v164 = v322.i64[0];
              (v328)(v322.i64[0], v326, v329);
              v165 = v324;
              v166 = v324[4];
              v167 = *(v324 + 1);
              v351 = *v324;
              v352 = v167;
              v353 = v166;

              v307 = v156;

              v168 = v312;
              AttributedString.Runs.AttributesSlice1.index(after:)(&v351, v312, &v338);
              v169 = v165;
              result = (v311)(v164, v168);
              v170 = v338.i64[0];
              v171 = *v165;
              v172 = v338.i64[0] >> 10 >= *v165 >> 10;
              v173 = v306;
              if (!v172)
              {
                goto LABEL_93;
              }

              v337 = v171;
              v174 = vdup_n_s32(v157);
              v175.i64[0] = v174.u32[0];
              v175.i64[1] = v174.u32[1];
              v176 = vcltzq_s64(vshlq_n_s64(v175, 0x3FuLL));
              v177 = v338.i64[1];
              v178 = v339.i64[0];
              v179 = vbslq_s8(v176, v336, v334);
              v180 = vbslq_s8(v176, v327, v333);
              v182 = v339.u64[1];
              v181 = *v340;
              v336.i64[0] = v169[4];
              v335 = v169[3];
              v334.i64[0] = v169[2];
              v333.i64[0] = v169[1];
              *v169 = v338.i64[0];
              v169[1] = v177;
              v321 = v178;
              v322.i64[0] = v177;
              v169[2] = v178;
              v169[3] = v182;
              v331 = v181;
              v169[4] = v181;
              v183 = v305;
LABEL_78:
              v285 = v308;
              v338.i64[0] = v308;
              v338.i64[1] = v307;
              v339 = v179;
              *v340 = v180;
              *&v340[16] = v160;
              v341.i64[0] = v303;
              v341.i64[1] = v302;
              v342 = v301;
              v343 = v304;
              swift_getAssociatedTypeWitness();
              type metadata accessor for Optional();
              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
              v286 = swift_getTupleTypeMetadata2();
              v287 = v323;
              v288 = (v323 + *(v286 + 48));
              AttributedString._AttributeStorage.subscript.getter(v285, v173, v183, v323);
              outlined destroy of AttributedString.Runs.Run(&v338);

              v289 = v333.i64[0];
              *v288 = v337;
              v288[1] = v289;
              v291 = v335;
              v290 = v336.i64[0];
              v288[2] = v334.i64[0];
              v288[3] = v291;
              v288[4] = v290;
              v288[5] = v170;
              v292 = v321;
              v288[6] = v322.i64[0];
              v288[7] = v292;
              v293 = v331;
              v288[8] = v182;
              v288[9] = v293;
              return (*(*(v286 - 8) + 56))(v287, 0, 1, v286);
            }

            v75 = v76 + 1;
            v76 = v73;
          }

          v73 = v76;
          if (v75 >= v76)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_85;
      }
    }

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
LABEL_86:
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
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
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
  }

  __break(1u);
  return result;
}

void AttributedString.Runs.AttributesSlice1.index(after:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v227 - v10;
  *(&v264 + 1) = *&v3[*(a2 + 36)];
  v258 = *(*(&v264 + 1) + 16);
  if (!v258)
  {
    goto LABEL_177;
  }

  v243 = a3;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v255 = *&v3[*(a2 + 40)];
  v16 = v3;
  v17 = *v3;
  v253 = v12;
  v247 = v15;
  v248 = v13;
  v251 = v14;
  AttributedString.Guts.findRun(at:)(v12, v15, &v290);
  v254 = v291;
  v252 = v292;
  v18 = v293;
  v249 = v290;
  v250 = v294;
  v238 = v296;
  v239 = v295;
  v236 = v297;
  v237 = *(&v296 + 1);
  v19 = *(type metadata accessor for AttributedString.Runs() + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v272 = v16;
  v269 = v20;
  v270 = v19;
  RangeSet.ranges.getter();
  v21 = RangeSet.Ranges.count.getter();
  v22 = *(v9 + 8);
  v267 = v11;
  v268 = v9 + 8;
  v271 = v22;
  (v22)(v11, v8);
  if (v21 < 1)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v23 = 0;
  v24 = v253 >> 10;
  while (1)
  {
    if (__OFADD__(v23, v21))
    {
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v4 = (v23 + v21) / 2;
    v25 = v267;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v271)(v25, v8);
    if (v24 >= v290 >> 10)
    {
      break;
    }

LABEL_4:
    v21 = v4;
    if (v23 >= v4)
    {
      goto LABEL_170;
    }
  }

  v26 = v294;
  if (v24 >= v294 >> 10)
  {
    v23 = v4 + 1;
    v4 = v21;
    goto LABEL_4;
  }

  v246 = v294 >> 10;
  v244 = v295;
  v245 = v296;
  v27 = v255;
  v28 = *(v255 + 16);
  v257 = v17;
  v240 = v294;
  v241 = v24;
  v231 = v8;
  if (v28 == 1 && (specialized Set.contains(_:)(0, 1, v255) & 1) == 0)
  {
    v31 = v17[3];
    v32 = v17[4];
    v33 = v17[6];
    *(&v264 + 1) = v17[5];
    v265 = v32;
    v34 = v17[8];
    v263 = v17[7];
    *&v264 = v33;
    v262 = v34;
    *&v303 = v253;
    v35 = v247;
    *(&v303 + 1) = v248;
    v36 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    *&v305 = v26;
    v38 = v244;
    v37 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v266 = v31;
    swift_unknownObjectRetain();
    v40 = specialized Set.contains(_:)(0, 0, v27);
    v41 = v38;
    v42 = v37;
    v43 = v35;
    v44 = v36;
    v45 = v248;
    if (v40)
    {
      *&v323 = v266;
      *(&v323 + 1) = v265;
      *&v324 = *(&v264 + 1);
      *(&v324 + 1) = v264;
      *&v325 = v263;
      *(&v325 + 1) = v262;
      BigString.UTF8View.subscript.getter();
      v278 = v253;
      v279 = v45;
      v280 = v44;
      v281 = v43;
      v282 = v253;
      v283 = v45;
      v284 = v44;
      v285 = v43;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      outlined destroy of BigSubstring.UTF8View(&v308);
      v26 = v240;
      v41 = v244;
      v39 = *(&v245 + 1);
      v42 = v245;
      if (*(&v296 + 1) != 2)
      {
        v26 = v294;
        if (v24 > v294 >> 10)
        {
          goto LABEL_189;
        }

        v41 = v295;
        v39 = *(&v296 + 1);
        v42 = v296;
        v43 = v247;
        v45 = v248;
        v44 = v251;
      }
    }

    *&v273 = v253;
    *(&v273 + 1) = v45;
    *&v274 = v44;
    *(&v274 + 1) = v43;
    *&v275 = v26;
    *(&v275 + 1) = v41;
    v261 = v41;
    *&v276 = v42;
    *(&v276 + 1) = v39;
    v46 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v47 = v46 + 56;
      v48 = 1 << *(v46 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v46 + 56);
      v51 = (v48 + 63) >> 6;

      v52 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      while (v50)
      {
LABEL_28:
        v55 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v56 = (*(v255 + 48) + ((v52 << 10) | (16 * v55)));
        v57 = v56[1];
        if (v57 >= 2)
        {
          v58 = specialized Collection.first.getter(*v56, v57);
          if ((v58 & 0x100000000) == 0)
          {
            v260 = v58;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
            }

            v60 = *(v53 + 2);
            v59 = *(v53 + 3);
            v61 = v60 + 1;
            v62 = v260;
            if (v60 >= v59 >> 1)
            {
              v259 = v60 + 1;
              v63 = v53;
              v64 = v60;
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v63);
              v61 = v259;
              v62 = v260;
              v60 = v64;
              v53 = v65;
            }

            *(v53 + 2) = v61;
            *&v53[4 * v60 + 32] = v62;
          }
        }
      }

      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_175;
        }

        if (v54 >= v51)
        {

          v318 = v266;
          v319 = v265;
          *&v320 = *(&v264 + 1);
          *(&v320 + 1) = v264;
          v321 = v263;
          v322 = v262;
          BigString.UnicodeScalarView.subscript.getter();
          v189 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v53);
          v265 = v190;
          v192 = v191;
          v194 = v193;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v194 == 2)
          {
            goto LABEL_140;
          }

          if (v241 <= v189 >> 10)
          {
            v26 = v189;
            v261 = v265;
            v42 = v192;
            v39 = v194;
            goto LABEL_140;
          }

          goto LABEL_190;
        }

        v50 = *(v47 + 8 * v54);
        ++v52;
        if (v50)
        {
          v52 = v54;
          goto LABEL_28;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_140:
    if (v246 == v26 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v195 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v195 - 1;
      v39 = v243;
      if (__OFSUB__(v195, 1))
      {
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

LABEL_142:
      v196 = v257;
      if (v4 == v186)
      {
        v197 = v257[2];
        v199 = v244;
        v198 = v245;
        *v39 = v240;
        v39[1] = v199;
        *(v39 + 1) = __PAIR128__(*(&v245 + 1), v198);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v271)(v151, v184);
        v197 = v196[2];
        v200 = v287;
        *v39 = v286;
        *(v39 + 1) = v200;
      }

      v39[4] = v197;
      return;
    }

    v187 = v257[2];
    v188 = v243;
    v201 = v261;
    *v243 = v26;
    v188[1] = v201;
    v188[2] = v42;
LABEL_147:
    v188[3] = v39;
    v188[4] = v187;
    return;
  }

  v29 = *(v272 + 15);
  if (v18 != v29)
  {
LABEL_37:
    if (v18 >= v29)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v232 = *(v272 + 15);
    v66 = v17[9];
    v67 = v17[10];
    v68 = v17[11];
    v69 = v17[12];
    v266 = v18;
    swift_unknownObjectRetain();
    v70 = v249;
    v71 = v254;
    v72 = v252;
    specialized Rope.subscript.getter(v249, v254, v252, v66, v67, v68, v69);
    v256 = v73;
    v229 = v74;
    swift_unknownObjectRelease();
    v75 = v70;
    v76 = v17[9];
    v77 = v266 + 1;
    v18 = v72;
    v230 = *(&v264 + 1) + 40;
    v79 = v17[11];
    v78 = v17[12];
    v290 = v75;
    v291 = v71;
    v292 = v72;
LABEL_39:
    if (v75 != v78)
    {
      goto LABEL_178;
    }

    v235 = v77;
    v242 = v78;
    v266 = v79;
    if (v18)
    {
      v80 = *(v18 + 24 * ((v254 >> ((4 * *(v18 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v80 = specialized Rope._Node.subscript.getter(v254, v76);
    }

    if (__OFADD__(v250, v80))
    {
      goto LABEL_179;
    }

    if (v76)
    {
      v81 = ((-15 << ((4 * *(v76 + 18) + 8) & 0x3C)) - 1) & *(v76 + 18) | (*(v76 + 16) << ((4 * *(v76 + 18) + 8) & 0x3C));
    }

    else
    {
      v81 = 0;
    }

    if (v254 >= v81)
    {
      goto LABEL_180;
    }

    v228 = v250 + v80;
    if (v18 && (v82 = (4 * *(v18 + 18) + 8) & 0x3C, v83 = ((v254 >> v82) & 0xF) + 1, v83 < *(v18 + 16)))
    {
      v234 = (v83 << v82) | ((-15 << v82) - 1) & v254;
      swift_unknownObjectRelease();
    }

    else
    {
      if ((specialized Rope._Node.formSuccessor(of:)(&v290, v76) & 1) == 0)
      {
        v84 = v256;
        if (v76)
        {
          v87 = *(v76 + 18);
          v88 = *(v76 + 16);
          swift_unknownObjectRelease();
          v85 = 0;
          v234 = ((-15 << ((4 * v87 + 8) & 0x3C)) - 1) & v87 | (v88 << ((4 * v87 + 8) & 0x3C));
        }

        else
        {
          v234 = 0;
          v85 = 0;
        }

        v86 = v242;
LABEL_58:
        if (v232 >= v235)
        {
          if (v235 == v232)
          {
            v89 = *(v272 + 22);
            if (*(v272 + 26) == 2)
            {
              if (v89 == 2)
              {
                goto LABEL_171;
              }
            }

            else if (v89 != 2 && (*(v272 + 19) ^ *(v272 + 23)) < 1024)
            {
              goto LABEL_171;
            }
          }

          if (v86 != v17[12])
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v249 = v86;
          v252 = v18;
          v227 = v85;
          if (v85)
          {
            v90 = v85 + 24 * ((v234 >> ((4 * *(v85 + 18) + 8) & 0x3C)) & 0xF);
            v92 = *(v90 + 32);
            v91 = *(v90 + 40);

            v233 = v91;
          }

          else
          {
            v93 = v17[9];
            swift_unknownObjectRetain();
            specialized Rope._Node.subscript.getter(v234, v93);
            v92 = v94;
            v233 = v95;
            swift_unknownObjectRelease();
          }

          v96 = 0;
          v97 = v230;
          v259 = v92;
          while (1)
          {
            if (v96 >= *(*(&v264 + 1) + 16))
            {
              goto LABEL_173;
            }

            v265 = v97;
            v266 = v96;
            v99 = *(v97 - 1);
            v98 = *v97;
            if (*(v84 + 16))
            {

              v100 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
              if (v101)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v84 + 56) + 72 * v100, &v308);
                if (!*(v92 + 16))
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v312 = 0;
                v310 = 0u;
                v311 = 0u;
                v308 = 0u;
                v309 = 0u;
                if (!*(v92 + 16))
                {
LABEL_82:

LABEL_83:
                  v307 = 0;
                  v305 = 0u;
                  v306 = 0u;
                  v303 = 0u;
                  v304 = 0u;
                  goto LABEL_84;
                }
              }
            }

            else
            {
              v312 = 0;
              v310 = 0u;
              v311 = 0u;
              v308 = 0u;
              v309 = 0u;

              if (!*(v92 + 16))
              {
                goto LABEL_82;
              }
            }

            v102 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
            v104 = v103;

            if ((v104 & 1) == 0)
            {
              goto LABEL_83;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v92 + 56) + 72 * v102, &v303);
LABEL_84:
            outlined init with copy of AttributedString._AttributeValue?(&v308, &v290);
            outlined init with copy of AttributedString._AttributeValue?(&v303, &v298);
            if (v293)
            {
              outlined init with copy of AttributedString._AttributeValue?(&v290, &v278);
              if (!*(&v299 + 1))
              {
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(&v278);
LABEL_94:
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_96:

                goto LABEL_97;
              }

              v275 = v300;
              v276 = v301;
              v277 = v302;
              v273 = v298;
              v274 = v299;
              v105 = v281;
              v261 = v282;
              v260 = __swift_project_boxed_opaque_existential_1(&v278, v281);
              v106 = __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
              *&v264 = &v227;
              v107 = *(v105 - 8);
              MEMORY[0x1EEE9AC00](v106);
              v109 = &v227 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
              v263 = &v227;
              v111 = MEMORY[0x1EEE9AC00](v110);
              (*(v113 + 16))(&v227 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0), v111);
              v114 = type metadata accessor for Optional();
              v262 = &v227;
              v115 = *(v114 - 8);
              MEMORY[0x1EEE9AC00](v114);
              v117 = &v227 - v116;
              v118 = swift_dynamicCast();
              v119 = *(v107 + 56);
              if (!v118)
              {
                v119(v117, 1, 1, v105);
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                (*(v115 + 8))(v117, v114);
                outlined destroy of AttributedString._AttributeValue(&v273);
                outlined destroy of AttributedString._AttributeValue(&v278);
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                v17 = v257;
                goto LABEL_96;
              }

              v119(v117, 0, 1, v105);
              (*(v107 + 32))(v109, v117, v105);
              v120 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v107 + 8))(v109, v105);
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(&v273);
              outlined destroy of AttributedString._AttributeValue(&v278);
              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v84 = v256;
              v17 = v257;
              if ((v120 & 1) == 0)
              {
                goto LABEL_96;
              }
            }

            else
            {
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (*(&v299 + 1))
              {
                goto LABEL_94;
              }

              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            v96 = v266 + 1;
            v97 = v265 + 2;
            v92 = v259;
            if (v258 == v266 + 1)
            {

              v76 = v17[9];
              v79 = v17[11];
              v78 = v17[12];
              v250 = v228;
              v75 = v249;
              v290 = v249;
              v291 = v234;
              v18 = v227;
              v254 = v234;
              v292 = v227;
              v77 = v235 + 1;
              if (!__OFADD__(v235, 1))
              {
                goto LABEL_39;
              }

              __break(1u);
              goto LABEL_92;
            }
          }
        }

LABEL_171:

        goto LABEL_98;
      }

      swift_unknownObjectRelease();
      v234 = v291;
    }

    v84 = v256;
    v85 = v292;
    v86 = v290;
    goto LABEL_58;
  }

  v30 = *(v272 + 22);
  if (*(v272 + 26) != 2)
  {
    if (v30 == 2 || (*(v272 + 19) ^ *(v272 + 23)) >= 1024)
    {
      goto LABEL_92;
    }

    goto LABEL_37;
  }

  if (v30 == 2)
  {
    goto LABEL_37;
  }

LABEL_92:
  v242 = v249;
LABEL_97:
  v18 = v252;
LABEL_98:
  v121 = v17[9];
  v122 = v17[10];
  v123 = v17[11];
  v124 = v17[12];
  swift_unknownObjectRetain();
  v125 = specialized Rope.subscript.getter(v242, v254, v18, v121, v122, v123, v124);
  swift_unknownObjectRelease();

  if (__OFADD__(v250, v125))
  {
    goto LABEL_182;
  }

  v126 = *(v17 + 5);
  v323 = *(v17 + 3);
  v324 = v126;
  v325 = *(v17 + 7);
  if (__OFSUB__(v250 + v125, v239 >> 11))
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  swift_unknownObjectRetain();
  v127 = BigString.UTF8View.index(_:offsetBy:)();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  swift_unknownObjectRelease();
  v134 = v127 >> 10;
  v135 = v17[3];
  v137 = v17[5];
  v136 = v17[6];
  v263 = v17[4];
  *&v264 = v137;
  *(&v264 + 1) = v136;
  v138 = v17[8];
  v265 = v17[7];
  v266 = v138;
  if (v127 >> 10 >= v246)
  {
    v147 = v253;
    *&v303 = v253;
    v149 = v247;
    v148 = v248;
    *(&v303 + 1) = v248;
    v150 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    v151 = v240;
    *&v305 = v240;
    v152 = v244;
    v153 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v262 = v135;
    swift_unknownObjectRetain();
    v154 = specialized Set.contains(_:)(0, 0, v255);
    v155 = v152;
    v156 = v241;
    if (v154)
    {
      v318 = v262;
      v319 = v263;
      v320 = v264;
      v321 = v265;
      v322 = v266;
      BigString.UTF8View.subscript.getter();
      v278 = v147;
      v279 = v148;
      v280 = v251;
      v281 = v149;
      v282 = v147;
      v283 = v148;
      v284 = v251;
      v285 = v149;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      v150 = v251;
      outlined destroy of BigSubstring.UTF8View(&v308);
      v151 = v240;
      v155 = v244;
      v39 = *(&v245 + 1);
      v153 = v245;
      if (*(&v296 + 1) != 2)
      {
        v151 = v294;
        if (v156 > v294 >> 10)
        {
          goto LABEL_187;
        }

        v155 = v295;
        v39 = *(&v296 + 1);
        v153 = v296;
        v148 = v248;
        v147 = v253;
      }
    }

    *&v273 = v147;
    *(&v273 + 1) = v148;
    *&v274 = v150;
    *(&v274 + 1) = v149;
    *&v275 = v151;
    *(&v275 + 1) = v155;
    v261 = v155;
    *&v276 = v153;
    *(&v276 + 1) = v39;
    v157 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v158 = v157 + 56;
      v159 = 1 << *(v157 + 32);
      v160 = -1;
      if (v159 < 64)
      {
        v160 = ~(-1 << v159);
      }

      v161 = v160 & *(v157 + 56);
      v162 = (v159 + 63) >> 6;

      v163 = 0;
      v164 = MEMORY[0x1E69E7CC0];
      while (v161)
      {
LABEL_120:
        v166 = __clz(__rbit64(v161));
        v161 &= v161 - 1;
        v167 = (*(v255 + 48) + ((v163 << 10) | (16 * v166)));
        v168 = v167[1];
        if (v168 >= 2)
        {
          v169 = specialized Collection.first.getter(*v167, v168);
          if ((v169 & 0x100000000) == 0)
          {
            v260 = v169;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
            }

            v171 = *(v164 + 2);
            v170 = *(v164 + 3);
            v172 = v171 + 1;
            v173 = v260;
            if (v171 >= v170 >> 1)
            {
              v259 = v171 + 1;
              v174 = v164;
              v175 = v171;
              v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v174);
              v172 = v259;
              v173 = v260;
              v171 = v175;
              v164 = v176;
            }

            *(v164 + 2) = v172;
            *&v164[4 * v171 + 32] = v173;
          }
        }
      }

      while (1)
      {
        v165 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          break;
        }

        if (v165 >= v162)
        {

          v313 = v262;
          v314 = v263;
          v315 = v264;
          v316 = v265;
          v317 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v178 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v164);
          v266 = v179;
          v181 = v180;
          v183 = v182;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          v177 = v261;
          if (v183 == 2)
          {
            goto LABEL_131;
          }

          if (v241 <= v178 >> 10)
          {
            v151 = v178;
            v177 = v266;
            v153 = v181;
            v39 = v183;
            goto LABEL_131;
          }

          goto LABEL_188;
        }

        v161 = *(v158 + 8 * v165);
        ++v163;
        if (v161)
        {
          v163 = v165;
          goto LABEL_120;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    swift_unknownObjectRelease();
    v177 = v261;
LABEL_131:
    if (v246 == v151 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v185 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v185 - 1;
      v39 = v243;
      if (!__OFSUB__(v185, 1))
      {
        goto LABEL_142;
      }

      __break(1u);
    }

    v187 = v257[2];
    v188 = v243;
    *v243 = v151;
    v188[1] = v177;
    v188[2] = v153;
    goto LABEL_147;
  }

  v139 = v241;
  v140 = v255;
  v141 = v251;
  v142 = v248;
  if (v134 < v241)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  *&v303 = v253;
  *(&v303 + 1) = v248;
  *&v304 = v251;
  *(&v304 + 1) = v247;
  *&v305 = v127;
  v143 = v129;
  *(&v305 + 1) = v129;
  *&v306 = v131;
  *(&v306 + 1) = v133;
  if (v241 == v134)
  {
    goto LABEL_169;
  }

  v144 = v135;
  swift_unknownObjectRetain();
  v145 = specialized Set.contains(_:)(0, 0, v140);
  v262 = v144;
  if ((v145 & 1) == 0)
  {
    v146 = v143;
LABEL_149:
    *&v273 = v253;
    *(&v273 + 1) = v142;
    *&v274 = v141;
    *(&v274 + 1) = v247;
    *&v275 = v127;
    *(&v275 + 1) = v146;
    v143 = v146;
    *&v276 = v131;
    *(&v276 + 1) = v133;
    if (specialized Collection<>._containsScalarConstraint.getter(v140))
    {
      v202 = v140 + 56;
      v203 = 1 << *(v140 + 32);
      v204 = -1;
      if (v203 < 64)
      {
        v204 = ~(-1 << v203);
      }

      v205 = v204 & *(v140 + 56);
      v206 = (v203 + 63) >> 6;

      v207 = 0;
      v272 = MEMORY[0x1E69E7CC0];
      while (v205)
      {
LABEL_158:
        v209 = __clz(__rbit64(v205));
        v205 &= v205 - 1;
        v210 = (*(v140 + 48) + ((v207 << 10) | (16 * v209)));
        v211 = v210[1];
        if (v211 >= 2)
        {
          v212 = specialized Collection.first.getter(*v210, v211);
          if ((v212 & 0x100000000) == 0)
          {
            v271 = v212;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v272 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v272 + 2) + 1, 1, v272);
            }

            v213 = v271;
            v215 = *(v272 + 2);
            v214 = *(v272 + 3);
            v216 = v215 + 1;
            if (v215 >= v214 >> 1)
            {
              v270 = v215 + 1;
              v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v215 + 1, 1, v272);
              v216 = v270;
              v213 = v271;
              v272 = v218;
            }

            v217 = v272;
            *(v272 + 2) = v216;
            *&v217[4 * v215 + 32] = v213;
            v140 = v255;
          }
        }
      }

      while (1)
      {
        v208 = v207 + 1;
        if (__OFADD__(v207, 1))
        {
          goto LABEL_176;
        }

        if (v208 >= v206)
        {

          v318 = v262;
          v319 = v263;
          v320 = v264;
          v321 = v265;
          v322 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v219 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v272);
          v271 = v220;
          v222 = v221;
          v224 = v223;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v224 == 2)
          {
            goto LABEL_169;
          }

          if (v241 <= v219 >> 10)
          {
            v127 = v219;
            v143 = v271;
            v131 = v222;
            v133 = v224;
            goto LABEL_169;
          }

          goto LABEL_192;
        }

        v205 = *(v202 + 8 * v208);
        ++v207;
        if (v205)
        {
          v207 = v208;
          goto LABEL_158;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_169:
    v225 = v257[2];
    v226 = v243;
    *v243 = v127;
    v226[1] = v143;
    v226[2] = v131;
    v226[3] = v133;
    v226[4] = v225;
    return;
  }

  *&v286 = v144;
  *(&v286 + 1) = v263;
  v287 = v264;
  v288 = v265;
  v289 = v266;
  BigString.UTF8View.subscript.getter();
  v278 = v253;
  v279 = v142;
  v280 = v251;
  v281 = v247;
  v282 = v253;
  v283 = v142;
  v284 = v251;
  v285 = v247;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
  v141 = v251;
  outlined destroy of BigSubstring.UTF8View(&v308);
  v146 = v143;
  if (*(&v296 + 1) == 2)
  {
    goto LABEL_149;
  }

  v127 = v294;
  if (v139 <= v294 >> 10)
  {
    v146 = v295;
    v133 = *(&v296 + 1);
    v131 = v296;
    goto LABEL_149;
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (a2)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v12 = (*(a3 + 48) + 16 * v8);
    v13 = *v12;
    v14 = v12[1];
    if (v14 == 1)
    {
      if (a2 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v12, 1);
        outlined copy of AttributedString.AttributeRunBoundaries?(a1, 1);
        outlined consume of AttributedString.AttributeRunBoundaries?(v13, 1);
        return a2;
      }

      goto LABEL_10;
    }

    if (a2 != 1)
    {
      break;
    }

LABEL_10:
    outlined copy of AttributedString.AttributeRunBoundaries?(*v12, v12[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);
    outlined consume of AttributedString.AttributeRunBoundaries?(v13, v14);
    v10 = a1;
    v11 = a2;
LABEL_11:
    outlined consume of AttributedString.AttributeRunBoundaries?(v10, v11);
    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (v14)
  {
    if (a2)
    {
      if (v13 == a1 && v14 == a2)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);
        outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);
        outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);

        v13 = a1;
        goto LABEL_32;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v13, v14);
      outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);
      outlined copy of AttributedString.AttributeRunBoundaries?(v13, v14);

      if (v16)
      {
        a2 = v14;
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v12, v12[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(a1, 0);
    outlined copy of AttributedString.AttributeRunBoundaries?(v13, v14);

LABEL_25:

LABEL_26:
    v10 = v13;
    v11 = v14;
    goto LABEL_11;
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(*v12, 0);
  if (a2)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);

    goto LABEL_25;
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(a1, 0);
  swift_bridgeObjectRelease_n();
LABEL_32:
  outlined consume of AttributedString.AttributeRunBoundaries?(v13, a2);
  return 1;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x1865CD060](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1865CD060](0);
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = (*(a3 + 48) + 16 * v9);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else
      {

        if (!a2)
        {
          return 1;
        }
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Collection<>._containsScalarConstraint.getter(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v8 << 10) | (16 * v10)));
    v12 = v11[1];
    if (v12 != 1)
    {
      if (v12)
      {
        v13 = 1;
LABEL_13:

        return v13;
      }

      result = outlined consume of AttributedString.AttributeRunBoundaries?(*v11, 0);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CharacterSet.init()@<X0>(uint64_t *a1@<X8>)
{
  result = CFCharacterSetCreateMutable(0);
  if (result)
  {
    v3 = result;
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = 1;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CharacterSet.insert(charactersIn:)(uint64_t a1)
{
  return CharacterSet.insert(charactersIn:)(a1, MEMORY[0x1E695D738], __CharacterSetStorage.insert(charactersIn:));
}

{
  return CharacterSet.insert(charactersIn:)(a1, MEMORY[0x1E695D738], __CharacterSetStorage.insert(charactersIn:));
}

uint64_t CharacterSet.insert(charactersIn:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = __CharacterSetStorage.mutableCopy()();

    *v6 = v8;
  }

  return a3(a1, a2);
}

uint64_t __PlistReferencingEncoderBPlist.deinit()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0 + 2;
  v4 = *(v3 + 16);
  if (v4 == 1)
  {
    v5 = specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    if (!v5)
    {
      v5 = specialized ContiguousArray.remove(at:)(*(*v2 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    }

    v6 = v5;
  }

  else
  {
    if (v4)
    {
      goto LABEL_24;
    }

    v7 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v9 = v8;
    v11 = v10;
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v6 = swift_allocObject();
    *(v6 + 16) = v7;
    *(v6 + 24) = v9;
    *(v6 + 32) = v11;
    *(v6 + 40) = 96;
    *(v6 + 48) = -1;
  }

  v13 = v1[13];
  v12 = v1[14];
  v14 = v1[15];
  if (v13 < 0)
  {
    v24 = v1[12];
    outlined copy of __PlistReferencingEncoderBPlist.Reference(v1[13]);

    v47 = v6;
    if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v12, v14))
    {

      v25 = MEMORY[0x1865CB280](v12, v14);
      v26 = 1;
    }

    else
    {
      v27 = String._bridgeToObjectiveCImpl()();

      v25 = [v27 hash];
      swift_unknownObjectRelease();
      v26 = 0;
    }

    v28 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    v29 = *(v24 + 88);
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    v32 = v24;
    v33 = *(v29 + 32);
    *(v29 + 16) = v12;
    *(v29 + 24) = v14;
    *(v29 + 32) = v25;
    v34 = *(v29 + 40);
    *(v29 + 40) = v26;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v30, v31, v33, v34);

    v35 = specialized Set._Variant.insert(_:)(&v48, v29);

    v36 = v48;
    if (v35)
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v37 = swift_allocObject();
      *(v37 + 24) = 0;
      *(v37 + 32) = 0;
      *(v37 + 16) = 2;
      *(v37 + 40) = -112;
      *(v37 + 48) = -1;

      *(v32 + 88) = v37;
    }

    v38 = *(v28 + 40);
    if ((v38 & 0xF0) == 0x60)
    {
      v40 = *(v28 + 24);
      v39 = *(v28 + 32);
      v48 = *(v28 + 16);
      v41 = v48;
      *&v49 = v40;
      *(&v49 + 1) = v39;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      *(v28 + 16) = 2;
      *(v28 + 40) = -112;

      outlined consume of _BPlistEncodingFormat.Reference.Backing(v41, v40, v39, v38);
      specialized OrderedDictionary.subscript.setter(v47, v36);
      v42 = *(v28 + 16);
      v43 = *(v28 + 24);
      v44 = *(v28 + 32);
      *(v28 + 16) = v48;
      *(v28 + 24) = v49;
      v45 = *(v28 + 40);
      *(v28 + 40) = 96;
      outlined consume of _BPlistEncodingFormat.Reference.Backing(v42, v43, v44, v45);

      goto LABEL_19;
    }
  }

  else
  {
    v15 = *(v13 + 40);
    if ((v15 & 0xF0) == 0x50)
    {
      v17 = *(v13 + 24);
      v16 = *(v13 + 32);
      v48 = *(v13 + 16);
      v18 = v48;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 2;
      *(v13 + 40) = -112;
      outlined copy of __PlistReferencingEncoderBPlist.Reference(v13);
      outlined copy of _BPlistEncodingFormat.Reference.Backing(v18, v17, v16, v15);
      outlined consume of _BPlistEncodingFormat.Reference.Backing(v18, v17, v16, v15);
      if (*(v18 + 16) < v12)
      {
        __break(1u);
      }

      else if ((v12 & 0x8000000000000000) == 0)
      {
        specialized ContiguousArray.replaceSubrange<A>(_:with:)(v12, v12, v6);
        v19 = v48;
        v20 = *(v13 + 16);
        v21 = *(v13 + 24);
        v22 = *(v13 + 32);
        v23 = *(v13 + 40);
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
        *(v13 + 16) = v19;
        *(v13 + 40) = 80;
        outlined consume of _BPlistEncodingFormat.Reference.Backing(v20, v21, v22, v23);
        outlined consume of __JSONReferencingEncoder.Reference(v13);
LABEL_19:

        outlined consume of __JSONReferencingEncoder.Reference(v1[13]);
        return v1;
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t __PlistReferencingEncoderBPlist.__deallocating_deinit()
{
  __PlistReferencingEncoderBPlist.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined consume of __JSONReferencingEncoder.Reference(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t initEXGetExtensionContextVendorClass()
{
  v0 = ExtensionFoundationLibrary_frameworkLibrary;
  if (!ExtensionFoundationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
    ExtensionFoundationLibrary_frameworkLibrary = v0;
    if (!v0)
    {
      return 0;
    }
  }

  v1 = dlsym(v0, "EXGetExtensionContextVendorClass");
  softLinkEXGetExtensionContextVendorClass = v1;
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t initEXGetExtensionContextInternalClass()
{
  v0 = ExtensionFoundationLibrary_frameworkLibrary;
  if (!ExtensionFoundationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
    ExtensionFoundationLibrary_frameworkLibrary = v0;
    if (!v0)
    {
      return 0;
    }
  }

  v1 = dlsym(v0, "EXGetExtensionContextInternalClass");
  softLinkEXGetExtensionContextInternalClass = v1;
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1865CB180](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _NSCoderIsAppleSigningIdentifier(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, 76);
  result = [a1 getBytes:v6 maxLength:76 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(a1, "length"), 0}];
  if (result)
  {
    v2 = 0;
    BYTE11(v6[4]) = 0;
    do
    {
      v3 = *(v6 + v2++);
    }

    while ((v3 - 65) < 0x1A || (v3 - 48) < 0xA);
    v5 = v6;
    if (v2 == 1)
    {
      return strncmp(v5, "com.apple.", 0xAuLL) == 0;
    }

    if (v3 == 46)
    {
      v5 = v6 + v2;
      return strncmp(v5, "com.apple.", 0xAuLL) == 0;
    }

    return 0;
  }

  return result;
}

uint64_t static AttributeScope.decodingConfiguration.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = static AttributeScope.scopeDescription.getter(a1);

  *a2 = v3;
  return result;
}

uint64_t JSONEncoder.encode<A, B>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v20 - v16;
  (*(a6 + 16))(a4, a6, v15);
  v18 = (*(*v7 + 280))(a1, v17, a3, a5);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  return v18;
}

uint64_t AttributedString.encode(to:configuration:)(void *a1, unint64_t *a2)
{
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV12AttributeKey33_628C17579E40660980A9932CDA4C6A74LLVGMd);
  v5 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v173 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v153 = &v150 - v8;
  AssociatedTypeWitness = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV10CodingKeys33_628C17579E40660980A9932CDA4C6A74LLOGMd);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v150 - v11;
  v13 = *v2;
  v14 = *(*v2 + 72);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v13 + 80);
  if (!v15)
  {
    goto LABEL_7;
  }

  v164 = *a2;
  v161 = v13;
  v177 = v5;
  *&v176 = v10;
  if (v15 != 1)
  {
    v23 = 1;
    goto LABEL_10;
  }

  v16 = *(v13 + 88);
  v17 = swift_unknownObjectRetain();
  specialized Collection.first.getter(v17, 1, v16);
  v19 = v18;
  v21 = v20;
  swift_unknownObjectRelease();
  if (!v19)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:

LABEL_150:
    __break(1u);
LABEL_151:
    (*(v166 + 56))(v14, 1, 1, AssociatedTypeWitness);
    (*(v21 + 8))(v14, a1);
    __break(1u);
LABEL_152:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v22 = *(v19 + 16);

  if (!v22)
  {
LABEL_7:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    v24 = *(v13 + 40);
    v200[0] = *(v13 + 24);
    v200[1] = v24;
    v200[2] = *(v13 + 56);
    v219 = *(v13 + 56);
    v218[0] = v200[0];
    v218[1] = v24;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v218, &v184);
    MEMORY[0x1865CAF80](v200);
    __swift_mutable_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();

    v25 = &v189;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v15 = *(v13 + 80);
  v23 = *(v13 + 72) != 0;
LABEL_10:
  v196 = 0;
  v194 = 0u;
  v195 = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v23 && v15 > 10)
  {
    lazy protocol witness table accessor for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v189) = 0;
    KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    LOBYTE(v184) = 1;
    KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    (*(v176 + 8))(v12, AssociatedTypeWitness);
    outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd);
    v194 = v189;
    v195 = v190;
    v196 = v191;
  }

  else
  {
    dispatch thunk of Encoder.unkeyedContainer()();
  }

  v27 = v161;
  v28 = *(v161 + 40);
  v215 = *(v161 + 24);
  v216 = v28;
  v217 = *(v161 + 56);
  v29 = BigString.startIndex.getter();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = *(v27 + 72);
  v37 = *(v27 + 80);
  v38 = *(v27 + 88);
  v39 = *(v27 + 96);
  *&v189 = v36;
  *(&v189 + 1) = v37;
  v162 = v37;
  v163 = v39;
  v172 = v38;
  *&v190 = v38;
  *(&v190 + 1) = v39;
  v40 = v220;
  if (v36)
  {
    v41 = *(v36 + 18);
    v21 = v36;
    swift_unknownObjectRetain();
  }

  else
  {
    v21 = 0;
    v41 = 0;
  }

  v171 = 0;
  v42 = 0;
  v152 = 0;
  v43 = MEMORY[0x1E69E7CC8];
  v154 = v21;
  v155 = (v177 + 8);
  *&v191 = v163;
  *(&v191 + 1) = v41;
  v193 = 0;
  v192 = 0uLL;
  v151 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v44 = v31;
    AssociatedTypeWitness = v21;
    v156 = v43;
LABEL_20:
    if (AssociatedTypeWitness)
    {
      if (v42 == v172)
      {
        goto LABEL_128;
      }
    }

    else if (!v42)
    {
LABEL_128:
      outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd);
      v186 = v191;
      v187 = v192;
      v188 = v193;
      v184 = v189;
      v185 = v190;
      outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd);
      goto LABEL_129;
    }

    if (v191 != v163)
    {
      break;
    }

    v167 = v35;
    v168 = v33;
    v169 = v44;
    v175 = v42;
    *&v176 = v29;
    v21 = v40;
    v14 = *(&v191 + 1);
    v35 = v192;
    if (v192)
    {
      v45 = (v192 + 24 * ((*(&v191 + 1) >> ((4 * *(v192 + 18) + 8) & 0x3C)) & 0xFLL));
      v46 = v45[3];
      v47 = v45[5];
      v48 = AssociatedTypeWitness;
      AssociatedTypeWitness = v171 + 1;
      v49 = __OFADD__(v171, 1);
      v177 = v45[4];

      v170 = v47;

      if (v49)
      {
        goto LABEL_135;
      }

      v50 = AssociatedTypeWitness;
      AssociatedTypeWitness = v48;
      *(&v192 + 1) = v50;
      v51 = v175 + v46;
      if (__OFADD__(v175, v46))
      {
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:

LABEL_145:
        __break(1u);
LABEL_146:
        (*(v166 + 56))(v14, 1, 1, AssociatedTypeWitness);
        v149 = *(v35 + 8);
        a1 = (v35 + 8);
        v149(v14, v21);
        __break(1u);
        goto LABEL_147;
      }

      v171 = v50;
      v193 = v175 + v46;
      if (!AssociatedTypeWitness)
      {
        goto LABEL_143;
      }

      v40 = v21;
    }

    else
    {
      specialized Rope._Node.subscript.getter(*(&v191 + 1), AssociatedTypeWitness);
      v177 = v52;
      v170 = v53;
      v54 = v171 + 1;
      if (__OFADD__(v171, 1))
      {
        goto LABEL_135;
      }

      ++v171;
      *(&v192 + 1) = v54;
      v21 = AssociatedTypeWitness;
      AssociatedTypeWitness = specialized Rope._Node.subscript.getter(v14, AssociatedTypeWitness);

      v51 = v175 + AssociatedTypeWitness;
      if (__OFADD__(v175, AssociatedTypeWitness))
      {
        goto LABEL_140;
      }

      v193 = v175 + AssociatedTypeWitness;
      v27 = v161;
      if (!v21)
      {
        goto LABEL_143;
      }

      AssociatedTypeWitness = v21;
    }

    if (v14 >= (((-15 << ((4 * *(AssociatedTypeWitness + 18) + 8) & 0x3C)) - 1) & *(AssociatedTypeWitness + 18) | (*(AssociatedTypeWitness + 16) << ((4 * *(AssociatedTypeWitness + 18) + 8) & 0x3C))))
    {
      goto LABEL_143;
    }

    v220 = v40;
    v175 = v51;
    if (v35 && (v55 = (4 * *(v35 + 18) + 8) & 0x3C, v56 = ((v14 >> v55) & 0xF) + 1, v56 < *(v35 + 16)))
    {
      *(&v191 + 1) = (v56 << v55) | ((-15 << v55) - 1) & v14;
    }

    else if ((specialized Rope._Node.formSuccessor(of:)(&v191, AssociatedTypeWitness) & 1) == 0)
    {
      v57 = ((-15 << ((4 * *(AssociatedTypeWitness + 18) + 8) & 0x3C)) - 1) & *(AssociatedTypeWitness + 18) | (*(AssociatedTypeWitness + 16) << ((4 * *(AssociatedTypeWitness + 18) + 8) & 0x3C));
      *&v191 = v163;
      *(&v191 + 1) = v57;
      *&v192 = 0;
    }

    v58 = *(v27 + 40);
    v212 = *(v27 + 24);
    v213 = v58;
    v214 = *(v27 + 56);
    v166 = v212;
    swift_unknownObjectRetain();
    v35 = v176;
    v59 = v168;
    v60 = v169;
    v21 = v167;
    v174 = BigString.UTF8View.index(_:offsetBy:)();
    v62 = v61;
    AssociatedTypeWitness = v63;
    v65 = v64;
    swift_unknownObjectRelease();
    if (v174 >> 10 < v35 >> 10)
    {
      goto LABEL_136;
    }

    v201 = v35;
    v202 = v60;
    v203 = v59;
    v204 = v21;
    v29 = v174;
    v205 = v174;
    v168 = AssociatedTypeWitness;
    v169 = v62;
    v206 = v62;
    v207 = AssociatedTypeWitness;
    v167 = v65;
    v208 = v65;
    v66 = *(v27 + 40);
    v209 = *(v27 + 24);
    v210 = v66;
    v211 = *(v27 + 56);
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    MEMORY[0x1865CAF60](&v199);
    __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
    v67 = v220;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v220 = v67;
    if (v67)
    {
      outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd);

      v186 = v191;
      v187 = v192;
      v188 = v193;
      v184 = v189;
      v185 = v190;
      outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd);

      return __swift_destroy_boxed_opaque_existential_1(v197);
    }

    v35 = v177;
    v21 = v164;
    if (!*(v177 + 16))
    {
      goto LABEL_48;
    }

    outlined init with copy of FloatingPointRoundingRule?(&v194, &v184, &_ss24UnkeyedEncodingContainer_pSgMd);
    if (!*(&v185 + 1))
    {
      outlined destroy of TermOfAddress?(&v184, &_ss24UnkeyedEncodingContainer_pSgMd);
LABEL_48:
      __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
      dispatch thunk of UnkeyedEncodingContainer.superEncoder()();
      __swift_project_boxed_opaque_existential_1(v182, v183);
      lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v68 = v35 + 64;
      v69 = 1 << *(v35 + 32);
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      else
      {
        v70 = -1;
      }

      v71 = v70 & *(v35 + 64);
      v72 = (v69 + 63) >> 6;

      v73 = 0;
      v40 = v220;
      while (v71)
      {
        v74 = v71;
LABEL_58:
        v71 = (v74 - 1) & v74;
        if (*(v21 + 16))
        {
          *&v176 = (v74 - 1) & v74;
          v76 = (*(v35 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v74)))));
          v78 = *v76;
          v77 = v76[1];

          v79 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v77);
          if ((v80 & 1) == 0 || ((v81 = *(*(v21 + 56) + 16 * v79), (v82 = swift_conformsToProtocol2()) != 0) ? (v83 = v81 == 0) : (v83 = 1), v83))
          {
          }

          else
          {
            v220 = v40;
            *&v184 = v78;
            *(&v184 + 1) = v77;
            *&v185 = 0;
            BYTE8(v185) = 1;
            v84 = v82;
            v35 = v81;
            KeyedEncodingContainer.superEncoder(forKey:)();

            v157 = v84;
            v85 = *(v84 + 8);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v160 = &v150;
            v166 = *(AssociatedTypeWitness - 8);
            v86 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
            v158 = &v150 - v87;
            v159 = v81;
            v88 = (*(v85 + 24))(v81, v85, v86);
            v21 = v89;
            v14 = v177;
            if (!*(v177 + 16))
            {
              goto LABEL_144;
            }

            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v89);
            v91 = v90;

            if ((v91 & 1) == 0)
            {
              goto LABEL_145;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v14 + 56) + 72 * v35, &v184);
            outlined init with copy of Hashable & Sendable(&v184, v179);
            v21 = type metadata accessor for Optional();
            v35 = *(v21 - 8);
            MEMORY[0x1EEE9AC00](v21);
            v14 = &v150 - v92;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
            if (!swift_dynamicCast())
            {
              goto LABEL_146;
            }

            outlined destroy of AttributedString._AttributeValue(&v184);
            v93 = v166;
            (*(v166 + 56))(v14, 0, 1, AssociatedTypeWitness);
            v94 = v158;
            (*(v93 + 32))(v158, v14, AssociatedTypeWitness);
            v95 = v220;
            (*(v157 + 16))(v94, v180);
            v40 = v95;
            if (v95)
            {

              __swift_destroy_boxed_opaque_existential_1(v180);
              (*v155)(v173, v165);
              outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd);
              (*(v93 + 8))(v94, AssociatedTypeWitness);
              __swift_destroy_boxed_opaque_existential_1(v182);
              v186 = v191;
              v187 = v192;
              v188 = v193;
              v184 = v189;
              v185 = v190;
              outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd);

              return __swift_destroy_boxed_opaque_existential_1(v197);
            }

            __swift_destroy_boxed_opaque_existential_1(v180);
            (*(v93 + 8))(v94, AssociatedTypeWitness);
            v21 = v164;
          }

          v35 = v177;
          v71 = v176;
        }
      }

      while (1)
      {
        v75 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v75 >= v72)
        {

          (*v155)(v173, v165);

          __swift_destroy_boxed_opaque_existential_1(v182);
          v29 = v174;
          v42 = v175;
          v33 = v168;
          v44 = v169;
          v35 = v167;
          v27 = v161;
          AssociatedTypeWitness = v154;
          goto LABEL_20;
        }

        v74 = *(v68 + 8 * v75);
        ++v73;
        if (v74)
        {
          v73 = v75;
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_133:
      outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd);
      v186 = v191;
      v187 = v192;
      v188 = v193;
      v184 = v189;
      v185 = v190;
      outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd);
      __swift_destroy_boxed_opaque_existential_1(v182);
LABEL_129:

      v25 = v197;
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }

    outlined init with take of Equatable(&v184, v182);
    if (!*(v156 + 16) || (, v96 = v170, , v97 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v96), v99 = v98, , , (v99 & 1) == 0) || *(*(v156 + 56) + 8 * v97) == v152)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v182, v183);

      dispatch thunk of UnkeyedEncodingContainer.superEncoder()();
      AssociatedTypeWitness = v181;
      v14 = __swift_project_boxed_opaque_existential_1(v180, v181);
      lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v100 = v35 + 64;
      v101 = 1 << *(v35 + 32);
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      else
      {
        v102 = -1;
      }

      v103 = v102 & *(v35 + 64);
      v104 = (v101 + 63) >> 6;

      v105 = 0;
      while (v103)
      {
        v106 = v103;
LABEL_86:
        v103 = (v106 - 1) & v106;
        if (*(v21 + 16))
        {
          v108 = (*(v35 + 48) + ((v105 << 10) | (16 * __clz(__rbit64(v106)))));
          v109 = *v108;
          AssociatedTypeWitness = v108[1];

          v14 = v21;
          v110 = specialized __RawDictionaryStorage.find<A>(_:)(v109, AssociatedTypeWitness);
          if ((v111 & 1) == 0 || ((v14 = *(*(v21 + 56) + 16 * v110), (v112 = swift_conformsToProtocol2()) != 0) ? (v113 = v14 == 0) : (v113 = 1), v113))
          {

            v35 = v177;
          }

          else
          {
            *&v184 = v109;
            *(&v184 + 1) = AssociatedTypeWitness;
            *&v185 = 0;
            BYTE8(v185) = 1;
            v114 = v112;
            v21 = v14;
            KeyedEncodingContainer.superEncoder(forKey:)();

            v157 = v114;
            v115 = *(v114 + 8);
            v116 = swift_getAssociatedTypeWitness();
            v160 = &v150;
            *&v176 = v116;
            v166 = *(v116 - 8);
            v117 = MEMORY[0x1EEE9AC00](v116);
            v158 = &v150 - v118;
            v159 = v14;
            v119 = (*(v115 + 24))(v14, v115, v117);
            a1 = v120;
            v14 = v177;
            if (!*(v177 + 16))
            {
              goto LABEL_149;
            }

            AssociatedTypeWitness = specialized __RawDictionaryStorage.find<A>(_:)(v119, v120);
            v21 = v121;

            if ((v21 & 1) == 0)
            {
              goto LABEL_150;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v14 + 56) + 72 * AssociatedTypeWitness, &v184);
            outlined init with copy of Hashable & Sendable(&v184, &v178);
            AssociatedTypeWitness = v176;
            a1 = type metadata accessor for Optional();
            v150 = &v150;
            v21 = *(a1 - 1);
            MEMORY[0x1EEE9AC00](a1);
            v14 = &v150 - v122;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
            if (!swift_dynamicCast())
            {
              goto LABEL_151;
            }

            outlined destroy of AttributedString._AttributeValue(&v184);
            v21 = v166;
            (*(v166 + 56))(v14, 0, 1, AssociatedTypeWitness);
            v35 = v158;
            (*(v21 + 32))(v158, v14, AssociatedTypeWitness);
            v123 = v220;
            (*(v157 + 16))(v35, v179);
            v220 = v123;
            v14 = v160;
            if (v123)
            {
              goto LABEL_137;
            }

            __swift_destroy_boxed_opaque_existential_1(v179);
            (*(v21 + 8))(v35, AssociatedTypeWitness);
            v21 = v164;
            v35 = v177;
          }
        }
      }

      while (1)
      {
        v107 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          goto LABEL_139;
        }

        if (v107 >= v104)
        {
          break;
        }

        v106 = *(v100 + 8 * v107);
        ++v105;
        if (v106)
        {
          v105 = v107;
          goto LABEL_86;
        }
      }

      v124 = v170;

      (*v155)(v153, v165);

      __swift_destroy_boxed_opaque_existential_1(v180);
      v14 = v151;
      AssociatedTypeWitness = swift_isUniquelyReferenced_nonNull_native();
      *&v184 = v14;
      v125 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v124);
      v127 = *(v14 + 16);
      v128 = (v126 & 1) == 0;
      v129 = __OFADD__(v127, v128);
      v130 = v127 + v128;
      if (v129)
      {
        goto LABEL_141;
      }

      v131 = v126;
      v40 = v220;
      v27 = v161;
      v21 = v154;
      v29 = v174;
      if (*(v14 + 24) >= v130)
      {
        if (AssociatedTypeWitness)
        {
          AssociatedTypeWitness = v14;
          if (v126)
          {
            goto LABEL_101;
          }

          goto LABEL_104;
        }

        v134 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16AttributedStringV010_AttributeB0VSiGMd);
        v135 = static _DictionaryStorage.copy(original:)();
        AssociatedTypeWitness = v135;
        if (*(v14 + 16))
        {
          v136 = (v135 + 64);
          v14 = (v151 + 8);
          v137 = ((1 << *(AssociatedTypeWitness + 32)) + 63) >> 6;
          if (AssociatedTypeWitness != v151 || v136 >= v14 + 8 * v137)
          {
            memmove(v136, v151 + 8, 8 * v137);
          }

          v138 = 0;
          v139 = v151;
          *(AssociatedTypeWitness + 16) = v151[2];
          v140 = 1 << *(v139 + 32);
          v141 = v139[8];
          if (v140 < 64)
          {
            v142 = ~(-1 << v140);
          }

          else
          {
            v142 = -1;
          }

          v21 = v142 & v141;
          a1 = ((v140 + 63) >> 6);
          if ((v142 & v141) != 0)
          {
            do
            {
              v143 = __clz(__rbit64(v21));
              v21 &= v21 - 1;
LABEL_124:
              v146 = v143 | (v138 << 6);
              v147 = *(v151[7] + 8 * v146);
              v148 = *(AssociatedTypeWitness + 48);
              v176 = *(v151[6] + 16 * v146);
              *(v148 + 16 * v146) = v176;
              *(*(AssociatedTypeWitness + 56) + 8 * v146) = v147;
            }

            while (v21);
          }

          v144 = v138;
          while (1)
          {
            v138 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_148;
            }

            if (v138 >= a1)
            {
              break;
            }

            v145 = *(v14 + 8 * v138);
            ++v144;
            if (v145)
            {
              v143 = __clz(__rbit64(v145));
              v21 = (v145 - 1) & v145;
              goto LABEL_124;
            }
          }
        }

        v125 = v134;
        v40 = v220;
        v27 = v161;
        v21 = v154;
        v35 = v177;
        v29 = v174;
        if ((v131 & 1) == 0)
        {
          goto LABEL_104;
        }

LABEL_101:
        v14 = v125;

        v133 = v152;
        *(*(AssociatedTypeWitness + 56) + 8 * v14) = v152;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v130, AssociatedTypeWitness);
        AssociatedTypeWitness = v184;
        v125 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v170);
        if ((v131 & 1) != (v132 & 1))
        {
          goto LABEL_152;
        }

        if (v131)
        {
          goto LABEL_101;
        }

LABEL_104:
        v14 = v152;
        specialized _NativeDictionary._insert(at:key:value:)(v125, v35, v170, v152, AssociatedTypeWitness);
        v133 = v14;
      }

      if (__OFADD__(v133, 1))
      {
        goto LABEL_142;
      }

      v152 = v133 + 1;
      v156 = AssociatedTypeWitness;
      goto LABEL_107;
    }

    AssociatedTypeWitness = v151;
    v21 = v154;
    v40 = v220;
LABEL_107:
    __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v40)
    {
      goto LABEL_133;
    }

    __swift_destroy_boxed_opaque_existential_1(v182);
    v151 = AssociatedTypeWitness;
    v42 = v175;
    v43 = v156;
    v33 = v168;
    v31 = v169;
    v35 = v167;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1(v179);
  (*v155)(v153, v165);
  outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd);
  (*(v21 + 8))(v35, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1(v180);
  v186 = v191;
  v187 = v192;
  v188 = v193;
  v184 = v189;
  v185 = v190;
  outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd);
  __swift_destroy_boxed_opaque_existential_1(v182);

  return __swift_destroy_boxed_opaque_existential_1(v197);
}