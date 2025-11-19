uint64_t specialized _PlistDecodingStorage.popContainer()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
LABEL_4:
    v4 = v3 - 1;
    result = __swift_destroy_boxed_opaque_existential_1(v1 + 32 * v3);
    *(v1 + 16) = v4;
    *v0 = v1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t __PlistDictionaryDecoder.__deallocating_deinit(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v3 + 16));

  return a3(v3, a2, 7);
}

Swift::String_optional __swiftcall URL.query(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = percentEncoded;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 264))(v2, ObjectType, v3);
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall _SwiftURL.query(percentEncoded:)(Swift::Bool percentEncoded)
{
  v3 = v1[2];
  if (v3[192])
  {
    if (v3[72] != 1 || v3[96] != 1 || v3[120] != 1 || v3[144] != 1 || ((v3[168] & 1) == 0 ? (v4 = String.subscript.getter()) : (v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000)), (v42 = v4, v43 = v5, , (v42 ^ v43) >> 14) || !v1[3]))
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_27;
    }

    v44 = v1[4];
    ObjectType = swift_getObjectType();
    v46 = *(v44 + 264);
    swift_unknownObjectRetain();
    v11 = v46(percentEncoded, ObjectType, v44);
    v13 = v47;
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v6 = String.subscript.getter();
  v10 = v9;
  if (percentEncoded)
  {
    v11 = MEMORY[0x1865CAE80](v6);
    v13 = v12;

LABEL_10:
    v14 = v13;
    v15 = v11;
    goto LABEL_27;
  }

  if ((v3[220] & 0x10) != 0)
  {
    if ((v6 ^ v7) >> 14)
    {
      v53 = v6;
      v54 = v7;
      v55 = v8;
      v56 = v9;
      MEMORY[0x1EEE9AC00](v6);
      v50 = &v53;
      v51 = MEMORY[0x1E69E7CD0];
      v52 = 4;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v36 = v31;
      v37 = v33;
      v38 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v49, v31, v35, v33, v10);
      v40 = v39;

      if (v40 != 1)
      {

        v14 = v40;
        v15 = v38;
        goto LABEL_27;
      }

      v11 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v36, v35, v37, v10, MEMORY[0x1E69E7CD0], 4);
      v13 = v41;
      swift_bridgeObjectRelease_n();
      goto LABEL_10;
    }

LABEL_16:

    v15 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_27;
  }

  if (!((v6 ^ v7) >> 14))
  {
    goto LABEL_16;
  }

  v16 = v1[5];
  v53 = v6;
  v54 = v7;
  v55 = v8;
  v56 = v9;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v53;
  v51 = MEMORY[0x1E69E7CD0];
  v52 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v18;
  v24 = v18;
  v25 = v20;
  v26 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v49, v24, v22, v20, v10);
  v28 = v27;

  if (v28 == 1)
  {

    v26 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v23, v22, v25, v10, MEMORY[0x1E69E7CD0], v16);
    v28 = v29;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v15 = v26;
  v14 = v28;
LABEL_27:
  result.value._object = v14;
  result.value._countAndFlagsBits = v15;
  return result;
}

uint64_t static Int64._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = [a1 *a3];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v7 = [objc_allocWithZone(NSNumber) *a4];
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    *a2 = v6;
    *(a2 + 8) = 0;
  }

  return v8 & 1;
}

Swift::String_optional __swiftcall _SwiftURL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v3 = v1[2];
  if (v3[72] == 1 && v3[96] == 1 && v3[120] == 1 && v3[144] == 1)
  {
    if (v1[3])
    {
      v4 = v1[4];
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 200);
      swift_unknownObjectRetain();
      v7 = v6(percentEncoded, ObjectType, v4);
      v9 = v8;
      swift_unknownObjectRelease();
      v10 = v9;
LABEL_25:
      v11 = v7;
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  if ((v3[120] & 1) == 0)
  {
    v12 = String.subscript.getter();
    v13 = MEMORY[0x1865CAE80](v12);
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      if (v3[72] == 1 && (v3[96] & 1) != 0)
      {
        if (v3[144] == 1)
        {

          goto LABEL_8;
        }
      }

      else
      {
        String.subscript.getter();
      }
    }

    v7 = requestedHost #1 () in _SwiftURL.host(percentEncoded:)(percentEncoded, v1, v13, v15);
    v18 = v17;

    v10 = v18;
    if (!v18 || v3[217] != 1)
    {
      goto LABEL_25;
    }

    v19 = specialized Collection.dropFirst(_:)(1uLL, v7, v18);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v11 = Substring.UTF8View.distance(from:to:)();
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
      if (v26)
      {
        v10 = v21;
      }

      else
      {
        v10 = v11;
      }

      if (v10 >> 14 >= v19 >> 14)
      {
        v27 = _StringGuts.validateSubscalarRange(_:in:)(v19, v10, v19, v21, v23, v25);
        v11 = MEMORY[0x1865CB2C0](v27);
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  v11 = 0;
  v10 = 0;
LABEL_28:
  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t requestedHost #1 () in _SwiftURL.host(percentEncoded:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v86 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if ((a1 & 1) == 0)
  {
    if ((*(v6 + 220) & 4) != 0)
    {
      if (*(v6 + 218) != 1)
      {
        goto LABEL_80;
      }

      v22 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v22 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v82 = a3;
        v83 = a4;
        MEMORY[0x1EEE9AC00](a1);
        v78 = &v82;
        v79 = MEMORY[0x1E69E7CD0];
        v80 = 4;

        v16 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v76, v5, v4);
        if (v23 == 1)
        {
          v18 = MEMORY[0x1E69E7CD0];
          v19 = v5;
          v20 = v4;
          v21 = 4;
          goto LABEL_26;
        }

LABEL_27:
        v24 = v16;

        return v24;
      }
    }

    else
    {
      v14 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v14 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *(a2 + 40);
        v82 = a3;
        v83 = a4;
        MEMORY[0x1EEE9AC00](a1);
        v78 = &v82;
        v79 = MEMORY[0x1E69E7CD0];
        v80 = v15;

        v16 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v76, v5, v4);
        if (v17 == 1)
        {
          v18 = MEMORY[0x1E69E7CD0];
          v19 = v5;
          v20 = v4;
          v21 = v15;
LABEL_26:
          v5 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v19, v20, v18, v21);

          return v5;
        }

        goto LABEL_27;
      }
    }

    return 0;
  }

  if ((*(v6 + 220) & 4) == 0 || *(v6 + 218) == 1)
  {
    goto LABEL_80;
  }

  v7 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_49;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {

    goto LABEL_31;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v82 = a3;
    v83 = a4 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](a1);
    LOBYTE(v80) = 0;
    MEMORY[0x1EEE9AC00](v25);
    v76 = &v82;
    v77 = HIBYTE(v4) & 0xF;

    v11 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v82, v77, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v78, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v13 = v26;
    if (v26 != 1)
    {
      goto LABEL_48;
    }

LABEL_31:
    v82 = v5;
    v83 = v4;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v27 = String._bridgeToObjectiveCImpl()();

    v28 = [v27 _fastCharacterContents];
    v29 = v27;
    if (v28)
    {
      v82 = v5;
      v83 = v4;
      StringProtocol._ephemeralString.getter();
      v30 = String._bridgeToObjectiveCImpl()();

      v31 = [v30 length];
      v32 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v32);
      LOBYTE(v80) = 0;
      MEMORY[0x1EEE9AC00](v33);
      v76 = v28;
      v77 = v31;
      v11 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v28);
      v13 = v34;

      if (v13)
      {
        goto LABEL_49;
      }

      goto LABEL_80;
    }

    v82 = v5;
    v83 = v4;

    v35 = String.init<A>(_:)();
    v37 = v35;
    v38 = v36;
    if ((v36 & 0x1000000000000000) != 0)
    {
      v37 = static String._copying(_:)();
      v48 = v47;

      v38 = v48;
      if ((v48 & 0x2000000000000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else if ((v36 & 0x2000000000000000) == 0)
    {
LABEL_36:
      if ((v37 & 0x1000000000000000) == 0)
      {
        goto LABEL_75;
      }

      v39 = (v38 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_38;
    }

    v82 = v37;
    v83 = v38 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v35);
    LOBYTE(v80) = 0;
    MEMORY[0x1EEE9AC00](v49);
    v76 = &v82;
    v77 = v42;
    v44 = partial apply for closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:);
    v45 = partial apply for closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:);
    v41 = &v82;
    goto LABEL_44;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v9 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    a1 = _StringObject.sharedUTF8.getter();
    if (!a1)
    {
      v51 = one-time initialization token for idnaTranscoder;

      if (v51 != -1)
      {
        goto LABEL_83;
      }

      goto LABEL_46;
    }

    v9 = a1;
    v7 = v46;
  }

  MEMORY[0x1EEE9AC00](a1);
  LOBYTE(v80) = 0;
  MEMORY[0x1EEE9AC00](v10);
  v76 = v9;
  v77 = v7;

  v11 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v9, v7, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v78, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
  v13 = v12;
  if (v12 == 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    while (1)
    {
LABEL_48:

      if (!v13)
      {
        goto LABEL_80;
      }

LABEL_49:
      if ((v13 & 0x2000000000000000) != 0)
      {
        v52 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v52 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (!v52)
      {

        return 0;
      }

      v53 = _s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v11, v13);
      if ((v53 & 1) == 0)
      {
        v82 = v11;
        v83 = v13;
        MEMORY[0x1EEE9AC00](v53);
        v80 = &v82;
        v81 = 4;
        v56 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, &v78, v11, v13);
        if (!v57)
        {
          v56 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v11, v13, 4u, 0);
        }

        v5 = v56;
        swift_bridgeObjectRelease_n();
        return v5;
      }

      if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v11, v13))
      {
        v54 = specialized Collection<>.firstIndex(of:)(37, v11, v13);
        if (v55)
        {
          if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v11, v13))
          {
            v82 = v11;
            v83 = v13;
            v5 = String.init<A>(_:)();
LABEL_69:

            return v5;
          }

          swift_bridgeObjectRelease_n();
          return 0;
        }

        v4 = v54;
        if ((v13 & 0x1000000000000000) == 0)
        {
          v58 = (v52 << 16) - 65532;
          goto LABEL_65;
        }
      }

      else
      {
        __break(1u);
      }

      v74 = String.UTF8View._foreignCount()();
      if (__OFSUB__(v74, 1))
      {
        break;
      }

      v58 = MEMORY[0x1865CB180](15, v74 - 1, v11, v13);
LABEL_65:
      if (v58 >> 14 >= v4 >> 14)
      {
        swift_bridgeObjectRetain_n();
        v59 = String.subscript.getter();
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v82 = v59;
        v83 = v60;
        v84 = v62;
        v85 = v64;
        MEMORY[0x1EEE9AC00](v59);
        v80 = &v82;
        v81 = 8;

        v66 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:), &v78, v59, v61, v63, v65);
        v68 = v67;

        if (!v68)
        {

          v66 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v59, v61, v63, v65, 8u, 0);
          v68 = v69;
        }

        v70 = String.subscript.getter();
        v71 = MEMORY[0x1865CAE80](v70);
        v73 = v72;

        v82 = v71;
        v83 = v73;
        MEMORY[0x1865CB0E0](v66, v68);

        MEMORY[0x1865CB0E0](93, 0xE100000000000000);

        swift_bridgeObjectRelease_n();
        v5 = v82;
        goto LABEL_69;
      }

      __break(1u);
LABEL_75:
      v39 = _StringObject.sharedUTF8.getter();
      if (!v39)
      {
        if (one-time initialization token for idnaTranscoder != -1)
        {
          swift_once();
        }

        if ((byte_1ED436DC0 & 1) == 0)
        {
          goto LABEL_87;
        }

LABEL_80:

        return v5;
      }

LABEL_38:
      MEMORY[0x1EEE9AC00](v39);
      LOBYTE(v80) = 0;
      MEMORY[0x1EEE9AC00](v40);
      v76 = v41;
      v77 = v42;
      v44 = closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply;
      v45 = closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply;
LABEL_44:
      v11 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v41, v42, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, v44, v43, v45);
      v13 = v50;
    }

    __break(1u);
LABEL_83:
    swift_once();
LABEL_46:
    if ((byte_1ED436DC0 & 1) == 0)
    {
      break;
    }

    v13 = 0;
    v11 = 0;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  swift_slowAlloc();
  __break(1u);
LABEL_87:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = a4;
  v35 = a5;
  if (!a1)
  {
    goto LABEL_31;
  }

  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v7 = Data._Representation.subscript.getter(v32, v33, v34, v35);
  v9 = v8;
  v31 = 0;
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(v32, v33, v34, v35);
  v11 = a2 - a1;
  if (v10 < a2 - a1)
  {
    v11 = v10;
  }

  v30 = v11;
  if (v11 >= 1)
  {
    v12 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      if (!v12)
      {
        v29[0] = v7;
        LOWORD(v29[1]) = v9;
        BYTE2(v29[1]) = BYTE2(v9);
        BYTE3(v29[1]) = BYTE3(v9);
        BYTE4(v29[1]) = BYTE4(v9);
        BYTE5(v29[1]) = BYTE5(v9);
        v13 = v29 + BYTE6(v9);
        v14 = v29;
LABEL_26:
        closure #1 in DataProtocol.copyBytes<A>(to:from:)(v14, v13, a1, a2, &v31, &v30);
        goto LABEL_27;
      }

      v24 = (v7 >> 32) - v7;
      if (v7 >> 32 >= v7)
      {
        v25 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (!v25)
        {
          goto LABEL_25;
        }

        v26 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v27 = v7 - v26;
        if (!__OFSUB__(v7, v26))
        {
          if (*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v24)
          {
            v24 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }

          v14 = (v27 + v25);
          if (v27 + v25)
          {
            v13 = &v14[v24];
            goto LABEL_26;
          }

LABEL_25:
          v14 = 0;
          v13 = 0;
          goto LABEL_26;
        }

LABEL_34:
        __break(1u);
      }

      goto LABEL_32;
    }

    if (v12 != 2)
    {
      memset(v29, 0, 14);
      v14 = v29;
      v13 = v29;
      goto LABEL_26;
    }

    v15 = *(v7 + 16);
    v16 = *(v7 + 24);
    v17 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v17)
    {
      v18 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v19 = __OFSUB__(v15, v18);
      v20 = v15 - v18;
      if (v19)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v14 = (v20 + v17);
      v19 = __OFSUB__(v16, v15);
      v21 = v16 - v15;
      if (!v19)
      {
LABEL_12:
        v22 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v22 >= v21)
        {
          v22 = v21;
        }

        v23 = &v14[v22];
        if (v14)
        {
          v13 = v23;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v14 = 0;
      v19 = __OFSUB__(v16, v15);
      v21 = v16 - v15;
      if (!v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_27:
  outlined consume of Data._Representation(v7, v9);
  return v31;
}

Swift::Void __swiftcall NSKeyValueObservation.invalidate()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    NSKeyValueObservation.Helper.invalidate()();
  }

  swift_unknownObjectWeakAssign();
}

id String.init(contentsOfFile:encoding:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *&v51 = a1;
  *(&v51 + 1) = a2;
  v52 = 0;

  v5 = readDataFromFile(path:reportProgress:maxLength:options:)(&v51, 1, 0, 1, 0);
  v7 = v6;
  outlined consume of PathOrURL(v51, *(&v51 + 1), v52);
  if (v3)
  {
    return v4;
  }

  _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA4DataV_Tt1B5(v5, v7, v4);
  if (v9)
  {
    v4 = v8;
    outlined consume of Data._Representation(v5, v7);
    return v4;
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
        v4 = v51;
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
          v4 = v43;
          v41 = v44;

          goto LABEL_70;
        }

        *&v51 = [(__CFString *)v42 length];
        if (!v51)
        {

          v4 = 0;
          v41 = 0xE000000000000000;
          goto LABEL_70;
        }
      }

      v4 = String.init(_cocoaString:)();
      v41 = v47;
LABEL_70:
      if (v28 == v4 && v30 == v41)
      {
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v4 & 1) == 0)
        {
          __break(1u);
        }
      }

      swift_willThrow();
      outlined consume of Data._Representation(v5, v7);
      return v4;
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
        v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
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
        v4 = v49;
        v41 = v50;
        goto LABEL_70;
      }

LABEL_65:
      v4 = v45;
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

id String.init(contentsOfFile:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(NSString);

  v6 = @nonobjc NSString.init(contentsOfFile:usedEncoding:)(a1, a2, 0);
  if (v2)
  {
    return a1;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_7:
    if (__CFStringIsCF())
    {
      a1 = 0;

      return a1;
    }

    v12 = v10;
    v13 = String.init(_nativeStorage:)();
    if (v14)
    {
      a1 = v13;

      return a1;
    }

    if (![v12 length])
    {

      return 0;
    }

    a1 = String.init(_cocoaString:)();
LABEL_20:

    return a1;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      a1 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return a1;
    }

    goto LABEL_7;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v16 = String.init(utf8String:)(result);
    if (v17)
    {
LABEL_15:
      a1 = v16;

      goto LABEL_20;
    }

    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      a1 = v19;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t UUID.description.getter()
{
  v2 = *v0;
  memset(out, 0, 37);
  _foundation_uuid_unparse_upper(&v2, out);
  return String.init(cString:)();
}

uint64_t static Morphology.user.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for user != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v5[0] = static Morphology.user;
  v1 = *(&static Morphology.user + 13);
  *(v5 + 13) = *(&static Morphology.user + 13);
  *a1 = static Morphology.user;
  *(a1 + 13) = v1;
  return outlined init with copy of Morphology(v5, v4);
}

uint64_t storeEnumTagSinglePayload for Morphology(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Morphology(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

id @nonobjc NSString.init(contentsOfFile:usedEncoding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = String._bridgeToObjectiveCImpl()();

  v10[0] = 0;
  v6 = [v3 initWithContentsOfFile:v5 usedEncoding:a3 error:v10];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    if (v10[0])
    {
      v10[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v8 = _nilObjCError;
    }

    swift_willThrow();
  }

  return v6;
}

uint64_t @objc static NSData._readBytesAndEncoding(fromPath:maxLength:encoding:bytes:length:didMap:options:reportProgress:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char **a6, void *a7, BOOL *a8, char a9, int a10, char a11)
{
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static NSData._readBytesAndEncoding(fromPath:maxLength:encoding:bytes:length:didMap:options:reportProgress:)(v16, v17, a4, a5, a6, a7, a8, a9, a11);

  return 1;
}

id specialized static NSData._readBytesAndEncoding(fromPath:maxLength:encoding:bytes:length:didMap:options:reportProgress:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char **a5, void *a6, BOOL *a7, char a8, char a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v64 = MEMORY[0x1E69E7CC8];
  v67 = a1;
  v68 = a2;
  v69 = 0;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_181218E20;
  isTaggedPointer = _objc_isTaggedPointer(0x1EEF114F0uLL);

  v14 = @"com.apple.TextEncoding";
  v15 = v14;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v14);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v17 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v19 = v18;

          goto LABEL_23;
        }

        goto LABEL_9;
      }

      result = [(__CFString *)v15 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v24 = String.init(utf8String:)(result);
      if (v25)
      {
LABEL_18:
        v17 = v24;
        v19 = v25;

        goto LABEL_23;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v24 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v25)
    {
      [(__CFString *)v15 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v17 = v62;
      v19 = v63;
      goto LABEL_23;
    }

    goto LABEL_18;
  }

LABEL_9:
  v65 = 0;
  if (__CFStringIsCF())
  {

LABEL_13:
    v17 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_23;
  }

  v20 = v15;
  v21 = String.init(_nativeStorage:)();
  if (v22)
  {
    v17 = v21;
    v19 = v22;

    goto LABEL_23;
  }

  v65 = [(__CFString *)v20 length];
  if (!v65)
  {

    goto LABEL_13;
  }

  v17 = String.init(_cocoaString:)();
  v19 = v26;
LABEL_23:
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)(&v67, a9 & 1, v11, a3 == 0x7FFFFFFFFFFFFFFFLL, a8, inited, &v64, &v70);
  outlined consume of PathOrURL(v67, v68, v69);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  if (v9)
  {
  }

  v28 = v70;
  v27 = v71;
  v29 = v72;
  v30 = v15;
  v31 = v30;
  if (!isTaggedPointer)
  {
    goto LABEL_29;
  }

  v32 = _objc_getTaggedPointerTag(v30);
  if (!v32)
  {
    v33 = v27;
    LOWORD(v67) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v45 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v46)
    {
      [(__CFString *)v31 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v37 = v65;
      v36 = v66;
      goto LABEL_56;
    }

    v36 = v46;
    goto LABEL_52;
  }

  if (v32 != 22)
  {
    if (v32 == 2)
    {
      v33 = v27;
      MEMORY[0x1EEE9AC00](v32);
      v34 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v36 = v35;

      v37 = v34;
      goto LABEL_56;
    }

LABEL_29:
    LOBYTE(v65) = 0;
    v70 = 0;
    LOBYTE(v67) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (v70)
      {
        if (v67)
        {
          v33 = v27;
          if (v65 != 1)
          {
            IsCF = [(__CFString *)v31 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v45 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v36 = v47;
          v48 = HIBYTE(v47) & 0xF;
          if ((v47 & 0x2000000000000000) == 0)
          {
            v48 = v45 & 0xFFFFFFFFFFFFLL;
          }

          if (v48)
          {
LABEL_52:
            v44 = v45;
            goto LABEL_53;
          }
        }

        else
        {
          v33 = v27;
        }

LABEL_55:
        v37 = String.init(_cocoaString:)();
        v36 = v49;
LABEL_56:
        v50 = v64;
        if (*(v64 + 16))
        {
          v51 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v36);
          v53 = v52;

          if (v53)
          {
            v54 = (*(v50 + 56) + 16 * v51);
            v55 = *v54;
            v56 = v54[1];
            outlined copy of Data._Representation(*v54, v56);
            encodingFromDataForExtendedAttribute(_:)(v55, v56, &v70);
            if (v71 != 1)
            {
              *a4 = v70;
              outlined consume of Data._Representation(v55, v56);
              goto LABEL_62;
            }

            outlined consume of Data._Representation(v55, v56);
          }
        }

        else
        {
        }

        *a4 = 0xFFFFFFFFLL;
LABEL_62:
        *a5 = v28;
        *a6 = v33;
        *a7 = v29 == 1;
        outlined consume of Data.Deallocator?(v29);
      }

      v33 = v27;
    }

    else
    {
      v33 = v27;
      v39 = v31;
      v40 = String.init(_nativeStorage:)();
      if (v41)
      {
        v36 = v41;
        v42 = v40;

        v37 = v42;
        goto LABEL_56;
      }

      v70 = [(__CFString *)v39 length];
      if (v70)
      {
        goto LABEL_55;
      }
    }

    v37 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_56;
  }

  v33 = v27;
  result = [(__CFString *)v31 UTF8String];
  if (!result)
  {
    goto LABEL_66;
  }

  result = String.init(utf8String:)(result);
  if (v43)
  {
    v44 = result;
    v36 = v43;
LABEL_53:

    v37 = v44;
    goto LABEL_56;
  }

LABEL_67:
  __break(1u);
  return result;
}

void closure #1 in readExtendedAttributesFromFileDescriptor(_:attrsToRead:)(char *name, int fd, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  closure #1 in closure #1 in readExtendedAttributesFromFileDescriptor(_:attrsToRead:)(v6, 1000, fd, name, 0x3E8uLL, a3, a4, a5);
  if (v5)
  {
    swift_willThrow();
    __break(1u);
  }
}

void closure #1 in closure #1 in readExtendedAttributesFromFileDescriptor(_:attrsToRead:)(_BYTE *value, int a2, int fd, char *name, size_t size, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = fgetxattr(fd, name, value, size, 0, 0);
  if (v15 == -1)
  {
    if (MEMORY[0x1865CA7A0]() != 34)
    {
      return;
    }

    v29 = fgetxattr(fd, name, 0, 0, 0, 0);
    v30 = malloc(v29);
    if (!v30)
    {
LABEL_65:
      __break(1u);
      return;
    }

    v31 = v30;
    if (fgetxattr(fd, name, v30, v29, 0, 0) != v29)
    {
      free(v31);
      return;
    }

    v20 = v8;
    v85 = xmmword_18121D490;
    v16 = specialized Data.init(bytesNoCopy:count:deallocator:)(v31, v29, &v85);
    v86 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v85 = *a6;
    v19 = v85;
    *a6 = 0x8000000000000000;
    v33 = a7;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a7, a8);
    v35 = *(v19 + 16);
    v36 = (v34 & 1) == 0;
    v25 = __OFADD__(v35, v36);
    v37 = v35 + v36;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(a7) = v34;
      if (*(v19 + 24) < v37)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
        v27 = v85;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v33, a8);
        if ((a7 & 1) != (v38 & 1))
        {
LABEL_13:
          v21 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_14;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v19;
LABEL_21:
        if (a7)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    v78 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd);
    v61 = static _DictionaryStorage.copy(original:)();
    v27 = v61;
    if (*(v19 + 16))
    {
      v62 = (v61 + 64);
      __srca = (v19 + 64);
      v63 = ((1 << *(v27 + 32)) + 63) >> 6;
      if (v27 != v19 || v62 >= &__srca[8 * v63])
      {
        memmove(v62, __srca, 8 * v63);
      }

      v64 = 0;
      *(v27 + 16) = *(v19 + 16);
      v65 = 1 << *(v19 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v76 = (v65 + 63) >> 6;
      v67 = v66 & *(v19 + 64);
      if (v67)
      {
        do
        {
          v68 = __clz(__rbit64(v67));
          v84 = (v67 - 1) & v67;
LABEL_58:
          v71 = 16 * (v68 | (v64 << 6));
          v72 = (*(v19 + 48) + v71);
          v74 = *v72;
          v73 = v72[1];
          v82 = *(*(v19 + 56) + v71);
          v75 = (*(v27 + 48) + v71);
          *v75 = v74;
          v75[1] = v73;
          *(*(v27 + 56) + v71) = v82;

          outlined copy of Data._Representation(v82, *(&v82 + 1));
          v67 = v84;
        }

        while (v84);
      }

      v69 = v64;
      while (1)
      {
        v64 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_64;
        }

        if (v64 >= v76)
        {
          break;
        }

        v70 = *&__srca[8 * v64];
        ++v69;
        if (v70)
        {
          v68 = __clz(__rbit64(v70));
          v84 = (v70 - 1) & v70;
          goto LABEL_58;
        }
      }
    }

    v21 = v78;
    if (a7)
    {
      goto LABEL_17;
    }

LABEL_22:
    v43 = v33;
LABEL_41:
    specialized _NativeDictionary._insert(at:key:value:)(v21, v43, a8, v16, v86, v27);

    goto LABEL_42;
  }

  if (!value)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = specialized Data.init(bytes:count:)(value, v15);
  v86 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v85 = *a6;
  v19 = v85;
  *a6 = 0x8000000000000000;
  v20 = a7;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a7, a8);
  v23 = *(v19 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(a7) = v22;
  if (*(v19 + 24) < v26)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
    v27 = v85;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20, a8);
    if ((a7 & 1) == (v28 & 1))
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_14:
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    v77 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd);
    v44 = static _DictionaryStorage.copy(original:)();
    v27 = v44;
    if (!*(v19 + 16))
    {
LABEL_39:

      v21 = v77;
      if (a7)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

    v45 = (v44 + 64);
    v46 = (v19 + 64);
    v47 = ((1 << *(v27 + 32)) + 63) >> 6;
    if (v27 != v19 || v45 >= &v46[8 * v47])
    {
      memmove(v45, v46, 8 * v47);
    }

    v48 = 0;
    *(v27 + 16) = *(v19 + 16);
    v49 = 1 << *(v19 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v19 + 64);
    v52 = (v49 + 63) >> 6;
    __src = v52;
    if (v51)
    {
      do
      {
        v53 = __clz(__rbit64(v51));
        v83 = (v51 - 1) & v51;
LABEL_37:
        v56 = 16 * (v53 | (v48 << 6));
        v57 = (*(v19 + 48) + v56);
        v59 = *v57;
        v58 = v57[1];
        v81 = *(*(v19 + 56) + v56);
        v60 = (*(v27 + 48) + v56);
        *v60 = v59;
        v60[1] = v58;
        *(*(v27 + 56) + v56) = v81;

        outlined copy of Data._Representation(v81, *(&v81 + 1));
        v52 = __src;
        v51 = v83;
      }

      while (v83);
    }

    v54 = v48;
    while (1)
    {
      v48 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v48 >= v52)
      {
        goto LABEL_39;
      }

      v55 = *(v19 + 64 + 8 * v48);
      ++v54;
      if (v55)
      {
        v53 = __clz(__rbit64(v55));
        v83 = (v55 - 1) & v55;
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

  v27 = v19;
LABEL_16:
  if ((a7 & 1) == 0)
  {
LABEL_40:
    v43 = v20;
    goto LABEL_41;
  }

LABEL_17:
  v39 = (*(v27 + 56) + 16 * v21);
  v40 = *v39;
  v41 = v39[1];
  v42 = v86;
  *v39 = v16;
  v39[1] = v42;
  outlined consume of Data._Representation(v40, v41);
LABEL_42:
  *a6 = v27;
}

uint64_t StringProtocol.localizedLowercase.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a1, v8);
  v11 = String.init<A>(_:)();
  v13 = v12;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v23 = static LocaleCache.cache;
  v24 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v15 = v14;
  ObjectType = swift_getObjectType();
  (*(v15 + 64))(ObjectType, v15);
  v17 = specialized static ICU.CaseMap.caseMappingForLocale(_:)();

  if (!v17 || (v18 = String.utf8CString.getter(), v19 = a3(32, v17, v18 + 32, *(v18 + 16)), v21 = v20, , , !v21))
  {
    v19 = a4(v11, v13);
  }

  swift_unknownObjectRelease();

  return v19;
}

id _NSGetLongLongValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithLongLong:*(a1 + ivar_getOffset(a3))];

  return v3;
}

NSString *NSLocalizedFileSizeDescription(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    if ((NSLocalizedFileSizeDescription_warned & 1) == 0)
    {
      NSLocalizedFileSizeDescription_warned = 1;
      NSLog(@"Warning: NSLocalizedFileSizeDescription() cannot accept size argument greater than INT64_MAX");
    }

    return [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {

    return __NSLocalizedFileSizeDescription(a1, a2, a3, 0);
  }
}

void (*_sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(unsigned __int8 *a1, uint64_t a2))(_BYTE *, void)
{
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v5 = 0;
  if (a1)
  {
    v6 = &a1[a2];
  }

  else
  {
    v6 = 0;
  }

  v30 = 0;
  v31 = 0;
  v7 = MEMORY[0x1E69E7910];
  v8 = 1;
  while (v5)
  {
    v14 = v30;
    if ((v30 & 0x80) != 0)
    {
      if (!a1)
      {
        goto LABEL_24;
      }

      v10 = a1;
      if (a1 == v6)
      {
        goto LABEL_24;
      }

LABEL_12:
      a1 = v10 + 1;
      v14 = (*v10 << v5) | ((-255 << v5) - 1) & v14;
      v15 = v5 + 8;
      if ((v5 + 8) >= 0x20u)
      {
        goto LABEL_23;
      }

      if (a1 == v6)
      {
        goto LABEL_21;
      }

      a1 = v10 + 2;
      v14 = (v10[1] << (v5 + 8)) | ((-255 << (v5 + 8)) - 1) & v14;
      v15 = v5 + 16;
      if ((v5 + 16) > 0x1Fu)
      {
        goto LABEL_23;
      }

      if (a1 == v6)
      {
        goto LABEL_21;
      }

      a1 = v10 + 3;
      v14 = (v10[2] << v15) | ((-255 << v15) - 1) & v14;
      v15 = v5 + 24;
      if ((v5 + 24) > 0x1Fu)
      {
        goto LABEL_23;
      }

      if (a1 == v6)
      {
        goto LABEL_21;
      }

      a1 = v10 + 4;
      v14 = (v10[3] << v15) | ((-255 << v15) - 1) & v14;
      v15 = v5 + 32;
      if (v5 < 0xE0u)
      {
LABEL_23:
        v5 = v15;
        goto LABEL_24;
      }

      if (a1 != v6)
      {
        a1 = v10 + 5;
        v14 = (v10[4] << v5) | ((-255 << v5) - 1) & v14;
        v15 = v5 + 40;
        v5 += 40;
        if (v5 >= 0x20u)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      v5 = v15;
      if (!v15)
      {
        goto LABEL_52;
      }

LABEL_24:
      if ((v14 & 0xC0E0) == 0x80C0)
      {
        if ((v14 & 0x1E) == 0)
        {
          goto LABEL_51;
        }

        v16 = 16;
      }

      else if ((v14 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v14 & 0x200F) == 0 || (v14 & 0x200F) == 0x200D)
        {
          goto LABEL_51;
        }

        v16 = 24;
      }

      else
      {
        if ((v14 & 0xC0C0C0F8) != 0x808080F0 || (v14 & 0x3007) == 0 || __rev16(v14 & 0x3007) > 0x400)
        {
LABEL_51:
          v25 = Unicode.UTF8.ForwardParser._invalidLength()();
          v30 = v14 >> ((8 * v25) & 0x38);
          v31 = v5 - 8 * v25;

          return 0;
        }

        v16 = 32;
      }

      v30 = v14 >> v16;
      v31 = v5 - v16;
      v17 = ((1 << (v16 >> 1) << (v16 >> 1)) - 1) & (v14 + 16843009);
      if (v17)
      {
        goto LABEL_28;
      }

      goto LABEL_5;
    }

    lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser();
    result = WeekendRange.onsetTime.modify();
    v24 = *(v23 + 4);
    if (!v24)
    {
      __break(1u);
      return result;
    }

    *v23 >>= 8;
    *(v23 + 4) = v24 - 8;
    result(v29, 0);
    v17 = (v14 + 1);
    v7 = MEMORY[0x1E69E7910];
    if (v14 != 0xFF)
    {
LABEL_28:
      v13 = *(v4 + 2);
      for (i = v17; ; i >>= 8)
      {
        while (1)
        {
LABEL_29:
          v18 = *(v4 + 3);
          if (v13 >= v18 >> 1)
          {
            v20 = v7;
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v13 + 1, 1, v4);
            v7 = v20;
            v4 = v21;
          }

          *(v4 + 2) = v13 + 1;
          v4[v13 + 32] = i - 1;
          if ((v8 & ((i - 1) < 0)) == 1)
          {
            break;
          }

          ++v13;
          v19 = i >= 0x100;
          i >>= 8;
          if (!v19)
          {
            goto LABEL_5;
          }
        }

        v8 = 0;
        ++v13;
        if (i < 0x100)
        {
          break;
        }
      }
    }

LABEL_5:
    v5 = v31;
  }

  if (a1 && a1 != v6)
  {
    v9 = *a1++;
    v10 = a1;
    v11 = v9;
    if ((v9 & 0x80000000) == 0)
    {
      i = v11 + 1;
      v13 = *(v4 + 2);
      goto LABEL_29;
    }

    v14 = v30 & 0xFFFFFF00 | v11;
    v5 = 8;
    if (a1 != v6)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_52:
  v26 = static String._tryFromUTF8(_:)();
  v28 = v27;

  if (v28)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

uint64_t Data.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a2, a3, v6);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance _JSONUnkeyedEncodingContainer()
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode(_:)(unsigned __int8 a1)
{
  v2 = *v1;
  v3 = a1;
  v4 = *(*v1 + 88);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v8 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v6, v7, v8);
  v9 = *(v2 + 88);

  if (specialized Set._Variant.insert(_:)(&v12, v9))
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;
    *(v2 + 88) = v10;
  }

  _BPlistEncodingFormat.Reference.insert(_:)();
}

id String.init(utf16CodeUnits:count:)(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(NSString) initWithCharacters:a1 length:a2];
  if (result)
  {
    v3 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v5 = v3;
    v6 = v5;
    if (!isTaggedPointer)
    {
LABEL_7:
      if (__CFStringIsCF())
      {

        return 0;
      }

      v9 = v6;
      v10 = String.init(_nativeStorage:)();
      if (v11)
      {
        v12 = v10;

        return v12;
      }

      if (![v9 length])
      {

        return 0;
      }

      v17 = String.init(_cocoaString:)();
      goto LABEL_22;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v5);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        [v6 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v17 = v18;
      }

LABEL_22:

      return v17;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v8;
      }

      goto LABEL_7;
    }

    result = [v6 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v13)
      {
        v14 = result;

        return v14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t Data.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(void *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v24, 0, 14);
      v11 = 0;
LABEL_14:
      result = a1(v24, v11);
      if (v6)
      {
        return result;
      }

      return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
    }

    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
    if (*((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
    {
      if (__OFSUB__(v12, *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28)))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (!__OFSUB__(v13, v12))
      {
LABEL_8:
        MEMORY[0x1EEE9AC00](a1);
        v21 = a5;
        v22 = v16;
        v23 = a2;
        v17 = partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<UInt8>) -> (@out A, @error @owned Error);
        goto LABEL_18;
      }
    }

    else if (!__OFSUB__(v13, v12))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v10)
  {
    v24[0] = a3;
    LOWORD(v24[1]) = a4;
    BYTE2(v24[1]) = BYTE2(a4);
    BYTE3(v24[1]) = BYTE3(a4);
    BYTE4(v24[1]) = BYTE4(a4);
    v11 = BYTE6(a4);
    BYTE5(v24[1]) = BYTE5(a4);
    goto LABEL_14;
  }

  if (a3 >> 32 < a3)
  {
    goto LABEL_23;
  }

  if (*((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && __OFSUB__(a3, *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28)))
  {
LABEL_25:
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](a1);
  v21 = a5;
  v22 = v19;
  v23 = a2;
  v17 = thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<UInt8>) -> (@out A, @error @owned Error)partial apply;
LABEL_18:
  result = _sSW17withMemoryRebound2to_q0_xm_q0_SRyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys5UInt8VsAD_pq0_Isgyrzr_SWq0_sAD_pAFRszsAD_pRs_Ri_0_r1_lIetMgyrzo_Tpq5(v17, &v20, v14, v15);
  if (!v6)
  {
    return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
  }

  return result;
}

uint64_t *Calendar.dateComponents(_:from:to:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v35 = a3[1];
  v11 = *v4;
  v12 = v4[1];
  if (*a2)
  {
    ObjectType = swift_getObjectType();
    v38 = v8;
    v39 = v9;
    memcpy(v40, a2 + 2, sizeof(v40));
    v13 = *(v9 + 176);
    swift_unknownObjectRetain();
    v13(&v41, &v38, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = swift_getObjectType();
    v38 = 0;
    v39 = v9;
    memcpy(v40, a2 + 2, sizeof(v40));
    (*(v12 + 176))(&v41, &v38, v14, v12);
  }

  v15 = v41;
  v16 = v42;
  v17 = v11;
  v18 = swift_getObjectType();
  if (v10)
  {
    v38 = v10;
    v39 = v35;
    memcpy(v40, a3 + 2, sizeof(v40));
    v19 = *(v35 + 176);
    swift_unknownObjectRetain();
    v19(&v41, &v38, v18, v35);
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0;
    v39 = v35;
    memcpy(v40, a3 + 2, sizeof(v40));
    (*(v12 + 176))(&v41, &v38, v18, v12);
  }

  v20 = v41;
  if ((v16 | v42))
  {
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    *(a4 + 4) = 0;
    a4[40] = 1;
    *(a4 + 6) = 0;
    a4[56] = 1;
    *(a4 + 8) = 0;
    a4[72] = 1;
    *(a4 + 10) = 0;
    a4[88] = 1;
    *(a4 + 12) = 0;
    a4[104] = 1;
    *(a4 + 14) = 0;
    a4[120] = 1;
    *(a4 + 16) = 0;
    a4[136] = 1;
    *(a4 + 18) = 0;
    a4[152] = 1;
    *(a4 + 20) = 0;
    a4[168] = 1;
    *(a4 + 22) = 0;
    a4[184] = 1;
    *(a4 + 24) = 0;
    a4[200] = 1;
    *(a4 + 26) = 0;
    a4[216] = 1;
    *(a4 + 28) = 0;
    a4[232] = 1;
    *(a4 + 30) = 0;
    a4[248] = 1;
    *(a4 + 32) = 0;
    a4[264] = 1;
    *(a4 + 34) = 0;
    a4[280] = 1;
    *(a4 + 281) = 514;
    *a4 = v17;
    *(a4 + 1) = v12;
    v21 = *(a4 + 2);
    swift_unknownObjectRetain();
    if (v21)
    {
      if (*a4)
      {
        v22 = *(a4 + 3);
        v38 = v21;
        v39 = v22;
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(&v38);
      }
    }

    v38 = 0;
    v39 = 0;
    result = DateComponents.timeZone.setter(&v38);
    *(a4 + 4) = 0;
    a4[40] = 1;
    *(a4 + 6) = 0;
    a4[56] = 1;
    *(a4 + 8) = 0;
    a4[72] = 1;
    *(a4 + 10) = 0;
    a4[88] = 1;
    *(a4 + 14) = 0;
    a4[120] = 1;
    *(a4 + 16) = 0;
    a4[136] = 1;
    *(a4 + 18) = 0;
    a4[152] = 1;
    *(a4 + 20) = 0;
    a4[168] = 1;
    *(a4 + 22) = 0;
    a4[184] = 1;
    *(a4 + 24) = 0;
    a4[200] = 1;
    *(a4 + 26) = 0;
    a4[216] = 1;
    *(a4 + 30) = 0;
    a4[248] = 1;
    *(a4 + 32) = 0;
    a4[264] = 1;
    *(a4 + 34) = 0;
    a4[280] = 1;
    *(a4 + 12) = 0;
    a4[104] = 1;
  }

  else
  {
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v24 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v25)
    {
      v26 = *&static Date.validCalendarRange;
    }

    else
    {
      v26 = v25;
    }

    if (*(&static Date.validCalendarRange + 1) >= v20)
    {
      v24 = v20;
    }

    if (*&static Date.validCalendarRange >= v24)
    {
      v27 = *&static Date.validCalendarRange;
    }

    else
    {
      v27 = v24;
    }

    Calendar.ComponentSet.init(_:)(v28, &v38);
    v29 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v30)
    {
      v30 = *&static Date.validCalendarRange;
    }

    v41 = v30;
    if (*(&static Date.validCalendarRange + 1) >= v27)
    {
      v29 = v27;
    }

    if (*&static Date.validCalendarRange >= v29)
    {
      v31 = *&static Date.validCalendarRange;
    }

    else
    {
      v31 = v29;
    }

    v32 = swift_getObjectType();
    v36 = v31;
    (*(v12 + 208))(__src, &v38, &v41, &v36, v32, v12);
    if (specialized Set.contains(_:)(0xEu, a1))
    {
      __src[0] = v17;
      __src[1] = v12;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (__src[2])
      {
        if (v17)
        {
          v38 = __src[2];
          v39 = __src[3];
          swift_unknownObjectRetain();
          Calendar.timeZone.setter(&v38);
        }
      }
    }

    return memcpy(a4, __src, 0x11BuLL);
  }

  return result;
}

uint64_t protocol witness for _LocaleProtocol.measurementSystem.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 296))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t isDimensional()
{
  if (objc_opt_respondsToSelector())
  {
    isKindOfClass = 1;
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t _NSSetUnsignedCharValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 unsignedCharValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t _NSSetShortValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 shortValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

id _NSGetUnsignedCharValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithUnsignedChar:{(Implementation)(a1, Name)}];

  return v8;
}

id _NSGetShortValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithShort:{(Implementation)(a1, Name)}];

  return v8;
}

uint64_t URLResourceValues.parentDirectory.getter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

BOOL closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply(unsigned __int8 *a1)
{
  return partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

uint64_t lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v4 = swift_allocObject();
    [v2 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    result = swift_dynamicCast();
    *(v4 + 16) = v5;
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PersonNameComponents.namePrefix.getter()
{

  return PersonNameComponents.namePrefix.getter(&selRef_namePrefix);
}

id PersonNameComponents.namePrefix.getter(SEL *a1)
{
  v3 = *(*v1 + 16);
  v4 = [v3 *a1];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      v20 = v18;

      return v20;
    }

    [v8 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v20 = v21;
LABEL_22:

    return v20;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v10;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v12 = v8;
    v13 = String.init(_nativeStorage:)();
    if (v14)
    {
      v15 = v13;

      return v15;
    }

    if (![v12 length])
    {

      return 0;
    }

    v20 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v8 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v16)
    {
      v17 = result;

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id PersonNameComponents.givenName.getter()
{

  return PersonNameComponents.namePrefix.getter(&selRef_givenName);
}

id PersonNameComponents.middleName.getter()
{

  return PersonNameComponents.namePrefix.getter(&selRef_middleName);
}

id PersonNameComponents.familyName.getter()
{

  return PersonNameComponents.namePrefix.getter(&selRef_familyName);
}

id PersonNameComponents.nameSuffix.getter()
{

  return PersonNameComponents.namePrefix.getter(&selRef_nameSuffix);
}

id PersonNameComponents.nickname.getter()
{

  return PersonNameComponents.namePrefix.getter(&selRef_nickname);
}

void __iop_removeDependency_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 48) + 224));
  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  if (!v3)
  {
LABEL_4:

    os_unfair_lock_unlock((v2 + 224));
    return;
  }

  if ([v3 indexOfObjectIdenticalTo:*(a1 + 32)] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = *(a1 + 48);
    goto LABEL_4;
  }

  v11 = *(a1 + 32);
  os_unfair_lock_unlock((*(a1 + 48) + 224));
  if (v11)
  {
    os_unfair_lock_lock(v11 + 58);
    os_unfair_lock_lock((*(a1 + 48) + 224));
    v4 = *(*(a1 + 48) + 32);
    if (v4)
    {
      v5 = [v4 indexOfObjectIdenticalTo:*(a1 + 32)];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v5;
        v7 = atomic_load(v11 + 237);
        if (v7 != 244)
        {
          v8 = atomic_load((*(a1 + 48) + 232));
          if ((v8 & 1) == 0)
          {
            v9 = *(a1 + 48);
            v10 = *(v9 + 48);
            *(v9 + 48) = v10 - 1;
            if (v10 <= 0)
            {
              __assert_rtn("iop_removeDependency_block_invoke", "NSOperation.m", 847, "iop->__unfinished_deps >= 0");
            }
          }
        }

        [*(v11 + 6) removeObject:*(a1 + 40)];
        [*(*(a1 + 48) + 32) removeObjectAtIndex:v6];
      }
    }

    os_unfair_lock_unlock((*(a1 + 48) + 224));
    os_unfair_lock_unlock(v11 + 58);
  }
}

uint64_t specialized _TimeZoneAutoupdating.abbreviation(for:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v7);
    v3 = v7[1];
    *(v2 + 16) = v7[0];
    *(v2 + 24) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 120));
  ObjectType = swift_getObjectType();
  v7[0] = v1;
  v5 = (*(v3 + 64))(v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

unint64_t lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser()
{
  result = lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser);
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection.remove(at:)(uint64_t result)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    if (result <= 0xF7u)
    {
      v3 = (*v1 >> result);
      *v1 = (*v1 >> (((result + 8) >> 1) & 0x1C) >> (((result + 8) >> 1) & 0x1C) << ((result + 8 - ((((((result + 8) - result) & 0xE000u) >> 13) + 8) & 0xF8)) & 0x18)) | *v1 & ((1 << ((result >> 1) & 0x1C) << ((result >> 1) & 0x1C)) - 1);
      *(v1 + 4) = v2 - ((((((result + 8) - result) & 0xE000u) >> 13) + 8) & 0xF8);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    if (v5)
    {
      v6 = v3 >> 32;
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == v6)
    {
      goto LABEL_14;
    }
  }

  result = Data._Representation.subscript.getter(result, v3, v4);
  v8 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else if (v8 >= v2)
  {
    v9 = result;
    Data._Representation.replaceSubrange(_:with:count:)(v2, v8, 0, 0);
    return v9;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

{
  v2 = *(v1 + 4);
  if (v2)
  {
    if (result <= 0xEFu)
    {
      v3 = (*v1 >> result);
      *v1 = (*v1 >> (((result + 16) >> 1) & 0x18) >> (((result + 16) >> 1) & 0x18) << ((result + 16 - ((((((result + 16) - result) & 0xF000u) >> 12) + 16) & 0xF0)) & 0x10)) | *v1 & ((1 << ((result >> 1) & 0x18) << ((result >> 1) & 0x18)) - 1);
      *(v1 + 4) = v2 - ((((((result + 16) - result) & 0xF000u) >> 12) + 16) & 0xF0);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_SE_p5valuet_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_SE_p5valuetGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t outlined init with copy of (key: String, value: Encodable)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SE_p5valuetMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_180A1C8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _NSSwiftURLComponents._scheme.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v16 = *(v1 + 112);
  v17 = v2;
  v18[0] = *(v1 + 144);
  *(v18 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v12 = *(v1 + 48);
  v13 = v3;
  v4 = *(v1 + 96);
  v14 = *(v1 + 80);
  v15 = v4;
  v5 = *(v1 + 32);
  v10 = *(v1 + 16);
  v11 = v5;
  outlined init with copy of URLComponents(&v10, &v9);
  os_unfair_lock_unlock((v1 + 172));
  if (v12)
  {
    v6 = *(&v11 + 1);
  }

  else if ((BYTE9(v10) & 1) != 0 && v10 && (*(v10 + 48) & 1) == 0)
  {
    v8 = String.subscript.getter();
    v6 = MEMORY[0x1865CAE80](v8);
  }

  else
  {
    v6 = 0;
  }

  outlined destroy of URLComponents(&v10);
  return v6;
}

unint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(char a1, uint64_t a2, uint64_t a3)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

unint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v155 = v3[1];
  LOBYTE(v162[0]) = a1;
  v153 = dispatch thunk of CustomStringConvertible.description.getter();
  v154 = v9;
  v10 = *v3;
  v11 = v6[2];
  v13 = *(a3 + 24);
  v163 = *(a3 + 16);
  v12 = v163;
  v164 = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v162);
  v15 = *(v12 - 1);
  (*(v15 + 16))(boxed_opaque_existential_0, a2, v12);
  v16 = *(v10 + 152);
  if (!v16)
  {
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v28;
    goto LABEL_83;
  }

  if (v16 != 1)
  {
    v29 = *(v10 + 160);

    v30 = __JSONEncoder.codingPath.getter();
    v31 = _CodingPathNode.path.getter(v11);
    v159 = v30;
    specialized Array.append<A>(contentsOf:)(v31);
    v32 = v30;
    outlined init with copy of Hashable & Sendable(v162, &v159);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
    }

    v35 = v32[2];
    v34 = v32[3];
    v149 = v4;
    v152 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
    }

    v36 = __swift_mutable_project_boxed_opaque_existential_1(&v159, v161);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v39 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, v37);
    v157 = v12;
    v158 = v13;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v156);
    (*(v15 + 32))(v41, v39, v12);
    v32[2] = v152;
    outlined init with take of Equatable(&v156, &v32[5 * v35 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    (v16)(&v159, v32);

    __swift_project_boxed_opaque_existential_1(&v159, v161);
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v42;
    sub_1807A5C7C(v16);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    goto LABEL_82;
  }

  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = v17;
  v20 = v18;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v16 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v21 = String.index(after:)();
    v22 = 7;
    if (((v20 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v147 = 4 * v16;
    if (4 * v16 < v21 >> 14)
    {
      __break(1u);
    }

    else
    {
      v146 = v22 | (v16 << 16);
      v148 = v20;
      v23 = String.subscript.getter();
      v27 = v26;
      v165 = v19;
      v149 = v4;
      if ((v23 ^ v24) >= 0x4000)
      {
        v43 = v23;
        v12 = v24;
        v16 = v25;
        v150 = MEMORY[0x1E69E7CC0];
        v20 = 0x700030001;
        v152 = 15;
        while (1)
        {
          v5 = Substring.UnicodeScalarView.index(before:)();
          v44 = Substring.UnicodeScalarView.subscript.getter();
          v45 = v44;
          v46 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v44), 1u);
          v47 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v45, v46, 0x700030001);
          v48 = v43;
          if (!v47)
          {
            break;
          }

LABEL_20:
          v49 = Substring.UnicodeScalarView.index(after:)();

          v50 = v48 >> 14;
          v51 = v152;
          if (v48 >> 14 < v152 >> 14 || v49 >> 14 < v50)
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

          v12 = v150;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 2) + 1, 1, v150);
          }

          v53 = *(v12 + 2);
          v52 = *(v12 + 3);
          if (v53 >= v52 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v12);
          }

          *(v12 + 2) = v53 + 1;
          v150 = v12;
          v54 = &v12[16 * v53];
          *(v54 + 4) = v51;
          *(v54 + 5) = v48;
          v143 = v48 >> 14;
          if (v147 < v50)
          {
            goto LABEL_117;
          }

          v55 = String.subscript.getter();
          v59 = v58;
          if ((v55 ^ v56) < 0x4000)
          {
            v152 = v48;
            goto LABEL_73;
          }

          v5 = v55;
          v43 = v56;
          v12 = v57;
          v152 = Substring.UnicodeScalarView.index(before:)();
          v60 = Substring.UnicodeScalarView.subscript.getter();
          v61 = v60;
          v19 = 0x700030000;
          v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v60), 0);
          v63 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v61, v62, 0x700030000);
          v64 = v5;
          v20 = v148;
          if (!v63)
          {
            v76 = HIBYTE(v59) & 0xF;
            if ((v59 & 0x2000000000000000) == 0)
            {
              v76 = v12 & 0xFFFFFFFFFFFFLL;
            }

            v151 = v76;
            v145 = v59 & 0xFFFFFFFFFFFFFFLL;
            v144 = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v64 = v5;
            while ((v64 ^ v152) >= 0x4000)
            {
              v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v64, v12, v59);
              v16 = v70 >> 16;
              if (v70 >> 16 >= v151)
              {
                goto LABEL_94;
              }

              if ((v59 & 0x1000000000000000) != 0)
              {
                v64 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v59 & 0x2000000000000000) != 0)
                {
                  v159 = v12;
                  v160 = v145;
                  v81 = *(&v159 + v16);
                }

                else
                {
                  v80 = v144;
                  if ((v12 & 0x1000000000000000) == 0)
                  {
                    v80 = _StringObject.sharedUTF8.getter();
                  }

                  v81 = *(v80 + v16);
                }

                v82 = v81;
                v83 = __clz(v81 ^ 0xFF) - 24;
                if (v82 >= 0)
                {
                  LOBYTE(v83) = 1;
                }

                v64 = ((v16 + v83) << 16) | 5;
              }

              v77 = Substring.UnicodeScalarView.subscript.getter();
              v78 = v77;
              v79 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v77), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v78, v79, 0x700030000))
              {
                goto LABEL_29;
              }
            }

            v152 = v48;
            goto LABEL_73;
          }

LABEL_29:
          v65 = Substring.UnicodeScalarView.index(after:)();

          if (v65 >> 14 < v64 >> 14)
          {
            goto LABEL_118;
          }

          if (v64 >> 14 == String.index(after:)() >> 14)
          {
            v66 = v48;
          }

          else
          {
            v66 = String.index(before:)();
            if (v143 > v66 >> 14)
            {
              goto LABEL_120;
            }

            v85 = *(v150 + 2);
            v84 = *(v150 + 3);
            if (v85 >= v84 >> 1)
            {
              v91 = v66;
              v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v150);
              v66 = v91;
            }

            v86 = v150;
            *(v150 + 2) = v85 + 1;
            v87 = &v86[16 * v85];
            *(v87 + 4) = v48;
            *(v87 + 5) = v66;
          }

          v20 = 0x700030001;
          v152 = v66;
          if (v147 < v65 >> 14)
          {
            goto LABEL_119;
          }

          v43 = String.subscript.getter();
          v12 = v88;
          v16 = v89;
          v27 = v90;
          if ((v43 ^ v88) < 0x4000)
          {
            goto LABEL_73;
          }
        }

        if ((v27 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        v151 = v27 & 0xFFFFFFFFFFFFFFLL;
        v145 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v48 = v43;
        while ((v48 ^ v5) >= 0x4000)
        {
          v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v48, v16, v27);
          v71 = v70 >> 16;
          if (v70 >> 16 >= v19)
          {
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          if ((v27 & 0x1000000000000000) != 0)
          {
            v48 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v27 & 0x2000000000000000) != 0)
            {
              v159 = v16;
              v160 = v151;
              v73 = *(&v159 + v71);
            }

            else
            {
              v72 = v145;
              if ((v16 & 0x1000000000000000) == 0)
              {
                v72 = _StringObject.sharedUTF8.getter();
              }

              v73 = *(v72 + v71);
            }

            v74 = v73;
            v75 = __clz(v73 ^ 0xFF) - 24;
            if (v74 >= 0)
            {
              LOBYTE(v75) = 1;
            }

            v48 = ((v71 + v75) << 16) | 5;
          }

          v67 = Substring.UnicodeScalarView.subscript.getter();
          v68 = v67;
          v20 = 0x700030001;
          v69 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v67), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v68, v69, 0x700030001))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v152 = 15;
        v150 = MEMORY[0x1E69E7CC0];
      }

LABEL_73:

      boxed_opaque_existential_0 = v152;
      if (v147 >= v152 >> 14)
      {
        v12 = v150;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_75:
          v93 = *(v12 + 2);
          v92 = *(v12 + 3);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v12);
          }

          *(v12 + 2) = v94;
          v95 = &v12[16 * v93];
          v96 = v146;
          *(v95 + 4) = boxed_opaque_existential_0;
          *(v95 + 5) = v96;
          v159 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
          v97 = v159;
          v150 = v12;
          v98 = v12 + 40;
          do
          {
            String.subscript.getter();
            v99 = Substring.lowercased()();

            v159 = v97;
            v101 = *(v97 + 2);
            v100 = *(v97 + 3);
            if (v101 >= v100 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
              v97 = v159;
            }

            v98 += 16;
            *(v97 + 2) = v101 + 1;
            *&v97[16 * v101 + 32] = v99;
            --v94;
          }

          while (v94);

          v159 = v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v19 = BidirectionalCollection<>.joined(separator:)();
          v16 = v102;

          v20 = v16;
LABEL_82:
          v5 = v149;
          goto LABEL_83;
        }

LABEL_115:
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_115;
  }

LABEL_83:
  v103 = v155;
  __swift_destroy_boxed_opaque_existential_1(v162);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v162[0] = *(v103 + 16);
  v43 = v162[0];
  *(v103 + 16) = 0x8000000000000000;
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v106 = *(v43 + 16);
  v107 = (v105 & 1) == 0;
  v108 = __OFADD__(v106, v107);
  v109 = v106 + v107;
  if (v108)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    v151 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
    v119 = static _DictionaryStorage.copy(original:)();
    v110 = v119;
    if (!*(v43 + 16))
    {
LABEL_111:

      v70 = v151;
      v103 = v155;
      if (v16)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v120 = (v119 + 64);
    v121 = v43 + 64;
    v122 = ((1 << *(v110 + 32)) + 63) >> 6;
    if (v110 != v43 || v120 >= v121 + 8 * v122)
    {
      memmove(v120, (v43 + 64), 8 * v122);
    }

    v123 = 0;
    *(v110 + 16) = *(v43 + 16);
    v124 = 1 << *(v43 + 32);
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v126 = v125 & *(v43 + 64);
    v127 = (v124 + 63) >> 6;
    v165 = v19;
    v149 = v5;
    if (v126)
    {
      do
      {
        v128 = __clz(__rbit64(v126));
        v152 = (v126 - 1) & v126;
LABEL_109:
        v131 = v128 | (v123 << 6);
        v132 = 16 * v131;
        v133 = (*(v43 + 48) + 16 * v131);
        v135 = *v133;
        v134 = v133[1];
        v131 *= 24;
        v136 = *(v43 + 56) + v131;
        v137 = *v136;
        v138 = *(v136 + 8);
        v139 = (*(v110 + 48) + v132);
        v140 = *(v136 + 16);
        *v139 = v135;
        v139[1] = v134;
        v141 = *(v110 + 56) + v131;
        *v141 = v137;
        *(v141 + 8) = v138;
        *(v141 + 16) = v140;

        outlined copy of JSONFuture(v137, v138, v140);
        v19 = v165;
        v126 = v152;
      }

      while (v152);
    }

    v129 = v123;
    while (1)
    {
      v123 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v123 >= v127)
      {
        goto LABEL_111;
      }

      v130 = *(v121 + 8 * v123);
      ++v129;
      if (v130)
      {
        v128 = __clz(__rbit64(v130));
        v152 = (v130 - 1) & v130;
        goto LABEL_109;
      }
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  LOBYTE(v16) = v105;
  if (*(v43 + 24) >= v109)
  {
    if (v104)
    {
      v110 = v43;
      if (v105)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    goto LABEL_96;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v109, v104);
  v110 = v162[0];
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  if ((v16 & 1) == (v111 & 1))
  {
    if (v16)
    {
LABEL_87:
      v112 = v70;

      v113 = *(v110 + 56) + 24 * v112;
      v114 = *v113;
      v115 = *(v113 + 8);
      v116 = v154;
      *v113 = v153;
      *(v113 + 8) = v116;
      v117 = *(v113 + 16);
      *(v113 + 16) = 1;
      result = outlined consume of JSONFuture(v114, v115, v117);
LABEL_91:
      *(v103 + 16) = v110;
      return result;
    }

LABEL_90:
    result = specialized _NativeDictionary._insert(at:key:value:)(v70, v19, v20, v153, v154, 1, v110);
    goto LABEL_91;
  }

LABEL_122:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _JSONSimpleValueArrayElement<>.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, char a2)
{
  v8 = a2;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = *(*(a1 + 16) + 16);
  v7[0] = v3;
  v7[1] = v5;
  specialized String.withUTF8<A>(_:)(v7);

  return *(*(a1 + 16) + 16) - v4;
}

unint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(__int16 a1, uint64_t a2, uint64_t a3)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

unint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(__int16 a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v155 = v3[1];
  LOWORD(v162[0]) = a1;
  v153 = dispatch thunk of CustomStringConvertible.description.getter();
  v154 = v9;
  v10 = *v3;
  v11 = v6[2];
  v13 = *(a3 + 24);
  v163 = *(a3 + 16);
  v12 = v163;
  v164 = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v162);
  v15 = *(v12 - 1);
  (*(v15 + 16))(boxed_opaque_existential_0, a2, v12);
  v16 = *(v10 + 152);
  if (!v16)
  {
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v28;
    goto LABEL_83;
  }

  if (v16 != 1)
  {
    v29 = *(v10 + 160);

    v30 = __JSONEncoder.codingPath.getter();
    v31 = _CodingPathNode.path.getter(v11);
    v159 = v30;
    specialized Array.append<A>(contentsOf:)(v31);
    v32 = v30;
    outlined init with copy of Hashable & Sendable(v162, &v159);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
    }

    v35 = v32[2];
    v34 = v32[3];
    v149 = v4;
    v152 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
    }

    v36 = __swift_mutable_project_boxed_opaque_existential_1(&v159, v161);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v39 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, v37);
    v157 = v12;
    v158 = v13;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v156);
    (*(v15 + 32))(v41, v39, v12);
    v32[2] = v152;
    outlined init with take of Equatable(&v156, &v32[5 * v35 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    (v16)(&v159, v32);

    __swift_project_boxed_opaque_existential_1(&v159, v161);
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v42;
    sub_1807A5C7C(v16);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    goto LABEL_82;
  }

  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = v17;
  v20 = v18;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v16 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v21 = String.index(after:)();
    v22 = 7;
    if (((v20 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v147 = 4 * v16;
    if (4 * v16 < v21 >> 14)
    {
      __break(1u);
    }

    else
    {
      v146 = v22 | (v16 << 16);
      v148 = v20;
      v23 = String.subscript.getter();
      v27 = v26;
      v165 = v19;
      v149 = v4;
      if ((v23 ^ v24) >= 0x4000)
      {
        v43 = v23;
        v12 = v24;
        v16 = v25;
        v150 = MEMORY[0x1E69E7CC0];
        v20 = 0x700030001;
        v152 = 15;
        while (1)
        {
          v5 = Substring.UnicodeScalarView.index(before:)();
          v44 = Substring.UnicodeScalarView.subscript.getter();
          v45 = v44;
          v46 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v44), 1u);
          v47 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v45, v46, 0x700030001);
          v48 = v43;
          if (!v47)
          {
            break;
          }

LABEL_20:
          v49 = Substring.UnicodeScalarView.index(after:)();

          v50 = v48 >> 14;
          v51 = v152;
          if (v48 >> 14 < v152 >> 14 || v49 >> 14 < v50)
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

          v12 = v150;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 2) + 1, 1, v150);
          }

          v53 = *(v12 + 2);
          v52 = *(v12 + 3);
          if (v53 >= v52 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v12);
          }

          *(v12 + 2) = v53 + 1;
          v150 = v12;
          v54 = &v12[16 * v53];
          *(v54 + 4) = v51;
          *(v54 + 5) = v48;
          v143 = v48 >> 14;
          if (v147 < v50)
          {
            goto LABEL_117;
          }

          v55 = String.subscript.getter();
          v59 = v58;
          if ((v55 ^ v56) < 0x4000)
          {
            v152 = v48;
            goto LABEL_73;
          }

          v5 = v55;
          v43 = v56;
          v12 = v57;
          v152 = Substring.UnicodeScalarView.index(before:)();
          v60 = Substring.UnicodeScalarView.subscript.getter();
          v61 = v60;
          v19 = 0x700030000;
          v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v60), 0);
          v63 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v61, v62, 0x700030000);
          v64 = v5;
          v20 = v148;
          if (!v63)
          {
            v76 = HIBYTE(v59) & 0xF;
            if ((v59 & 0x2000000000000000) == 0)
            {
              v76 = v12 & 0xFFFFFFFFFFFFLL;
            }

            v151 = v76;
            v145 = v59 & 0xFFFFFFFFFFFFFFLL;
            v144 = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v64 = v5;
            while ((v64 ^ v152) >= 0x4000)
            {
              v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v64, v12, v59);
              v16 = v70 >> 16;
              if (v70 >> 16 >= v151)
              {
                goto LABEL_94;
              }

              if ((v59 & 0x1000000000000000) != 0)
              {
                v64 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v59 & 0x2000000000000000) != 0)
                {
                  v159 = v12;
                  v160 = v145;
                  v81 = *(&v159 + v16);
                }

                else
                {
                  v80 = v144;
                  if ((v12 & 0x1000000000000000) == 0)
                  {
                    v80 = _StringObject.sharedUTF8.getter();
                  }

                  v81 = *(v80 + v16);
                }

                v82 = v81;
                v83 = __clz(v81 ^ 0xFF) - 24;
                if (v82 >= 0)
                {
                  LOBYTE(v83) = 1;
                }

                v64 = ((v16 + v83) << 16) | 5;
              }

              v77 = Substring.UnicodeScalarView.subscript.getter();
              v78 = v77;
              v79 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v77), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v78, v79, 0x700030000))
              {
                goto LABEL_29;
              }
            }

            v152 = v48;
            goto LABEL_73;
          }

LABEL_29:
          v65 = Substring.UnicodeScalarView.index(after:)();

          if (v65 >> 14 < v64 >> 14)
          {
            goto LABEL_118;
          }

          if (v64 >> 14 == String.index(after:)() >> 14)
          {
            v66 = v48;
          }

          else
          {
            v66 = String.index(before:)();
            if (v143 > v66 >> 14)
            {
              goto LABEL_120;
            }

            v85 = *(v150 + 2);
            v84 = *(v150 + 3);
            if (v85 >= v84 >> 1)
            {
              v91 = v66;
              v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v150);
              v66 = v91;
            }

            v86 = v150;
            *(v150 + 2) = v85 + 1;
            v87 = &v86[16 * v85];
            *(v87 + 4) = v48;
            *(v87 + 5) = v66;
          }

          v20 = 0x700030001;
          v152 = v66;
          if (v147 < v65 >> 14)
          {
            goto LABEL_119;
          }

          v43 = String.subscript.getter();
          v12 = v88;
          v16 = v89;
          v27 = v90;
          if ((v43 ^ v88) < 0x4000)
          {
            goto LABEL_73;
          }
        }

        if ((v27 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        v151 = v27 & 0xFFFFFFFFFFFFFFLL;
        v145 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v48 = v43;
        while ((v48 ^ v5) >= 0x4000)
        {
          v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v48, v16, v27);
          v71 = v70 >> 16;
          if (v70 >> 16 >= v19)
          {
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          if ((v27 & 0x1000000000000000) != 0)
          {
            v48 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v27 & 0x2000000000000000) != 0)
            {
              v159 = v16;
              v160 = v151;
              v73 = *(&v159 + v71);
            }

            else
            {
              v72 = v145;
              if ((v16 & 0x1000000000000000) == 0)
              {
                v72 = _StringObject.sharedUTF8.getter();
              }

              v73 = *(v72 + v71);
            }

            v74 = v73;
            v75 = __clz(v73 ^ 0xFF) - 24;
            if (v74 >= 0)
            {
              LOBYTE(v75) = 1;
            }

            v48 = ((v71 + v75) << 16) | 5;
          }

          v67 = Substring.UnicodeScalarView.subscript.getter();
          v68 = v67;
          v20 = 0x700030001;
          v69 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v67), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v68, v69, 0x700030001))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v152 = 15;
        v150 = MEMORY[0x1E69E7CC0];
      }

LABEL_73:

      boxed_opaque_existential_0 = v152;
      if (v147 >= v152 >> 14)
      {
        v12 = v150;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_75:
          v93 = *(v12 + 2);
          v92 = *(v12 + 3);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v12);
          }

          *(v12 + 2) = v94;
          v95 = &v12[16 * v93];
          v96 = v146;
          *(v95 + 4) = boxed_opaque_existential_0;
          *(v95 + 5) = v96;
          v159 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
          v97 = v159;
          v150 = v12;
          v98 = v12 + 40;
          do
          {
            String.subscript.getter();
            v99 = Substring.lowercased()();

            v159 = v97;
            v101 = *(v97 + 2);
            v100 = *(v97 + 3);
            if (v101 >= v100 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
              v97 = v159;
            }

            v98 += 16;
            *(v97 + 2) = v101 + 1;
            *&v97[16 * v101 + 32] = v99;
            --v94;
          }

          while (v94);

          v159 = v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v19 = BidirectionalCollection<>.joined(separator:)();
          v16 = v102;

          v20 = v16;
LABEL_82:
          v5 = v149;
          goto LABEL_83;
        }

LABEL_115:
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_115;
  }

LABEL_83:
  v103 = v155;
  __swift_destroy_boxed_opaque_existential_1(v162);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v162[0] = *(v103 + 16);
  v43 = v162[0];
  *(v103 + 16) = 0x8000000000000000;
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v106 = *(v43 + 16);
  v107 = (v105 & 1) == 0;
  v108 = __OFADD__(v106, v107);
  v109 = v106 + v107;
  if (v108)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    v151 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
    v119 = static _DictionaryStorage.copy(original:)();
    v110 = v119;
    if (!*(v43 + 16))
    {
LABEL_111:

      v70 = v151;
      v103 = v155;
      if (v16)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v120 = (v119 + 64);
    v121 = v43 + 64;
    v122 = ((1 << *(v110 + 32)) + 63) >> 6;
    if (v110 != v43 || v120 >= v121 + 8 * v122)
    {
      memmove(v120, (v43 + 64), 8 * v122);
    }

    v123 = 0;
    *(v110 + 16) = *(v43 + 16);
    v124 = 1 << *(v43 + 32);
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v126 = v125 & *(v43 + 64);
    v127 = (v124 + 63) >> 6;
    v165 = v19;
    v149 = v5;
    if (v126)
    {
      do
      {
        v128 = __clz(__rbit64(v126));
        v152 = (v126 - 1) & v126;
LABEL_109:
        v131 = v128 | (v123 << 6);
        v132 = 16 * v131;
        v133 = (*(v43 + 48) + 16 * v131);
        v135 = *v133;
        v134 = v133[1];
        v131 *= 24;
        v136 = *(v43 + 56) + v131;
        v137 = *v136;
        v138 = *(v136 + 8);
        v139 = (*(v110 + 48) + v132);
        v140 = *(v136 + 16);
        *v139 = v135;
        v139[1] = v134;
        v141 = *(v110 + 56) + v131;
        *v141 = v137;
        *(v141 + 8) = v138;
        *(v141 + 16) = v140;

        outlined copy of JSONFuture(v137, v138, v140);
        v19 = v165;
        v126 = v152;
      }

      while (v152);
    }

    v129 = v123;
    while (1)
    {
      v123 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v123 >= v127)
      {
        goto LABEL_111;
      }

      v130 = *(v121 + 8 * v123);
      ++v129;
      if (v130)
      {
        v128 = __clz(__rbit64(v130));
        v152 = (v130 - 1) & v130;
        goto LABEL_109;
      }
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  LOBYTE(v16) = v105;
  if (*(v43 + 24) >= v109)
  {
    if (v104)
    {
      v110 = v43;
      if (v105)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    goto LABEL_96;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v109, v104);
  v110 = v162[0];
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  if ((v16 & 1) == (v111 & 1))
  {
    if (v16)
    {
LABEL_87:
      v112 = v70;

      v113 = *(v110 + 56) + 24 * v112;
      v114 = *v113;
      v115 = *(v113 + 8);
      v116 = v154;
      *v113 = v153;
      *(v113 + 8) = v116;
      v117 = *(v113 + 16);
      *(v113 + 16) = 1;
      result = outlined consume of JSONFuture(v114, v115, v117);
LABEL_91:
      *(v103 + 16) = v110;
      return result;
    }

LABEL_90:
    result = specialized _NativeDictionary._insert(at:key:value:)(v70, v19, v20, v153, v154, 1, v110);
    goto LABEL_91;
  }

LABEL_122:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

void *specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _WORD *a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

id Date.description(with:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  if (v3)
  {
    ObjectType = swift_getObjectType();
    v6 = (*(v2 + 488))(ObjectType, v2);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 descriptionWithLocale_];

  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v7);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
    goto LABEL_10;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v22 = v23;
    }

LABEL_24:

    return v22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v12;
    }

LABEL_10:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v14 = v10;
    v15 = String.init(_nativeStorage:)();
    if (v16)
    {
      v17 = v15;

      return v17;
    }

    if (![v14 length])
    {

      return 0;
    }

    v22 = String.init(_cocoaString:)();
    goto LABEL_24;
  }

  result = [v10 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v18)
    {
      v19 = result;

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in KeyPathComparator.init<A>(_:order:)(uint64_t a1)
{
  return partial apply for closure #1 in KeyPathComparator.init<A>(_:order:)(a1, closure #1 in KeyPathComparator.init<A>(_:order:));
}

{
  return partial apply for closure #1 in KeyPathComparator.init<A>(_:order:)(a1, closure #1 in KeyPathComparator.init<A>(_:order:));
}

uint64_t closure #1 in KeyPathComparator.init<A>(_:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  a5[3] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  if (a3)
  {
    return swift_getAtKeyPath();
  }

  v11 = *(*(a4 - 8) + 16);

  return v11(boxed_opaque_existential_0, a1 + a2, a4);
}

uint64_t KeyPathComparator.compare(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[12];
  v4(v13);
  (v4)(v12, a2);
  v5 = v2[6];
  v6 = v2[4];
  v7 = __swift_project_boxed_opaque_existential_1(v2 + 1, v6);
  v11[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v7, v6);
  v9 = v5(v11, v13, v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t specialized closure #1 in AnySortComparator.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any(a1, v60);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v56);
  swift_dynamicCast();
  outlined init with copy of Any(a3, v53);
  swift_dynamicCast();
  v5 = v54;
  v6 = v55;
  v7 = v57;
  v8 = v59;
  if (v58 != 1)
  {

    v27 = Substring.init<A>(_:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v47 = v52;

    v34 = Substring.init<A>(_:)();
    v26 = Substring._unlocalizedCompare(other:options:)(v34, v35, v36, v37, v7, v27, v29, v31, v33);

    v38 = 1;
    if (v26 == 1)
    {
      v39 = -1;
    }

    else
    {
      v39 = v26;
    }

    if (v26 != -1)
    {
      v38 = v39;
    }

    if (v8)
    {
      v26 = v38;
    }

    goto LABEL_20;
  }

  v45 = v57;
  v46 = v59;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v47 = static LocaleCache.cache;
  v48 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v10 = v9;
  v51 = v52;
  v50[0] = v5;
  v50[1] = v6;
  v11 = lazy protocol witness table accessor for type String and conformance String();
  v12 = MEMORY[0x1E69E6158];
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v13 = String._bridgeToObjectiveCImpl()();

  v14 = String._bridgeToObjectiveCImpl()();

  v15 = v50;
  result = StringProtocol._toUTF16Offsets(_:)();
  if (__OFSUB__(v17, result))
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = result;
  v42 = v17 - result;
  v43 = v14;
  v44 = v13;
  ObjectType = swift_getObjectType();
  v19 = *(v10 + 488);
  swift_unknownObjectRetain();
  v20 = v19(ObjectType, v10);
  swift_unknownObjectRelease();
  v15 = type metadata accessor for NSLocale();
  v49 = v15;
  *&v47 = v20;
  v21 = __swift_project_boxed_opaque_existential_1(&v47, v15);
  v11 = *(v15 - 1);
  v22 = *(v11 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v13 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (&v41 - v13);
  v14 = *(v11 + 16);
  v14(&v41 - v13, v23);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
LABEL_23:
    v41 = &v41;
    v40 = MEMORY[0x1EEE9AC00](result);
    (v14)(&v41 - v13, v12, v15, v40);
    v24 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v11 + 8))(v12, v15);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v26 = [v44 compare:v43 options:v45 range:v6 locale:{v42, v24}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v46)
    {
      if (v26 == -1)
      {
        v26 = 1;
      }

      else if (v26 == 1)
      {
        v26 = -1;
      }
    }

LABEL_20:

    return v26;
  }

  if (v22 == 8)
  {
    v24 = *v12;
    v25 = *(v11 + 8);
    swift_unknownObjectRetain();
    v25(&v41 - v13, v15);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

{
  outlined init with copy of Any(a1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMd);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  swift_dynamicCast();
  outlined init with copy of Any(a3, v54);
  swift_dynamicCast();
  v5 = v56;
  v6 = *(&v53 + 1);
  v7 = v60;
  if (!v56)
  {
    v27 = 1;
    if (!v60)
    {
      v27 = -1;
    }

    if (*(&v53 + 1))
    {
      v26 = v27;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_30;
  }

  if (!*(&v53 + 1))
  {
    if (v60)
    {
      v26 = -1;
    }

    else
    {
      v26 = 1;
    }

LABEL_30:

    return v26;
  }

  v8 = v55;
  v9 = v58;
  if ((v59 & 1) == 0)
  {

    v28 = Substring.init<A>(_:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v48 = v53;

    v35 = Substring.init<A>(_:)();
    v26 = Substring._unlocalizedCompare(other:options:)(v35, v36, v37, v38, v9, v28, v30, v32, v34);

    v39 = 1;
    if (v26 == 1)
    {
      v40 = -1;
    }

    else
    {
      v40 = v26;
    }

    if (v26 != -1)
    {
      v39 = v40;
    }

    if (v7)
    {
      v26 = v39;
    }

    goto LABEL_30;
  }

  v46 = v58;
  v47 = v60;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v48 = static LocaleCache.cache;
  v49 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v11 = v10;
  v52 = v53;
  v51[0] = v8;
  v51[1] = v5;
  v12 = lazy protocol witness table accessor for type String and conformance String();
  v13 = MEMORY[0x1E69E6158];
  v14 = StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v45 = String._bridgeToObjectiveCImpl()();

  v44 = String._bridgeToObjectiveCImpl()();

  v15 = v51;
  result = StringProtocol._toUTF16Offsets(_:)();
  v43 = v17 - result;
  if (__OFSUB__(v17, result))
  {
    __break(1u);
    goto LABEL_33;
  }

  v5 = result;
  ObjectType = swift_getObjectType();
  v19 = *(v11 + 488);
  swift_unknownObjectRetain();
  v20 = v19(ObjectType, v11);
  swift_unknownObjectRelease();
  v15 = type metadata accessor for NSLocale();
  v50 = v15;
  *&v48 = v20;
  v21 = __swift_project_boxed_opaque_existential_1(&v48, v15);
  v12 = *(v15 - 1);
  v22 = *(v12 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v6 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = (&v42 - v6);
  v14 = *(v12 + 16);
  v14(&v42 - v6, v23);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
LABEL_33:
    v42 = &v42;
    v41 = MEMORY[0x1EEE9AC00](result);
    (v14)(&v42 - v6, v13, v15, v41);
    v24 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v12 + 8))(v13, v15);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&v48);
    v26 = [v45 compare:v44 options:v46 range:v5 locale:{v43, v24}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v47)
    {
      if (v26 == -1)
      {
        v26 = 1;
      }

      else if (v26 == 1)
      {
        v26 = -1;
      }
    }

    goto LABEL_30;
  }

  if (v22 == 8)
  {
    v24 = *v13;
    v25 = *(v12 + 8);
    swift_unknownObjectRetain();
    v25(&v42 - v6, v15);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for String.StandardComparator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSLocale()
{
  result = lazy cache variable for type metadata for NSLocale;
  if (!lazy cache variable for type metadata for NSLocale)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLocale);
  }

  return result;
}

void *NSFileHandle.read(upToCount:)(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v2 = [v1 readDataUpToLength:a1 error:v15];
  v3 = v15[0];
  if (!v2)
  {
    if (v15[0])
    {
      v15[0];
LABEL_17:
      swift_willThrow();
      return v3;
    }

    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_16:
      v13 = _nilObjCError;
      goto LABEL_17;
    }

LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  v4 = v2;
  v5 = v3;
  v3 = specialized Data.init(referencing:)(v4);
  v7 = v6;

  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_14;
    }

    v10 = v3[2];
    v9 = v3[3];
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 <= 0)
      {
        goto LABEL_14;
      }

      return v3;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(v3), v3))
    {
      if (HIDWORD(v3) - v3 > 0)
      {
        return v3;
      }

LABEL_14:
      outlined consume of Data._Representation(v3, v7);
      return 0;
    }

    goto LABEL_20;
  }

  if (!BYTE6(v7))
  {
    goto LABEL_14;
  }

  return v3;
}

uint64_t static NSKeyedUnarchiver.unarchivedArrayOfObjects<A>(ofClass:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_181218E20;
  *(v8 + 32) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
  v9 = _ContiguousArrayBuffer._asCocoaArray()();
  v10 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v10)
    {
      v25 = a2;
      v26 = a3;
      v27 = BYTE2(a3);
      v28 = BYTE3(a3);
      v29 = BYTE4(a3);
      v30 = BYTE5(a3);
      v11 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v25 length:BYTE6(a3)];
      goto LABEL_9;
    }

    v12 = a2;
    v13 = a2 >> 32;
    if (a2 >> 32 < a2)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v10 == 2)
  {
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
LABEL_7:
    v11 = __DataStorage.bridgedReference(_:)(v12, v13);
    goto LABEL_9;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v14 = v11;
  v25 = 0;
  v15 = __NSKeyedUnarchiverSecureUnarchivedArrayOfObjectsOfClasses(v9, v11, &v25);
  swift_unknownObjectRelease();

  v16 = v25;
  if (!v15)
  {
    v18 = v25;
    if (v16)
    {
      goto LABEL_17;
    }

    return 0;
  }

  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
    v17 = v16;
  }

  else
  {
    v19 = v16;
    v20 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    [(NSArray *)v15 copy];
    v23 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
    v22 = specialized _arrayForceCast<A, B>(_:)(v23);

    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v22 = v21;

  if (!v16)
  {
LABEL_19:

    if (v22)
    {
      v8 = specialized _arrayConditionalCast<A, B>(_:)(v22, a4);

      return v8;
    }

    return 0;
  }

LABEL_17:

  swift_willThrow();

  return v8;
}

NSArray *__NSKeyedUnarchiverSecureUnarchivedArrayOfObjectsOfClasses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DFD8] setWithArray:a1];

  return [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClasses:v5 fromData:a2 error:a3];
}

double static Date.- infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 - a3;
  *a2 = result;
  return result;
}

char *specialized __PlistDictionaryDecoder.decode(_:)()
{

  specialized _PlistDecodingStorage.topContainer.getter(v1, v14);

  v2 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    if (v12 == 0x6C6C756E24 && v13 == 0xE500000000000000)
    {
      goto LABEL_10;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
LABEL_11:
      v8 = type metadata accessor for DecodingError();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v10 = v2;
      v6 = "but found null value instead.";

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
      swift_willThrow();
      return v6;
    }
  }

  specialized _PlistDecodingStorage.topContainer.getter(v5, v14);

  v6 = specialized __PlistDictionaryDecoder.unbox(_:as:)(v14);
  v2 = v7;
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (!v0 && !v2)
  {
    __break(1u);
LABEL_10:

    goto LABEL_11;
  }

  return v6;
}

NSString *newJSON5HexNumber(NSString *result, void *a2)
{
  v3 = result;
  v82 = *MEMORY[0x1E69E9840];
  isa = result[3].super.isa;
  v5 = result->super.isa;
  v6 = result->super.isa + isa;
  v7 = *v6;
  v8 = v7;
  v9 = isa;
  if (v7 == 45)
  {
    v9 = (isa + 1);
    if (result[2].super.isa <= (isa + 1))
    {
      if (a2)
      {
        v40 = result[6].super.isa;
        v36 = isa >= v40;
        v41 = isa - v40;
        if (v36)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        v39 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Number with minus sign but no digits", result[5].super.isa, v42];
        goto LABEL_58;
      }

      return 0;
    }

    result[3].super.isa = v9;
    v8 = *(v9 + v5);
  }

  if (v8 == 48)
  {
    v10 = (v9 + 1);
    v11 = result[2].super.isa;
    if (v11 <= v9 + 1)
    {
      if (a2)
      {
        v46 = result[6].super.isa;
        v36 = v9 >= v46;
        v47 = v9 - v46;
        if (v36)
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        v49 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", result[5].super.isa, v48];
        v50 = [[NSNumber alloc] initWithUnsignedInteger:v3[3].super.isa];
        v78 = @"NSDebugDescription";
        v79 = @"NSJSONSerializationErrorIndex";
        v80 = v49;
        v81 = v50;
        *a2 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v78 count:2]);

        v51 = v3[3].super.isa;
        v52 = v3[6].super.isa;
        v36 = v51 >= v52;
        v53 = v51 - v52;
        if (v36)
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        v55 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Hex number without next 'x'", v3[5].super.isa, v54];
        goto LABEL_80;
      }
    }

    else
    {
      result[3].super.isa = v10;
      if ((*(v10 + v5) | 0x20) == 0x78)
      {
        v12 = (v9 + 2);
        if (v11 > v9 + 2)
        {
          result[3].super.isa = v12;
          if ((*(v12 + v5) - 48) >= 0xAu)
          {
            v13 = *(v12 + v5) - 65;
            v14 = v13 > 0x25;
            v15 = (1 << v13) & 0x3F0000003FLL;
            if (v14 || v15 == 0)
            {
              if (!a2)
              {
                return 0;
              }

              v75 = result[6].super.isa;
              v36 = v12 >= v75;
              v76 = v12 - v75;
              if (v36)
              {
                v77 = v76;
              }

              else
              {
                v77 = 0;
              }

              v39 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Hex number without next digit", result[5].super.isa, v77];
              goto LABEL_58;
            }
          }

          v17 = (v9 + 3);
          if (v11 <= v17)
          {
LABEL_21:
            result[3].super.isa = v17;
          }

          else
          {
            while (1)
            {
              result[3].super.isa = v17;
              if ((*(v17 + v5) - 48) > 9u)
              {
                v18 = *(v17 + v5) - 65;
                v14 = v18 > 0x25;
                v19 = (1 << v18) & 0x3F0000003FLL;
                if (v14 || v19 == 0)
                {
                  break;
                }
              }

              v17 = (v17 + 1);
              if (v11 == v17)
              {
                v17 = v11;
                goto LABEL_21;
              }
            }
          }

          v21 = 0;
          v22 = 0;
          v23 = v17 + v5 - 1;
          if (v7 == 45)
          {
            ++v6;
          }

          v24 = v6 + 2;
          v25 = 1;
          while (v23 >= v24)
          {
            v26 = *v23;
            v27 = v26 - 48;
            if ((v26 - 48) >= 0xA)
            {
              if ((v26 - 65) > 5)
              {
                if ((v26 - 97) > 5)
                {
                  __break(1u);
                  return result;
                }

                v27 = v26 - 87;
              }

              else
              {
                v27 = v26 - 55;
              }
            }

            v28 = 0;
            if (v25 && v27)
            {
              v29 = v27;
              v30 = (v27 * v25) >> 64;
              v28 = v25 * v29;
              if (__CFADD__(v22, v28) || v30 != 0)
              {
                v21 = 1;
              }
            }

            --v23;
            if (v25 >> 60)
            {
              v32 = 1;
            }

            else
            {
              v32 = v21;
            }

            v33 = 16 * v25;
            if (v23 >= v24)
            {
              v34 = v25 == 0;
            }

            else
            {
              v33 = v25;
              v34 = 1;
            }

            v22 += v28;
            if (!v34)
            {
              v21 = v32;
            }

            v25 = v33;
            if (v21)
            {
              goto LABEL_84;
            }
          }

          if ((v21 & 1) == 0)
          {
            if (v7 == 45)
            {
              if (v22 > 0x8000000000000000)
              {
                if (!a2)
                {
                  return 0;
                }

                v72 = result[6].super.isa;
                v36 = v17 >= v72;
                v73 = v17 - v72;
                if (v36)
                {
                  v74 = v73;
                }

                else
                {
                  v74 = 0;
                }

                v39 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Hex number with underflow", result[5].super.isa, v74];
                goto LABEL_58;
              }

              v71 = [[NSNumber alloc] initWithLongLong:-v22];
            }

            else
            {
              v71 = [[NSNumber alloc] initWithUnsignedLongLong:v22];
            }

            return newJSONNumberCreateRoundTripping(v3, isa, v71);
          }

LABEL_84:
          if (!a2)
          {
            return 0;
          }

          v68 = result[6].super.isa;
          v36 = v17 >= v68;
          v69 = v17 - v68;
          if (v36)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v39 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Hex number with underflow or overflow", result[5].super.isa, v70];
LABEL_58:
          v43 = v39;
          v44 = [[NSNumber alloc] initWithUnsignedInteger:v3[3].super.isa];
          v78 = @"NSDebugDescription";
          v79 = @"NSJSONSerializationErrorIndex";
          v80 = v43;
          v81 = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v78 count:2];
LABEL_81:
          *a2 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3840 userInfo:v45];

          return 0;
        }

        if (a2)
        {
          v59 = result[6].super.isa;
          v36 = v10 >= v59;
          v60 = v10 - v59;
          if (v36)
          {
            v61 = v60;
          }

          else
          {
            v61 = 0;
          }

          v62 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unexpected end of file during JSON parse.", result[5].super.isa, v61];
          v63 = [[NSNumber alloc] initWithUnsignedInteger:v3[3].super.isa];
          v78 = @"NSDebugDescription";
          v79 = @"NSJSONSerializationErrorIndex";
          v80 = v62;
          v81 = v63;
          *a2 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v78 count:2]);

          v64 = v3[3].super.isa;
          v65 = v3[6].super.isa;
          v36 = v64 >= v65;
          v66 = v64 - v65;
          if (v36)
          {
            v67 = v66;
          }

          else
          {
            v67 = 0;
          }

          v55 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Hex number without next digit (EoF)", v3[5].super.isa, v67];
LABEL_80:
          v43 = v55;
          v44 = [[NSNumber alloc] initWithUnsignedInteger:v3[3].super.isa];
          v78 = @"NSDebugDescription";
          v79 = @"NSJSONSerializationErrorIndex";
          v80 = v43;
          v81 = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v78 count:2];
          goto LABEL_81;
        }
      }

      else if (a2)
      {
        v56 = result[6].super.isa;
        v36 = v10 >= v56;
        v57 = v10 - v56;
        if (v36)
        {
          v58 = v57;
        }

        else
        {
          v58 = 0;
        }

        v39 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Hex number without 'x'", result[5].super.isa, v58];
        goto LABEL_58;
      }
    }
  }

  else if (a2)
  {
    v35 = result[6].super.isa;
    v36 = v9 >= v35;
    v37 = v9 - v35;
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Hex number without leading zero", result[5].super.isa, v38];
    goto LABEL_58;
  }

  return 0;
}

uint64_t _NSSetUnsignedIntValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 unsignedIntValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

id URLRequest.httpBody.getter()
{
  v1 = *(*v0 + 16);
  v2 = [v1 HTTPBody];
  if (v2)
  {
    v3 = v2;
    v4 = specialized Data.init(referencing:)(v3);
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t _NSSetValueAndNotifyForKeyInIvar(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, void, uint64_t, uint64_t, uint64_t))
{
  [a1 willChangeValueForKey:a4];
  a6(a1, 0, a3, a4, a5);

  return [a1 didChangeValueForKey:a4];
}

id StringProtocol.precomposedStringWithCanonicalMapping.getter(uint64_t a1, uint64_t a2)
{

  return StringProtocol.decomposedStringWithCanonicalMapping.getter(a1, a2, &selRef_precomposedStringWithCanonicalMapping);
}

id StringProtocol.decomposedStringWithCanonicalMapping.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  StringProtocol._ephemeralString.getter();
  v4 = String._bridgeToObjectiveCImpl()();

  v5 = [v4 *a3];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v5);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v20 = v21;
    }

LABEL_21:

    return v20;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v10;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v12 = v8;
    v13 = String.init(_nativeStorage:)();
    if (v14)
    {
      v15 = v13;

      return v15;
    }

    if (![v12 length])
    {

      return 0;
    }

    v20 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v8 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v16)
    {
      v17 = result;

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t BidirectionalCollection<>._checkRange(_:)(unint64_t a1, unint64_t a2)
{
  dispatch thunk of Collection.startIndex.getter();
  if (a1 >> 14 < v5 >> 14)
  {
    return 0;
  }

  dispatch thunk of Collection.endIndex.getter();
  if (v5 >> 14 < a2 >> 14)
  {
    return 0;
  }

  return a1;
}

_OWORD *NSDictionary.makeIterator()()
{
  type metadata accessor for NSDictionary.Iterator();
  v0 = swift_allocObject();
  v1 = swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)(v1, v9);
  v2 = v9[11];
  v0[11] = v9[10];
  v0[12] = v2;
  v0[13] = v10[0];
  *(v0 + 217) = *(v10 + 9);
  v3 = v9[7];
  v0[7] = v9[6];
  v0[8] = v3;
  v4 = v9[9];
  v0[9] = v9[8];
  v0[10] = v4;
  v5 = v9[3];
  v0[3] = v9[2];
  v0[4] = v5;
  v6 = v9[5];
  v0[5] = v9[4];
  v0[6] = v6;
  v7 = v9[1];
  v0[1] = v9[0];
  v0[2] = v7;
  return v0;
}

uint64_t NSDictionary.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  NSFastEnumerationIterator.next()(&v12);
  if (v13)
  {
    outlined init with take of Any(&v12, &v14);
    result = outlined init with copy of Any(&v14, a1);
    if (*(v1 + 16))
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClassUnconditional();
      v5 = v15;
      v6 = __swift_project_boxed_opaque_existential_1(&v14, v15);
      swift_unknownObjectRetain();
      result = _swift_isClassOrObjCExistentialType();
      if ((result & 1) == 0)
      {
        v9 = MEMORY[0x1EEE9AC00](result);
        (*(v11 + 16))(&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5, v9);
        v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_6:
        v8 = [v4 objectForKey_];
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (v8)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(&v14);
          return outlined init with take of Any(&v12, a1 + 2);
        }

        goto LABEL_13;
      }

      if (*(*(v5 - 8) + 64) == 8)
      {
        v7 = *v6;
        swift_unknownObjectRetain();
        goto LABEL_6;
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  result = outlined destroy of TermOfAddress?(&v12, &_sypSgMd);
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t NSDictionary.Iterator.__deallocating_deinit()
{
  v1 = v0[12];
  v8[10] = v0[11];
  v8[11] = v1;
  v9[0] = v0[13];
  *(v9 + 9) = *(v0 + 217);
  v2 = v0[8];
  v8[6] = v0[7];
  v8[7] = v2;
  v3 = v0[10];
  v8[8] = v0[9];
  v8[9] = v3;
  v4 = v0[4];
  v8[2] = v0[3];
  v8[3] = v4;
  v5 = v0[6];
  v8[4] = v0[5];
  v8[5] = v5;
  v6 = v0[2];
  v8[0] = v0[1];
  v8[1] = v6;
  outlined destroy of NSFastEnumerationIterator(v8);
  return swift_deallocClassInstance();
}

uint64_t _sSW17withMemoryRebound2to_q0_xm_q0_SRyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys5UInt8VsAD_pq0_Isgyrzr_SWq0_sAD_pAFRszsAD_pRs_Ri_0_r1_lIetMgyrzo_Tpq5(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    return a1(a3, a4 - a3, &v5);
  }

  else
  {
    return a1(0, 0, &v5);
  }
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<UInt8>) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  return partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<UInt8>) -> (@out A, @error @owned Error)(a1, a2, a3);
}

{
  result = (*(v3 + 24))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

id StringProtocol.folding(options:locale:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  StringProtocol._ephemeralString.getter();
  v5 = String._bridgeToObjectiveCImpl()();

  if (v4)
  {
    ObjectType = swift_getObjectType();
    v7 = (*(v3 + 488))(ObjectType, v3);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 stringByFoldingWithOptions:a1 locale:v7];
  swift_unknownObjectRelease();

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

LABEL_24:

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
    goto LABEL_24;
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _CalendarGregorian()
{
  BYTE8(v2) = 0;
  *&v2 = *(*v0 + 88);
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t _SwiftURL.host.getter()
{
  v1 = v0[2];
  if (v1[72] == 1 && v1[96] == 1 && v1[120] == 1 && v1[144] == 1)
  {
    if (v0[3])
    {
      v2 = v0[4];
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 200);
      swift_unknownObjectRetain();
      v5 = v4(0, ObjectType, v2);
      swift_unknownObjectRelease();
      return v5;
    }

    return 0;
  }

  if (v1[120])
  {
    return 0;
  }

  v6 = String.subscript.getter();
  v5 = MEMORY[0x1865CAE80](v6);
  v8 = v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    if ((v1[220] & 4) != 0)
    {
      if ((v1[218] & 1) == 0)
      {
        goto LABEL_31;
      }

      v41 = v5;
      v42 = v8;
      MEMORY[0x1EEE9AC00](v9);
      v38 = &v41;
      v39 = MEMORY[0x1E69E7CD0];
      v40 = 4;

      v18 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v37, v5, v8);
      if (v19 != 1)
      {
        v35 = v18;
        v36 = v19;
        swift_bridgeObjectRelease_n();
        v5 = v35;
        v8 = v36;
        if (!v36)
        {
          return v5;
        }

        goto LABEL_31;
      }

      v14 = MEMORY[0x1E69E7CD0];
      v15 = v5;
      v16 = v8;
      v17 = 4;
    }

    else
    {
      v11 = v0[5];
      v41 = v5;
      v42 = v8;
      MEMORY[0x1EEE9AC00](v9);
      v38 = &v41;
      v39 = MEMORY[0x1E69E7CD0];
      v40 = v11;

      v12 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v37, v5, v8);
      if (v13 != 1)
      {
        v22 = v12;
        v23 = v13;
        swift_bridgeObjectRelease_n();
        v5 = v22;
        v8 = v23;
        if (!v23)
        {
          return v5;
        }

        goto LABEL_31;
      }

      v14 = MEMORY[0x1E69E7CD0];
      v15 = v5;
      v16 = v8;
      v17 = v11;
    }

    v5 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v15, v16, v14, v17);
    v21 = v20;
    swift_bridgeObjectRelease_n();
    v8 = v21;
    if (!v21)
    {
      return v5;
    }
  }

  else
  {
    if (v1[72] == 1 && (v1[96] & 1) != 0)
    {
      if (v1[144] == 1)
      {

        return 0;
      }
    }

    else
    {
      String.subscript.getter();
    }

    if (v1[220] & 4) == 0 || (v1[218])
    {

      v5 = 0;
      v8 = 0xE000000000000000;
    }
  }

LABEL_31:
  if (v1[217] != 1)
  {
    return v5;
  }

  v24 = specialized Collection.dropFirst(_:)(1uLL, v5, v8);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = Substring.UTF8View.distance(from:to:)();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
    if (v32)
    {
      v33 = v26;
    }

    else
    {
      v33 = result;
    }

    if (v33 >> 14 >= v24 >> 14)
    {
      v34 = _StringGuts.validateSubscalarRange(_:in:)(v24, v33, v24, v26, v28, v30);
      return MEMORY[0x1865CB2C0](v34);
    }
  }

  __break(1u);
  return result;
}

uint64_t Calendar.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  ObjectType = swift_getObjectType();
  (*(v2 + 24))(&v17, ObjectType, v2);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
  v17 = v1;
  v18 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17_CalendarProtocol_XlMd);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x656C61636F6C2029, 0xEA0000000000203ALL);
  v4 = (*(v2 + 32))(&v17, ObjectType, v2);
  if (v17)
  {
    v5 = v18;
  }

  else
  {
    if (one-time initialization token for cache != -1)
    {
      v4 = swift_once();
    }

    v6 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock((v6 + 48));
    closure #1 in LocaleCache.fixed(_:)partial apply((v6 + 16), v16);
    os_unfair_lock_unlock((v6 + 48));
    v5 = v16[1];
  }

  v7 = swift_getObjectType();
  v8 = (*(v5 + 64))(v7, v5);
  v10 = v9;
  swift_unknownObjectRelease();
  MEMORY[0x1865CB0E0](v8, v10);

  MEMORY[0x1865CB0E0](0x6F7A20656D697420, 0xEC000000203A656ELL);
  (*(v2 + 48))(&v17, ObjectType, v2);
  v11 = v17;
  swift_getObjectType();
  v16[0] = v11;
  v12 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  MEMORY[0x1865CB0E0](v12);

  swift_unknownObjectRelease();
  MEMORY[0x1865CB0E0](0x6557747372696620, 0xEF203A7961646B65);
  v17 = (*(v2 + 56))(ObjectType, v2);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v13);

  MEMORY[0x1865CB0E0](0xD000000000000015, 0x8000000181480D50);
  v17 = (*(v2 + 72))(ObjectType, v2);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v14);

  return v19;
}

uint64_t static Locale.identifier(_:from:)(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v2 + 48));
  partial apply for closure #1 in LocaleCache.fixed(_:)((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v3 = v7[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v7[0]) = v1;
  v5 = (*(v3 + 416))(v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t static _XMLPlistDecodingFormat.unwrapBool<A>(from:for:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a3;
  v31 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v15;
  if (a1 >> 60 == 5)
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v28 = a1;
    v19 = *(v11 + 16);
    v19(&v27 - v15, v30, v10, v16);
    (v19)(v13, v17, v10);
    if ((*(v7 + 48))(v13, 1, a4) == 1)
    {
      v20 = *(v11 + 8);
      v20(v13, v10);
      _CodingPathNode.path.getter(v31);
      v20(v17, v10);
    }

    else
    {
      (*(v7 + 32))(v9, v13, a4);
      v21 = _CodingPathNode.path.getter(v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v23 = v29;
      *(inited + 56) = a4;
      *(inited + 64) = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v7 + 16))(boxed_opaque_existential_0, v9, a4);
      v32 = v21;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v7 + 8))(v9, a4);
      (*(v11 + 8))(v17, v10);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6370], v28, v25);

    swift_willThrow();
  }

  return v18 & 1;
}

uint64_t Notification.Subscription.__deallocating_deinit()
{
  MEMORY[0x1865D2690](*(v0 + 16), -1, -1);
  MEMORY[0x1865D2690](*(v0 + 24), -1, -1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t _sSo7NSCoderC10FoundationE12decodeObject2of6forKeyxSgxm_SStSo8NSObjectCRbzSo8NSCodingRzlFSo8NSStringC_Ttg5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  type metadata accessor for NSMorphologyPronoun(0, a3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveCImpl()();
  v6 = __NSCoderDecodeObjectOfClassForKey(v3, ObjCClassFromMetadata, v5, 0);
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

  v9[0] = v10;
  v9[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(v9, &_sypSgMd);
    return 0;
  }
}

ptrdiff_t _NSSetDoubleValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    [a3 doubleValue];
    v8 = v7;
    result = ivar_getOffset(a5);
    *&a1[result] = v8;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

uint64_t Data.init<A>(bytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized Data.init<A>(_:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t (*_ss10ArraySliceV15withUnsafeBytesyqd__qd__SWKXEKlFSWxs5Error_pRi_zRi0_zlyqd__Isgyrzo_ABys5UInt8VGqd__sAD_pAFRszr__lIetMggrzo_Tpq5(uint64_t (*result)(uint64_t, unint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6))(uint64_t, unint64_t)
{
  if (!__OFSUB__(a6 >> 1, a5))
  {
    return result(a4 + a5, a4 + (a6 >> 1));
  }

  __break(1u);
  return result;
}

void Notification.Subscription.cancel()()
{
  v1 = v0[2];
  os_unfair_lock_lock(v1);
  v2 = v0[5];
  if (v2 && (v3 = v0[8]) != 0)
  {
    v0[5] = 0;
    v0[7] = 0;
    v0[8] = 0;
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v1);
    [v2 removeObserver_];

    swift_unknownObjectRelease();
  }

  else
  {

    os_unfair_lock_unlock(v1);
  }
}

uint64_t protocol witness for Cancellable.cancel() in conformance CancellableTimer #1 in NSTimer.TimerPublisher.connect()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v2 + 72);
  os_unfair_lock_lock(v3);
  *(v2 + 64) = MEMORY[0x1E69E7CC8];
  os_unfair_lock_unlock(v3);
  [v1 invalidate];
}

Swift::Void __swiftcall NSTimer.TimerPublisher.Inner.cancel()()
{
  v57 = *v0;
  v1 = v57;
  v2 = type metadata accessor for CombineIdentifier();
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v6;
  v7 = *(v1 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v62 = *(v0 + *(v1 + 120));
  os_unfair_lock_lock(v62);
  v14 = *(*v0 + 96);
  v15 = *(v9 + 16);
  v15(v13, v0 + v14, v8);
  v16 = *(v7 - 8);
  v17 = (*(v16 + 48))(v13, 1, v7);
  v18 = v13;
  v19 = v8;
  v20 = *(v9 + 8);
  (v20)(v18, v19);
  if (v17 == 1)
  {
    os_unfair_lock_unlock(v62);
    return;
  }

  v21 = v61;
  v15(v61, v0 + v14, v19);
  (v20)(v0 + v14, v19);
  (*(v16 + 56))(v0 + v14, 1, 1, v7);
  os_unfair_lock_unlock(v62);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v23 = Strong;
  os_unfair_lock_lock(*(Strong + 72));

  swift_getWitnessTable();
  v24 = v60;
  CustomCombineIdentifierConvertible<>.combineIdentifier.getter();
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
  if ((v26 & 1) == 0)
  {
    (*(v59 + 8))(v24, v58);
    goto LABEL_9;
  }

  v27 = v25;
  v62 = v20;
  v28 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v23 + 64);
  *(v23 + 64) = 0x8000000000000000;
  v31 = v58;
  if (isUniquelyReferenced_nonNull_native)
  {
    v32 = v30;
LABEL_7:
    v33 = *(v59 + 8);
    v33(*(v32 + 48) + *(v59 + 72) * v27, v31);

    specialized _NativeDictionary._delete(at:)(v27, v32);
    v33(v60, v31);
    *(v23 + 64) = v32;

    v19 = v28;
    v21 = v61;
    v20 = v62;
LABEL_9:
    os_unfair_lock_unlock(*(v23 + 72));

LABEL_10:
    (v20)(v21, v19);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7Combine0C10IdentifierVSo7NSTimerC10FoundationE14TimerPublisherC4SideVGMd);
  v34 = static _DictionaryStorage.copy(original:)();
  v32 = v34;
  if (!*(v30 + 16))
  {
LABEL_26:

    goto LABEL_7;
  }

  v35 = (v34 + 64);
  v36 = ((1 << *(v32 + 32)) + 63) >> 6;
  if (v32 != v30 || v35 >= v30 + 64 + 8 * v36)
  {
    memmove(v35, (v30 + 64), 8 * v36);
  }

  v51 = v30 + 64;
  v37 = 0;
  *(v32 + 16) = *(v30 + 16);
  v38 = 1 << *(v30 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v57 = v39 & *(v30 + 64);
  v50 = (v38 + 63) >> 6;
  v31 = v58;
  v52 = v59 + 32;
  v53 = v59 + 16;
  for (i = v57; v57; i = v57)
  {
    v41 = __clz(__rbit64(i));
    v57 = (i - 1) & i;
LABEL_24:
    *&v54 = v41 | (v37 << 6);
    v44 = *(v30 + 48);
    v45 = v59;
    v55 = *(v59 + 72) * v54;
    (*(v59 + 16))(v56, v44 + v55, v31);
    v46 = 16 * v54;
    v47 = *(v32 + 48);
    v48 = *(v45 + 32);
    v54 = *(*(v30 + 56) + 16 * v54);
    v49 = v46;
    v48(v47 + v55, v56, v31);
    *(*(v32 + 56) + v49) = v54;
  }

  v42 = v37;
  while (1)
  {
    v37 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v37 >= v50)
    {
      goto LABEL_26;
    }

    v43 = *(v51 + 8 * v37);
    ++v42;
    if (v43)
    {
      v41 = __clz(__rbit64(v43));
      v57 = (v43 - 1) & v43;
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t NSTimer.TimerPublisher.__deallocating_deinit()
{
  MEMORY[0x1865D2690](*(v0 + 72), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t NSTimer.TimerPublisher.Inner.__deallocating_deinit()
{
  MEMORY[0x1865D2690](*(v0 + *(*v0 + 120)), -1, -1);
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void LocalizedStringResource.encode(to:)(void *a1)
{
  v82[44] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation23LocalizedStringResourceV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v63 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v74 = v1[2];
  *&v75 = v7;
  v10 = v1[4];
  v11 = v1[5];
  v72 = v9;
  v73 = v10;
  v70 = v1[6];
  v71 = v11;
  v69 = *(v1 + 7);
  v12 = v1[9];
  v67 = v1[10];
  v68 = v12;
  v13 = v1[12];
  v65 = v1[11];
  v66 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v82[0]) = 0;
  v14 = v76;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v14)
  {
    (*(v4 + 8))(v6, v3);
    return;
  }

  v76 = v4;
  v82[0] = v74;
  v82[1] = v72;
  v82[2] = v73;
  LOBYTE(v81[0]) = 1;
  lazy protocol witness table accessor for type String.LocalizationValue and conformance String.LocalizationValue();

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v72 = v8;

  v80 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v71 = v6;
  v81[0] = v69;
  swift_unknownObjectRetain();
  Locale.Components.init(locale:)(v81, v82);
  memcpy(v81, v82, sizeof(v81));
  v15 = Locale.Components.icuIdentifier.getter();
  v17 = v16;
  if (one-time initialization token for cache != -1)
  {
    v57 = v15;
    swift_once();
    v15 = v57;
  }

  v18 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v15);
  *(&v63 - 2) = v19;
  *(&v63 - 1) = v17;
  os_unfair_lock_lock((v18 + 48));
  partial apply for closure #1 in LocaleCache.fixed(_:)((v18 + 16), &v79);
  os_unfair_lock_unlock((v18 + 48));
  v75 = v79;

  v81[0] = v75;
  LOBYTE(v79) = 3;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  v20 = v71;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v21 = v67;
  *&v81[0] = v68;
  *(&v81[0] + 1) = v67;
  LOBYTE(v79) = 4;
  lazy protocol witness table accessor for type URL and conformance URL();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (v66)
  {
    LOBYTE(v81[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v76 + 8))(v20, v3);
    swift_unknownObjectRelease();
    outlined destroy of Locale.Components(v82);
    return;
  }

  v66 = v3;
  ObjectType = swift_getObjectType();
  v23 = v21 + 240;
  v24 = *(v21 + 240);
  v24(ObjectType, v21);
  String.utf8CString.getter();

  v25 = sandbox_extension_issue_file();

  if (v25)
  {
    MEMORY[0x1865CAEB0](v25);
    if (v26)
    {
LABEL_9:
      v27 = v66;
LABEL_10:
      LOBYTE(v81[0]) = 5;
      v28 = v71;
      KeyedEncodingContainer.encode(_:forKey:)();

LABEL_11:
      MEMORY[0x1865D2690](v25, -1, -1);
      swift_unknownObjectRelease();
      outlined destroy of Locale.Components(v82);
      (*(v76 + 8))(v28, v27);
      return;
    }

    v41 = [objc_allocWithZone(NSString) initWithCString:v25 encoding:4];
    v27 = v66;
    if (!v41)
    {
      v49 = type metadata accessor for EncodingError();
      swift_allocError();
      v51 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
      v51[3] = MEMORY[0x1E69E6158];
      *v51 = 0;
      v51[1] = 0xE000000000000000;
      v28 = v71;
      KeyedEncodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6B30], v49);
      swift_willThrow();
      goto LABEL_11;
    }

    v42 = v41;
    isTaggedPointer = _objc_isTaggedPointer(v41);
    v44 = v42;
    v45 = v44;
    if (!isTaggedPointer)
    {
LABEL_23:
      LOBYTE(v79) = 0;
      *&v81[0] = 0;
      LOBYTE(v77) = 0;
      v78 = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        v48 = *&v81[0];
        if (!*&v81[0])
        {

          goto LABEL_10;
        }

        if (v78 == 1)
        {
          if (v79)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_53;
        }

        if (v77)
        {
          if (v79 == 1)
          {
            MEMORY[0x1EEE9AC00](IsCF);
            *(&v63 - 4) = v45;
            *(&v63 - 3) = v81;
            *(&v63 - 4) = 1536;
            *(&v63 - 1) = v48;
          }

          else
          {
            v58 = [v45 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v58);
            *(&v63 - 4) = v45;
            *(&v63 - 3) = v81;
            *(&v63 - 4) = 134217984;
            *(&v63 - 1) = v59;
          }

          v60 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v62 = HIBYTE(v61) & 0xF;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v62 = v60 & 0xFFFFFFFFFFFFLL;
          }

          if (v62)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v52 = v45;
        String.init(_nativeStorage:)();
        if (v53 || (*&v81[0] = [v52 length]) == 0)
        {

          goto LABEL_9;
        }
      }

      String.init(_cocoaString:)();
      goto LABEL_53;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v44);
    if (!TaggedPointerTag)
    {
      v77 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v56)
      {
      }

      else
      {
        [v45 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
      }

      v27 = v66;
      goto LABEL_10;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        *(&v63 - 2) = v45;
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_10;
      }

      goto LABEL_23;
    }

    v54 = [v45 UTF8String];
    if (v54)
    {
      String.init(utf8String:)(v54);
      if (v55)
      {
LABEL_50:

LABEL_53:
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    os_unfair_lock_unlock(isTaggedPointer + 12);
    __break(1u);
  }

  else
  {
    v64 = ObjectType;
    v65 = v23;
    v63 = v24;
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, localizedStringLogger);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v32 = v31;
    v33 = os_log_type_enabled(v30, v31);
    v34 = v67;
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v81[0] = v36;
      *v35 = 136315394;
      v37 = v63(v64, v34);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v81);

      *(v35 + 4) = v39;
      *(v35 + 12) = 1026;
      *(v35 + 14) = MEMORY[0x1865CA7A0](v40);
      _os_log_impl(&dword_18075C000, v30, v32, "Unable to issue sandbox extension for path '%s' (errno: %{public}d)", v35, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1865D2690](v36, -1, -1);
      MEMORY[0x1865D2690](v35, -1, -1);
    }

    swift_unknownObjectRelease();
    outlined destroy of Locale.Components(v82);

    (*(v76 + 8))(v71, v66);
  }
}

uint64_t closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (a1)
  {
    result = foundation_sandbox_check_path();
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a2 = result;
  return result;
}

uint64_t static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  v3 = *(v2 + 24);
  v4 = *MEMORY[0x1E69E7030];
  v5 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v5 - 8) + 104))(&a1[v3], v4, v5);
  v7 = &a1[*(v2 + 28)];
  *a1 = 0;
  *(a1 + 1) = 0;
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, int64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a4;
  v32 = a7;
  v16 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v20 = *a5;
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(a8, v18, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  v21 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v22 = *(v21 + 40);
  *(a9 + 16) = a1;
  *(a9 + 24) = v19;
  *(a9 + 28) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = v31 & 1;
  *(a9 + 48) = v20;
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v18, a9 + *(v21 + 36), type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  v23 = 0x7FFFFFFFFFFFFFFELL;
  if (a6 < 0x7FFFFFFFFFFFFFFELL)
  {
    v23 = a6;
  }

  v24 = v32 & 1 | (a6 < 1);
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  if (v32 & 1 | (a6 < 1))
  {
    v26 = 0;
  }

  else
  {
    v26 = v23 + 1;
  }

  v27 = a9 + v22;
  *v27 = v25;
  *(v27 + 8) = v26;
  *(v27 + 16) = v24;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();

  outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v18, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  result = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  *a9 = inited;
  *(a9 + 8) = result;
  return result;
}

uint64_t outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Duration.UnitsFormatStyle._getSkeletons(_:)(uint64_t a1, uint64_t a2)
{
  v152 = a2;
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v135 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v153 = &v132 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v132 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v132 - v13;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v139 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v146 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v132 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v148 = (&v132 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v149 = (&v132 - v21);
  v22 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 16);
  v141 = *(v2 + 32);
  LODWORD(v143) = *(v2 + 40);
  v27 = v2 + *(type metadata accessor for Duration.UnitsFormatStyle(0) + 36);
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v27, v25, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  v28 = *(v27 + 8);
  v29 = *(v23 + 32);
  v30 = v27 + *(v23 + 36);
  v31 = *v30;
  LODWORD(v151) = *(v30 + 8);
  v147 = v2;
  v32 = *(v2 + 48);
  v33 = *(v26 + 16);
  v142 = v26;
  if (v33)
  {
    v132 = v32;
    v140 = v31;
    v133 = v28;
    v134 = v29;
    v136 = v25;
    v29 = a1;
    v34 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5(v33, 0);
    v144 = specialized Sequence._copyContents(initializing:)(&v159, v34 + 32, v33, v26);
    v28 = v160;
    v25 = v162;
    a1 = v163;

    outlined consume of Set<AnyKeyPath>.Iterator._Variant();
    v35 = v144;
    if (v144 != v33)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    a1 = v29;
    v25 = v136;
    v29 = v134;
    v28 = v133;
    v31 = v140;
    v32 = v132;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v159 = v34;
  specialized MutableCollection<>.sort(by:)(&v159);
  v33 = v150;
  v144 = v159;
  Duration.valuesForUnits(_:trailingFractionalLength:smallestUnitRounding:roundingIncrement:)(v159, v28, &v25[v29], v31, v151, a1);
  v37 = v36;
  if ((v143 & 1) != 0 || v141 >= *(v142 + 16))
  {
    if (v32 <= 0)
    {
      v45 = specialized static Duration.UnitsFormatStyle.removingZeroUnits(units:values:)(v144, v36);
      v47 = v46;

      v144 = v45;
      v37 = v47;
    }
  }

  else if (v32 > 0 || (v38 = specialized static Duration.UnitsFormatStyle.removingZeroUnits(units:values:)(v144, v36), v140 = v31, v39 = v38, v41 = v40, , , v42 = *(v39 + 2), v144 = v39, v31 = v140, v37 = v41, v141 < v42))
  {
    v43 = *(v37 + 16);
    if (v43)
    {
      v26 = v31;
      v33 = 0;
      v44 = v141;
      while (*(v37 + 8 * v33 + 32) == 0.0)
      {
        ++v33;
        ++v44;
        if (v43 == v33)
        {
          v33 = v150;
          goto LABEL_16;
        }
      }

      v35 = v33 + v141;
      if (!__OFADD__(v33, v141))
      {
        v127 = *(v144 + 2);
        if (v35 >= v127)
        {
          v35 = *(v144 + 2);
        }

        if (v35 >= v33)
        {
          if (v127 >= v44)
          {
            v128 = v44;
          }

          else
          {
            v128 = *(v144 + 2);
          }

          if (v128 - v127 == v33)
          {
            goto LABEL_122;
          }

          goto LABEL_127;
        }

LABEL_126:
        __break(1u);
LABEL_127:
        specialized _copyCollectionToContiguousArray<A>(_:)(v144, (v144 + 32), v33, (2 * v35) | 1);
        v131 = v130;

        v144 = v131;
LABEL_122:
        v33 = v150;
        Duration.valuesForUnits(_:trailingFractionalLength:smallestUnitRounding:roundingIncrement:)(v144, v28, &v25[v29], v26, v151, a1);
        v37 = v129;
        goto LABEL_16;
      }

LABEL_125:
      __break(1u);
      goto LABEL_126;
    }
  }

LABEL_16:
  v48 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v48 - 8) + 8))(&v25[v29], v48);
  Duration.UnitsFormatStyle._createNumberFormatStyle(useFractionalLimitsIfAvailable:)(1, v149);
  Duration.UnitsFormatStyle._createNumberFormatStyle(useFractionalLimitsIfAvailable:)(0, v148);
  v49 = *(v144 + 2);
  if (v49)
  {
LABEL_17:
    v50 = *(v37 + 16);
    v51 = 32;
    do
    {
      v52 = v50;
      if (!v50)
      {
        break;
      }

      v53 = *(v37 + v51);
      v51 += 8;
      --v50;
    }

    while (v53 >= 0.0);
    v165 = 9;
    v159 = v144;
    v160 = 0;
    v161 = v37;
    v162 = 0;
    LOBYTE(v163) = 0;
    v164 = 0;

    specialized EnumeratedSequence.Iterator.next()(&v156);
    v54 = v157;
    if (v157 == 8)
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v143 = v146 + 74;
      v64 = v156;
      v142 = v49 - 1;
      v65 = v158;
      v141 = 0x800000018147F5F0;
      v140 = (v139 + 7);
      v139 += 6;
      v55 = MEMORY[0x1E69E7CC0];
      v134 = "Invalid Precision";
      v137 = "unit-width-iso-code";
      v136 = "unit-width-short";
      v138 = v52;
      do
      {
        if (v64 == v142)
        {
          v66 = v149;
        }

        else
        {
          v66 = v148;
        }

        outlined init with copy of FloatingPointRoundingRule?(v66, v17, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
        if (v52 && (v69 = specialized getter of mostSignificantUnit #1 in Duration.UnitsFormatStyle._getSkeletons(_:)(&v165, v144, v67, v68), v69 != 8) && v69 == v54)
        {
          v70 = v146;
          outlined init with take of FloatingPointFormatStyle<Double>(v17, v146);
          v71 = v143 + *(v33 + 36);
          *(v71 + 2) = 0;
          *v71 = 0;
          outlined init with take of FloatingPointFormatStyle<Double>(v70, v17);
          if (v65 == 0.0)
          {
            v65 = -0.1;
          }
        }

        else
        {
          v72 = v146;
          outlined init with take of FloatingPointFormatStyle<Double>(v17, v146);
          v73 = v143 + *(v33 + 36);
          *(v73 + 2) = 1;
          *v73 = 257;
          outlined init with take of FloatingPointFormatStyle<Double>(v72, v17);
        }

        v152 = v55;
        v74 = 0x6365736F7263696DLL;
        if (v54 != 6)
        {
          v74 = 0x6F6365736F6E616ELL;
        }

        v75 = 0xEB00000000646E6FLL;
        v76 = 0xEA0000000000646ELL;
        if (v54 == 6)
        {
          v76 = 0xEB00000000646E6FLL;
        }

        v77 = 0x646E6F636573;
        if (v54 == 4)
        {
          v75 = 0xE600000000000000;
        }

        else
        {
          v77 = 0x636573696C6C696DLL;
        }

        if (v54 <= 5u)
        {
          v74 = v77;
          v76 = v75;
        }

        v78 = 1920298856;
        if (v54 != 2)
        {
          v78 = 0x6574756E696DLL;
        }

        v79 = 0xE400000000000000;
        if (v54 == 2)
        {
          v80 = 0xE400000000000000;
        }

        else
        {
          v80 = 0xE600000000000000;
        }

        v81 = 1801807223;
        if (v54)
        {
          v81 = 7954788;
          v79 = 0xE300000000000000;
        }

        if (v54 <= 1u)
        {
          v78 = v81;
          v80 = v79;
        }

        if (v54 <= 3u)
        {
          v82 = v78;
        }

        else
        {
          v82 = v74;
        }

        if (v54 <= 3u)
        {
          v83 = v80;
        }

        else
        {
          v83 = v76;
        }

        v156 = 0;
        v157 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v156 = 0xD000000000000016;
        v157 = v141;
        MEMORY[0x1865CB0E0](v82, v83);

        v84 = v156;
        v85 = v157;
        v86 = *(v147 + 24);
        v87 = v153;
        outlined init with copy of FloatingPointRoundingRule?(v17, v153, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
        (*v140)(v87, 0, 1, v33);
        v156 = 0;
        v157 = 0xE000000000000000;
        v154 = v84;
        v155 = v85;

        MEMORY[0x1865CB0E0](32, 0xE100000000000000);
        v151 = v54;
        if (v86)
        {
          if (v86 == 1)
          {
            v88 = 0xD000000000000010;
          }

          else
          {
            v88 = 0xD000000000000011;
          }

          if (v86 == 1)
          {
            v89 = v137;
          }

          else
          {
            v89 = v136;
          }
        }

        else
        {
          v88 = 0xD000000000000014;
          v89 = v134;
        }

        MEMORY[0x1865CB0E0](v88, v89 | 0x8000000000000000);

        MEMORY[0x1865CB0E0](v154, v155);

        v90 = v153;
        v91 = v145;
        outlined init with copy of FloatingPointRoundingRule?(v153, v145, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
        v92 = v150;
        v93 = (*v139)(v91, 1, v150);
        v55 = v152;
        if (v93 == 1)
        {

          outlined destroy of TermOfAddress?(v90, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
          v94 = v91;
        }

        else
        {
          v95 = v135;
          outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v91 + *(v92 + 36), v135, type metadata accessor for NumberFormatStyleConfiguration.Collection);
          outlined destroy of TermOfAddress?(v91, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
          v96 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
          v98 = v97;
          outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v95, type metadata accessor for NumberFormatStyleConfiguration.Collection);
          if (String.count.getter() > 0)
          {
            MEMORY[0x1865CB0E0](32, 0xE100000000000000);
          }

          MEMORY[0x1865CB0E0](v96, v98);

          v94 = v153;
          v92 = v150;
        }

        v99 = v151;
        outlined destroy of TermOfAddress?(v94, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
        v101 = v156;
        v100 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 16) + 1, 1, v55);
        }

        v103 = *(v55 + 16);
        v102 = *(v55 + 24);
        if (v103 >= v102 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v55);
        }

        outlined destroy of TermOfAddress?(v17, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
        *(v55 + 16) = v103 + 1;
        v104 = v55 + 32 * v103;
        *(v104 + 32) = v101;
        *(v104 + 40) = v100;
        *(v104 + 48) = v99;
        *(v104 + 56) = v65;
        specialized EnumeratedSequence.Iterator.next()(&v156);
        v64 = v156;
        v54 = v157;
        v65 = v158;
        v33 = v92;
        v52 = v138;
      }

      while (v157 != 8);
    }

    goto LABEL_113;
  }

  v56 = v142;
  v58 = v142 + 56;
  v57 = *(v142 + 56);
  v59 = 1 << *(v142 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v57;
  if ((v60 & v57) == 0)
  {
    v105 = 0;
    v63 = (v59 + 63) >> 6;
    v29 = v142;
    while (v63 - 1 != v105)
    {
      v28 = v105 + 1;
      v106 = *(v142 + 64 + 8 * v105);
      v61 -= 64;
      ++v105;
      if (v106)
      {

        v35 = (v106 - 1) & v106;
        v62 = __clz(__rbit64(v106)) - v61;
        v56 = v29;
        goto LABEL_85;
      }
    }

    goto LABEL_17;
  }

  v28 = 0;
  v62 = __clz(__rbit64(v61));
  v35 = (v61 - 1) & v61;
  v63 = (v59 + 63) >> 6;
LABEL_85:
  v107 = *(v56 + 48);
  a1 = *(v107 + v62);
  v25 = v138;
  v26 = v139;
  if (!v35)
  {
    goto LABEL_87;
  }

  do
  {
    v108 = v28;
LABEL_91:
    v109 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v110 = *(v107 + (v109 | (v108 << 6)));
    if (a1 <= v110)
    {
      a1 = v110;
    }

    else
    {
      a1 = a1;
    }
  }

  while (v35);
  while (1)
  {
LABEL_87:
    v108 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_124;
    }

    if (v108 >= v63)
    {
      break;
    }

    v35 = *(v58 + 8 * v108);
    ++v28;
    if (v35)
    {
      v28 = v108;
      goto LABEL_91;
    }
  }

  LOBYTE(v154) = a1;
  v111 = Duration.UnitsFormatStyle.Unit.icuSkeleton.getter();
  v113 = v112;
  v114 = *(v147 + 24);
  outlined init with copy of FloatingPointRoundingRule?(v149, v25, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
  (*(v26 + 56))(v25, 0, 1, v33);
  v159 = 0;
  v160 = 0xE000000000000000;
  v156 = v111;
  v157 = v113;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  v115 = "unit-width-iso-code";
  if (v114 == 1)
  {
    v116 = 0xD000000000000010;
  }

  else
  {
    v116 = 0xD000000000000011;
  }

  if (v114 != 1)
  {
    v115 = "unit-width-short";
  }

  if (v114)
  {
    v117 = v116;
  }

  else
  {
    v117 = 0xD000000000000014;
  }

  if (v114)
  {
    v118 = v115;
  }

  else
  {
    v118 = "Invalid Precision";
  }

  MEMORY[0x1865CB0E0](v117, v118 | 0x8000000000000000);

  MEMORY[0x1865CB0E0](v156, v157);

  v119 = v137;
  outlined init with copy of FloatingPointRoundingRule?(v25, v137, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  if ((*(v26 + 48))(v119, 1, v33) == 1)
  {

    outlined destroy of TermOfAddress?(v25, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
    v25 = v119;
  }

  else
  {
    v120 = v135;
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(&v119[*(v33 + 36)], v135, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    outlined destroy of TermOfAddress?(v119, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v121 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v123 = v122;
    outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v120, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    if (String.count.getter() > 0)
    {
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    }

    MEMORY[0x1865CB0E0](v121, v123);
  }

  outlined destroy of TermOfAddress?(v25, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  v124 = v159;
  v125 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS8skeleton_s8DurationV10FoundationE16UnitsFormatStyleV4UnitV011measurementJ0Sd0K5ValuetGMd);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_181218E20;
  *(v55 + 32) = v124;
  *(v55 + 40) = v125;
  *(v55 + 48) = a1;
  *(v55 + 56) = 0;
LABEL_113:
  outlined destroy of TermOfAddress?(v148, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
  outlined destroy of TermOfAddress?(v149, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
  return v55;
}

unint64_t Duration.UnitsFormatStyle.format(_:)(uint64_t a1, uint64_t a2)
{
  result = Duration.UnitsFormatStyle._formatFields(_:)(a1, a2);
  v3 = result;
  v4 = *(result + 16);
  v30 = result;
  if (v4 == 2)
  {
    MEMORY[0x1EEE9AC00](result);
    v5 = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
    v7 = 0x7D317B202C7D307BLL;
    if (v6)
    {
      v7 = v5;
    }

    v8 = 0xE800000000000000;
    if (v6)
    {
      v8 = v6;
    }

    *&v32 = v7;
    *(&v32 + 1) = v8;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    result = RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
  }

  else if (v4 == 1)
  {
    v32 = xmmword_18122B840;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v9 = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, partial apply for closure #1 in Duration.UnitsFormatStyle._getListPattern(_:));
    MEMORY[0x1EEE9AC00](v9);
    result = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
    if (v10)
    {
      v11 = result;
    }

    else
    {
      v11 = 0x7D317B202C7D307BLL;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    *&v32 = v11;
    *(&v32 + 1) = v12;
    v13 = v4 - 3;
    if (v4 < 3)
    {
LABEL_48:
      __break(1u);
      __break(1u);
      goto LABEL_49;
    }

    if (v4 != 3)
    {
      do
      {
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type String and conformance String();
        result = RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
        --v13;
      }

      while (v13);
    }

    MEMORY[0x1EEE9AC00](result);
    _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();

    result = RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
    v3 = v30;
  }

  if (*(&v32 + 1))
  {
    v14 = v32;
    v15 = *(v3 + 16);
    if (!v15)
    {
LABEL_45:

      return v14;
    }

    while (1)
    {
      if (v15 > *(v3 + 16))
      {
        __break(1u);
LABEL_44:
        v14 = v32;
        goto LABEL_45;
      }

      v16 = v15 - 1;
      v17 = (*(&v32 + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v32 + 1)) & 0xFLL : v32 & 0xFFFFFFFFFFFFLL;
      v18 = 7;
      if (((*(&v32 + 1) >> 60) & ((v32 & 0x800000000000000) == 0)) != 0)
      {
        v18 = 11;
      }

      v19 = v18 | (v17 << 16);

      result = specialized BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(v19, 8204411, 0xE300000000000000);
      if (v20)
      {
        break;
      }

      v21 = result;
      v31 = v16;
      v22 = 4 * v17;
      while (1)
      {
        v23 = v21;
        v24 = 15;
        do
        {
          if (v22 <= v23 >> 14)
          {
            break;
          }

          v26 = String.subscript.getter();
          v28 = v27;
          if (v26 == String.subscript.getter() && v28 == v29)
          {
          }

          else
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v25 & 1) == 0)
            {
              break;
            }
          }

          v23 = String.index(after:)();
          result = String.index(after:)();
          v24 = result;
        }

        while (result < 0x30000);
        if ((v24 & 0xFFFFFFFFFFFFC000) == 0x30000)
        {
          break;
        }

        if (!(v21 >> 14))
        {
          goto LABEL_47;
        }

        result = String.index(_:offsetBy:)();
        v21 = result;
      }

      if (v23 >> 14 < v21 >> 14)
      {
        __break(1u);
        break;
      }

      lazy protocol witness table accessor for type String and conformance String();
      String.replaceSubrange<A>(_:with:)();

      v3 = v30;
      v15 = v31;
      if (!v31)
      {
        goto LABEL_44;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_49:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

unint64_t protocol witness for FormatStyle.format(_:) in conformance Duration.UnitsFormatStyle@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = Duration.UnitsFormatStyle.format(_:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void Duration.valuesForUnits(_:trailingFractionalLength:smallestUnitRounding:roundingIncrement:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = type metadata accessor for FloatingPointRoundingRule();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(a1 + v17 + 31);
    v64 = v13;
    v65 = a3;
    v62 = v16;
    v63 = v14;
    if (v18 < 5)
    {
      static Duration.interval(fractionalSecondsLength:)(a2);
      v66 = qword_18122AB88[v18];
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      static Duration.* infix<A>(_:_:)();
      if (a5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((v18 - 5) >= 3u)
      {
LABEL_100:
        __break(1u);
        return;
      }

      v19 = (3 * (v18 - 5) + 3);
      v20 = v19 ^ 0x7FFFFFFFFFFFFFFFLL;
      if ((v19 ^ 0x7FFFFFFFFFFFFFFFLL) >= a2)
      {
        v20 = a2;
      }

      if (__OFADD__(v19, v20))
      {
        goto LABEL_91;
      }

      static Duration.interval(fractionalSecondsLength:)(v19 + v20);
      if (a5)
      {
LABEL_12:
        static Duration.zero.getter();
        if ((static Duration.== infix(_:_:)() & 1) == 0)
        {
          static Duration.zero.getter();
          v21 = static Duration.< infix(_:_:)();
          v57 = a1;
          v58 = v18;
          if (v21)
          {
            static Duration.zero.getter();
            static Duration.- infix(_:_:)();
          }

          static Duration.zero.getter();
          if (static Duration.< infix(_:_:)())
          {
            static Duration.zero.getter();
            static Duration.- infix(_:_:)();
          }

          v61 = a6;
          v22 = Duration.components.getter();
          static Duration.zero.getter();
          if (static Duration.< infix(_:_:)())
          {
            static Duration.zero.getter();
            static Duration.- infix(_:_:)();
          }

          v23 = Duration.components.getter();
          v25 = v24;
          if (v23)
          {
            if (v24)
            {
              if (static Duration.< infix(_:_:)())
              {
                v26 = static Duration.zero.getter();
                v28 = v27;
                static Duration.zero.getter();
              }

              else
              {
                static Duration./ infix(_:_:)();
                if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
LABEL_93:
                  __break(1u);
                  goto LABEL_94;
                }

                if (v33 <= -1.0)
                {
LABEL_94:
                  __break(1u);
                  goto LABEL_95;
                }

                if (v33 >= 1.84467441e19)
                {
LABEL_95:
                  __break(1u);
                  goto LABEL_96;
                }

                v34 = v33;
                v66 = v33;
                lazy protocol witness table accessor for type UInt64 and conformance UInt64();
                static Duration.* infix<A>(_:_:)();
                static Duration.- infix(_:_:)();
                static Duration./ infix(_:_:)();
                if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
LABEL_96:
                  __break(1u);
                  goto LABEL_97;
                }

                if (v35 <= -9.22337204e18)
                {
LABEL_97:
                  __break(1u);
                  goto LABEL_98;
                }

                if (v35 >= 9.22337204e18)
                {
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
                  goto LABEL_100;
                }

                v36 = v35;
                v60 = v35;
                Duration.init(secondsComponent:attosecondsComponent:)();
                v66 = v34;
                static Duration.* infix<A>(_:_:)();
                v59 = v34;
                v56 = v37;
                Duration.init(secondsComponent:attosecondsComponent:)();
                v66 = v36;
                lazy protocol witness table accessor for type Int64 and conformance Int64();
                static Duration.* infix<A>(_:_:)();
                v26 = static Duration.+ infix(_:_:)();
                v39 = v38;
                v66 = v59;
                static Duration.* infix<A>(_:_:)();
                v66 = v60;
                v28 = v39;
                static Duration.* infix<A>(_:_:)();
                static Duration.+ infix(_:_:)();
              }
            }

            else
            {
              v30 = v23;
              if (v22 == 0x8000000000000000 && v23 == -1)
              {
                goto LABEL_99;
              }

              v31 = v22 / v23;
              v26 = Duration.init(secondsComponent:attosecondsComponent:)();
              if ((v30 * v31) >> 64 != (v30 * v31) >> 63)
              {
                goto LABEL_92;
              }

              v28 = v32;
              Duration.init(secondsComponent:attosecondsComponent:)();
            }
          }

          else
          {
            v66 = v24;
            lazy protocol witness table accessor for type Int64 and conformance Int64();
            v26 = static Duration./ infix<A>(_:_:)();
            v28 = v29;
            v66 = v25;
            static Duration.* infix<A>(_:_:)();
          }

          static Duration.zero.getter();
          v40 = static Duration.< infix(_:_:)() & 1;
          static Duration.zero.getter();
          if (v40 == (static Duration.< infix(_:_:)() & 1))
          {
            v59 = v28;
          }

          else
          {
            static Duration.zero.getter();
            static Duration.- infix(_:_:)();
            static Duration.zero.getter();
            v26 = static Duration.- infix(_:_:)();
            v59 = v41;
          }

          static Duration.zero.getter();
          if (static Duration.< infix(_:_:)())
          {
            static Duration.zero.getter();
            static Duration.- infix(_:_:)();
          }

          v60 = v26;
          static Duration.zero.getter();
          if (static Duration.< infix(_:_:)())
          {
            static Duration.zero.getter();
            static Duration.- infix(_:_:)();
          }

          v42 = static Duration.- infix(_:_:)();
          static Duration.zero.getter();
          if (static Duration.< infix(_:_:)())
          {
            static Duration.zero.getter();
            v42 = static Duration.- infix(_:_:)();
          }

          static Duration.zero.getter();
          if (static Duration.== infix(_:_:)())
          {
            v66 = 2;
            lazy protocol witness table accessor for type Int64 and conformance Int64();
            static Duration./ infix<A>(_:_:)();
            v66 = 2;
            static Duration.* infix<A>(_:_:)();
            static Duration.- infix(_:_:)();
            static Duration.zero.getter();
          }

          else
          {
            static Duration.zero.getter();
            if (static Duration.< infix(_:_:)())
            {
              static Duration.zero.getter();
              static Duration.- infix(_:_:)();
            }

            v43 = static Duration.+ infix(_:_:)();
            v45 = v44;
            static Duration.zero.getter();
            if (static Duration.< infix(_:_:)())
            {
              static Duration.zero.getter();
              static Duration.- infix(_:_:)();
            }

            static Duration.zero.getter();
            v46 = static Duration.< infix(_:_:)();
            v61 = v45;
            v56 = v43;
            if (v46)
            {
              static Duration.zero.getter();
              static Duration.- infix(_:_:)();
            }

            static Duration.- infix(_:_:)();
            static Duration.zero.getter();
            if (static Duration.< infix(_:_:)())
            {
              static Duration.zero.getter();
              static Duration.- infix(_:_:)();
            }

            v48 = v62;
            v47 = v63;
            v49 = v64;
            (*(v63 + 16))(v62, v65, v64);
            v50 = (*(v47 + 88))(v48, v49);
            if (v50 == *MEMORY[0x1E69E7038])
            {
              static Duration.< infix(_:_:)();
            }

            else if (v50 == *MEMORY[0x1E69E7030])
            {
              if (static Duration.< infix(_:_:)() & 1) == 0 && (static Duration.== infix(_:_:)())
              {
                v66 = 2;
                lazy protocol witness table accessor for type Int64 and conformance Int64();
                static Duration./ infix<A>(_:_:)();
                v66 = 2;
                static Duration.* infix<A>(_:_:)();
                static Duration.- infix(_:_:)();
                static Duration.zero.getter();
                static Duration.== infix(_:_:)();
              }
            }

            else if (v50 == *MEMORY[0x1E69E7040] || v50 == *MEMORY[0x1E69E7048])
            {
              static Duration.< infix(_:_:)();
            }

            else if (v50 != *MEMORY[0x1E69E7020])
            {
              v51 = v56;
              if (v50 != *MEMORY[0x1E69E7028])
              {
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                goto LABEL_88;
              }
            }

            v66 = 2;
            lazy protocol witness table accessor for type Int64 and conformance Int64();
            static Duration./ infix<A>(_:_:)();
            v66 = 2;
            static Duration.* infix<A>(_:_:)();
            static Duration.- infix(_:_:)();
            static Duration.zero.getter();
            static Duration.== infix(_:_:)();
          }

          static Duration.== infix(_:_:)();
          a1 = v57;
          LODWORD(v18) = v58;
        }

        v49 = Duration.factor(intoUnits:)(a1);
        v42 = *(v49 + 2);
        v51 = Duration.components.getter();
        Duration.components.getter();
        v48 = v52;
        if (v18 > 3)
        {
          if (v18 > 5)
          {
            if (v18 == 6)
            {
              v54 = 6.0;
            }

            else
            {
              v54 = 9.0;
            }
          }

          else
          {
            v54 = 3.0;
            if (v18 == 4)
            {
              v6 = 1.0;
              goto LABEL_74;
            }
          }

          v6 = pow(0.1, v54);
        }

        else
        {
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              *&v53 = 3600.0;
            }

            else
            {
              *&v53 = 60.0;
            }
          }

          else if (v18)
          {
            *&v53 = 86400.0;
          }

          else
          {
            *&v53 = 604800.0;
          }

          v6 = *&v53;
        }

LABEL_74:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v42)
          {
            goto LABEL_76;
          }

          goto LABEL_89;
        }

LABEL_88:
        v49 = specialized _ArrayBuffer._consumeAndCreateNew()(v49);
        if (v42)
        {
LABEL_76:
          if (v42 <= *(v49 + 2))
          {
            *&v49[8 * v42 + 24] = (v48 * 1.0e-18 + v51) / v6 + *&v49[8 * v42 + 24];
            return;
          }

          goto LABEL_90;
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }
    }

    static Duration.* infix(_:_:)();
    static Duration.< infix(_:_:)();
    goto LABEL_12;
  }
}

uint64_t specialized static Duration.UnitsFormatStyle.removingZeroUnits(units:values:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = result + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = *(v5 + 8 * v4);
      if (v9 != 0.0)
      {
        if (v4 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *(v6 + v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v8[v12 + 32] = v10;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 16) = v14 + 1;
        *(v7 + 8 * v14 + 32) = v9;
      }

      if (v2 == ++v4)
      {
        return v8;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t Duration.UnitsFormatStyle._createNumberFormatStyle(useFractionalLimitsIfAvailable:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0;
  v7[8] = 1;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  *(v7 + 5) = 0x1FFFFFFFELL;
  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(v7 + 6) = 0;
  *(v7 + 18) = 131584;
  *(v7 + 38) = 512;
  v9 = *(v8 + 36);
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(*(v10 - 8) + 56);
  v11(&v7[v9], 1, 1, v10);
  v12 = 0;
  v13 = 0;
  v14 = &v7[v5[10]];
  *v14 = 0;
  v14[8] = -1;
  v7[v5[11]] = 3;
  if ((a1 & 1) != 0 && (result = type metadata accessor for Duration.UnitsFormatStyle(0), v16 = (v2 + *(result + 36)), v12 = *v16, v13 = v16[1], v13 < *v16))
  {
    __break(1u);
  }

  else
  {
    v17 = *(v2 + 6);
    result = type metadata accessor for Duration.UnitsFormatStyle(0);
    v18 = v2 + *(result + 40);
    if (*(v18 + 16))
    {
      if (v17 < 1)
      {
        v42 = 1;
        v20 = 998;
        if (v12 >= 998)
        {
          v27 = 998;
        }

        else
        {
          v27 = v12;
        }

        v41 = 1;
        v40 = 0;
        v28 = v27 & ~(v27 >> 63);
        if ((v13 & ~(v13 >> 63)) < 998)
        {
          v20 = v13 & ~(v13 >> 63);
        }

        v39 = 0;
        v29 = v42;
        v30 = v41 & 1;
        *(v7 + 2) = 0;
        *(v7 + 3) = v29;
        *(v7 + 4) = 0;
        *(v7 + 5) = v30;
        *(v7 + 6) = v28;
        *(v7 + 7) = 0;
      }

      else
      {
        v19 = 999;
        if (v17 < 0x3E7)
        {
          v19 = v17;
        }

        v42 = 0;
        v41 = 1;
        v40 = 0;
        v20 = 998;
        if (v12 >= 998)
        {
          v21 = 998;
        }

        else
        {
          v21 = v12;
        }

        v22 = v21 & ~(v21 >> 63);
        if ((v13 & ~(v13 >> 63)) < 998)
        {
          v20 = v13 & ~(v13 >> 63);
        }

        v39 = 0;
        v23 = v41 & 1;
        *(v7 + 2) = v19;
        *(v7 + 3) = 0;
        *(v7 + 4) = 0;
        *(v7 + 5) = v23;
        *(v7 + 6) = v22;
        *(v7 + 7) = 0;
      }

LABEL_32:
      *(v7 + 8) = v20;
LABEL_33:
      v7[72] = 0x80;
      v31 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd) + 36);
      *v31 = 0;
      *(v31 + 8) = 1;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      *(v31 + 40) = 0x1FFFFFFFELL;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      *(v31 + 48) = 0;
      *(v31 + 72) = 131584;
      *(v31 + 76) = 512;
      v32 = v5[9];
      v38 = *v2;
      v11((v31 + v32), 1, 1, v10);
      v33 = v31 + v5[10];
      *v33 = 0;
      *(v33 + 8) = -1;
      *(v31 + v5[11]) = 3;
      *a2 = v38;
      swift_unknownObjectRetain();
      return outlined assign with take of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v7, v31, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    }

    v24 = *(v18 + 8);
    if (v17 < 1)
    {
      v34 = *v18;
      if (v34 >= 999)
      {
        v34 = 999;
      }

      v42 = 0;
      v35 = v24 & ~(v24 >> 63);
      if (v35 >= 999)
      {
        v35 = 999;
      }

      v41 = 0;
      v40 = 0;
      v36 = 998;
      if (v12 >= 998)
      {
        v37 = 998;
      }

      else
      {
        v37 = v12;
      }

      if ((v13 & ~(v13 >> 63)) < 998)
      {
        v36 = v13 & ~(v13 >> 63);
      }

      v39 = 0;
      *(v7 + 2) = v34 & ~(v34 >> 63);
      *(v7 + 3) = 0;
      *(v7 + 4) = v35;
      *(v7 + 5) = 0;
      *(v7 + 6) = v37 & ~(v37 >> 63);
      *(v7 + 7) = 0;
      *(v7 + 8) = v36;
      goto LABEL_33;
    }

    if (v24 >= v17)
    {
      v42 = 0;
      if (v17 >= 0x3E7)
      {
        v25 = 999;
      }

      else
      {
        v25 = v17;
      }

      if (v24 >= 0x3E7)
      {
        v24 = 999;
      }

      v41 = 0;
      v40 = 0;
      v20 = 998;
      if (v12 >= 998)
      {
        v26 = 998;
      }

      else
      {
        v26 = v12;
      }

      if ((v13 & ~(v13 >> 63)) < 998)
      {
        v20 = v13 & ~(v13 >> 63);
      }

      v39 = 0;
      *(v7 + 2) = v25;
      *(v7 + 3) = 0;
      *(v7 + 4) = v24;
      *(v7 + 5) = 0;
      *(v7 + 6) = v26 & ~(v26 >> 63);
      *(v7 + 7) = 0;
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with take of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void specialized EnumeratedSequence.Iterator.next()(void *a1@<X8>)
{
  if (*(v1 + 32))
  {
    v2 = 0;
    v3 = 0;
    v4 = 8;
LABEL_10:
    *a1 = v2;
    a1[1] = v4;
    a1[2] = v3;
    return;
  }

  v5 = *(v1 + 8);
  v6 = *(*v1 + 16);
  if (v5 == v6)
  {
LABEL_6:
    v2 = 0;
    v3 = 0;
    *(v1 + 32) = 1;
    v4 = 8;
    goto LABEL_10;
  }

  if (v5 >= v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(*v1 + v5 + 32);
  *(v1 + 8) = v5 + 1;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v7 + 16);
  if (v8 == v9)
  {
    goto LABEL_6;
  }

  if (v8 >= v9)
  {
    goto LABEL_12;
  }

  v3 = *(v7 + 8 * v8 + 32);
  *(v1 + 24) = v8 + 1;
  v2 = *(v1 + 40);
  if (!__OFADD__(v2, 1))
  {
    *(v1 + 40) = v2 + 1;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

uint64_t Notification.debugDescription.getter()
{

  return Notification.description.getter();
}

uint64_t one-time initialization function for __plistClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18121C7A0;
  *(v0 + 32) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSArray);
  *(v0 + 40) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSData);
  *(v0 + 48) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDate);
  *(v0 + 56) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDictionary);
  *(v0 + 64) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  result = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
  *(v0 + 72) = result;
  static NSKeyedUnarchiver.__plistClasses = v0;
  return result;
}

uint64_t type metadata instantiation function for _PlistDictionaryKeyedDecodingContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t lazy protocol witness table accessor for type BPlistError and conformance BPlistError()
{
  result = lazy protocol witness table cache variable for type BPlistError and conformance BPlistError;
  if (!lazy protocol witness table cache variable for type BPlistError and conformance BPlistError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BPlistError and conformance BPlistError);
  }

  return result;
}

uint64_t IndexSet.init<A>(integersIn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  result = dispatch thunk of RangeExpression.relative<A>(to:)();
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_allocWithZone(NSIndexSet) initWithIndexesInRange_];
    (*(*(a2 - 8) + 8))(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = 0;
    *a3 = result;
  }

  return result;
}

uint64_t specialized _TimeZoneAutoupdating.isDaylightSavingTime(for:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v7);
    v3 = v7[1];
    *(v2 + 16) = v7[0];
    *(v2 + 24) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 120));
  ObjectType = swift_getObjectType();
  v7[0] = v1;
  v5 = (*(v3 + 72))(v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t closure #1 in _NSSwiftURLComponents.password.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 11) = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v22 = a2;
    v23 = a3;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = [v10 _fastCharacterContents];
    v12 = v10;
    if (v11)
    {
      StringProtocol._ephemeralString.getter();
      v13 = String._bridgeToObjectiveCImpl()();

      v14 = [v13 length];
      swift_unknownObjectRelease();
      v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v11, v14, 2u, 0);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = specialized Sequence.allSatisfy(_:)(a2, a3, 2);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_8:

    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
    v22 = a2;
    v23 = a3 & 0xFFFFFFFFFFFFFFLL;
    v6 = &v22;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 2u, 0);
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_11:
  v15 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v15 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v22 = a2;
    v23 = a3;
    MEMORY[0x1EEE9AC00](v8);
    v20[2] = &v22;
    v21 = 2;

    v16 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v20, a2, a3);
    if (!v17)
    {
      v16 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(a2, a3, 2u, 0);
    }

    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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