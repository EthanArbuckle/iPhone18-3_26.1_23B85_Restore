uint64_t protocol witness for _LocaleProtocol.countryCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.countryCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t closure #1 in _LocaleICU.countryCodeDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v153 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 456);
  if (*(v11 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v13)
    {
      *a5 = *(*(v11 + 56) + 16 * v12);
    }
  }

  v130 = a5;
  v131 = a1;
  v135 = v5;
  v136 = a3;
  v137 = a2;
  if (String.count.getter() > 153 || (*v152 = 6254181, *&v152[8] = 0xE300000000000000, MEMORY[0x1865CB0E0](a2, a3), v138 = 0, String.utf8CString.getter(), , String.utf8CString.getter(), DisplayCountry = uloc_getDisplayCountry(), , , DisplayCountry - 1 > 0x100))
  {
    v20 = *(a4 + 136);
    v21 = *(a4 + 168);
    v150 = *(a4 + 152);
    v151[0] = v21;
    *(v151 + 12) = *(a4 + 180);
    v22 = *(a4 + 72);
    v23 = *(a4 + 104);
    v146 = *(a4 + 88);
    v147 = v23;
    v148 = *(a4 + 120);
    v149 = v20;
    v144 = *(a4 + 56);
    v145 = v22;
    v24 = *(a4 + 136);
    v25 = *(a4 + 168);
    *&v152[96] = *(a4 + 152);
    *&v152[112] = v25;
    *&v152[124] = *(a4 + 180);
    v26 = *(a4 + 72);
    v27 = *(a4 + 104);
    *&v152[32] = *(a4 + 88);
    *&v152[48] = v27;
    *&v152[64] = *(a4 + 120);
    *&v152[80] = v24;
    *v152 = *(a4 + 56);
    *&v152[16] = v26;
    if (_s10Foundation17LocalePreferencesVSgWOg(v152) == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = specialized String.init(_utf16:)(&v139, DisplayCountry);
    if (v17)
    {
      v18 = v16;
      v19 = v17;
LABEL_117:

LABEL_118:
      v31 = v136;
LABEL_119:

      v90 = v131;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v152 = *(v90 + 456);
      v92 = *v152;
      v93 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v31);
      v95 = *(v92 + 16);
      v96 = (v94 & 1) == 0;
      v97 = __OFADD__(v95, v96);
      v98 = v95 + v96;
      if (v97)
      {
        goto LABEL_131;
      }

      v99 = v94;
      if (*(v92 + 24) >= v98)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v100 = v92;
        }

        else
        {
          v134.i64[0] = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
          v106 = static _DictionaryStorage.copy(original:)();
          v100 = v106;
          if (*(v92 + 16))
          {
            v107 = (v106 + 64);
            v108 = ((1 << *(v100 + 32)) + 63) >> 6;
            if (v100 != v92 || v107 >= v92 + 64 + 8 * v108)
            {
              memmove(v107, (v92 + 64), 8 * v108);
            }

            *&v133 = v92 + 64;
            v109 = 0;
            *(v100 + 16) = *(v92 + 16);
            v110 = 1 << *(v92 + 32);
            v111 = *(v92 + 64);
            v112 = -1;
            if (v110 < 64)
            {
              v112 = ~(-1 << v110);
            }

            v113 = v112 & v111;
            v114 = (v110 + 63) >> 6;
            if ((v112 & v111) != 0)
            {
              do
              {
                v115 = __clz(__rbit64(v113));
                v113 &= v113 - 1;
LABEL_146:
                v118 = 16 * (v115 | (v109 << 6));
                v119 = (*(v92 + 48) + v118);
                v120 = *v119;
                v121 = v119[1];
                v122 = (*(v100 + 48) + v118);
                v123 = *(*(v92 + 56) + v118);
                *v122 = v120;
                v122[1] = v121;
                *(*(v100 + 56) + v118) = v123;
              }

              while (v113);
            }

            v116 = v109;
            while (1)
            {
              v109 = v116 + 1;
              if (__OFADD__(v116, 1))
              {
                __break(1u);
              }

              if (v109 >= v114)
              {
                break;
              }

              v117 = *(v133 + 8 * v109);
              ++v116;
              if (v117)
              {
                v115 = __clz(__rbit64(v117));
                v113 = (v117 - 1) & v117;
                goto LABEL_146;
              }
            }

            v90 = v131;
            v31 = v136;
          }

          v93 = v134.i64[0];
        }

        v103 = v130;
        v101 = v137;
        if (v99)
        {
LABEL_123:
          v104 = v93;

          v105 = (*(v100 + 56) + 16 * v104);
          *v105 = v18;
          v105[1] = v19;

LABEL_128:
          *(v90 + 456) = v100;
          *v103 = v18;
          v103[1] = v19;
          return result;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v98, isUniquelyReferenced_nonNull_native);
        v100 = *v152;
        v101 = v137;
        v93 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v31);
        if ((v99 & 1) != (v102 & 1))
        {
          goto LABEL_155;
        }

        v103 = v130;
        if (v99)
        {
          goto LABEL_123;
        }
      }

      result = specialized _NativeDictionary._insert(at:key:value:)(v93, v101, v31, v18, v19, v100);
      goto LABEL_128;
    }

    v33 = *(a4 + 152);
    v149 = *(a4 + 136);
    v150 = v33;
    v151[0] = *(a4 + 168);
    *(v151 + 12) = *(a4 + 180);
    v34 = *(a4 + 72);
    v35 = *(a4 + 104);
    v146 = *(a4 + 88);
    v147 = v35;
    v148 = *(a4 + 120);
    v144 = *(a4 + 56);
    v145 = v34;
    v36 = *(a4 + 152);
    *&v152[80] = *(a4 + 136);
    *&v152[96] = v36;
    *&v152[112] = *(a4 + 168);
    *&v152[124] = *(a4 + 180);
    v37 = *(a4 + 72);
    v38 = *(a4 + 104);
    *&v152[32] = *(a4 + 88);
    *&v152[48] = v38;
    *&v152[64] = *(a4 + 120);
    *v152 = *(a4 + 56);
    *&v152[16] = v37;
    if (_s10Foundation17LocalePreferencesVSgWOg(v152) == 1)
    {
      goto LABEL_14;
    }
  }

  v28.i32[0] = *&v152[136];
  v133 = *&v152[120];
  v134 = vmovl_u8(v28);
  v132 = *&v152[104];
  v128 = *&v152[72];
  v129 = *&v152[88];
  v125 = *&v152[40];
  v126 = *&v152[56];
  v124 = *&v152[24];
  v127 = *&v152[8];
  v29 = v152[0];
  v141[6] = v150;
  *v142 = v151[0];
  *&v142[12] = *(v151 + 12);
  v141[2] = v146;
  v141[3] = v147;
  v141[4] = v148;
  v141[5] = v149;
  v141[0] = v144;
  v141[1] = v145;
  outlined init with copy of LocalePreferences(v141, v140);
  v152[0] = v29;
  *&v152[8] = v127;
  *&v152[24] = v124;
  *&v152[40] = v125;
  *&v152[56] = v126;
  *&v152[72] = v128;
  *&v152[88] = v129;
  *&v152[104] = v132;
  *&v152[120] = v133;
  v30 = v127;
  *&v152[136] = vuzp1_s8(*v134.i8, *v134.i8).u32[0];
  v31 = v136;
  if (v127)
  {

    outlined destroy of LocalePreferences(v152);
    v32 = *(v127 + 16);
    if (v32)
    {
      goto LABEL_69;
    }

    goto LABEL_11;
  }

  outlined destroy of LocalePreferences(v152);
LABEL_14:
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_132;
  }

  while (1)
  {
    v39 = String._bridgeToObjectiveCImpl()();
    v40 = CFPreferencesCopyAppValue(v39, *MEMORY[0x1E695E8A8]);
    swift_unknownObjectRelease();
    if (v40 && (*v152 = v40, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), (swift_dynamicCast() & 1) != 0))
    {
      v41 = v144;
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v134.i64[0] = *(v41 + 16);
    if (!v134.i64[0])
    {
      break;
    }

    v42 = 0;
    *&v133 = *MEMORY[0x1E695E4A8];
    v43 = v41 + 40;
    v30 = MEMORY[0x1E69E7CC0];
    *&v132 = v41;
    while (v42 < *(v41 + 16))
    {
      v44 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v133, v44);
      swift_unknownObjectRelease();
      if (CanonicalLanguageIdentifierFromString)
      {
        isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
        v47 = CanonicalLanguageIdentifierFromString;
        v48 = v47;
        if ((isTaggedPointer & 1) == 0)
        {
          goto LABEL_28;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v47);
        if (TaggedPointerTag)
        {
          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v5 = v135;
              CanonicalLanguageIdentifierFromString = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v51 = v50;
              v135 = v5;
            }

            else
            {
LABEL_28:
              LOBYTE(v144) = 0;
              *v152 = 0;
              LOBYTE(v141[0]) = 0;
              v140[0] = 0;
              IsCF = __CFStringIsCF();
              if (IsCF)
              {
                CanonicalLanguageIdentifierFromString = *v152;
                if (*v152)
                {
                  v41 = v132;
                  if (v140[0] == 1)
                  {
                    if (v144)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v59 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_59;
                  }

                  if ((v141[0] & 1) == 0)
                  {
                    goto LABEL_58;
                  }

                  if (v144 != 1)
                  {
                    IsCF = [v48 lengthOfBytesUsingEncoding_];
                  }

                  MEMORY[0x1EEE9AC00](IsCF);
                  v5 = v135;
                  v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v51 = v62;
                  v135 = v5;
                  v63 = HIBYTE(v62) & 0xF;
                  if ((v62 & 0x2000000000000000) == 0)
                  {
                    v63 = v61 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v63)
                  {
                    v41 = v132;

LABEL_58:
                    v59 = String.init(_cocoaString:)();
LABEL_59:
                    CanonicalLanguageIdentifierFromString = v59;
                    v51 = v60;
LABEL_60:

                    goto LABEL_61;
                  }

                  CanonicalLanguageIdentifierFromString = v61;
                }

                else
                {

                  v51 = 0xE000000000000000;
                }
              }

              else
              {
                v53 = v48;
                v54 = String.init(_nativeStorage:)();
                if (v55)
                {
                  CanonicalLanguageIdentifierFromString = v54;
                  v51 = v55;
                }

                else
                {
                  *v152 = [v53 length];
                  if (*v152)
                  {
                    v41 = v132;
                    goto LABEL_58;
                  }

                  CanonicalLanguageIdentifierFromString = 0;
                  v51 = 0xE000000000000000;
                }
              }
            }

            v41 = v132;
            goto LABEL_61;
          }

          v56 = [v48 UTF8String];
          if (!v56)
          {
            goto LABEL_153;
          }

          v57 = String.init(utf8String:)(v56);
          v41 = v132;
          if (!v58)
          {
            goto LABEL_152;
          }
        }

        else
        {
          LOWORD(v141[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v41 = v132;
          if (!v58)
          {
            [v48 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v51 = *(&v144 + 1);
            CanonicalLanguageIdentifierFromString = v144;
            goto LABEL_60;
          }
        }

        CanonicalLanguageIdentifierFromString = v57;
        v51 = v58;
      }

      else
      {

        v51 = 0xE000000000000000;
      }

LABEL_61:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v65 = *(v30 + 2);
      v64 = *(v30 + 3);
      if (v65 >= v64 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v30);
      }

      ++v42;
      *(v30 + 2) = v65 + 1;
      v66 = &v30[16 * v65];
      *(v66 + 4) = CanonicalLanguageIdentifierFromString;
      *(v66 + 5) = v51;
      v43 += 16;
      if (v134.i64[0] == v42)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    swift_once();
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_68:

  v31 = v136;
  v32 = *(v30 + 2);
  if (!v32)
  {
LABEL_11:

    v18 = 0;
    v19 = 0;
    goto LABEL_119;
  }

LABEL_69:
  v67 = 0;
  v134.i64[0] = *MEMORY[0x1E695E4A8];
  v68 = v30 + 40;
  *&v133 = v32 - 1;
  v69 = v137;
  while (1)
  {
    v70 = String._bridgeToObjectiveCImpl()();
    v71 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v134.i64[0], v70);
    swift_unknownObjectRelease();
    if (!v71)
    {
      goto LABEL_105;
    }

    v72 = _objc_isTaggedPointer(v71);
    v73 = v71;
    v74 = v73;
    if (!v72)
    {
      goto LABEL_76;
    }

    v75 = _objc_getTaggedPointerTag(v73);
    if (!v75)
    {
      LOWORD(v141[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v81)
      {
        goto LABEL_89;
      }

      [(__CFString *)v74 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_104;
    }

    if (v75 == 22)
    {
      break;
    }

    if (v75 == 2)
    {
      MEMORY[0x1EEE9AC00](v75);
      v5 = v135;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v135 = v5;

      goto LABEL_105;
    }

LABEL_76:
    LOBYTE(v144) = 0;
    *v152 = 0;
    LOBYTE(v141[0]) = 0;
    v140[0] = 0;
    v76 = __CFStringIsCF();
    if (v76)
    {
      if (!*v152)
      {

        goto LABEL_105;
      }

      if (v140[0] == 1)
      {
        if (v144)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_104;
      }

      if (v141[0])
      {
        if (v144 != 1)
        {
          v76 = [(__CFString *)v74 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](v76);
        v5 = v135;
        v82 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v135 = v5;
        v84 = HIBYTE(v83) & 0xF;
        if ((v83 & 0x2000000000000000) == 0)
        {
          v84 = v82 & 0xFFFFFFFFFFFFLL;
        }

        if (!v84)
        {

          goto LABEL_103;
        }

LABEL_89:
      }

      else
      {
LABEL_103:
        String.init(_cocoaString:)();
      }

LABEL_104:

      goto LABEL_105;
    }

    v77 = v74;
    String.init(_nativeStorage:)();
    if (!v78)
    {
      *v152 = [(__CFString *)v77 length];
      if (*v152)
      {
        goto LABEL_103;
      }
    }

LABEL_105:
    v85 = v136;
    if (String.count.getter() > 153)
    {
    }

    else
    {
      *v152 = 6254181;
      *&v152[8] = 0xE300000000000000;
      MEMORY[0x1865CB0E0](v69, v85);
      LODWORD(v144) = 0;
      String.utf8CString.getter();

      String.utf8CString.getter();

      v86 = uloc_getDisplayCountry();

      if (v144 <= 0 && v144 != -127 && (v86 - 1) < 0x101)
      {
        MEMORY[0x1EEE9AC00](v87);
        v5 = v135;
        closure #1 in String.init(_utf16:)(&v124 - v88, v143, v89, v152);
        if (v5)
        {
          goto LABEL_154;
        }

        v19 = *&v152[8];
        v135 = 0;
        if (*&v152[8])
        {
          v18 = *v152;

          goto LABEL_117;
        }
      }
    }

    if (v133 == v67)
    {
      goto LABEL_116;
    }

    ++v67;
    v68 += 16;
    if (v67 >= *(v30 + 2))
    {
      __break(1u);
LABEL_116:

      v18 = 0;
      v19 = 0;
      goto LABEL_118;
    }
  }

  v79 = [(__CFString *)v74 UTF8String];
  if (!v79)
  {
    goto LABEL_151;
  }

  String.init(utf8String:)(v79);
  if (v80)
  {
    goto LABEL_89;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  swift_willThrow();

  __break(1u);
LABEL_155:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t URLQueryItem.init(name:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

uint64_t URLQueryItem.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t URLComponents.percentEncodedQuery.setter(unint64_t a1, unint64_t a2)
{
  *(v2 + 8) = 0;
  *(v2 + 15) = 0;
  if (!a2)
  {
LABEL_8:

    *(v2 + 120) = a1;
    *(v2 + 128) = a2;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = v2;
    v15 = a1;
    v16 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      v15 = a1;
      v16 = a2;
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 0x40u, 1);
    }

    else
    {
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a1, a2, 0x40u, 1);
    }

    v2 = v8;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v15 = a1;
      v16 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v15;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 0x40u, 1))
    {
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id NSFileHandle.write<A>(contentsOf:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  AssociatedConformanceWitness = a1;
  v120[9] = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v101 = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v94 - v10;
  v102 = swift_getAssociatedTypeWitness();
  v96 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = (&v94 - v13);
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v94 - v18;
  v20 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v20);
  if (a2 == &type metadata for Data)
  {
    return specialized NSFileHandle.write<A>(contentsOf:)(*AssociatedConformanceWitness, *(AssociatedConformanceWitness + 8));
  }

  if (type metadata accessor for DispatchData() == a2)
  {
    return specialized NSFileHandle.write<A>(contentsOf:)(AssociatedConformanceWitness);
  }

  v99 = a2;
  v21 = i;
  if ((_NSFileHandleIsClosed(i) & 1) == 0)
  {
    if (!_NSFileHandleCanPerformWritingInSwiftOverlay(v21) || ([v21 fileDescriptor] & 0x80000000) != 0)
    {
      (*(v101 + 64))(v99);
      v37 = v100;
      dispatch thunk of Sequence.makeIterator()();
      v38 = v37;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      v39 = v95;
      v97 = *(v95 + 48);
      if (v97(v8, 1, AssociatedTypeWitness) != 1)
      {
        v95 = *(v39 + 32);
        v40 = (v39 + 8);
        do
        {
          v41 = (v95)(v16, v8, AssociatedTypeWitness);
          MEMORY[0x1EEE9AC00](v41);
          *(&v94 - 2) = i;
          v42 = swift_getAssociatedConformanceWitness();
          v43 = v104;
          (*(v42 + 8))(partial apply for closure #1 in NSFileHandle.write<A>(contentsOf:), &v94 - 4, MEMORY[0x1E69E7CA8] + 8, AssociatedTypeWitness, v42);
          v104 = v43;
          if (v43)
          {
            (*v40)(v16, AssociatedTypeWitness);
            return (*(v96 + 8))(v100, v102);
          }

          (*v40)(v16, AssociatedTypeWitness);
          v38 = v100;
          dispatch thunk of IteratorProtocol.next()();
        }

        while (v97(v8, 1, AssociatedTypeWitness) != 1);
      }

      v36 = v38;
      v35 = v96;
    }

    else
    {
      (*(v101 + 64))(v99);
      v31 = v97;
      dispatch thunk of Sequence.makeIterator()();
      v32 = swift_getAssociatedConformanceWitness();
      v33 = v94;
      v100 = v32;
      dispatch thunk of IteratorProtocol.next()();
      v34 = v95;
      AssociatedConformanceWitness = *(v95 + 48);
      if ((AssociatedConformanceWitness)(v33, 1, AssociatedTypeWitness) == 1)
      {
        v35 = v96;
        v36 = v31;
      }

      else
      {
        v95 = *(v34 + 32);
        v49 = (v34 + 8);
        while (1)
        {
          (v95)(v19, v33, AssociatedTypeWitness);
          v50 = [i fileDescriptor];
          MEMORY[0x1EEE9AC00](v50);
          *(&v94 - 4) = v51;
          v52 = swift_getAssociatedConformanceWitness();
          v53 = v104;
          (*(v52 + 8))(partial apply for closure #1 in writeSingleRegion #1 <A><A1>(_:) in NSFileHandle.write<A>(contentsOf:), &v94 - 4, MEMORY[0x1E69E7CA8] + 8, AssociatedTypeWitness, v52);
          v104 = v53;
          if (v53)
          {
            break;
          }

          (*v49)(v19, AssociatedTypeWitness);
          dispatch thunk of IteratorProtocol.next()();
          if ((AssociatedConformanceWitness)(v33, 1, AssociatedTypeWitness) == 1)
          {
            goto LABEL_46;
          }
        }

        (*v49)(v19, AssociatedTypeWitness);
LABEL_46:
        v35 = v96;
        v36 = v97;
      }
    }

    return (*(v35 + 8))(v36, v102);
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v23 = @"NSDebugDescription";
  v24 = v23;
  if (!isTaggedPointer)
  {
    goto LABEL_20;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v23);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_37;
    case 0x16:
      result = [(__CFString *)v24 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v54 = String.init(utf8String:)(result);
      if (v55)
      {
LABEL_38:
        v27 = v54;
        v29 = v55;
LABEL_39:

        goto LABEL_59;
      }

      __break(1u);
LABEL_37:
      LOWORD(v110) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v54 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v55)
      {
        [(__CFString *)v24 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v29 = *(&v113[0] + 1);
        v27 = *&v113[0];
        goto LABEL_59;
      }

      goto LABEL_38;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v94 - 2) = v24;
      v26 = v104;
      v27 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v29 = v28;
      v104 = v26;

      goto LABEL_59;
  }

LABEL_20:
  LOBYTE(v113[0]) = 0;
  *&v116 = 0;
  LOBYTE(v110) = 0;
  v108 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v46 = v24;
    v47 = String.init(_nativeStorage:)();
    if (v48)
    {
      v27 = v47;
      v29 = v48;

      goto LABEL_59;
    }

    *&v116 = [(__CFString *)v46 length];
    if (v116)
    {
      goto LABEL_57;
    }

LABEL_33:
    v27 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_59;
  }

  v45 = v116;
  if (!v116)
  {

    goto LABEL_33;
  }

  if (v108 == 1)
  {
    if (v113[0])
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v56 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_58;
  }

  if (v110)
  {
    if (LOBYTE(v113[0]) == 1)
    {
      MEMORY[0x1EEE9AC00](IsCF);
      *(&v94 - 4) = v24;
      *(&v94 - 3) = &v116;
      *(&v94 - 4) = 1536;
      *(&v94 - 1) = v45;
    }

    else
    {
      v58 = [(__CFString *)v24 lengthOfBytesUsingEncoding:4];
      MEMORY[0x1EEE9AC00](v58);
      *(&v94 - 4) = v24;
      *(&v94 - 3) = &v116;
      *(&v94 - 4) = 134217984;
      *(&v94 - 1) = v59;
    }

    v60 = v104;
    v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v29 = v62;
    v104 = v60;
    v63 = HIBYTE(v62) & 0xF;
    if ((v62 & 0x2000000000000000) == 0)
    {
      v63 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      v27 = v61;
      goto LABEL_39;
    }
  }

LABEL_57:
  v56 = String.init(_cocoaString:)();
LABEL_58:
  v27 = v56;
  v29 = v57;
LABEL_59:
  *&v116 = v27;
  *(&v116 + 1) = v29;
  v64 = MEMORY[0x1E69E6158];
  AnyHashable.init<A>(_:)();
  v120[8] = v64;
  v120[5] = 0xD00000000000002ELL;
  v120[6] = 0x800000018147DC60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
  v65 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (AnyHashable, Any)(v120, &v116);

  outlined destroy of TermOfAddress?(v120, &_ss11AnyHashableV_yptMd);
  v66 = specialized __RawDictionaryStorage.find<A>(_:)(&v116);
  v68 = v67;

  if (v68)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  v69 = (v65 + 8);
  *(v65 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v66;
  v70 = v65[6] + 40 * v66;
  v71 = v116;
  v72 = v117;
  *(v70 + 32) = *&v118[0];
  *v70 = v71;
  *(v70 + 16) = v72;
  outlined init with take of Any((v118 + 8), (v65[7] + 32 * v66));
  v73 = v65[2];
  if (__OFADD__(v73, 1))
  {
    goto LABEL_86;
  }

  v65[2] = v73 + 1;
  if (v73 == -1)
  {
    v74 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v74 = static _DictionaryStorage.allocate(capacity:)();
  }

  v75 = 1 << *(v65 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v65[8];
  v78 = (v75 + 63) >> 6;
  v102 = (v74 + 8);

  v79 = 0;
  for (i = v65; ; v65 = i)
  {
    if (!v77)
    {
      while (1)
      {
        v81 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          break;
        }

        if (v81 >= v78)
        {

          goto LABEL_80;
        }

        v77 = *&v69[8 * v81];
        ++v79;
        if (v77)
        {
          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v81 = v79;
LABEL_74:
    v82 = __clz(__rbit64(v77)) | (v81 << 6);
    outlined init with copy of AnyHashable(v65[6] + 40 * v82, &v116);
    outlined init with copy of Any(v65[7] + 32 * v82, v118 + 8);
    v114[0] = v118[0];
    v114[1] = v118[1];
    v115 = v119;
    v113[0] = v116;
    v113[1] = v117;
    outlined init with copy of AnyHashable(v113, &v107);
    if (!swift_dynamicCast())
    {
      break;
    }

    v77 &= v77 - 1;
    v83 = v105;
    v84 = v106;
    outlined init with copy of Any(v114 + 8, v109);
    outlined destroy of TermOfAddress?(v113, &_ss11AnyHashableV3key_yp5valuetMd);
    *&v110 = v83;
    *(&v110 + 1) = v84;
    outlined init with take of Any(v109, v111);
    v85 = v110;
    outlined init with take of Any(v111, v112);
    outlined init with take of Any(v112, &v110);
    v86 = specialized __RawDictionaryStorage.find<A>(_:)(v85, *(&v85 + 1));
    v87 = v86;
    if (v88)
    {
      *(v74[6] + 16 * v86) = v85;

      v80 = (v74[7] + 32 * v87);
      __swift_destroy_boxed_opaque_existential_1(v80);
      outlined init with take of Any(&v110, v80);
    }

    else
    {
      if (v74[2] >= v74[3])
      {
        goto LABEL_83;
      }

      *(v102 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v86;
      *(v74[6] + 16 * v86) = v85;
      outlined init with take of Any(&v110, (v74[7] + 32 * v86));
      v89 = v74[2];
      v90 = __OFADD__(v89, 1);
      v91 = v89 + 1;
      if (v90)
      {
        goto LABEL_84;
      }

      v74[2] = v91;
    }

    v79 = v81;
  }

  outlined destroy of TermOfAddress?(v113, &_ss11AnyHashableV3key_yp5valuetMd);

LABEL_80:
  v92 = objc_allocWithZone(NSError);
  v93 = @"NSCocoaErrorDomain";
  [v92 initWithDomain:v93 code:512 userInfo:_NativeDictionary.bridged()()];

  swift_unknownObjectRelease();

  return swift_willThrow();
}

BOOL _NSFileHandleCanPerformWritingInSwiftOverlay(void *a1)
{
  if ([a1 fileDescriptor] == -1)
  {
    return 0;
  }

  v2 = [a1 methodForSelector:sel_writeData_error_];
  if (v2 == [NSConcreteFileHandle instanceMethodForSelector:sel_writeData_error_])
  {
    return 1;
  }

  v3 = [a1 methodForSelector:sel_writeData_];
  return v3 == [NSConcreteFileHandle instanceMethodForSelector:sel_writeData_];
}

void type metadata accessor for (roundSeconds: FloatingPointRoundingRule)()
{
  if (!lazy cache variable for type metadata for (roundSeconds: FloatingPointRoundingRule))
  {
    v0 = type metadata accessor for FloatingPointRoundingRule();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (roundSeconds: FloatingPointRoundingRule));
    }
  }
}

char *String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = __OFADD__(result, 2 * a2);
    result += 2 * a2;
    if (!v5)
    {
      MEMORY[0x1865CAED0](result);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall String.LocalizationValue.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v1 = String._bridgeToObjectiveCImpl()();

  v2 = String._bridgeToObjectiveCImpl()();

  v3 = String._bridgeToObjectiveCImpl()();

  v4 = [v1 stringByReplacingOccurrencesOfString:v2 withString:v3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_11;
  }

  isTaggedPointer = _objc_isTaggedPointer(v4);
  v6 = v4;
  v7 = v6;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v22)
    {
      v11 = v22;
      v20 = v21;
    }

    else
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v20 = v24;
      v11 = v25;
    }

    goto LABEL_21;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v11 = v10;

      v12 = v9;
LABEL_22:
      MEMORY[0x1865CB0E0](v12, v11);

      return;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

LABEL_11:
      v12 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_22;
    }

    v13 = v7;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v11 = v15;
      v16 = v14;

      v12 = v16;
      goto LABEL_22;
    }

    if (![v13 length])
    {

      goto LABEL_11;
    }

    v20 = String.init(_cocoaString:)();
    v11 = v23;
LABEL_21:

    v12 = v20;
    goto LABEL_22;
  }

  v17 = [v7 UTF8String];
  if (v17)
  {
    v18 = String.init(utf8String:)(v17);
    if (v19)
    {
      v20 = v18;
      v11 = v19;

      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  MEMORY[0x1865CB0E0](16421, 0xE200000000000000);
  v5 = MEMORY[0x1E69E6158];
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = lazy protocol witness table accessor for type String and conformance String();
  v17[0] = countAndFlagsBits;
  v17[1] = object;
  v6 = __swift_project_boxed_opaque_existential_1(v17, v5);
  *(&v19 + 1) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v6, v5);
  v23[24] = 0;

  __swift_destroy_boxed_opaque_existential_1(v17);
  v8 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[112 * v10];
  v12 = v18;
  v13 = v20;
  *(v11 + 3) = v19;
  *(v11 + 4) = v13;
  *(v11 + 2) = v12;
  v14 = v21;
  v15 = v22;
  v16 = *v23;
  *(v11 + 121) = *&v23[9];
  *(v11 + 6) = v15;
  *(v11 + 7) = v16;
  *(v11 + 5) = v14;
  *v2 = v8;
}

uint64_t LocalizedStringResource.init(stringInterpolation:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = static LocaleCache.cache;
  v16 = qword_1ED4404B0;
  v6 = LocaleCache._currentAndCache.getter();
  v8 = v7;
  v9 = objc_opt_self();

  v10 = [v9 mainBundle];
  v11 = [v10 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)(v11, &v15);
  v12 = v15;
  ObjectType = swift_getObjectType();
  result = (*(*(&v12 + 1) + 144))(ObjectType, *(&v12 + 1));
  if (result)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v3;
    a2[3] = v4;
    a2[4] = v5;
    a2[5] = 0;
    a2[6] = 0;
    a2[7] = v6;
    a2[8] = v8;
    a2[9] = v12;
    a2[11] = 0;
    a2[12] = 0;
    a2[10] = *(&v12 + 1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

NSNumber __swiftcall UInt64._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedLongLong_];
}

uint64_t specialized thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<UInt8>) -> (@owned String?, @error @owned Error)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void type metadata accessor for (fractionalSecondsLength: Int, roundFractionalSeconds: FloatingPointRoundingRule)()
{
  if (!lazy cache variable for type metadata for (fractionalSecondsLength: Int, roundFractionalSeconds: FloatingPointRoundingRule))
  {
    type metadata accessor for FloatingPointRoundingRule();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (fractionalSecondsLength: Int, roundFractionalSeconds: FloatingPointRoundingRule));
    }
  }
}

uint64_t type metadata completion function for Duration.TimeFormatStyle()
{
  result = type metadata accessor for Duration.TimeFormatStyle.Attributed(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Duration.TimeFormatStyle.Attributed()
{
  result = type metadata accessor for Duration.TimeFormatStyle.Pattern(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static FormatStyle<>.time(pattern:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(a1, a2, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v4 = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  result = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  *(a2 + *(result + 20)) = 0;
  v6 = (a2 + *(result + 24));
  *v6 = inited;
  v6[1] = v4;
  return result;
}

uint64_t static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter@<X0>(char *a1@<X8>)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
  *a1 = 0;
  v3 = *MEMORY[0x1E69E7030];
  v4 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  v6 = &a1[*(result + 20)];
  *v6 = 0;
  v6[8] = 1;
  return result;
}

{
  return static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter(a1);
}

void TimeZone.init(secondsFromGMT:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v3 = *(&xmmword_1ED440468 + 1);
    v2 = xmmword_1ED440468;
    swift_unknownObjectRetain();
    goto LABEL_45;
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v7 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v9 = *(v7 + 56);
  if (*(v9 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v10)
    {
      v11 = (*(v9 + 56) + 16 * v8);
      v2 = *v11;
      v3 = v11[1];
      swift_unknownObjectRetain();
      goto LABEL_44;
    }
  }

  v12 = a1;
  if (a1 < 0)
  {
    v12 = -a1;
    if (__OFSUB__(0, a1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  type metadata accessor for _TimeZoneGMTICU();
  swift_allocObject();
  v13 = _TimeZoneGMTICU.init(secondsFromGMT:)(a1);
  if (!v13)
  {
    os_unfair_lock_unlock((v7 + 120));
LABEL_46:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v2 = v13;
  v3 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU);
  if (__ROR8__(0xFEDCBA987654321 * v12 + 0x91A2B3C4D5E6F8, 3) >= 0x2468ACF13579BFuLL)
  {
    os_unfair_lock_unlock((v7 + 120));
LABEL_45:
    *a2 = v2;
    a2[1] = v3;
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v7 + 56);
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v16 = *(v4 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    goto LABEL_25;
  }

  LOBYTE(v12) = v15;
  if (*(v4 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
    v20 = v4;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v12 & 1) == (v21 & 1))
    {
      goto LABEL_22;
    }

    v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v20 = v4;
LABEL_22:
    if (v12)
    {
LABEL_23:
      v22 = (*(v20 + 56) + 16 * v8);
      *v22 = v2;
      v22[1] = v3;
      swift_unknownObjectRelease();
LABEL_43:
      *(v7 + 56) = v20;
LABEL_44:
      os_unfair_lock_unlock((v7 + 120));
      if (v2)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

LABEL_42:
    specialized _NativeDictionary._insert(at:key:value:)(v8, a1, v2, v20);
    goto LABEL_43;
  }

LABEL_26:
  v37 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMd);
  v23 = static _DictionaryStorage.copy(original:)();
  v20 = v23;
  if (!*(v4 + 16))
  {
LABEL_41:

    v8 = v37;
    if (v12)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

  v24 = (v23 + 64);
  __src = (v4 + 64);
  v25 = ((1 << *(v20 + 32)) + 63) >> 6;
  if (v20 != v4 || v24 >= &__src[8 * v25])
  {
    memmove(v24, __src, 8 * v25);
  }

  v39 = 0;
  *(v20 + 16) = *(v4 + 16);
  v26 = 1 << *(v4 + 32);
  v27 = *(v4 + 64);
  v28 = -1;
  if (v26 < 64)
  {
    v28 = ~(-1 << v26);
  }

  v29 = v28 & v27;
  v36 = (v26 + 63) >> 6;
  if ((v28 & v27) != 0)
  {
    do
    {
      v30 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v31 = v39;
LABEL_39:
      v34 = v30 | (v31 << 6);
      v35 = *(*(v4 + 56) + 16 * v34);
      *(*(v20 + 48) + 8 * v34) = *(*(v4 + 48) + 8 * v34);
      *(*(v20 + 56) + 16 * v34) = v35;
      swift_unknownObjectRetain();
    }

    while (v29);
  }

  v32 = v39;
  while (1)
  {
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v31 >= v36)
    {
      goto LABEL_41;
    }

    v33 = *&__src[8 * v31];
    ++v32;
    if (v33)
    {
      v30 = __clz(__rbit64(v33));
      v29 = (v33 - 1) & v33;
      v39 = v31;
      goto LABEL_39;
    }
  }

  __break(1u);
}

uint64_t String.init(format:locale:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  swift_unknownObjectRetain();

  v9 = specialized withVaList<A>(_:_:)(a4, a4, a1, a2, v7, v8);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t protocol witness for Collection.subscript.getter in conformance IndexSet@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 80) = *v2;
  v3 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = a1[4];
}

uint64_t FloatingPointFormatStyle.notation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 36);
  result = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  *(v7 + *(result + 44)) = v6;
  return result;
}

uint64_t Locale.Language.characterDirection.getter()
{
  v0 = MEMORY[0x1E69E5738];

  return Locale.Language.characterDirection.getter(v0);
}

BOOL _isEmpty(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v1 = 0;
    }

    v2 = v1 ^ a1;
    v3 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v2 & 7) == 0)
    {
      v3 = 0xFFFFFFFFFFFFFLL;
    }

    v4 = v3 & (v2 >> 3);
  }

  else
  {
    v5 = *(a1 + 8);
    if ((v5 & 2) != 0)
    {
      v4 = *(a1 + 16);
    }

    else if (v5)
    {
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = *(*(a1 + 16) + 8);
    }
  }

  return v4 == 0;
}

uint64_t specialized static IndexPath._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of IndexPath?(*a2, *(a2 + 8), *(a2 + 16));
  result = [a1 length];
  switch(result)
  {
    case 2:
      v8 = [a1 indexAtPosition_];
      v7 = 1;
      v5 = [a1 indexAtPosition_];
      result = v8;
      goto LABEL_9;
    case 1:
      result = [a1 indexAtPosition_];
      v5 = 0;
      v7 = 0;
      goto LABEL_9;
    case 0:
      result = sub_180928C90(MEMORY[0x1E69E7CC0]);
      v7 = v6;
LABEL_9:
      *a2 = result;
      *(a2 + 8) = v5;
      *(a2 + 16) = v7;
      return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v9 = result;
    v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v10 + 16) = v9;
    [a1 getIndexes:v10 + 32 range:{0, v9}];
    result = v10;
    v5 = 0;
    *(v10 + 16) = v9;
    v7 = 2;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t outlined consume of IndexPath?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of IndexPath.Storage(a1, a2, a3);
  }

  return a1;
}

uint64_t protocol witness for SetAlgebra.init() in conformance CharacterSet@<X0>(uint64_t *a1@<X8>)
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

uint64_t protocol witness for SetAlgebra.insert(_:) in conformance CharacterSet(_DWORD *a1, unsigned int *a2)
{
  v3 = v2;
  v5 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = __CharacterSetStorage.mutableCopy()();

    *v3 = v6;
  }

  __CharacterSetStorage.insert(charactersIn:)(v5 | (v5 << 32), MEMORY[0x1E695D738]);
  *a1 = v5;
  return 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IndexPath()
{
  Hasher.init(_seed:)();
  IndexPath.hash(into:)();
  return Hasher._finalize()();
}

uint64_t IndexPath.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    if (*(v0 + 16))
    {
      v8 = *(v0 + 8);
      MEMORY[0x1865CD060](2);
      v3 = v1;
      v1 = v8;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x1865CD060](v3);
    return MEMORY[0x1865CD060](v1);
  }

  if (v2 != 2)
  {
    v1 = 0;
    return MEMORY[0x1865CD060](v1);
  }

  result = MEMORY[0x1865CD060](*(v1 + 16));
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = (v1 + 32);
    do
    {
      v7 = *v6++;
      result = MEMORY[0x1865CD060](v7);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IndexPath(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      if (v7 == 2)
      {
        return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v5);
      }

      return 0;
    }

    return v7 == 3 && (v6 | v5) == 0;
  }

  if (!*(a1 + 16))
  {
    if (!v7)
    {
      return v4 == v5;
    }

    return 0;
  }

  if (v7 != 1)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  return v4 == v5 && v9 == v6;
}

void TimeZone.init(identifier:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 30);
  partial apply for closure #1 in TimeZoneCache.fixed(_:)(v6);
  os_unfair_lock_unlock(v3 + 30);
  v4 = v6[1];
  if (!v6[0])
  {
    v4 = 0;
  }

  *a2 = v6[0];
  a2[1] = v4;
}

uint64_t DateComponents.day.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 80) = v3;
  *(v2 + 88) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t closure #1 in __PlistEncoderXML.wrapGeneric<A, B>(_:for:_:)(uint64_t a1)
{
  v4[3] = type metadata accessor for __PlistEncoderXML();
  v4[4] = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistEncoderXML and conformance __PlistEncoderXML, v2, type metadata accessor for __PlistEncoderXML);
  v4[0] = a1;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void _XMLPlistEncodingFormat.Writer.append(_:)(unint64_t a1@<X0>, int64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X8>)
{
  if (a3)
  {
    a4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        return;
      }

      a4 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v4 = a1 + 1;
LABEL_11:
          v5 = __clz(v4);
          __src = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
          _XMLPlistEncodingFormat.Writer.append(_:)(&__src, 4 - (v5 >> 3));
          return;
        }

LABEL_15:
        v6 = (a1 & 0x3F) << 8;
        v7 = (a1 >> 6) + v6 + 33217;
        v8 = (v6 | (a1 >> 6) & 0x3F) << 8;
        v9 = (a1 >> 18) + ((v8 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v10 = (a1 >> 12) + v8 + 8487393;
        if (a4)
        {
          v4 = v9;
        }

        else
        {
          v4 = v10;
        }

        if (a1 < 0x800)
        {
          v4 = v7;
        }

        goto LABEL_11;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_13;
  }

  _XMLPlistEncodingFormat.Writer.append(_:)(a1, a2);
}

const char *XMLPlistTag.tagName.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = "plist";
    v7 = "dict";
    v8 = "key";
    if (a1 != 3)
    {
      v8 = "string";
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = "array";
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = "integer";
    v2 = "true";
    if (a1 != 9)
    {
      v2 = "false";
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = "data";
    v4 = "date";
    if (a1 != 6)
    {
      v4 = "real";
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t _XMLPlistEncodingFormat.Writer.appendClose(_:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  specialized String.withUTF8<A>(_:)(&v13);

  v8 = XMLPlistTag.tagName.getter(a1);
  _XMLPlistEncodingFormat.Writer.append(_:)(v8, v9, v10, v11);
  v13 = a4;
  v14 = a5;
  specialized String.withUTF8<A>(_:)(&v13);
}

uint64_t _nearestPresenterInterestedInSubitemPresenters(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  for (i = [a1 parent]; ; i = objc_msgSend(i, "parent"))
  {
    v2 = v6[5];
    if (!i || v2)
    {
      break;
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___nearestPresenterInterestedInSubitemPresenters_block_invoke;
    v4[3] = &unk_1E69F8A98;
    v4[4] = &v5;
    [i forEachPresenterOfItemPerformProcedure:v4];
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1809A78D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized __PlistEncoderXML._wrapGeneric<A>(_:for:_:)@<X0>(void (*a1)(void)@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>)
{
  v9 = v7;
  v11 = a5;
  v13 = a3;
  v14 = a2;
  v15 = a1;
  v16 = a7;
  v17 = v9 + 2;
  v18 = *(v9[2] + 16);
  v31 = v18;
  if (a6 != -1)
  {
    v26 = a1;
    v27 = v8;
    v17 = swift_allocObject();
    v17[5] = &type metadata for _CodingKey;
    v17[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    v17[2] = v19;
    *(v19 + 16) = v13;
    *(v19 + 24) = a4;
    *(v19 + 32) = v11;
    *(v19 + 40) = a6;
    v17[7] = v14;
    v25 = v13;
    if (v14 >> 62)
    {
      if (v14 >> 62 != 1)
      {
        v13 = v11;
        v11 = 1;
        goto LABEL_10;
      }

      v20 = ((v14 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = (v14 + 64);
    }

    v13 = v11;
    v8 = *v20;

    v11 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
LABEL_10:
      v17[8] = v11;
      v18 = v9[5];
      v16 = v9[6];
      v9[5] = v17;

      v14 = v17;
      v17 = v9 + 2;
LABEL_15:
      outlined copy of _CodingKey?(v25, a4, v13, a6);
      v15 = v26;
      v8 = v27;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  v18 = v9[5];
  v16 = v9[6];
  v9[5] = a2;
  if (!(a2 >> 62))
  {
LABEL_13:
    v25 = v13;
    v13 = v11;
    v26 = v15;
    v27 = v8;
    v11 = *(v14 + 64);
    goto LABEL_14;
  }

  if (a2 >> 62 == 1)
  {
    v25 = a3;
    v13 = a5;
    v26 = a1;
    v27 = v8;
    v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_14:
    swift_retain_n();
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:
  v9[6] = v11;
  v15(v9);
  if (v8)
  {
    outlined consume of _CodingPathNode?(v14);
    v9[5] = v18;

    v9[6] = v16;
    if (v31 < *(v9[2] + 16))
    {
      specialized ContiguousArray._customRemoveLast()(&v28);
      if (v30 == 255)
      {
        outlined consume of _XMLPlistEncodingFormat.Reference?(v28, v29, v30);
        specialized ContiguousArray.remove(at:)(*(*v17 + 16) - 1, &v28);
        outlined consume of _XMLPlistEncodingFormat.Reference(v28, v29, v30);
      }

      else
      {
        outlined consume of _XMLPlistEncodingFormat.Reference?(v28, v29, v30);
      }
    }

    return swift_willThrow();
  }

  else
  {
    outlined consume of _CodingPathNode?(v14);
    v9[5] = v18;

    v9[6] = v16;
    if (v31 >= *(v9[2] + 16))
    {
      *a7 = 0;
      *(a7 + 8) = 0;
      *(a7 + 16) = -1;
    }

    else
    {
      specialized ContiguousArray._customRemoveLast()(&v28);
      v22 = v30;
      result = v28;
      v23 = v29;
      if (v30 == 255)
      {
        outlined consume of _XMLPlistEncodingFormat.Reference?(v28, v29, 0xFFu);
        specialized ContiguousArray.remove(at:)(*(*v17 + 16) - 1, &v28);
        result = v28;
        v23 = v29;
        v22 = v30;
      }

      *a7 = result;
      *(a7 + 8) = v23;
      *(a7 + 16) = v22;
    }
  }

  return result;
}

uint64_t sub_1809A7C54()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t _PlistKeyedEncodingContainerXML.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v103 = a5;
  v12 = *(a3 + 16);
  v106 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v100 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v107 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v91 - v17;
  v19 = *(a3 + 24);
  v105 = a2;
  v20 = v12;
  v99 = v19;
  v109 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(v7 + 24) != 7)
  {
    goto LABEL_48;
  }

  v22 = v21;
  v23 = v7[1];
  v24 = *(v23 + 16);
  v25 = *(v24 + 16);
  v110 = v21;
  v101 = a6;
  v102 = a4;
  v104 = v14;
  if (v25)
  {
    v26 = v7[2];
    outlined copy of _XMLPlistEncodingFormat.Reference(v23, v26, 7u);

    v14 = v22;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v109, v22, 0);
    if (v28)
    {
      v29 = *(v24 + 56) + 24 * v27;
      v30 = *v29;
      v31 = *(v29 + 16);
      v32 = *v29;
      v109 = *(v29 + 8);
      outlined copy of _XMLPlistEncodingFormat.Reference(v32, v109, v31);

      outlined consume of _XMLPlistEncodingFormat.Reference(v23, v26, 7u);

      if (v31 != 7)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v14 = v18;
      v18 = v20;
      v33 = v107;
      v34 = v108;
LABEL_35:
      v74 = *v7;
      v75 = v7[4];
      v76 = v106;
      (*(v106 + 16))(v14, v105, v18);
      (*(v76 + 56))(v14, 0, 1, v18);
      v77 = v104;
      (*(v33 + 16))(v34, v14, v104);
      if ((*(v76 + 48))(v34, 1, v18) == 1)
      {
        v78 = *(v33 + 8);

        v78(v14, v77);
        v78(v34, v77);

LABEL_43:
        v111 = v74;
        v112 = v30;
        v89 = v109;
        v113 = v109;
        v114 = 7;
        v115 = v75;

        outlined copy of _XMLPlistEncodingFormat.Reference(v30, v89, 7u);
        type metadata accessor for _PlistKeyedEncodingContainerXML();

        swift_getWitnessTable();
        KeyedEncodingContainer.init<A>(_:)();

        outlined consume of _XMLPlistEncodingFormat.Reference(v30, v89, 7u);
      }

      v108 = v30;
      v79 = *(v76 + 32);
      v80 = v34;
      v81 = v100;
      v79(v100, v80, v18);
      v82 = swift_allocObject();
      v83 = v99;
      v82[5] = v18;
      v82[6] = v83;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82 + 2);
      v79(boxed_opaque_existential_0, v81, v18);
      v85 = *(v33 + 8);

      v85(v14, v77);
      v82[7] = v75;
      if (v75 >> 62)
      {
        if (v75 >> 62 != 1)
        {
          v30 = v108;
          v88 = 1;
          goto LABEL_42;
        }

        v86 = ((v75 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v86 = (v75 + 64);
      }

      v30 = v108;
      v87 = *v86;

      v88 = v87 + 1;
      if (!__OFADD__(v87, 1))
      {
LABEL_42:
        v82[8] = v88;
        v75 = v82;
        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_46;
    }

    outlined consume of _XMLPlistEncodingFormat.Reference(v23, v26, 7u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__SDyA2EGGMd);
  v35 = swift_allocObject();
  *(v35 + 16) = MEMORY[0x1E69E7CC8];
  if (*(v7 + 24) != 7)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v30 = v35;
  v36 = v7[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111 = *(v36 + 16);
  v38 = v111;
  *(v36 + 16) = 0x8000000000000000;
  v40 = specialized __RawDictionaryStorage.find<A>(_:)(v109, v22, 0);
  v41 = *(v38 + 16);
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v23) = v39;
  v14 = v18;
  if (*(v38 + 24) >= v43)
  {
    v47 = v110;
    v18 = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      v44 = v38;
LABEL_14:
      v33 = v107;
      v34 = v108;
      if (v23)
      {
LABEL_15:
        v48 = *(v44 + 56) + 24 * v40;
        v49 = *v48;
        v50 = *(v48 + 8);
        *v48 = v30;
        *(v48 + 8) = 0;
        v51 = *(v48 + 16);
        *(v48 + 16) = 7;
        outlined consume of _XMLPlistEncodingFormat.Reference(v49, v50, v51);

LABEL_34:
        v109 = 0;
        *(v36 + 16) = v44;
        goto LABEL_35;
      }

LABEL_33:
      specialized _NativeDictionary._insert(at:key:value:)(v40, v109, v47, 0, v30, 0, 7, v44);
      goto LABEL_34;
    }

LABEL_17:
    v93 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v52 = static _DictionaryStorage.copy(original:)();
    v44 = v52;
    v34 = v108;
    if (*(v38 + 16))
    {
      v53 = (v52 + 64);
      v54 = (v38 + 64);
      v55 = ((1 << *(v44 + 32)) + 63) >> 6;
      v92 = v38 + 64;
      if (v44 != v38 || v53 >= &v54[8 * v55])
      {
        memmove(v53, v54, 8 * v55);
      }

      v56 = 0;
      *(v44 + 16) = *(v38 + 16);
      v57 = 1 << *(v38 + 32);
      v58 = -1;
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      v59 = v58 & *(v38 + 64);
      v60 = (v57 + 63) >> 6;
      v94 = v60;
      if (v59)
      {
        do
        {
          v61 = __clz(__rbit64(v59));
          v98 = (v59 - 1) & v59;
LABEL_30:
          v64 = 24 * (v61 | (v56 << 6));
          v65 = *(v38 + 48) + v64;
          v66 = *v65;
          v67 = *(v65 + 8);
          v68 = *(v38 + 56) + v64;
          v69 = *v68;
          v96 = *(v68 + 8);
          v70 = v96;
          v97 = v69;
          v71 = *(v44 + 48) + v64;
          v72 = *(v65 + 16);
          LODWORD(v68) = *(v68 + 16);
          v95 = v68;
          *v71 = v66;
          *(v71 + 8) = v67;
          *(v71 + 16) = v72;
          v73 = *(v44 + 56) + v64;
          *v73 = v69;
          *(v73 + 8) = v70;
          *(v73 + 16) = v68;
          outlined copy of _XMLPlistEncodingFormat.Reference(v66, v67, v72);
          outlined copy of _XMLPlistEncodingFormat.Reference(v97, v96, v95);
          v60 = v94;
          v59 = v98;
        }

        while (v98);
      }

      v62 = v56;
      while (1)
      {
        v56 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_47;
        }

        if (v56 >= v60)
        {
          break;
        }

        v63 = *(v92 + 8 * v56);
        ++v62;
        if (v63)
        {
          v61 = __clz(__rbit64(v63));
          v98 = (v63 - 1) & v63;
          goto LABEL_30;
        }
      }
    }

    v47 = v110;
    v33 = v107;
    v40 = v93;
    if (v23)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
  v44 = v111;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v109, v110, 0);
  if ((v23 & 1) == (v46 & 1))
  {
    v40 = v45;
    v18 = v20;
    v47 = v110;
    goto LABEL_14;
  }

LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1809A849C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  Hasher.init(_seed:)();
  if (v5)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    String.hash(into:)();
    v6 = Hasher._finalize()();

    return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, 0, v6);
  }

  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v9 = ~v5;
  v10 = a3;
  while (1)
  {
    v11 = *(v4 + 48) + 24 * v6;
    if (*(v11 + 16) || v10 != 0)
    {
      break;
    }

    if ((*v11 != a1 || *(v11 + 8) != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v6 = (v6 + 1) & v9;
      if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
      {
        continue;
      }
    }

    return v6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall _XMLPlistEncodingFormat.Writer.appendIndents(_:)(Swift::Int a1)
{
  v1 = a1;
  if (a1 >= 4)
  {
    do
    {
      __src = xmmword_181248D60;
      _XMLPlistEncodingFormat.Writer.append(_:)(&__src, 4);

      v2 = v1 - 4;
      v3 = v1 > 7;
      v1 -= 4;
    }

    while (v3);
  }

  else
  {
    v2 = a1;
  }

  switch(v2)
  {
    case 1:
      v4 = 9;
      v5 = 0xE100000000000000;
      break;
    case 2:
      v4 = 2313;
      v5 = 0xE200000000000000;
      break;
    case 3:
      v4 = 592137;
      v5 = 0xE300000000000000;
      break;
    default:
      return;
  }

  *&__src = v4;
  *(&__src + 1) = v5;
  specialized String.withUTF8<A>(_:)(&__src);
}

void closure #1 in _XMLPlistEncodingFormat.Writer.appendEscaped(_:)(char *__src, uint64_t a2)
{
  if (!__src)
  {
LABEL_21:
    __break(1u);
    return;
  }

  if (a2 >= 1)
  {
    v2 = __src;
    v3 = &__src[a2];
    while (1)
    {
      v4 = v3 - v2;
      if (v3 == v2)
      {
LABEL_17:
        _XMLPlistEncodingFormat.Writer.append(_:)(v2, v4);
        return;
      }

      v5 = 0;
      while (1)
      {
        v6 = v2[v5];
        v7 = v6 > 0x3E;
        v8 = (1 << v6) & 0x5000004000000000;
        if (!v7 && v8 != 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          goto LABEL_17;
        }
      }

      if (v5 < 0)
      {
        break;
      }

      _XMLPlistEncodingFormat.Writer.append(_:)(v2, v5);
      _XMLPlistEncodingFormat.Writer.appendEscaped(_:)(v2[v5]);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_20;
      }

      v2 += v5 + 1;
      if (v2 >= v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }
}

void sub_1809A8F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 112), 8);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t _NSFCFSEventsLog()
{
  if (qword_1ED440198 != -1)
  {
    dispatch_once(&qword_1ED440198, &__block_literal_global_935);
  }

  return qword_1ED440120;
}

uint64_t type metadata completion function for _XMLPlistEncodingFormat.Reference.Box()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for _PlistKeyedEncodingContainerXML()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _XMLPlistEncodingFormat.Writer.append(_:indentation:)(uint64_t a1, Swift::Int a2)
{
  v132 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  _XMLPlistEncodingFormat.Writer.appendIndents(_:)(a2);
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        v131[0] = 60;
        v131[1] = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v131);

        _XMLPlistEncodingFormat.Writer.append(_:)("real", 4);
        v131[0] = 62;
        v131[1] = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v131);

        v131[0] = specialized _XMLPlistEncodingFormat.Writer.realDescription(_:)(*&v3);
        v131[1] = v18;
        specialized String.withUTF8<A>(_:)(v131);

        v131[0] = 12092;
        v131[1] = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v131);

        v8 = "real";
        v9 = 4;
        goto LABEL_24;
      }

      v131[0] = 60;
      v131[1] = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v131);

      _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
      v131[0] = 62;
      v131[1] = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v131);

      *&v128[0] = v3;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
    }

    else
    {
      if (!v5)
      {
        v131[0] = 60;
        v131[1] = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v131);

        _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
        v131[0] = 62;
        v131[1] = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v131);

        v131[0] = v3;
        v131[1] = v4;

        specialized String.withUTF8<A>(_:)(v131);

        v131[0] = 12092;
        v131[1] = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v131);

        v8 = "string";
        v9 = 6;
LABEL_24:
        _XMLPlistEncodingFormat.Writer.append(_:)(v8, v9);
        v131[0] = 2622;
        v131[1] = 0xE200000000000000;
        goto LABEL_38;
      }

      v131[0] = 60;
      v131[1] = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v131);

      _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
      v131[0] = 62;
      v131[1] = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v131);

      *&v128[0] = v3;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    }

    v131[0] = BinaryInteger.description.getter();
    v131[1] = v17;
    specialized String.withUTF8<A>(_:)(v131);

    v131[0] = 12092;
    v131[1] = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v131);

    v8 = "integer";
    v9 = 7;
    goto LABEL_24;
  }

  if (v5 <= 5)
  {
    if (v5 != 4)
    {
      v131[0] = 60;
      v131[1] = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v131);

      _XMLPlistEncodingFormat.Writer.append(_:)("data", 4);
      v131[0] = 2622;
      v131[1] = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v131);

      v131[0] = &v129;
      MEMORY[0x1EEE9AC00](v21);
      _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0J4ViewVys0O0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_n(v3, v4, partial apply for closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:));
      _XMLPlistEncodingFormat.Writer.appendIndents(_:)(a2);
      v131[0] = 12092;
      v131[1] = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v131);

      _XMLPlistEncodingFormat.Writer.append(_:)("data", 4);
      v131[0] = 2622;
      v131[1] = 0xE200000000000000;
      goto LABEL_38;
    }

    v131[0] = 60;
    v131[1] = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v131);

    _XMLPlistEncodingFormat.Writer.append(_:)("date", 4);
    v131[0] = 62;
    v131[1] = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v131);

    if (one-time initialization token for cache != -1)
    {
LABEL_97:
      swift_once();
    }

    v10 = qword_1ED440450;
    os_unfair_lock_lock((qword_1ED440450 + 24));
    v11 = *(v10 + 16);
    v12 = &unk_1ED439000;
    v116 = v10;
    if (*(v11 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v14 & 1) != 0))
    {
      v121 = *(*(v11 + 56) + 16 * v13);
      v15 = *(*(v11 + 56) + 16 * v13);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v10 + 24));
      if (v15)
      {
        goto LABEL_56;
      }
    }

    else
    {
      os_unfair_lock_unlock((v10 + 24));
    }

    type metadata accessor for _CalendarGregorian();
    *&v122 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, 255, type metadata accessor for _CalendarGregorian);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_181232B40;
    *(v22 + 32) = xmmword_181232B50;
    *(v22 + 48) = 2299161;
    *(v22 + 80) = 0x4290000000000000;
    *(v22 + 128) = 0;
    *(v22 + 96) = 0;
    *(v22 + 104) = 0;
    *(v22 + 136) = 1;
    *(v22 + 144) = 0;
    *(v22 + 152) = 1;
    type metadata accessor for _LocaleUnlocalized();
    inited = swift_initStaticObject();
    v24 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized, 255, type metadata accessor for _LocaleUnlocalized);
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v25 = static TimeZoneCache.cache;
    os_unfair_lock_lock((static TimeZoneCache.cache + 120));
    if (*(v25 + 32))
    {
      v26 = v10;
      v27 = *(v25 + 40);
      v28 = *(v25 + 32);
    }

    else
    {
      v26 = v10;
      v28 = *(v25 + 16);
      if (v28)
      {
        v27 = *(v25 + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        TimeZoneCache.State.findCurrentTimeZone()(v131);
        v27 = v131[1];
        v28 = v131[0];
        *(v25 + 16) = v131[0];
        *(v25 + 24) = v27;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v25 + 120));
    *(v22 + 112) = v28;
    *(v22 + 120) = v27;
    *(v22 + 56) = xmmword_181232B60;
    *(v22 + 72) = 0xC208951B28000000;
    *(v22 + 96) = inited;
    *(v22 + 104) = v24;
    swift_unknownObjectRelease();
    *(v22 + 128) = 2;
    *(v22 + 136) = 0;
    *(v22 + 144) = 4;
    *(v22 + 152) = 0;
    *(v22 + 88) = 7;
    v29 = v26;
    os_unfair_lock_lock((v26 + 24));
    v30 = *(v26 + 16);
    if (*(v30 + 16))
    {
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if (v32)
      {
        v33 = *(*(v30 + 56) + 16 * v31);
        v12 = &unk_1ED439000;
LABEL_55:
        v121 = v33;
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v29 + 24));

LABEL_56:
        v124 = v121;
        if (v12[87] != -1)
        {
          swift_once();
        }

        v46 = *&v3;
        *v131 = xmmword_1ED440468;
        v117 = *(&xmmword_1ED440468 + 1);
        v119 = xmmword_1ED440468;
        swift_unknownObjectRetain_n();
        Calendar.timeZone.setter(v131);
        v122 = v124;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
        v47 = static _SetStorage.allocate(capacity:)();
        v48 = 0;
        v49 = v47 + 56;
        v3 = -1;
        do
        {
          v52 = outlined read-only object #0 of _XMLPlistEncodingFormat.Writer.append(_:indentation:)[v48 + 32];
          Hasher.init(_seed:)();
          MEMORY[0x1865CD060](v52);
          v53 = Hasher._finalize()();
          v54 = ~(-1 << *(v47 + 32));
          v55 = v53 & v54;
          v56 = (v53 & v54) >> 6;
          v57 = *(v49 + 8 * v56);
          v58 = 1 << (v53 & v54);
          v59 = *(v47 + 48);
          if ((v58 & v57) != 0)
          {
            while (*(v59 + v55) != v52)
            {
              v55 = (v55 + 1) & v54;
              v56 = v55 >> 6;
              v57 = *(v49 + 8 * (v55 >> 6));
              v58 = 1 << v55;
              if (((1 << v55) & v57) == 0)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
LABEL_59:
            *(v49 + 8 * v56) = v58 | v57;
            *(v59 + v55) = v52;
            v50 = *(v47 + 16);
            v40 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v40)
            {
              __break(1u);
              goto LABEL_97;
            }

            *(v47 + 16) = v51;
          }

          ++v48;
        }

        while (v48 != 7);
        v128[0] = v122;
        Calendar.ComponentSet.init(_:)(v47, &v125);
        if (one-time initialization token for validCalendarRange != -1)
        {
          swift_once();
        }

        v60 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v46)
        {
          v60 = v46;
        }

        if (*&static Date.validCalendarRange >= v60)
        {
          v60 = *&static Date.validCalendarRange;
        }

        v123 = v60;
        Calendar._dateComponents(_:from:)(&v125, &v123, v131);
        BYTE4(v125) = 1;
        *(&v125 + 1) = 0;
        *&v127 = v119;
        *(&v127 + 1) = v117;
        LODWORD(v125) = 0x10000;
        swift_unknownObjectRetain();
        v61 = v116;
        os_unfair_lock_lock((v116 + 24));
        v62 = *(v116 + 16);
        if (!*(v62 + 16) || (v63 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v64 & 1) == 0))
        {
          os_unfair_lock_unlock((v116 + 24));
          goto LABEL_77;
        }

        v114 = *(*(v62 + 56) + 16 * v63);
        v65 = *(*(v62 + 56) + 16 * v63);
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v116 + 24));
        if (v65)
        {
          goto LABEL_95;
        }

LABEL_77:
        type metadata accessor for _CalendarGregorian();
        v115 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, 255, type metadata accessor for _CalendarGregorian);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_181232B40;
        *(v22 + 32) = xmmword_181232B50;
        *(v22 + 48) = 2299161;
        *(v22 + 80) = 0x4290000000000000;
        *(v22 + 128) = 0;
        *(v22 + 96) = 0;
        *(v22 + 104) = 0;
        *(v22 + 136) = 1;
        *(v22 + 144) = 0;
        *(v22 + 152) = 1;
        type metadata accessor for _LocaleUnlocalized();
        inited = swift_initStaticObject();
        v66 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized, 255, type metadata accessor for _LocaleUnlocalized);
        v67 = static TimeZoneCache.cache;
        os_unfair_lock_lock((static TimeZoneCache.cache + 120));
        if (*(v67 + 32))
        {
          v3 = *(v67 + 40);
          v68 = *(v67 + 32);
        }

        else
        {
          v68 = *(v67 + 16);
          if (v68)
          {
            v3 = *(v67 + 24);
            swift_unknownObjectRetain();
          }

          else
          {
            TimeZoneCache.State.findCurrentTimeZone()(v128);
            v3 = *(&v128[0] + 1);
            v68 = *&v128[0];
            *(v67 + 16) = *&v128[0];
            *(v67 + 24) = v3;
            swift_unknownObjectRetain();
            v61 = v116;
            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v67 + 120));
        *(v22 + 112) = v68;
        *(v22 + 120) = v3;
        *(v22 + 56) = xmmword_181232B60;
        *(v22 + 72) = 0xC208951B28000000;
        *(v22 + 96) = inited;
        *(v22 + 104) = v66;
        swift_unknownObjectRelease();
        *(v22 + 128) = 2;
        *(v22 + 136) = 0;
        *(v22 + 144) = 4;
        *(v22 + 152) = 0;
        *(v22 + 88) = 7;
        os_unfair_lock_lock((v61 + 24));
        v69 = *(v61 + 16);
        if (*(v69 + 16))
        {
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(7);
          if (v71)
          {
            v72 = *(*(v69 + 56) + 16 * v70);
            goto LABEL_94;
          }
        }

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v128[0] = *(v61 + 16);
        v35 = *&v128[0];
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(7);
        v75 = *(v35 + 16);
        v76 = (v74 & 1) == 0;
        v40 = __OFADD__(v75, v76);
        v77 = v75 + v76;
        if (v40)
        {
          goto LABEL_99;
        }

        v78 = v74;
        if (*(v35 + 24) < v77)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, isUniquelyReferenced_nonNull_native);
          v79 = *&v128[0];
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(7);
          if ((v78 & 1) != (v80 & 1))
          {
            goto LABEL_136;
          }

          if (v78)
          {
LABEL_89:
            v81 = (*(v79 + 56) + 16 * v36);
            v82 = v115;
            *v81 = v22;
            v81[1] = v115;
            swift_unknownObjectRelease();
LABEL_93:
            *(v61 + 16) = v79;
            *&v72 = v22;
            *(&v72 + 1) = v82;
LABEL_94:
            v114 = v72;
            swift_unknownObjectRetain();
            os_unfair_lock_unlock((v61 + 24));

LABEL_95:
            v126 = v114;
            *&v128[0] = v119;
            *(&v128[0] + 1) = v117;
            Calendar.timeZone.setter(v128);
            v128[0] = v125;
            v128[1] = v126;
            v128[2] = v127;
            LOBYTE(v123) = 0;
            closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)(&v130, 129, v128, v131, &v123, 0, 0, &v125);
            v83 = v125;
            outlined destroy of DateComponents.ISO8601FormatStyle(v128);
            v125 = v83;
            specialized String.withUTF8<A>(_:)(&v125);
            outlined destroy of DateComponents(v131);
            swift_unknownObjectRelease();

            *&v125 = 12092;
            *(&v125 + 1) = 0xE200000000000000;
            specialized String.withUTF8<A>(_:)(&v125);

            _XMLPlistEncodingFormat.Writer.append(_:)("date", 4);
            *&v125 = 2622;
            *(&v125 + 1) = 0xE200000000000000;
            specialized String.withUTF8<A>(_:)(&v125);
          }

LABEL_92:
          specialized _NativeDictionary._insert(at:key:value:)(v36, 7, v22, v79);
          v82 = v115;
          goto LABEL_93;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v79 = v35;
          if (v74)
          {
            goto LABEL_89;
          }

          goto LABEL_92;
        }

        v98 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
        v99 = static _DictionaryStorage.copy(original:)();
        v79 = v99;
        if (!*(v35 + 16))
        {
LABEL_132:

          v36 = v98;
          v61 = v116;
          if (v78)
          {
            goto LABEL_89;
          }

          goto LABEL_92;
        }

        v100 = (v99 + 64);
        v113 = (v35 + 64);
        v101 = ((1 << *(v79 + 32)) + 63) >> 6;
        if (v79 != v35 || v100 >= &v113[8 * v101])
        {
          memmove(v100, v113, 8 * v101);
        }

        v102 = 0;
        *(v79 + 16) = *(v35 + 16);
        v103 = 1 << *(v35 + 32);
        v104 = *(v35 + 64);
        v105 = -1;
        if (v103 < 64)
        {
          v105 = ~(-1 << v103);
        }

        v106 = v105 & v104;
        v107 = (v103 + 63) >> 6;
        if ((v105 & v104) != 0)
        {
          do
          {
            v108 = __clz(__rbit64(v106));
            v106 &= v106 - 1;
LABEL_130:
            v111 = v108 | (v102 << 6);
            v112 = *(*(v35 + 56) + 16 * v111);
            *(*(v79 + 48) + v111) = *(*(v35 + 48) + v111);
            *(*(v79 + 56) + 16 * v111) = v112;
            swift_unknownObjectRetain();
          }

          while (v106);
        }

        v109 = v102;
        while (1)
        {
          v102 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            goto LABEL_135;
          }

          if (v102 >= v107)
          {
            goto LABEL_132;
          }

          v110 = *&v113[8 * v102];
          ++v109;
          if (v110)
          {
            v108 = __clz(__rbit64(v110));
            v106 = (v110 - 1) & v110;
            goto LABEL_130;
          }
        }
      }
    }

    swift_unknownObjectRetain();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v131[0] = *(v29 + 16);
    v35 = v131[0];
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    v38 = *(v35 + 16);
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      __break(1u);
LABEL_99:
      __break(1u);
    }

    else
    {
      LOBYTE(inited) = v37;
      if (*(v35 + 24) < v41)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, v34);
        v42 = v131[0];
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(7);
        if ((inited & 1) != (v43 & 1))
        {
LABEL_136:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v12 = &unk_1ED439000;
        if (inited)
        {
          goto LABEL_50;
        }

        goto LABEL_53;
      }

      if (v34)
      {
        v42 = v35;
        v12 = &unk_1ED439000;
        if (v37)
        {
LABEL_50:
          v44 = (*(v42 + 56) + 16 * v36);
          v45 = v122;
          *v44 = v22;
          v44[1] = v122;
          swift_unknownObjectRelease();
LABEL_54:
          *(v29 + 16) = v42;
          *&v33 = v22;
          *(&v33 + 1) = v45;
          goto LABEL_55;
        }

LABEL_53:
        specialized _NativeDictionary._insert(at:key:value:)(v36, 7, v22, v42);
        v45 = v122;
        goto LABEL_54;
      }
    }

    v118 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v84 = static _DictionaryStorage.copy(original:)();
    v42 = v84;
    if (*(v35 + 16))
    {
      v85 = (v84 + 64);
      v120 = (v35 + 64);
      v86 = ((1 << *(v42 + 32)) + 63) >> 6;
      if (v42 != v35 || v85 >= &v120[8 * v86])
      {
        memmove(v85, v120, 8 * v86);
      }

      v87 = 0;
      *(v42 + 16) = *(v35 + 16);
      v88 = 1 << *(v35 + 32);
      v89 = *(v35 + 64);
      v90 = -1;
      if (v88 < 64)
      {
        v90 = ~(-1 << v88);
      }

      v91 = v90 & v89;
      v92 = (v88 + 63) >> 6;
      if ((v90 & v89) != 0)
      {
        do
        {
          v93 = __clz(__rbit64(v91));
          v91 &= v91 - 1;
LABEL_113:
          v96 = v93 | (v87 << 6);
          v97 = *(*(v35 + 56) + 16 * v96);
          *(*(v42 + 48) + v96) = *(*(v35 + 48) + v96);
          *(*(v42 + 56) + 16 * v96) = v97;
          swift_unknownObjectRetain();
        }

        while (v91);
      }

      v94 = v87;
      while (1)
      {
        v87 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v87 >= v92)
        {
          goto LABEL_115;
        }

        v95 = *&v120[8 * v87];
        ++v94;
        if (v95)
        {
          v93 = __clz(__rbit64(v95));
          v91 = (v95 - 1) & v95;
          goto LABEL_113;
        }
      }

      __break(1u);
LABEL_135:
      __break(1u);
      swift_willThrow();
      __break(1u);
      goto LABEL_136;
    }

LABEL_115:

    v29 = v116;
    v36 = v118;
    v12 = &unk_1ED439000;
    if (inited)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  if (v5 == 6)
  {

    _XMLPlistEncodingFormat.Writer.appendArray(_:indentation:)(v16, a2);
  }

  if (v5 == 7)
  {

    _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)(v6, a2);
  }

  if (!(v3 | v4))
  {
    v131[0] = 60;
    v131[1] = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v131);

    _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
    v131[0] = 62;
    v131[1] = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v131);

    _XMLPlistEncodingFormat.Writer.append(_:)("$null", 5);
    v131[0] = 12092;
    v131[1] = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v131);

    v8 = "string";
    v9 = 6;
    goto LABEL_24;
  }

  v131[0] = 60;
  v131[1] = 0xE100000000000000;
  specialized String.withUTF8<A>(_:)(v131);

  if (v3 ^ 1 | v4)
  {
    v19 = "false";
    v20 = 5;
  }

  else
  {
    v19 = "true";
    v20 = 4;
  }

  _XMLPlistEncodingFormat.Writer.append(_:)(v19, v20);
  v131[0] = 671279;
  v131[1] = 0xE300000000000000;
LABEL_38:
  specialized String.withUTF8<A>(_:)(v131);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation23_XMLPlistEncodingFormatV9ReferenceO3key_AJ5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceO3key_AG5valuetGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

__int128 *PropertyListEncoder._encodeXML<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PropertyListEncoder.encodeToTopLevelContainerXML<A>(_:)(a1, a2, a3, &__src);
  if (!v4)
  {
    v7 = __src;
    v8 = v36;
    if (v36 > 3u)
    {
      if (v36 == 4)
      {
        v25 = type metadata accessor for EncodingError();
        swift_allocError();
        v27 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v27[3] = a2;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
        (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
        *&__src = 0;
        *(&__src + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        v29 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v29);

        p_src = &__src;
        MEMORY[0x1865CB0E0](0xD000000000000028, 0x8000000181485F60);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B30], v25);
        swift_willThrow();
        return p_src;
      }

      if (v36 == 8)
      {
        if ((__src - 1) <= 1)
        {
          v15 = type metadata accessor for EncodingError();
          swift_allocError();
          v17 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
          v17[3] = a2;
          v18 = __swift_allocate_boxed_opaque_existential_0(v17);
          (*(*(a2 - 8) + 16))(v18, a1, a2);
          *&__src = 0;
          *(&__src + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(55);
          MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
          v19 = _typeName(_:qualified:)();
          MEMORY[0x1865CB0E0](v19);

          p_src = &__src;
          MEMORY[0x1865CB0E0](0xD00000000000002BLL, 0x8000000181485FF0);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v15);
          swift_willThrow();
          outlined consume of _XMLPlistEncodingFormat.Reference(v7, *(&v7 + 1), 8u);
          return p_src;
        }

        if (__src == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      if (v36 - 1 < 3)
      {
        v9 = type metadata accessor for EncodingError();
        swift_allocError();
        v39 = *(&v7 + 1);
        v11 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v11[3] = a2;
        v12 = __swift_allocate_boxed_opaque_existential_0(v11);
        (*(*(a2 - 8) + 16))(v12, a1, a2);
        *&__src = 0;
        *(&__src + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        v13 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v13);

        v14 = " encoded as number property list fragment.";
LABEL_11:
        p_src = &__src;
        MEMORY[0x1865CB0E0](0xD00000000000002ALL, (v14 - 32) | 0x8000000000000000);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(*(&v7 + 1), *MEMORY[0x1E69E6B30], v9);
        swift_willThrow();
        outlined consume of _XMLPlistEncodingFormat.Reference(v7, v39, v8);
        return p_src;
      }

      if (!v36)
      {
LABEL_10:
        v9 = type metadata accessor for EncodingError();
        swift_allocError();
        v39 = *(&v7 + 1);
        v21 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v21[3] = a2;
        v22 = __swift_allocate_boxed_opaque_existential_0(v21);
        (*(*(a2 - 8) + 16))(v22, a1, a2);
        *&__src = 0;
        *(&__src + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        v23 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v23);

        v14 = " encoded as string property list fragment.";
        goto LABEL_11;
      }
    }

    *&__src = swift_slowAlloc();
    *(&__src + 1) = 0x2000;
    v36 = 0;
    v37 = 0;
    v38 = 0xC000000000000000;
    _XMLPlistEncodingFormat.Writer.append(_:)("<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>\n", 164);
    v33 = v7;
    v34 = v8;
    _XMLPlistEncodingFormat.Writer.append(_:indentation:)(&v33, 0);
    *&v33 = 0x3E7473696C702F3CLL;
    *(&v33 + 1) = 0xE90000000000000ALL;
    specialized String.withUTF8<A>(_:)(&v33);

    if (v36 >= 1)
    {
      if (__src)
      {
        v30 = (__src + v36);
      }

      else
      {
        v30 = 0;
      }

      Data._Representation.append(contentsOf:)(__src, v30);
    }

    p_src = v37;
    v31 = v38;
    v32 = __src;
    if (__src)
    {
      outlined copy of Data._Representation(v37, v38);
      MEMORY[0x1865D2690](v32, -1, -1);
    }

    else
    {
      outlined copy of Data._Representation(v37, v38);
    }

    outlined consume of _XMLPlistEncodingFormat.Reference(v7, *(&v7 + 1), v8);
    outlined consume of Data._Representation(p_src, v31);
  }

  return p_src;
}

uint64_t __PlistEncoderXML.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1 + 2;
  result = (*(*v1 + 240))();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__s15ContiguousArrayVyAEGGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC0];
    v7 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
      v7 = *v4;
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      v7 = *v4;
    }

    v11 = 0;
    *(v7 + 16) = v10 + 1;
    v12 = v7 + 24 * v10;
    *(v12 + 32) = v6;
    *(v12 + 40) = 0;
    *(v12 + 48) = 6;
    *v4 = v7;
    goto LABEL_10;
  }

  v13 = *(*v4 + 16);
  if (!v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = *v4 + 24 * v13;
  if (*(v14 + 24) != 6)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v6 = *(v14 + 8);
  v11 = *(v14 + 16);

LABEL_10:
  v15 = v2[5];
  a1[3] = &unk_1EEEED3E0;
  a1[4] = lazy protocol witness table accessor for type _PlistUnkeyedEncodingContainerXML and conformance _PlistUnkeyedEncodingContainerXML();
  v16 = swift_allocObject();
  *a1 = v16;
  *(v16 + 48) = v15;
  *(v16 + 16) = v2;
  *(v16 + 24) = v6;
  *(v16 + 32) = v11;
  *(v16 + 40) = 6;
}

uint64_t sub_1809AB934()
{

  outlined consume of _XMLPlistEncodingFormat.Reference(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type _PlistUnkeyedEncodingContainerXML and conformance _PlistUnkeyedEncodingContainerXML()
{
  result = lazy protocol witness table cache variable for type _PlistUnkeyedEncodingContainerXML and conformance _PlistUnkeyedEncodingContainerXML;
  if (!lazy protocol witness table cache variable for type _PlistUnkeyedEncodingContainerXML and conformance _PlistUnkeyedEncodingContainerXML)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistUnkeyedEncodingContainerXML and conformance _PlistUnkeyedEncodingContainerXML);
  }

  return result;
}

uint64_t specialized closure #1 in __PlistEncoderXML.wrapGeneric<A, B>(_:for:_:)(uint64_t a1)
{
  v4[3] = type metadata accessor for __PlistEncoderXML();
  v4[4] = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistEncoderXML and conformance __PlistEncoderXML, v2, type metadata accessor for __PlistEncoderXML);
  v4[0] = a1;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t __PlistEncoderXML.container<A>(keyedBy:)()
{
  v1 = v0 + 2;
  result = (*(*v0 + 240))();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__SDyA2EGGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x1E69E7CC8];
    v4 = *v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      v4 = *v1;
    }

    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v7 >= v6 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      v4 = *v1;
    }

    *(v4 + 16) = v7 + 1;
    v8 = v4 + 24 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = 0;
    *(v8 + 48) = 7;
    *v1 = v4;
    goto LABEL_10;
  }

  v9 = *(*v1 + 16);
  if (v9)
  {
    if (*(*v1 + 24 * v9 + 24) == 7)
    {

LABEL_10:
      type metadata accessor for _PlistKeyedEncodingContainerXML();

      swift_getWitnessTable();
      return KeyedEncodingContainer.init<A>(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _XMLPlistEncodingFormat.Reference and conformance _XMLPlistEncodingFormat.Reference()
{
  result = lazy protocol witness table cache variable for type _XMLPlistEncodingFormat.Reference and conformance _XMLPlistEncodingFormat.Reference;
  if (!lazy protocol witness table cache variable for type _XMLPlistEncodingFormat.Reference and conformance _XMLPlistEncodingFormat.Reference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _XMLPlistEncodingFormat.Reference and conformance _XMLPlistEncodingFormat.Reference);
  }

  return result;
}

char *_PlistKeyedEncodingContainerXML.encode<A>(_:forKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a3;
  v10 = *(a3 + 16);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v82 - v13;
  v88 = v5;
  v15 = *v5;
  v95 = a4;
  v96 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v17 = *(v15 + 40);
  v18 = *(v10 - 8);
  v19 = *(v18 + 16);
  v87 = a2;
  v19(v14, a2, v10);
  (*(v18 + 56))(v14, 0, 1, v10);
  v21 = v95;
  v20 = v96;
  v22 = __swift_project_boxed_opaque_existential_1(v94, v95);
  if (swift_dynamicCastMetatype())
  {
    v24 = *(v12 + 8);
    v23 = v12 + 8;
    v25 = v24(v14, v11);
    v26 = MEMORY[0x1EEE9AC00](v25);
    (*(v28 + 16))(&v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v21, v26);
    swift_dynamicCast();
    v29 = v90;
    v30 = 4;
    v31 = 0;
  }

  else if (swift_dynamicCastMetatype())
  {
    v32 = *(v12 + 8);
    v23 = v12 + 8;
    v33 = v32(v14, v11);
    v34 = MEMORY[0x1EEE9AC00](v33);
    (*(v36 + 16))(&v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v21, v34);
    swift_dynamicCast();
    v29 = v90;
    v31 = v91;
    v30 = 5;
  }

  else
  {
    v86 = &v82;
    MEMORY[0x1EEE9AC00](0);
    *(&v82 - 6) = v21;
    *(&v82 - 5) = v10;
    v58 = *(v89 + 24);
    *(&v82 - 4) = v20;
    *(&v82 - 3) = v58;
    *(&v82 - 2) = v22;

    v59 = v97;
    __PlistEncoderXML._wrapGeneric<A>(_:for:_:)(partial apply for closure #1 in __PlistEncoderXML.wrapGeneric<A, B>(_:for:_:), (&v82 - 8), v17, v14, v10, v58, v92);
    if (v59)
    {

      (*(v12 + 8))(v14, v11);
      return __swift_destroy_boxed_opaque_existential_1(v94);
    }

    v97 = 0;

    v60 = *(v12 + 8);
    v23 = v12 + 8;
    v60(v14, v11);
    v30 = v93;
    if (v93 == 255)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__SDyA2EGGMd);
      v30 = 7;
      v29 = swift_allocObject();
      v31 = 0;
      *(v29 + 16) = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v29 = v92[0];
      v31 = v92[1];
    }
  }

  v86 = v31;
  __swift_destroy_boxed_opaque_existential_1(v94);
  v37 = v88[1];
  v38 = *(v88 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v38 != 7)
  {
    goto LABEL_39;
  }

  v41 = result;
  v42 = v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94[0] = *(v37 + 16);
  v44 = v94[0];
  *(v37 + 16) = 0x8000000000000000;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42, 0);
  v47 = *(v44 + 16);
  v48 = (v46 & 1) == 0;
  v49 = __OFADD__(v47, v48);
  v50 = v47 + v48;
  if (v49)
  {
    __break(1u);
LABEL_22:
    v83 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v61 = static _DictionaryStorage.copy(original:)();
    v51 = v61;
    if (!*(v44 + 16))
    {
LABEL_37:

      v45 = v83;
      goto LABEL_12;
    }

    result = (v61 + 64);
    v62 = (v44 + 64);
    v63 = ((1 << *(v51 + 32)) + 63) >> 6;
    v82 = v44 + 64;
    if (v51 != v44 || result >= &v62[8 * v63])
    {
      result = memmove(result, v62, 8 * v63);
    }

    v64 = 0;
    *(v51 + 16) = *(v44 + 16);
    v65 = 1 << *(v44 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v44 + 64);
    v68 = (v65 + 63) >> 6;
    v84 = v68;
    if (v67)
    {
      do
      {
        v69 = __clz(__rbit64(v67));
        v89 = (v67 - 1) & v67;
LABEL_35:
        v72 = 24 * (v69 | (v64 << 6));
        v73 = *(v44 + 48) + v72;
        v74 = *v73;
        v75 = *(v73 + 8);
        v76 = *(v44 + 56) + v72;
        v77 = *v76;
        v87 = *(v76 + 8);
        v78 = v87;
        v88 = v77;
        v79 = *(v51 + 48) + v72;
        v80 = *(v73 + 16);
        LODWORD(v76) = *(v76 + 16);
        v85 = v76;
        *v79 = v74;
        *(v79 + 8) = v75;
        *(v79 + 16) = v80;
        v81 = *(v51 + 56) + v72;
        *v81 = v77;
        *(v81 + 8) = v78;
        *(v81 + 16) = v76;
        outlined copy of _XMLPlistEncodingFormat.Reference(v74, v75, v80);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v88, v87, v85);
        v68 = v84;
        v67 = v89;
      }

      while (v89);
    }

    v70 = v64;
    while (1)
    {
      v64 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v64 >= v68)
      {
        goto LABEL_37;
      }

      v71 = *(v82 + 8 * v64);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v89 = (v71 - 1) & v71;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v23 = v46;
  if (*(v44 + 24) >= v50)
  {
LABEL_10:
    if (isUniquelyReferenced_nonNull_native)
    {
      v51 = v44;
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, isUniquelyReferenced_nonNull_native);
  v51 = v94[0];
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42, 0);
  if ((v23 & 1) != (v52 & 1))
  {
    v45 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  v53 = v86;
  if (v23)
  {
    v54 = *(v51 + 56) + 24 * v45;
    v55 = *v54;
    v56 = *(v54 + 8);
    *v54 = v29;
    *(v54 + 8) = v53;
    v57 = *(v54 + 16);
    *(v54 + 16) = v30;
    outlined consume of _XMLPlistEncodingFormat.Reference(v55, v56, v57);
  }

  else
  {
    result = specialized _NativeDictionary._insert(at:key:value:)(v45, v41, v42, 0, v29, v86, v30, v51);
  }

  *(v37 + 16) = v51;
  return result;
}

uint64_t __PlistEncoderXML._wrapGeneric<A>(_:for:_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v55 = a4;
  v8 = v7;
  v50 = a6;
  v59 = a3;
  v52 = a2;
  v53 = a1;
  v47 = a7;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - v18;
  v20 = v8[2];
  v48 = (v8 + 2);
  v51 = *(v20 + 16);
  v21 = *(v13 + 16);
  v21(&v47 - v18, v55, v12, v17);
  (v21)(v15, v19, v12);
  if ((*(v10 + 48))(v15, 1, a5) == 1)
  {
    v22 = *(v13 + 8);
    v22(v19, v12);
    v22(v15, v12);
    v23 = v59;

    goto LABEL_9;
  }

  v24 = *(v10 + 32);
  v25 = v49;
  v24(v49, v15, a5);
  v26 = v24;
  v23 = swift_allocObject();
  v27 = v50;
  *(v23 + 40) = a5;
  *(v23 + 48) = v27;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v23 + 16));
  v26(boxed_opaque_existential_0, v25, a5);
  (*(v13 + 8))(v19, v12);
  v29 = v59;
  *(v23 + 56) = v59;
  if (!(v29 >> 62))
  {
    v30 = v29 + 8;
LABEL_7:
    v31 = *v30;

    v35 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    goto LABEL_8;
  }

  if (v29 >> 62 == 1)
  {
    v30 = ((v29 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_7;
  }

  v35 = 1;
LABEL_8:
  *(v23 + 64) = v35;
LABEL_9:
  v37 = v8[5];
  v36 = v8[6];
  v8[5] = v23;
  if (!(v23 >> 62))
  {
    v38 = (v23 + 64);
    goto LABEL_13;
  }

  if (v23 >> 62 == 1)
  {
    v38 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_13:
    v39 = *v38;

    goto LABEL_15;
  }

  v39 = 0;
LABEL_15:
  v40 = v53;
  v41 = v54;
  v8[6] = v39;
  v40(v8);
  if (v41)
  {

    v8[5] = v37;

    v8[6] = v36;
    if (v51 >= *(v8[2] + 16))
    {
      return swift_willThrow();
    }

    v26 = v48;
    specialized ContiguousArray._customRemoveLast()(&v56);
    v34 = v58;
    v32 = v56;
    v33 = v57;
    if (v58 != 255)
    {
      outlined consume of _XMLPlistEncodingFormat.Reference?(v56, v57, v58);
      return swift_willThrow();
    }

LABEL_27:
    outlined consume of _XMLPlistEncodingFormat.Reference?(v32, v33, v34);
    specialized ContiguousArray.remove(at:)(*(*v26 + 16) - 1, &v56);
    outlined consume of _XMLPlistEncodingFormat.Reference(v56, v57, v58);
    return swift_willThrow();
  }

  v8[5] = v37;

  v8[6] = v36;
  if (v51 >= *(v8[2] + 16))
  {
    v46 = v47;
    *v47 = 0;
    v46[1] = 0;
    v44 = -1;
  }

  else
  {
    v43 = v48;
    specialized ContiguousArray._customRemoveLast()(&v56);
    v44 = v58;
    result = v56;
    v45 = v57;
    if (v58 == 255)
    {
      outlined consume of _XMLPlistEncodingFormat.Reference?(v56, v57, 0xFFu);
      specialized ContiguousArray.remove(at:)(*(*v43 + 16) - 1, &v56);
      result = v56;
      v45 = v57;
      v44 = v58;
    }

    v46 = v47;
    *v47 = result;
    v46[1] = v45;
  }

  *(v46 + 16) = v44;
  return result;
}

uint64_t outlined copy of _XMLPlistEncodingFormat.Reference(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 5u)
  {
    if (a3 == 6 || a3 == 7)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 5)
    {
      return outlined copy of Data._Representation(result, a2);
    }
  }

  else
  {
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = a8[6] + 24 * result;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4;
  v9 = a8[7] + 24 * result;
  *v9 = a5;
  *(v9 + 8) = a6;
  *(v9 + 16) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t outlined consume of _XMLPlistEncodingFormat.Reference(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 5u)
  {
    if (a3 == 6 || a3 == 7)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 5)
    {
      return outlined consume of Data._Representation(result, a2);
    }
  }

  else
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation23_XMLPlistEncodingFormatV9ReferenceO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

uint64_t specialized ContiguousArray._customRemoveLast()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 24 * v5;
    v7 = *(v6 + 24);
    *a1 = *(v6 + 8);
    *(a1 + 16) = v7;
    *(v3 + 16) = v5 - 1;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __PlistEncoderXML.__deallocating_deinit()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 120);
  outlined consume of _XMLPlistEncodingFormat.Reference(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  outlined consume of _XMLPlistEncodingFormat.Reference(v1, v2, v5);
  outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, v6);

  return swift_deallocClassInstance();
}

void _XMLPlistEncodingFormat.Writer.append(_:)(char *__src, int64_t __len)
{
  if (__len < 1)
  {
    return;
  }

  v4 = *(v2 + 16);
  if (__len < 0x2000)
  {
    v5 = 0x2000 - v4;
    if (__OFSUB__(0x2000, v4))
    {
      __break(1u);
    }

    else
    {
      if (v5 >= __len)
      {
        v6 = __len;
      }

      else
      {
        v6 = 0x2000 - v4;
      }

      if (v5 < __len)
      {
        goto LABEL_8;
      }

      if (!*v2)
      {
LABEL_25:
        __break(1u);
        return;
      }

      if (__src)
      {
        memmove((*v2 + v4), __src, __len);
      }

      if (!__OFADD__(v4, v6))
      {
        *(v2 + 16) = v4 + v6;
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_8:
  if (v4 >= 1)
  {
    if (*v2)
    {
      v7 = (*v2 + v4);
    }

    else
    {
      v7 = 0;
    }

    v8 = __src;
    Data._Representation.append(contentsOf:)(*v2, v7);
    __src = v8;
    *(v2 + 16) = 0;
  }

  if (__src)
  {
    v9 = &__src[__len];
  }

  else
  {
    v9 = 0;
  }

  Data._Representation.append(contentsOf:)(__src, v9);
}

uint64_t _XMLPlistEncodingFormat.Writer.appendArray(_:indentation:)(uint64_t a1, Swift::Int a2)
{
  v3 = v2;
  v176[36] = *MEMORY[0x1E69E9840];
  v164 = *(a1 + 16);
  if (!v164)
  {
    v176[0] = 60;
    v176[1] = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v176);

    _XMLPlistEncodingFormat.Writer.append(_:)("array", 5);
    v176[0] = 671279;
    v176[1] = 0xE300000000000000;
    specialized String.withUTF8<A>(_:)(v176);
  }

  v176[0] = 60;
  v176[1] = 0xE100000000000000;
  specialized String.withUTF8<A>(_:)(v176);

  _XMLPlistEncodingFormat.Writer.append(_:)("array", 5);
  v176[0] = 2622;
  v176[1] = 0xE200000000000000;
  specialized String.withUTF8<A>(_:)(v176);

  if (__OFADD__(a2, 1))
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v163 = a1 + 32;
  v165 = a2 + 1;

  v6 = 0;
  v148 = a2;
  v162 = a2 + 5;
  while (1)
  {
    v10 = v163 + 24 * v6;
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v166 = v6;
    v167 = *v10;
    outlined copy of _XMLPlistEncodingFormat.Reference(*v10, v11, v12);
    v13 = v165;
    v14 = v162;
    if (v165 < 4)
    {
      if (v165 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }

    do
    {
      v175[0] = xmmword_181248D60;
      v15 = v3[2];
      if (__OFSUB__(0x2000, v15))
      {
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      if (0x2000 - v15 < 4)
      {
        if (v15 > 0)
        {
          v18 = &(*v3)[v15];
          if (*v3)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          Data._Representation.append(contentsOf:)(*v3, v19);
          v3[2] = 0;
        }

        Data._Representation.append(contentsOf:)(v175, v175 + 4);
      }

      else
      {
        if (!*v3)
        {
          goto LABEL_202;
        }

        *&(*v3)[v15] = 151587081;
        v16 = __OFADD__(v15, 4);
        v17 = (v15 + 4);
        if (v16)
        {
          goto LABEL_192;
        }

        v3[2] = v17;
      }

      v14 -= 4;
    }

    while (v14 >= 8);
    v13 = v14 - 4;
    if (v14 == 5)
    {
LABEL_26:
      v175[0] = xmmword_181248D70;
      _XMLPlistEncodingFormat.Writer.append(_:)(v175, 1);
      goto LABEL_28;
    }

LABEL_10:
    if (v13 == 2)
    {
      v175[0] = xmmword_181248D80;
      _XMLPlistEncodingFormat.Writer.append(_:)(v175, 2);
LABEL_28:
    }

    else if (v13 == 3)
    {
      v175[0] = xmmword_181248D90;
      _XMLPlistEncodingFormat.Writer.append(_:)(v175, 3);
      goto LABEL_28;
    }

    if (v12 > 3)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&v175[0] = 60;
        *(&v175[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v175);

        _XMLPlistEncodingFormat.Writer.append(_:)("real", 4);
        *&v175[0] = 62;
        *(&v175[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v175);

        if ((v167 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
        {
          v30 = 0x74696E69666E692DLL;
          if (*&v167 > 0.0)
          {
            v30 = 0x74696E69666E692BLL;
          }

          v31 = 0xE900000000000079;
        }

        else
        {
          v44 = Double.description.getter();
          v46 = v45;
          *&v175[0] = v44;
          *(&v175[0] + 1) = v45;

          v47._countAndFlagsBits = 12334;
          v47._object = 0xE200000000000000;
          v48 = String.hasSuffix(_:)(v47);

          if (v48)
          {
            if ((v46 & 0x2000000000000000) != 0)
            {
              v49 = HIBYTE(v46) & 0xF;
            }

            else
            {
              v49 = v44 & 0xFFFFFFFFFFFFLL;
            }

            v50 = String.index(_:offsetBy:limitedBy:)();
            if (v51)
            {
              __break(1u);
              goto LABEL_206;
            }

            if (4 * v49 < v50 >> 14)
            {
              goto LABEL_199;
            }

            String.removeSubrange(_:)();
          }

          v31 = *(&v175[0] + 1);
          v30 = *&v175[0];
        }

        *&v175[0] = v30;
        *(&v175[0] + 1) = v31;
        specialized String.withUTF8<A>(_:)(v175);

        *&v175[0] = 12092;
        *(&v175[0] + 1) = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v175);

        v22 = "real";
        v23 = 4;
        goto LABEL_77;
      }

      *&v175[0] = 60;
      *(&v175[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v175);

      _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
      *&v175[0] = 62;
      *(&v175[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v175);

      *&v171 = v167;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
    }

    else
    {
      if (!v12)
      {
        *&v175[0] = 60;
        *(&v175[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v175);

        _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
        *&v175[0] = 62;
        *(&v175[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v175);

        *&v175[0] = v167;
        *(&v175[0] + 1) = v11;

        specialized String.withUTF8<A>(_:)(v175);

        *&v175[0] = 12092;
        *(&v175[0] + 1) = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v175);

        _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
        *&v175[0] = 2622;
        *(&v175[0] + 1) = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v175);
        v7 = v167;
        v8 = v11;
        v9 = 0;
        goto LABEL_5;
      }

      *&v175[0] = 60;
      *(&v175[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v175);

      _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
      *&v175[0] = 62;
      *(&v175[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v175);

      *&v171 = v167;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    }

    *&v175[0] = BinaryInteger.description.getter();
    *(&v175[0] + 1) = v21;
    specialized String.withUTF8<A>(_:)(v175);

    *&v175[0] = 12092;
    *(&v175[0] + 1) = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v175);

    v22 = "integer";
    v23 = 7;
LABEL_77:
    _XMLPlistEncodingFormat.Writer.append(_:)(v22, v23);
    *&v175[0] = 2622;
    *(&v175[0] + 1) = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v175);
LABEL_6:

LABEL_7:
    v6 = v166 + 1;
    if (v166 + 1 == v164)
    {

      _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v148);
      *&v175[0] = 12092;
      *(&v175[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v175);

      _XMLPlistEncodingFormat.Writer.append(_:)("array", 5);
      *&v175[0] = 2622;
      *(&v175[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v175);
    }
  }

  if (v12 <= 5)
  {
    if (v12 == 4)
    {
      *&v175[0] = 60;
      *(&v175[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v175);

      _XMLPlistEncodingFormat.Writer.append(_:)("date", 4);
      *&v175[0] = 62;
      *(&v175[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v175);

      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v24 = qword_1ED440450;
      os_unfair_lock_lock((qword_1ED440450 + 24));
      v25 = *(v24 + 16);
      v155 = v11;
      v161 = v24;
      if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v27 & 1) != 0))
      {
        v158 = *(*(v25 + 56) + 16 * v26);
        v28 = *(*(v25 + 56) + 16 * v26);
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v24 + 24));
        if (v28)
        {
LABEL_112:
          v171 = v158;
          if (one-time initialization token for cache != -1)
          {
            swift_once();
          }

          v156 = *(&xmmword_1ED440468 + 1);
          v175[0] = xmmword_1ED440468;
          v160 = xmmword_1ED440468;
          swift_unknownObjectRetain_n();
          Calendar.timeZone.setter(v175);
          v150 = v171;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
          v74 = static _SetStorage.allocate(capacity:)();
          v75 = 0;
          v76 = v74 + 56;
          do
          {
            v79 = outlined read-only object #0 of _XMLPlistEncodingFormat.Writer.appendArray(_:indentation:)[v75 + 32];
            Hasher.init(_seed:)();
            MEMORY[0x1865CD060](v79);
            v80 = Hasher._finalize()();
            v81 = ~(-1 << *(v74 + 32));
            v82 = v80 & v81;
            v83 = (v80 & v81) >> 6;
            v84 = *(v76 + 8 * v83);
            v85 = 1 << (v80 & v81);
            v86 = *(v74 + 48);
            if ((v85 & v84) != 0)
            {
              while (*(v86 + v82) != v79)
              {
                v82 = (v82 + 1) & v81;
                v83 = v82 >> 6;
                v84 = *(v76 + 8 * (v82 >> 6));
                v85 = 1 << v82;
                if (((1 << v82) & v84) == 0)
                {
                  goto LABEL_115;
                }
              }
            }

            else
            {
LABEL_115:
              *(v76 + 8 * v83) = v85 | v84;
              *(v86 + v82) = v79;
              v77 = *(v74 + 16);
              v16 = __OFADD__(v77, 1);
              v78 = v77 + 1;
              if (v16)
              {
                goto LABEL_193;
              }

              *(v74 + 16) = v78;
            }

            ++v75;
          }

          while (v75 != 7);
          v170 = v150;
          Calendar.ComponentSet.init(_:)(v74, &v169);
          if (one-time initialization token for validCalendarRange != -1)
          {
            swift_once();
          }

          v87 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= *&v167)
          {
            v87 = *&v167;
          }

          if (*&static Date.validCalendarRange >= v87)
          {
            v87 = *&static Date.validCalendarRange;
          }

          v168 = v87;
          Calendar._dateComponents(_:from:)(&v169, &v168, v175);
          memcpy(v176, v175, 0x11BuLL);
          BYTE4(v175[0]) = 1;
          *(&v175[0] + 1) = 0;
          *&v175[2] = v160;
          *(&v175[2] + 1) = v156;
          LODWORD(v175[0]) = 0x10000;
          swift_unknownObjectRetain();
          os_unfair_lock_lock((v161 + 24));
          v88 = *(v161 + 16);
          v89 = v167;
          v90 = v155;
          if (*(v88 + 16) && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v92 & 1) != 0))
          {
            v151 = *(*(v88 + 56) + 16 * v91);
            v93 = *(*(v88 + 56) + 16 * v91);
            swift_unknownObjectRetain();
            os_unfair_lock_unlock((v161 + 24));
            if (v93)
            {
LABEL_152:
              v175[1] = v151;
              *&v170 = v160;
              *(&v170 + 1) = v156;
              Calendar.timeZone.setter(&v170);
              v172[0] = v175[0];
              v172[1] = v175[1];
              v172[2] = v175[2];
              LOBYTE(v170) = 0;
              closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)(&v174, 129, v172, v176, &v170, 0, 0, v175);
              v116 = v175[0];
              outlined destroy of DateComponents.ISO8601FormatStyle(v172);
              v175[0] = v116;
              specialized String.withUTF8<A>(_:)(v175);
              outlined destroy of DateComponents(v176);

              swift_unknownObjectRelease();
              _XMLPlistEncodingFormat.Writer.appendClose(_:)(6u, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
              outlined consume of _XMLPlistEncodingFormat.Reference(v89, v90, 4u);
              goto LABEL_7;
            }
          }

          else
          {
            os_unfair_lock_unlock((v161 + 24));
          }

          type metadata accessor for _CalendarGregorian();
          v149 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, 255, type metadata accessor for _CalendarGregorian);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_181232B40;
          *(v94 + 32) = xmmword_181232B50;
          *(v94 + 48) = 2299161;
          *(v94 + 80) = 0x4290000000000000;
          *(v94 + 128) = 0;
          *(v94 + 96) = 0;
          *(v94 + 104) = 0;
          *(v94 + 136) = 1;
          *(v94 + 144) = 0;
          *(v94 + 152) = 1;
          type metadata accessor for _LocaleUnlocalized();
          inited = swift_initStaticObject();
          v95 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized, 255, type metadata accessor for _LocaleUnlocalized);
          v96 = static TimeZoneCache.cache;
          os_unfair_lock_lock((static TimeZoneCache.cache + 120));
          if (*(v96 + 32))
          {
            v97 = *(v96 + 40);
            v98 = *(v96 + 32);
          }

          else
          {
            v98 = *(v96 + 16);
            if (v98)
            {
              v97 = *(v96 + 24);
              swift_unknownObjectRetain();
            }

            else
            {
              TimeZoneCache.State.findCurrentTimeZone()(&v170);
              v97 = *(&v170 + 1);
              v98 = v170;
              *(v96 + 16) = v170;
              *(v96 + 24) = v97;
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
            }
          }

          swift_unknownObjectRetain();
          os_unfair_lock_unlock((v96 + 120));
          *(v94 + 112) = v98;
          *(v94 + 120) = v97;
          *(v94 + 56) = xmmword_181232B60;
          *(v94 + 72) = 0xC208951B28000000;
          *(v94 + 96) = inited;
          *(v94 + 104) = v95;
          swift_unknownObjectRelease();
          *(v94 + 128) = 2;
          *(v94 + 136) = 0;
          *(v94 + 144) = 4;
          *(v94 + 152) = 0;
          *(v94 + 88) = 7;
          v99 = v161;
          os_unfair_lock_lock((v161 + 24));
          v100 = *(v161 + 16);
          if (*(v100 + 16) && (v101 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v102 & 1) != 0))
          {
            v103 = *(*(v100 + 56) + 16 * v101);
            v90 = v155;
          }

          else
          {
            swift_unknownObjectRetain();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v170 = *(v161 + 16);
            v105 = v170;
            v107 = specialized __RawDictionaryStorage.find<A>(_:)(7);
            v108 = *(v105 + 16);
            v109 = (v106 & 1) == 0;
            v110 = v108 + v109;
            if (__OFADD__(v108, v109))
            {
              goto LABEL_195;
            }

            v111 = v106;
            if (*(v105 + 24) >= v110)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v112 = v105;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
                v132 = static _DictionaryStorage.copy(original:)();
                v112 = v132;
                if (*(v105 + 16))
                {
                  v133 = (v132 + 64);
                  v134 = (v105 + 64);
                  v135 = ((1 << *(v112 + 32)) + 63) >> 6;
                  if (v112 != v105 || v133 >= &v134[8 * v135])
                  {
                    memmove(v133, v134, 8 * v135);
                  }

                  v136 = 0;
                  *(v112 + 16) = *(v105 + 16);
                  v137 = 1 << *(v105 + 32);
                  if (v137 < 64)
                  {
                    v138 = ~(-1 << v137);
                  }

                  else
                  {
                    v138 = -1;
                  }

                  v139 = v138 & *(v105 + 64);
                  v140 = (v137 + 63) >> 6;
                  v147 = v140;
                  if (!v139)
                  {
                    goto LABEL_180;
                  }

                  while (1)
                  {
                    v141 = __clz(__rbit64(v139));
                    for (i = (v139 - 1) & v139; ; i = (v143 - 1) & v143)
                    {
                      v144 = v141 | (v136 << 6);
                      v145 = *(*(v105 + 56) + 16 * v144);
                      *(*(v112 + 48) + v144) = *(*(v105 + 48) + v144);
                      *(*(v112 + 56) + 16 * v144) = v145;
                      swift_unknownObjectRetain();
                      v140 = v147;
                      v139 = i;
                      if (i)
                      {
                        break;
                      }

LABEL_180:
                      v142 = v136;
                      do
                      {
                        v136 = v142 + 1;
                        if (__OFADD__(v142, 1))
                        {
                          goto LABEL_204;
                        }

                        if (v136 >= v140)
                        {
                          goto LABEL_187;
                        }

                        v143 = *(v105 + 64 + 8 * v136);
                        ++v142;
                      }

                      while (!v143);
                      v141 = __clz(__rbit64(v143));
                    }
                  }
                }

LABEL_187:
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v110, isUniquelyReferenced_nonNull_native);
              v112 = v170;
              v113 = specialized __RawDictionaryStorage.find<A>(_:)(7);
              if ((v111 & 1) != (v114 & 1))
              {
                goto LABEL_208;
              }

              v107 = v113;
            }

            v90 = v155;
            if (v111)
            {
              v115 = (*(v112 + 56) + 16 * v107);
              *v115 = v94;
              v115[1] = v149;
              swift_unknownObjectRelease();
            }

            else
            {
              specialized _NativeDictionary._insert(at:key:value:)(v107, 7, v94, v112);
            }

            v99 = v161;
            *(v161 + 16) = v112;
            *&v103 = v94;
            *(&v103 + 1) = v149;
          }

          v151 = v103;
          swift_unknownObjectRetain();
          os_unfair_lock_unlock(v99 + 6);

          v89 = v167;
          goto LABEL_152;
        }
      }

      else
      {
        os_unfair_lock_unlock((v24 + 24));
      }

      type metadata accessor for _CalendarGregorian();
      v159 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, 255, type metadata accessor for _CalendarGregorian);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_181232B40;
      *(v38 + 32) = xmmword_181232B50;
      *(v38 + 48) = 2299161;
      *(v38 + 80) = 0x4290000000000000;
      *(v38 + 128) = 0;
      *(v38 + 96) = 0;
      *(v38 + 104) = 0;
      *(v38 + 136) = 1;
      *(v38 + 144) = 0;
      *(v38 + 152) = 1;
      type metadata accessor for _LocaleUnlocalized();
      v39 = swift_initStaticObject();
      v40 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized, 255, type metadata accessor for _LocaleUnlocalized);
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v41 = static TimeZoneCache.cache;
      os_unfair_lock_lock((static TimeZoneCache.cache + 120));
      if (*(v41 + 32))
      {
        v42 = *(v41 + 40);
        v43 = *(v41 + 32);
      }

      else
      {
        v43 = *(v41 + 16);
        if (v43)
        {
          v42 = *(v41 + 24);
          swift_unknownObjectRetain();
        }

        else
        {
          TimeZoneCache.State.findCurrentTimeZone()(v175);
          v42 = *(&v175[0] + 1);
          v43 = *&v175[0];
          *(v41 + 16) = *&v175[0];
          *(v41 + 24) = v42;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
        }
      }

      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v41 + 120));
      *(v38 + 112) = v43;
      *(v38 + 120) = v42;
      *(v38 + 56) = xmmword_181232B60;
      *(v38 + 72) = 0xC208951B28000000;
      *(v38 + 96) = v39;
      *(v38 + 104) = v40;
      swift_unknownObjectRelease();
      *(v38 + 128) = 2;
      *(v38 + 136) = 0;
      *(v38 + 144) = 4;
      *(v38 + 152) = 0;
      *(v38 + 88) = 7;
      v57 = v161;
      os_unfair_lock_lock((v161 + 24));
      v58 = *(v161 + 16);
      if (*(v58 + 16))
      {
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(7);
        if (v60)
        {
          v61 = *(*(v58 + 56) + 16 * v59);
LABEL_111:
          v158 = v61;
          swift_unknownObjectRetain();
          os_unfair_lock_unlock((v57 + 24));

          goto LABEL_112;
        }
      }

      swift_unknownObjectRetain();
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *&v175[0] = *(v161 + 16);
      v63 = *&v175[0];
      v64 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      v66 = *(v63 + 16);
      v67 = (v65 & 1) == 0;
      v16 = __OFADD__(v66, v67);
      v68 = v66 + v67;
      if (v16)
      {
        goto LABEL_194;
      }

      v69 = v65;
      if (*(v63 + 24) < v68)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v62);
        v70 = *&v175[0];
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(7);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_208;
        }

        v57 = v161;
        if (v69)
        {
          goto LABEL_106;
        }

LABEL_109:
        specialized _NativeDictionary._insert(at:key:value:)(v64, 7, v38, v70);
        v73 = v159;
        goto LABEL_110;
      }

      if (v62)
      {
        v70 = v63;
        v57 = v161;
        if ((v65 & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v153 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
        v117 = static _DictionaryStorage.copy(original:)();
        v70 = v117;
        if (*(v63 + 16))
        {
          v118 = (v117 + 64);
          v119 = (v63 + 64);
          v120 = ((1 << *(v70 + 32)) + 63) >> 6;
          if (v70 != v63 || v118 >= &v119[8 * v120])
          {
            memmove(v118, v119, 8 * v120);
          }

          v121 = 0;
          *(v70 + 16) = *(v63 + 16);
          v122 = 1 << *(v63 + 32);
          v123 = *(v63 + 64);
          if (v122 < 64)
          {
            v124 = ~(-1 << v122);
          }

          else
          {
            v124 = -1;
          }

          v125 = v124 & v123;
          v126 = (v122 + 63) >> 6;
          v157 = v126;
          if ((v124 & v123) == 0)
          {
            goto LABEL_162;
          }

          while (1)
          {
            v127 = __clz(__rbit64(v125));
            for (v125 &= v125 - 1; ; v125 = (v129 - 1) & v129)
            {
              v130 = v127 | (v121 << 6);
              v131 = *(*(v63 + 56) + 16 * v130);
              *(*(v70 + 48) + v130) = *(*(v63 + 48) + v130);
              *(*(v70 + 56) + 16 * v130) = v131;
              swift_unknownObjectRetain();
              v126 = v157;
              if (v125)
              {
                break;
              }

LABEL_162:
              v128 = v121;
              do
              {
                v121 = v128 + 1;
                if (__OFADD__(v128, 1))
                {
                  goto LABEL_203;
                }

                if (v121 >= v126)
                {
                  goto LABEL_169;
                }

                v129 = *(v63 + 64 + 8 * v121);
                ++v128;
              }

              while (!v129);
              v127 = __clz(__rbit64(v129));
            }
          }
        }

LABEL_169:

        v64 = v153;
        v57 = v161;
        if ((v69 & 1) == 0)
        {
          goto LABEL_109;
        }
      }

LABEL_106:
      v72 = (*(v70 + 56) + 16 * v64);
      v73 = v159;
      *v72 = v38;
      v72[1] = v159;
      swift_unknownObjectRelease();
LABEL_110:
      *(v57 + 16) = v70;
      *&v61 = v38;
      *(&v61 + 1) = v73;
      goto LABEL_111;
    }

    *&v175[0] = 60;
    *(&v175[0] + 1) = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v175);

    _XMLPlistEncodingFormat.Writer.append(_:)("data", 4);
    *&v175[0] = 2622;
    *(&v175[0] + 1) = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v175);

    *&v175[0] = &v173;
    MEMORY[0x1EEE9AC00](v37);
    _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0J4ViewVys0O0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_n(v167, v11, closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:)partial apply);
    _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v165);
    *&v175[0] = 12092;
    *(&v175[0] + 1) = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v175);

    _XMLPlistEncodingFormat.Writer.append(_:)("data", 4);
    *&v175[0] = 2622;
    *(&v175[0] + 1) = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v175);
    v7 = v167;
    v8 = v11;
    v9 = 5;
LABEL_5:
    outlined consume of _XMLPlistEncodingFormat.Reference(v7, v8, v9);
    goto LABEL_6;
  }

  if (v12 == 6)
  {

    _XMLPlistEncodingFormat.Writer.appendArray(_:indentation:)(v29, v165);
    outlined consume of _XMLPlistEncodingFormat.Reference(v167, v11, 6u);

    goto LABEL_7;
  }

  if (v12 == 7)
  {

    _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)(v20, v165);
    outlined consume of _XMLPlistEncodingFormat.Reference(v167, v11, 7u);
    goto LABEL_6;
  }

  if (!(v167 | v11))
  {
    *&v175[0] = 60;
    *(&v175[0] + 1) = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v175);

    _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
    *&v175[0] = 62;
    *(&v175[0] + 1) = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v175);

    _XMLPlistEncodingFormat.Writer.append(_:)("$null", 5);
    *&v175[0] = 12092;
    *(&v175[0] + 1) = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v175);

    v22 = "string";
    v23 = 6;
    goto LABEL_77;
  }

  if (v167 ^ 1 | v11)
  {
    v175[0] = xmmword_181248DA0;
    _XMLPlistEncodingFormat.Writer.append(_:)(v175, 1);

    v52 = v3[2];
    if (__OFSUB__(0x2000, v52))
    {
      goto LABEL_198;
    }

    if (0x2000 - v52 >= 5)
    {
      if (!*v3)
      {
        goto LABEL_207;
      }

      v56 = &(*v3)[v52];
      v56[4] = 101;
      *v56 = 1936482662;
      v16 = __OFADD__(v52, 5);
      v55 = (v52 + 5);
      if (!v16)
      {
        goto LABEL_96;
      }

      goto LABEL_200;
    }

    if (v52 > 0)
    {
      v53 = &(*v3)[v52];
      if (*v3)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      Data._Representation.append(contentsOf:)(*v3, v54);
      v3[2] = 0;
    }

    v35 = "false";
    v36 = "";
LABEL_87:
    Data._Representation.append(contentsOf:)(v35, v36);
LABEL_97:
    v175[0] = xmmword_181248DB0;
    _XMLPlistEncodingFormat.Writer.append(_:)(v175, 3);
    goto LABEL_6;
  }

  v175[0] = xmmword_181248DA0;
  _XMLPlistEncodingFormat.Writer.append(_:)(v175, 1);

  v32 = v3[2];
  if (__OFSUB__(0x2000, v32))
  {
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (0x2000 - v32 < 4)
  {
    if (v32 > 0)
    {
      v33 = &(*v3)[v32];
      if (*v3)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      Data._Representation.append(contentsOf:)(*v3, v34);
      v3[2] = 0;
    }

    v35 = "true";
    v36 = "";
    goto LABEL_87;
  }

  if (*v3)
  {
    *&(*v3)[v32] = 1702195828;
    v16 = __OFADD__(v32, 4);
    v55 = (v32 + 4);
    if (!v16)
    {
LABEL_96:
      v3[2] = v55;
      goto LABEL_97;
    }

LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
  }

LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
  swift_willThrow();
  __break(1u);
LABEL_208:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)(Swift::OpaquePointer _, Swift::Int indentation)
{
  v277[36] = *MEMORY[0x1E69E9840];
  if (!*(_._rawValue + 2))
  {
    v220 = 60;
    v221 = 0xE100000000000000;
    v222 = 671279;
    v223 = 0xE300000000000000;
    goto LABEL_260;
  }

  v277[0] = 60;
  v277[1] = 0xE100000000000000;
  v3 = 0;
  specialized String.withUTF8<A>(_:)(v277);

  _XMLPlistEncodingFormat.Writer.append(_:)("dict", 4);
  v277[0] = 2622;
  v277[1] = 0xE200000000000000;
  specialized String.withUTF8<A>(_:)(v277);

  v277[0] = specialized _copyCollectionToContiguousArray<A>(_:)(_._rawValue);
  specialized MutableCollection<>.sort(by:)(v277);
  v241 = v277[0];
  v240 = v277[0][2];
  if (!v240)
  {
LABEL_258:

    _XMLPlistEncodingFormat.Writer.appendIndents(_:)(indentation);
    v220 = 12092;
    v221 = 0xE200000000000000;
    v222 = 2622;
    v223 = 0xE200000000000000;
LABEL_260:
    _XMLPlistEncodingFormat.Writer.appendClose(_:)(2u, v220, v221, v222, v223);
    return;
  }

  v4 = 0;
  v5 = indentation + 1;
  v6 = __OFADD__(indentation, 1);
  v239 = v6;
  v7 = __OFADD__(v5, 1);
  v224 = v7;
  v8 = __OFADD__(indentation + 2, 1);
  v225 = v8;
  v9 = __OFADD__(indentation + 3, 1);
  v226 = v9;
  v243 = indentation + 2;
  v248 = indentation + 1;
  while (1)
  {
    if (v4 >= v241[2])
    {
      goto LABEL_267;
    }

    if (v239)
    {
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    v249 = v4;
    v14 = &v241[6 * v4 + 4];
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v19 = v5;
    v20 = *(v14 + 40);
    v21 = *(v14 + 16);
    outlined copy of _XMLPlistEncodingFormat.Reference(*v14, v16, *(v14 + 16));
    v247 = v17;
    v246 = v18;
    outlined copy of _XMLPlistEncodingFormat.Reference(v17, v18, v20);
    _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v19);
    *&v273[0] = 60;
    *(&v273[0] + 1) = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v273);

    _XMLPlistEncodingFormat.Writer.append(_:)("key", 3);
    *&v273[0] = 62;
    *(&v273[0] + 1) = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v273);

    if (v21)
    {
      goto LABEL_280;
    }

    *&v273[0] = v15;
    *(&v273[0] + 1) = v16;

    specialized String.withUTF8<A>(_:)(v273);

    *&v273[0] = 12092;
    *(&v273[0] + 1) = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v273);

    _XMLPlistEncodingFormat.Writer.append(_:)("key", 3);
    *&v273[0] = 2622;
    *(&v273[0] + 1) = 0xE200000000000000;
    specialized String.withUTF8<A>(_:)(v273);

    _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v19);
    if (v20 > 3)
    {
      break;
    }

    v22 = v249;
    if (v20 > 1)
    {
      if (v20 != 2)
      {
        *&v273[0] = 60;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        _XMLPlistEncodingFormat.Writer.append(_:)("real", 4);
        *&v273[0] = 62;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        *&v273[0] = specialized _XMLPlistEncodingFormat.Writer.realDescription(_:)(*&v17);
        *(&v273[0] + 1) = v24;
        specialized String.withUTF8<A>(_:)(v273);

        v11 = 7;
        goto LABEL_18;
      }

      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
      *&v273[0] = 62;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      *&v274 = v17;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
    }

    else
    {
      if (!v20)
      {
        *&v273[0] = 60;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
        *&v273[0] = 62;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        *&v273[0] = v17;
        *(&v273[0] + 1) = v18;

        specialized String.withUTF8<A>(_:)(v273);

        _XMLPlistEncodingFormat.Writer.appendClose(_:)(4u, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
        outlined consume of _XMLPlistEncodingFormat.Reference(v17, v18, 0);
        goto LABEL_19;
      }

      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
      *&v273[0] = 62;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      *&v274 = v17;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    }

    *&v273[0] = BinaryInteger.description.getter();
    *(&v273[0] + 1) = v10;
    specialized String.withUTF8<A>(_:)(v273);

    v11 = 8;
LABEL_18:
    _XMLPlistEncodingFormat.Writer.appendClose(_:)(v11, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
LABEL_19:
    v12 = v15;
    v13 = v16;
LABEL_20:
    outlined consume of _XMLPlistEncodingFormat.Reference(v12, v13, 0);
    v5 = indentation + 1;
LABEL_21:
    v4 = v22 + 1;
    if (v4 == v240)
    {
      goto LABEL_258;
    }
  }

  v22 = v249;
  if (v20 <= 5)
  {
    if (v20 != 4)
    {
      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("data", 4);
      *&v273[0] = 2622;
      *(&v273[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      *&v273[0] = &v270;
      MEMORY[0x1EEE9AC00](v160);
      _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0J4ViewVys0O0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_n(v17, v18, closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:)partial apply);
      v5 = indentation + 1;
      _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v248);
      _XMLPlistEncodingFormat.Writer.appendClose(_:)(5u, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
      outlined consume of _XMLPlistEncodingFormat.Reference(v17, v18, 5u);
LABEL_217:
      v167 = v15;
      v168 = v16;
      goto LABEL_218;
    }

    *&v273[0] = 60;
    *(&v273[0] + 1) = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v273);

    _XMLPlistEncodingFormat.Writer.append(_:)("date", 4);
    *&v273[0] = 62;
    *(&v273[0] + 1) = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v273);

    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v25 = qword_1ED440450;
    os_unfair_lock_lock((qword_1ED440450 + 24));
    v26 = *(v25 + 16);
    v233 = v16;
    if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v28 & 1) != 0))
    {
      v256 = *(*(v26 + 56) + 16 * v27);
      v29 = *(*(v26 + 56) + 16 * v27);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v25 + 24));
      if (v29)
      {
        goto LABEL_224;
      }
    }

    else
    {
      os_unfair_lock_unlock((v25 + 24));
    }

    v3 = type metadata accessor for _CalendarGregorian();
    v161 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, 255, type metadata accessor for _CalendarGregorian);
    LOBYTE(v262[0]) = 7;
    v273[0] = 0uLL;
    v274 = 0uLL;
    *&v272 = 0;
    BYTE8(v272) = 1;
    v255 = v161;
    v162 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(v262, v273, &v274, 0, 1, 0, 1, &v272);
    os_unfair_lock_lock((v25 + 24));
    v163 = *(v25 + 16);
    if (*(v163 + 16))
    {
      v164 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if (v165)
      {
        v166 = *(*(v163 + 56) + 16 * v164);
LABEL_223:
        v3 = 0;
        v256 = v166;
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v25 + 24));

LABEL_224:
        v274 = v256;
        if (one-time initialization token for cache != -1)
        {
          swift_once();
        }

        v189 = xmmword_1ED440468;
        v273[0] = xmmword_1ED440468;
        swift_unknownObjectRetain_n();
        Calendar.timeZone.setter(v273);
        v259 = v274;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
        v190 = static _SetStorage.allocate(capacity:)();
        v191 = 0;
        v192 = v190 + 56;
        do
        {
          v193 = outlined read-only object #2 of _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)[v191 + 32];
          Hasher.init(_seed:)();
          MEMORY[0x1865CD060](v193);
          v194 = Hasher._finalize()();
          v195 = ~(-1 << *(v190 + 32));
          v196 = v194 & v195;
          v197 = (v194 & v195) >> 6;
          v198 = *(v192 + 8 * v197);
          v199 = 1 << (v194 & v195);
          v200 = *(v190 + 48);
          if ((v199 & v198) != 0)
          {
            while (*(v200 + v196) != v193)
            {
              v196 = (v196 + 1) & v195;
              v197 = v196 >> 6;
              v198 = *(v192 + 8 * (v196 >> 6));
              v199 = 1 << v196;
              if (((1 << v196) & v198) == 0)
              {
                goto LABEL_231;
              }
            }
          }

          else
          {
LABEL_231:
            *(v192 + 8 * v197) = v199 | v198;
            *(v200 + v196) = v193;
            v201 = *(v190 + 16);
            v56 = __OFADD__(v201, 1);
            v202 = v201 + 1;
            if (v56)
            {
              goto LABEL_263;
            }

            *(v190 + 16) = v202;
          }

          ++v191;
        }

        while (v191 != 7);
        v272 = v259;
        Calendar.ComponentSet.init(_:)(v190, v262);
        if (one-time initialization token for validCalendarRange != -1)
        {
          swift_once();
        }

        v203 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= *&v247)
        {
          v203 = *&v247;
        }

        if (*&static Date.validCalendarRange >= v203)
        {
          v203 = *&static Date.validCalendarRange;
        }

        v261 = v203;
        Calendar._dateComponents(_:from:)(v262, &v261, v273);
        memcpy(v277, v273, 0x11BuLL);
        BYTE4(v273[0]) = 1;
        *(&v273[0] + 1) = 0;
        v273[2] = v189;
        LODWORD(v273[0]) = 0x10000;
        swift_unknownObjectRetain();
        LOBYTE(v272) = 7;
        *&v273[1] = CalendarCache.fixed(_:)(&v272);
        *(&v273[1] + 1) = v204;
        v272 = v189;
        Calendar.timeZone.setter(&v272);
        v265[0] = v273[0];
        v265[1] = v273[1];
        v265[2] = v273[2];
        LOBYTE(v272) = 0;
        closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)(&v271, 129, v265, v277, &v272, 0, 0, v273);
        v22 = v249;
        v205 = v273[0];
        outlined destroy of DateComponents.ISO8601FormatStyle(v265);
        v273[0] = v205;
        specialized String.withUTF8<A>(_:)(v273);
        outlined destroy of DateComponents(v277);
        swift_unknownObjectRelease();

        _XMLPlistEncodingFormat.Writer.appendClose(_:)(6u, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
        outlined consume of _XMLPlistEncodingFormat.Reference(v247, v246, 4u);
        v12 = v15;
        v13 = v233;
        goto LABEL_20;
      }
    }

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v273[0] = *(v25 + 16);
    v170 = *&v273[0];
    v171 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    v173 = *(v170 + 16);
    v174 = (v172 & 1) == 0;
    v56 = __OFADD__(v173, v174);
    v175 = v173 + v174;
    if (v56)
    {
      goto LABEL_270;
    }

    v176 = v172;
    if (*(v170 + 24) >= v175)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v177 = v170;
        if (v172)
        {
LABEL_212:
          v179 = (*(v177 + 56) + 16 * v171);
          v180 = v255;
          *v179 = v162;
          v179[1] = v255;
          swift_unknownObjectRelease();
LABEL_222:
          *(v25 + 16) = v177;
          *&v166 = v162;
          *(&v166 + 1) = v180;
          goto LABEL_223;
        }
      }

      else
      {
        v245 = v171;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
        v206 = static _DictionaryStorage.copy(original:)();
        v177 = v206;
        if (*(v170 + 16))
        {
          v207 = (v206 + 64);
          v208 = (v170 + 64);
          v209 = ((1 << *(v177 + 32)) + 63) >> 6;
          if (v177 != v170 || v207 >= &v208[8 * v209])
          {
            memmove(v207, v208, 8 * v209);
          }

          v210 = 0;
          *(v177 + 16) = *(v170 + 16);
          v211 = 1 << *(v170 + 32);
          if (v211 < 64)
          {
            v212 = ~(-1 << v211);
          }

          else
          {
            v212 = -1;
          }

          v213 = v212 & *(v170 + 64);
          v214 = (v211 + 63) >> 6;
          v251 = v214;
          if (v213)
          {
            do
            {
              v215 = __clz(__rbit64(v213));
              v253 = (v213 - 1) & v213;
LABEL_254:
              v218 = v215 | (v210 << 6);
              v219 = *(*(v170 + 56) + 16 * v218);
              *(*(v177 + 48) + v218) = *(*(v170 + 48) + v218);
              *(*(v177 + 56) + 16 * v218) = v219;
              swift_unknownObjectRetain();
              v214 = v251;
              v213 = v253;
            }

            while (v253);
          }

          v216 = v210;
          while (1)
          {
            v210 = v216 + 1;
            if (__OFADD__(v216, 1))
            {
              goto LABEL_277;
            }

            if (v210 >= v214)
            {
              break;
            }

            v217 = *(v170 + 64 + 8 * v210);
            ++v216;
            if (v217)
            {
              v215 = __clz(__rbit64(v217));
              v253 = (v217 - 1) & v217;
              goto LABEL_254;
            }
          }
        }

        v171 = v245;
        if (v176)
        {
          goto LABEL_212;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v175, isUniquelyReferenced_nonNull_native);
      v177 = *&v273[0];
      v171 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v176 & 1) != (v178 & 1))
      {
        goto LABEL_281;
      }

      if (v176)
      {
        goto LABEL_212;
      }
    }

    v180 = v255;
    specialized _NativeDictionary._insert(at:key:value:)(v171, 7, v162, v177, v3, v255);
    goto LABEL_222;
  }

  if (v20 != 6)
  {
    if (v20 == 7)
    {

      v5 = indentation + 1;
      _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)(v23, v248);
      outlined consume of _XMLPlistEncodingFormat.Reference(v17, v18, 7u);
      outlined consume of _XMLPlistEncodingFormat.Reference(v15, v16, 0);

      goto LABEL_21;
    }

    v5 = indentation + 1;
    if (v17 | v18)
    {
      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      if (v17 ^ 1 | v18)
      {
        v159 = 10;
      }

      else
      {
        v159 = 9;
      }

      v185 = XMLPlistTag.tagName.getter(v159);
      _XMLPlistEncodingFormat.Writer.append(_:)(v185, v186, v187, v188);
      *&v273[0] = 671279;
      *(&v273[0] + 1) = 0xE300000000000000;
      specialized String.withUTF8<A>(_:)(v273);
    }

    else
    {
      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
      *&v273[0] = 62;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("$null", 5);
      _XMLPlistEncodingFormat.Writer.appendClose(_:)(4u, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
    }

    goto LABEL_217;
  }

  v234 = v16;
  v30 = *(v17 + 16);
  if (!*(v30 + 16))
  {
    *&v273[0] = 60;
    *(&v273[0] + 1) = 0xE100000000000000;
    specialized String.withUTF8<A>(_:)(v273);

    v181 = XMLPlistTag.tagName.getter(1u);
    _XMLPlistEncodingFormat.Writer.append(_:)(v181, v182, v183, v184);
    *&v273[0] = 671279;
    *(&v273[0] + 1) = 0xE300000000000000;
    specialized String.withUTF8<A>(_:)(v273);

    outlined consume of _XMLPlistEncodingFormat.Reference(v17, v18, 6u);
    v12 = v15;
    v13 = v16;
    goto LABEL_20;
  }

  *&v273[0] = 60;
  *(&v273[0] + 1) = 0xE100000000000000;

  specialized String.withUTF8<A>(_:)(v273);

  _XMLPlistEncodingFormat.Writer.append(_:)("array", 5);
  *&v273[0] = 2622;
  *(&v273[0] + 1) = 0xE200000000000000;
  specialized String.withUTF8<A>(_:)(v273);

  v31 = *(v30 + 16);
  v5 = indentation + 1;
  if (!v31)
  {
LABEL_207:

    _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v5);
    _XMLPlistEncodingFormat.Writer.appendClose(_:)(1u, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
    outlined consume of _XMLPlistEncodingFormat.Reference(v247, v246, 6u);
    v167 = v15;
    v168 = v234;
LABEL_218:
    outlined consume of _XMLPlistEncodingFormat.Reference(v167, v168, 0);
    goto LABEL_21;
  }

  if (v224)
  {
    goto LABEL_274;
  }

  v32 = 0;
  v242 = v30 + 32;
  v238 = v30;
  while (2)
  {
    if (v32 >= v31)
    {
      goto LABEL_266;
    }

    v250 = v32;
    v33 = v242 + 24 * v32;
    v35 = *v33;
    v34 = *(v33 + 8);
    v36 = *(v33 + 16);
    outlined copy of _XMLPlistEncodingFormat.Reference(*v33, v34, *(v33 + 16));
    _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v243);
    if (v36 <= 3)
    {
      if (v36 <= 1)
      {
        *&v273[0] = 60;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        if (v36)
        {
          _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
          *&v273[0] = 62;
          *(&v273[0] + 1) = 0xE100000000000000;
          specialized String.withUTF8<A>(_:)(v273);

          *&v274 = v35;
          lazy protocol witness table accessor for type UInt64 and conformance UInt64();
          *&v273[0] = BinaryInteger.description.getter();
          *(&v273[0] + 1) = v38;
          specialized String.withUTF8<A>(_:)(v273);

          *&v273[0] = 12092;
          *(&v273[0] + 1) = 0xE200000000000000;
          specialized String.withUTF8<A>(_:)(v273);

          _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
          *&v273[0] = 2622;
          *(&v273[0] + 1) = 0xE200000000000000;
          specialized String.withUTF8<A>(_:)(v273);
        }

        else
        {
          _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
          *&v273[0] = 62;
          *(&v273[0] + 1) = 0xE100000000000000;
          specialized String.withUTF8<A>(_:)(v273);

          *&v273[0] = v35;
          *(&v273[0] + 1) = v34;

          specialized String.withUTF8<A>(_:)(v273);

          *&v273[0] = 12092;
          *(&v273[0] + 1) = 0xE200000000000000;
          specialized String.withUTF8<A>(_:)(v273);

          _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
          *&v273[0] = 2622;
          *(&v273[0] + 1) = 0xE200000000000000;
          specialized String.withUTF8<A>(_:)(v273);
          outlined consume of _XMLPlistEncodingFormat.Reference(v35, v34, 0);
        }

        v30 = v238;
        goto LABEL_48;
      }

      if (v36 != 2)
      {
        *&v273[0] = 60;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        _XMLPlistEncodingFormat.Writer.append(_:)("real", 4);
        *&v273[0] = 62;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        v5 = indentation + 1;
        if ((v35 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
        {
          v133 = 0x74696E69666E692DLL;
          if (*&v35 > 0.0)
          {
            v133 = 0x74696E69666E692BLL;
          }

          v134 = 0xE900000000000079;
        }

        else
        {
          *&v273[0] = Double.description.getter();
          *(&v273[0] + 1) = v151;

          v152._countAndFlagsBits = 12334;
          v152._object = 0xE200000000000000;
          v153 = String.hasSuffix(_:)(v152);

          if (v153)
          {
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
          }

          v134 = *(&v273[0] + 1);
          v133 = *&v273[0];
        }

        *&v273[0] = v133;
        *(&v273[0] + 1) = v134;
        specialized String.withUTF8<A>(_:)(v273);

        *&v273[0] = 12092;
        *(&v273[0] + 1) = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        _XMLPlistEncodingFormat.Writer.append(_:)("real", 4);
        *&v273[0] = 2622;
        *(&v273[0] + 1) = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v273);
        goto LABEL_197;
      }

      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
      *&v273[0] = 62;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      *&v274 = v35;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      *&v273[0] = BinaryInteger.description.getter();
      *(&v273[0] + 1) = v39;
      specialized String.withUTF8<A>(_:)(v273);

      *&v273[0] = 12092;
      *(&v273[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      v30 = v238;
      _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
      *&v273[0] = 2622;
      *(&v273[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v273);
LABEL_178:

LABEL_48:
      v5 = indentation + 1;
      goto LABEL_49;
    }

    if (v36 <= 5)
    {
      if (v36 == 4)
      {
        *&v273[0] = 60;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        _XMLPlistEncodingFormat.Writer.append(_:)("date", 4);
        *&v273[0] = 62;
        *(&v273[0] + 1) = 0xE100000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        if (one-time initialization token for cache != -1)
        {
          swift_once();
        }

        LOBYTE(v273[0]) = 7;
        *&v274 = CalendarCache.fixed(_:)(v273);
        *(&v274 + 1) = v40;
        if (one-time initialization token for cache != -1)
        {
          swift_once();
        }

        v41 = v35;
        v42 = *&v35;
        v43 = xmmword_1ED440468;
        v273[0] = xmmword_1ED440468;
        swift_unknownObjectRetain_n();
        Calendar.timeZone.setter(v273);
        v257 = v274;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
        v44 = static _SetStorage.allocate(capacity:)();
        v45 = 0;
        v46 = v44 + 56;
        do
        {
          v47 = outlined read-only object #1 of _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)[v45 + 32];
          Hasher.init(_seed:)();
          MEMORY[0x1865CD060](v47);
          v48 = Hasher._finalize()();
          v49 = ~(-1 << *(v44 + 32));
          v50 = v48 & v49;
          v51 = (v48 & v49) >> 6;
          v52 = *(v46 + 8 * v51);
          v53 = 1 << (v48 & v49);
          v54 = *(v44 + 48);
          if ((v53 & v52) != 0)
          {
            while (*(v54 + v50) != v47)
            {
              v50 = (v50 + 1) & v49;
              v51 = v50 >> 6;
              v52 = *(v46 + 8 * (v50 >> 6));
              v53 = 1 << v50;
              if (((1 << v50) & v52) == 0)
              {
                goto LABEL_71;
              }
            }
          }

          else
          {
LABEL_71:
            *(v46 + 8 * v51) = v53 | v52;
            *(v54 + v50) = v47;
            v55 = *(v44 + 16);
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (v56)
            {
              goto LABEL_262;
            }

            *(v44 + 16) = v57;
          }

          ++v45;
        }

        while (v45 != 7);
        v272 = v257;
        Calendar.ComponentSet.init(_:)(v44, v262);
        if (one-time initialization token for validCalendarRange != -1)
        {
          swift_once();
        }

        v144 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v42)
        {
          v144 = v42;
        }

        if (*&static Date.validCalendarRange >= v144)
        {
          v144 = *&static Date.validCalendarRange;
        }

        v261 = v144;
        Calendar._dateComponents(_:from:)(v262, &v261, v273);
        memcpy(v276, v273, 0x11BuLL);
        BYTE4(v273[0]) = 1;
        *(&v273[0] + 1) = 0;
        v273[2] = v43;
        LODWORD(v273[0]) = 0x10000;
        swift_unknownObjectRetain();
        LOBYTE(v272) = 7;
        *&v273[1] = CalendarCache.fixed(_:)(&v272);
        *(&v273[1] + 1) = v145;
        v272 = v43;
        Calendar.timeZone.setter(&v272);
        v264[0] = v273[0];
        v264[1] = v273[1];
        v264[2] = v273[2];
        LOBYTE(v272) = 0;
        v3 = 0;
        closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)(&v269, 129, v264, v276, &v272, 0, 0, v273);
        v22 = v249;
        v146 = v273[0];
        outlined destroy of DateComponents.ISO8601FormatStyle(v264);
        v273[0] = v146;
        specialized String.withUTF8<A>(_:)(v273);
        outlined destroy of DateComponents(v276);
        swift_unknownObjectRelease();

        _XMLPlistEncodingFormat.Writer.appendClose(_:)(6u, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
        outlined consume of _XMLPlistEncodingFormat.Reference(v41, v34, 4u);
        goto LABEL_171;
      }

      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("data", 4);
      *&v273[0] = 2622;
      *(&v273[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      *&v273[0] = &v268;
      MEMORY[0x1EEE9AC00](v140);
      _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0J4ViewVys0O0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_n(v35, v34, closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:)partial apply);
      _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v243);
      *&v273[0] = 12092;
      *(&v273[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("data", 4);
      *&v273[0] = 2622;
      v30 = v238;
      *(&v273[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v273);
      v141 = v35;
      v142 = v34;
      v143 = 5;
      goto LABEL_177;
    }

    if (v36 == 6)
    {
      v58 = *(v35 + 16);
      if (*(v58 + 16))
      {
        v232 = v34;
        *&v273[0] = 60;
        *(&v273[0] + 1) = 0xE100000000000000;

        specialized String.withUTF8<A>(_:)(v273);

        _XMLPlistEncodingFormat.Writer.append(_:)("array", 5);
        *&v273[0] = 2622;
        *(&v273[0] + 1) = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        v59 = *(v58 + 16);
        v227 = v35;
        if (v59)
        {
          v60 = indentation + 7;
          if (v225)
          {
            goto LABEL_271;
          }

          v61 = 0;
          v244 = v58 + 32;
          v62 = indentation + 3;
          v237 = v58;
          while (1)
          {
            if (v61 >= v59)
            {
              goto LABEL_265;
            }

            v64 = v244 + 24 * v61;
            v65 = *(v64 + 16);
            v254 = v61;
            v258 = *v64;
            v252 = *(v64 + 8);
            outlined copy of _XMLPlistEncodingFormat.Reference(*v64, v252, v65);
            v66 = v62;
            v67 = v60;
            if (v62 >= 4)
            {
              do
              {
                v273[0] = xmmword_181248D60;
                _XMLPlistEncodingFormat.Writer.append(_:)(v273, 4);

                v67 -= 4;
              }

              while (v67 >= 8);
              v66 = v67 - 4;
            }

            if (v66 == 1)
            {
              break;
            }

            if (v66 == 2)
            {
              *&v273[0] = 2313;
              v68 = 0xE200000000000000;
LABEL_92:
              *(&v273[0] + 1) = v68;
              specialized String.withUTF8<A>(_:)(v273);
              goto LABEL_93;
            }

            if (v66 != 3)
            {
              goto LABEL_94;
            }

            v273[0] = xmmword_181248D90;
            _XMLPlistEncodingFormat.Writer.append(_:)(v273, 3);
LABEL_93:

LABEL_94:
            if (v65 <= 3)
            {
              if (v65 > 1)
              {
                if (v65 != 2)
                {
                  v273[0] = xmmword_181248DA0;
                  _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

                  _XMLPlistEncodingFormat.Writer.append(_:)("real", 4);
                  v273[0] = xmmword_181248DD0;
                  _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

                  *&v273[0] = specialized _XMLPlistEncodingFormat.Writer.realDescription(_:)(*&v258);
                  *(&v273[0] + 1) = v75;
                  specialized String.withUTF8<A>(_:)(v273);

                  *&v273[0] = 12092;
                  *(&v273[0] + 1) = 0xE200000000000000;
                  specialized String.withUTF8<A>(_:)(v273);

                  _XMLPlistEncodingFormat.Writer.append(_:)("real", 4);
                  *&v273[0] = 2622;
                  *(&v273[0] + 1) = 0xE200000000000000;
                  goto LABEL_79;
                }

                v273[0] = xmmword_181248DA0;
                _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

                _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
                v273[0] = xmmword_181248DD0;
                _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

                *&v274 = v258;
                lazy protocol witness table accessor for type Int64 and conformance Int64();
              }

              else
              {
                if (!v65)
                {
                  v273[0] = xmmword_181248DA0;
                  _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

                  _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
                  v273[0] = xmmword_181248DD0;
                  _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

                  v71 = v258;
                  v72 = v70;
                  if ((v70 & 0x1000000000000000) != 0)
                  {
                    v71 = static String._copying(_:)();
                    v72 = v132;
                    v62 = indentation + 3;
                    outlined consume of _XMLPlistEncodingFormat.Reference(v258, v252, 0);
                    if ((v72 & 0x2000000000000000) == 0)
                    {
                      goto LABEL_103;
                    }
                  }

                  else if ((v70 & 0x2000000000000000) == 0)
                  {
LABEL_103:
                    if ((v71 & 0x1000000000000000) != 0)
                    {
                      v73 = ((v72 & 0xFFFFFFFFFFFFFFFLL) + 32);
                      v74 = v71 & 0xFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v73 = _StringObject.sharedUTF8.getter();
                    }

                    goto LABEL_146;
                  }

                  v74 = HIBYTE(v72) & 0xF;
                  *&v273[0] = v71;
                  *(&v273[0] + 1) = v72 & 0xFFFFFFFFFFFFFFLL;
                  v73 = v273;
LABEL_146:
                  closure #1 in _XMLPlistEncodingFormat.Writer.appendEscaped(_:)(v73, v74);

                  v273[0] = xmmword_181248DE0;
                  _XMLPlistEncodingFormat.Writer.append(_:)(v273, 2);

                  _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
                  v273[0] = xmmword_181248DC0;
                  _XMLPlistEncodingFormat.Writer.append(_:)(v273, 2);
                  outlined consume of _XMLPlistEncodingFormat.Reference(v258, v252, 0);
                  goto LABEL_80;
                }

                v273[0] = xmmword_181248DA0;
                _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

                _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
                *&v273[0] = 62;
                *(&v273[0] + 1) = 0xE100000000000000;
                specialized String.withUTF8<A>(_:)(v273);

                *&v274 = v258;
                lazy protocol witness table accessor for type UInt64 and conformance UInt64();
              }

              *&v273[0] = BinaryInteger.description.getter();
              *(&v273[0] + 1) = v63;
              specialized String.withUTF8<A>(_:)(v273);

              *&v273[0] = 12092;
              *(&v273[0] + 1) = 0xE200000000000000;
              specialized String.withUTF8<A>(_:)(v273);

              _XMLPlistEncodingFormat.Writer.append(_:)("integer", 7);
              *&v273[0] = 2622;
              *(&v273[0] + 1) = 0xE200000000000000;
              v58 = v237;
              goto LABEL_79;
            }

            if (v65 > 5)
            {
              if (v65 != 6)
              {
                if (v65 == 7)
                {

                  _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)(v69, v62);
                  outlined consume of _XMLPlistEncodingFormat.Reference(v258, v252, 7u);
                  goto LABEL_80;
                }

                if (v258 | v252)
                {
                  if (v258 ^ 1 | v252)
                  {
                    *&v273[0] = 60;
                    *(&v273[0] + 1) = 0xE100000000000000;
                    specialized String.withUTF8<A>(_:)(v273);

                    v104 = 10;
                  }

                  else
                  {
                    v273[0] = xmmword_181248DA0;
                    _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

                    v104 = 9;
                  }

                  v128 = XMLPlistTag.tagName.getter(v104);
                  _XMLPlistEncodingFormat.Writer.append(_:)(v128, v129, v130, v131);
                  *&v273[0] = 671279;
                  *(&v273[0] + 1) = 0xE300000000000000;
                }

                else
                {
                  *&v273[0] = 60;
                  *(&v273[0] + 1) = 0xE100000000000000;
                  specialized String.withUTF8<A>(_:)(v273);

                  v120 = XMLPlistTag.tagName.getter(4u);
                  v122 = v121;
                  v124 = v123;
                  _XMLPlistEncodingFormat.Writer.append(_:)(v120, v121, v123, v125);
                  *&v273[0] = 62;
                  *(&v273[0] + 1) = 0xE100000000000000;
                  specialized String.withUTF8<A>(_:)(v273);

                  _XMLPlistEncodingFormat.Writer.append(_:)("$null", 5);
                  *&v273[0] = 12092;
                  *(&v273[0] + 1) = 0xE200000000000000;
                  specialized String.withUTF8<A>(_:)(v273);

                  v126 = v124;
                  v60 = indentation + 7;
                  _XMLPlistEncodingFormat.Writer.append(_:)(v120, v122, v126, v127);
                  *&v273[0] = 2622;
                  *(&v273[0] + 1) = 0xE200000000000000;
                }

LABEL_79:
                specialized String.withUTF8<A>(_:)(v273);
LABEL_80:

                goto LABEL_81;
              }

              v95 = *(v258 + 16);
              if (!*(v95 + 16))
              {
                *&v273[0] = 60;
                *(&v273[0] + 1) = 0xE100000000000000;
                specialized String.withUTF8<A>(_:)(v273);

                v116 = XMLPlistTag.tagName.getter(1u);
                _XMLPlistEncodingFormat.Writer.append(_:)(v116, v117, v118, v119);
                *&v273[0] = 671279;
                *(&v273[0] + 1) = 0xE300000000000000;
                specialized String.withUTF8<A>(_:)(v273);
                v110 = v258;
                v111 = v252;
                v112 = 6;
LABEL_140:
                outlined consume of _XMLPlistEncodingFormat.Reference(v110, v111, v112);
                goto LABEL_80;
              }

              *&v273[0] = 60;
              *(&v273[0] + 1) = 0xE100000000000000;

              specialized String.withUTF8<A>(_:)(v273);

              v236 = XMLPlistTag.tagName.getter(1u);
              v231 = v96;
              v230 = v97;
              _XMLPlistEncodingFormat.Writer.append(_:)(v236, v96, v97, v98);
              *&v273[0] = 2622;
              *(&v273[0] + 1) = 0xE200000000000000;
              specialized String.withUTF8<A>(_:)(v273);

              v99 = *(v95 + 16);
              if (!v99)
              {
LABEL_126:

                v62 = indentation + 3;
                _XMLPlistEncodingFormat.Writer.appendIndents(_:)(indentation + 3);
                *&v273[0] = 12092;
                *(&v273[0] + 1) = 0xE200000000000000;
                specialized String.withUTF8<A>(_:)(v273);

                _XMLPlistEncodingFormat.Writer.append(_:)(v236, v231, v230, v103);
                *&v273[0] = 2622;
                *(&v273[0] + 1) = 0xE200000000000000;
                specialized String.withUTF8<A>(_:)(v273);
                outlined consume of _XMLPlistEncodingFormat.Reference(v258, v252, 6u);

                v60 = indentation + 7;
                goto LABEL_81;
              }

              if (!v226)
              {
                v100 = 0;
                v101 = (v95 + 48);
                while (v100 < *(v95 + 16))
                {
                  v102 = *v101;
                  ++v100;
                  v273[0] = *(v101 - 1);
                  LOBYTE(v273[1]) = v102;
                  _XMLPlistEncodingFormat.Writer.append(_:indentation:)(v273, indentation + 4);
                  v101 += 24;
                  if (v99 == v100)
                  {
                    goto LABEL_126;
                  }
                }

                goto LABEL_264;
              }

LABEL_269:
              __break(1u);
LABEL_270:
              __break(1u);
LABEL_271:
              __break(1u);
LABEL_272:
              __break(1u);
LABEL_273:
              __break(1u);
LABEL_274:
              __break(1u);
LABEL_275:
              __break(1u);
LABEL_276:
              __break(1u);
LABEL_277:
              __break(1u);
            }

            if (v65 != 4)
            {
              v273[0] = xmmword_181248DA0;
              _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

              _XMLPlistEncodingFormat.Writer.append(_:)("data", 4);
              v273[0] = xmmword_181248DC0;
              _XMLPlistEncodingFormat.Writer.append(_:)(v273, 2);

              *&v273[0] = v266;
              MEMORY[0x1EEE9AC00](v105);
              _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0J4ViewVys0O0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_n(v258, v252, closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:)partial apply);
              v58 = v237;
              _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v62);
              *&v273[0] = 12092;
              *(&v273[0] + 1) = 0xE200000000000000;
              specialized String.withUTF8<A>(_:)(v273);

              v106 = XMLPlistTag.tagName.getter(5u);
              _XMLPlistEncodingFormat.Writer.append(_:)(v106, v107, v108, v109);
              *&v273[0] = 2622;
              *(&v273[0] + 1) = 0xE200000000000000;
              specialized String.withUTF8<A>(_:)(v273);
              v110 = v258;
              v111 = v252;
              v60 = indentation + 7;
              v112 = 5;
              goto LABEL_140;
            }

            *&v273[0] = 60;
            *(&v273[0] + 1) = 0xE100000000000000;
            specialized String.withUTF8<A>(_:)(v273);

            v76 = XMLPlistTag.tagName.getter(6u);
            _XMLPlistEncodingFormat.Writer.append(_:)(v76, v77, v78, v79);
            *&v273[0] = 62;
            *(&v273[0] + 1) = 0xE100000000000000;
            specialized String.withUTF8<A>(_:)(v273);

            if (one-time initialization token for cache != -1)
            {
              swift_once();
            }

            LOBYTE(v273[0]) = 7;
            *&v274 = CalendarCache.fixed(_:)(v273);
            *(&v274 + 1) = v80;
            if (one-time initialization token for cache != -1)
            {
              swift_once();
            }

            v229 = *(&xmmword_1ED440468 + 1);
            v273[0] = xmmword_1ED440468;
            v81 = xmmword_1ED440468;
            swift_unknownObjectRetain_n();
            Calendar.timeZone.setter(v273);
            v235 = v274;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
            v82 = static _SetStorage.allocate(capacity:)();
            v83 = 0;
            v84 = v82 + 56;
            do
            {
              v87 = outlined read-only object #0 of _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)[v83 + 32];
              Hasher.init(_seed:)();
              MEMORY[0x1865CD060](v87);
              v88 = Hasher._finalize()();
              v89 = ~(-1 << *(v82 + 32));
              v90 = v88 & v89;
              v91 = (v88 & v89) >> 6;
              v92 = *(v84 + 8 * v91);
              v93 = 1 << (v88 & v89);
              v94 = *(v82 + 48);
              if ((v93 & v92) != 0)
              {
                while (*(v94 + v90) != v87)
                {
                  v90 = (v90 + 1) & v89;
                  v91 = v90 >> 6;
                  v92 = *(v84 + 8 * (v90 >> 6));
                  v93 = 1 << v90;
                  if (((1 << v90) & v92) == 0)
                  {
                    goto LABEL_113;
                  }
                }
              }

              else
              {
LABEL_113:
                *(v84 + 8 * v91) = v93 | v92;
                *(v94 + v90) = v87;
                v85 = *(v82 + 16);
                v56 = __OFADD__(v85, 1);
                v86 = v85 + 1;
                if (v56)
                {
                  __break(1u);
LABEL_262:
                  __break(1u);
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
                  goto LABEL_268;
                }

                *(v82 + 16) = v86;
              }

              ++v83;
            }

            while (v83 != 7);
            v272 = v235;
            Calendar.ComponentSet.init(_:)(v82, v262);
            if (one-time initialization token for validCalendarRange != -1)
            {
              swift_once();
            }

            v113 = *(&static Date.validCalendarRange + 1);
            if (*(&static Date.validCalendarRange + 1) >= *&v258)
            {
              v113 = *&v258;
            }

            if (*&static Date.validCalendarRange >= v113)
            {
              v113 = *&static Date.validCalendarRange;
            }

            v261 = v113;
            Calendar._dateComponents(_:from:)(v262, &v261, v273);
            memcpy(v275, v273, 0x11BuLL);
            BYTE4(v273[0]) = 1;
            *(&v273[0] + 1) = 0;
            *&v273[2] = v81;
            *(&v273[2] + 1) = v229;
            LODWORD(v273[0]) = 0x10000;
            swift_unknownObjectRetain();
            LOBYTE(v272) = 7;
            *&v273[1] = CalendarCache.fixed(_:)(&v272);
            *(&v273[1] + 1) = v114;
            *&v272 = v81;
            *(&v272 + 1) = v229;
            Calendar.timeZone.setter(&v272);
            v263[0] = v273[0];
            v263[1] = v273[1];
            v263[2] = v273[2];
            LOBYTE(v272) = 0;
            v3 = 0;
            closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)(v267, 129, v263, v275, &v272, 0, 0, v273);
            v60 = indentation + 7;
            v115 = v273[0];
            outlined destroy of DateComponents.ISO8601FormatStyle(v263);
            v273[0] = v115;
            specialized String.withUTF8<A>(_:)(v273);
            outlined destroy of DateComponents(v275);
            swift_unknownObjectRelease();

            _XMLPlistEncodingFormat.Writer.appendClose(_:)(6u, 12092, 0xE200000000000000, 2622, 0xE200000000000000);
            outlined consume of _XMLPlistEncodingFormat.Reference(v258, v252, 4u);
            v58 = v237;
LABEL_81:
            v61 = v254 + 1;
            v59 = *(v58 + 16);
            if (v254 + 1 == v59)
            {
              goto LABEL_170;
            }
          }

          *&v273[0] = 9;
          v68 = 0xE100000000000000;
          goto LABEL_92;
        }

LABEL_170:

        _XMLPlistEncodingFormat.Writer.appendIndents(_:)(v243);
        *&v273[0] = 12092;
        *(&v273[0] + 1) = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        v147 = XMLPlistTag.tagName.getter(1u);
        _XMLPlistEncodingFormat.Writer.append(_:)(v147, v148, v149, v150);
        *&v273[0] = 2622;
        *(&v273[0] + 1) = 0xE200000000000000;
        specialized String.withUTF8<A>(_:)(v273);

        outlined consume of _XMLPlistEncodingFormat.Reference(v227, v232, 6u);
        v22 = v249;
LABEL_171:
        v5 = indentation + 1;
        v30 = v238;
        goto LABEL_49;
      }

      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("array", 5);
      *&v273[0] = 671279;
      *(&v273[0] + 1) = 0xE300000000000000;
      specialized String.withUTF8<A>(_:)(v273);
      v141 = v35;
      v142 = v34;
      v143 = 6;
LABEL_177:
      outlined consume of _XMLPlistEncodingFormat.Reference(v141, v142, v143);
      goto LABEL_178;
    }

    if (v36 == 7)
    {

      _XMLPlistEncodingFormat.Writer.appendDictionary(_:indentation:)(v37, v243);
      outlined consume of _XMLPlistEncodingFormat.Reference(v35, v34, 7u);
      goto LABEL_178;
    }

    if (!(v35 | v34))
    {
      *&v273[0] = 60;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
      *&v273[0] = 62;
      *(&v273[0] + 1) = 0xE100000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      _XMLPlistEncodingFormat.Writer.append(_:)("$null", 5);
      *&v273[0] = 12092;
      *(&v273[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v273);

      v30 = v238;
      _XMLPlistEncodingFormat.Writer.append(_:)("string", 6);
      *&v273[0] = 2622;
      *(&v273[0] + 1) = 0xE200000000000000;
      specialized String.withUTF8<A>(_:)(v273);
      goto LABEL_178;
    }

    if (!(v35 ^ 1 | v34))
    {
      v273[0] = xmmword_181248DA0;
      _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

      v135 = v260[2];
      if (__OFSUB__(0x2000, v135))
      {
        goto LABEL_273;
      }

      if (0x2000 - v135 < 4)
      {
        v5 = indentation + 1;
        if (v135 > 0)
        {
          v136 = &(*v260)[v135];
          if (*v260)
          {
            v137 = v136;
          }

          else
          {
            v137 = 0;
          }

          Data._Representation.append(contentsOf:)(*v260, v137);
          v260[2] = 0;
        }

        v138 = "true";
        v139 = "";
        goto LABEL_188;
      }

      v5 = indentation + 1;
      if (!*v260)
      {
        goto LABEL_279;
      }

      *&(*v260)[v135] = 1702195828;
      v56 = __OFADD__(v135, 4);
      v157 = (v135 + 4);
      if (v56)
      {
        goto LABEL_275;
      }

LABEL_195:
      v260[2] = v157;
LABEL_196:
      v273[0] = xmmword_181248DB0;
      _XMLPlistEncodingFormat.Writer.append(_:)(v273, 3);
LABEL_197:

LABEL_49:
      v32 = v250 + 1;
      v31 = *(v30 + 16);
      if (v250 + 1 == v31)
      {
        goto LABEL_207;
      }

      continue;
    }

    break;
  }

  v273[0] = xmmword_181248DA0;
  _XMLPlistEncodingFormat.Writer.append(_:)(v273, 1);

  v154 = v260[2];
  if (__OFSUB__(0x2000, v154))
  {
    goto LABEL_272;
  }

  if (0x2000 - v154 < 5)
  {
    v5 = indentation + 1;
    if (v154 > 0)
    {
      v155 = &(*v260)[v154];
      if (*v260)
      {
        v156 = v155;
      }

      else
      {
        v156 = 0;
      }

      Data._Representation.append(contentsOf:)(*v260, v156);
      v260[2] = 0;
    }

    v138 = "false";
    v139 = "";
LABEL_188:
    Data._Representation.append(contentsOf:)(v138, v139);
    goto LABEL_196;
  }

  v5 = indentation + 1;
  if (*v260)
  {
    v158 = &(*v260)[v154];
    v158[4] = 101;
    *v158 = 1936482662;
    v56 = __OFADD__(v154, 5);
    v157 = (v154 + 5);
    if (v56)
    {
      goto LABEL_276;
    }

    goto LABEL_195;
  }

  __break(1u);
LABEL_279:
  __break(1u);
LABEL_280:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  swift_willThrow();
  __break(1u);

  __break(1u);
LABEL_281:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (!*(v10 + 64) && !*(v10 + 16))
    {
      v11 = (v10 + 48);
      result = *(v10 + 48);
      if (result != *v10 || *(v10 + 56) != *(v10 + 8))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          if (!v6)
          {
            __break(1u);
            break;
          }

          v13 = *v10;
          v14 = *(v10 + 16);
          v15 = *(v10 + 32);
          *v10 = *(v10 + 48);
          *(v10 + 24) = *(v10 + 72);
          v16 = *(v10 + 88);
          *(v10 + 16) = *(v10 + 64);
          *(v10 + 40) = v16;
          v10 -= 48;
          *v11 = v13;
          v11[1] = v14;
          v11[2] = v15;
          if (!__CFADD__(v9++, 1))
          {
            continue;
          }
        }
      }

      ++v4;
      v7 += 48;
      --v8;
      if (v4 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3;
    v6 = result - a3;
LABEL_6:
    v21 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      outlined init with copy of (key: String, value: Encodable)(v8, v20);
      v9 = v8 - 56;
      outlined init with copy of (key: String, value: Encodable)(v8 - 56, v19);
      if (v20[0] == v19[0] && v20[1] == v19[1])
      {
        outlined destroy of TermOfAddress?(v19, &_sSS3key_SE_p5valuetMd);
        result = outlined destroy of TermOfAddress?(v20, &_sSS3key_SE_p5valuetMd);
LABEL_5:
        a3 = v21 + 1;
        v5 += 56;
        --v6;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of TermOfAddress?(v19, &_sSS3key_SE_p5valuetMd);
      result = outlined destroy of TermOfAddress?(v20, &_sSS3key_SE_p5valuetMd);
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = *(v8 + 48);
      v14 = *(v8 + 16);
      v13 = *(v8 + 32);
      v15 = *v8;
      v16 = *(v8 - 40);
      *v8 = *v9;
      *(v8 + 16) = v16;
      *(v8 + 32) = *(v8 - 24);
      *(v8 + 48) = *(v8 - 8);
      *v9 = v15;
      *(v8 - 40) = v14;
      *(v8 - 24) = v13;
      v8 -= 56;
      *(v9 + 48) = v12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _XMLPlistEncodingFormat.Reference.Box.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t _NSFCPresenterLog()
{
  if (qword_1ED440198 != -1)
  {
    dispatch_once(&qword_1ED440198, &__block_literal_global_935);
  }

  return qword_1ED440108;
}

uint64_t _nodeHasPresentersExcludingPresenter(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___nodeHasPresentersExcludingPresenter_block_invoke;
  v4[3] = &unk_1E69F99C0;
  v4[4] = a2;
  v4[5] = &v5;
  [a1 forEachPresenterOfItemPerformProcedure:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1809B149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___nodeHasPresentersExcludingPresenter_block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void specialized JSONDecoderImpl.unwrapDate<A>(from:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v12 = a8;
  *&v207 = a6;
  v13 = a4;
  v14 = a9;
  v15 = v208;
  v217[15] = *MEMORY[0x1E69E9840];
  v16 = (a3 & 0xE0) == 0xA0 && (a2 | a1) == 0;
  if (v16 && a3 == 160)
  {
    v206 = a7;
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    *v26 = &type metadata for Date;
    v28 = _CodingPathNode.path.getter(v13);
    if (v12 != 0xFF)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v30 = swift_allocObject();
      *(inited + 32) = v30;
      *(v30 + 16) = a5;
      *(v30 + 24) = v207;
      *(v30 + 32) = v206;
      *(v30 + 40) = v12;
      v217[0] = v28;
      outlined copy of _CodingKey(a5, v207, v206, v12);
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    v217[0] = 0;
    v217[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](1702125892, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B08], v25);
    goto LABEL_29;
  }

  v17 = *(v9 + 40);
  v18 = *(v9 + 48);
  if (!*(v9 + 56))
  {
    v206 = *(v9 + 48);
    v203 = a9;
    v32 = a8;
    v202 = v17;
    v38 = a1;
    v12 = a7;
    v39 = a2;
    v11 = v32;
    v18 = a4;
    specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v38, v39, a3, a4, a5, v207, v12, v32);
    if (v10)
    {
      outlined consume of JSONDecoder.DateDecodingStrategy(v17, v206, 0);
      return;
    }

    v204 = a5;
    v205 = v17;
    v46 = String._bridgeToObjectiveCImpl()();

    v47 = [v202 dateFromString_];
    swift_unknownObjectRelease();
    if (v47)
    {
      [v47 timeIntervalSinceReferenceDate];
      v49 = v48;
      outlined consume of JSONDecoder.DateDecodingStrategy(v205, v206, 0);

      *v203 = v49;
      return;
    }

    goto LABEL_58;
  }

  if (*(v9 + 56) == 1)
  {
    v200 = a1;
    LOBYTE(v201) = a3;
    v202 = a2;
    v203 = a9;
    v205 = *(v9 + 40);
    v206 = a7;
    v204 = v10;
    if (a8 == 0xFF)
    {
      v197 = *(v9 + 160);
      v45 = v197 & 0x3FFFFFFFFFFFFFFFLL;

      swift_retain_n();
      v22 = v207;
LABEL_43:
      *(v9 + 160) = v13;
      outlined copy of _CodingKey?(a5, v22, v206, v12);
      outlined copy of JSONDecoder.DateDecodingStrategy(v205, v18, 1);
      v60 = v45;

      v12 = v9 + 16;
      v61 = *(v9 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 16) = v61;
      v199 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
        *v12 = v61;
      }

      v64 = *(v61 + 2);
      v63 = *(v61 + 3);
      v65 = v202;
      if (v64 >= v63 >> 1)
      {
        v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
        v65 = v202;
        v61 = v183;
      }

      *(v61 + 2) = v64 + 1;
      v66 = &v61[24 * v64];
      *(v66 + 4) = v200;
      *(v66 + 5) = v65;
      v66[48] = v201;
      *(v9 + 16) = v61;
      v217[3] = type metadata accessor for JSONDecoderImpl();
      v217[4] = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
      v217[0] = v9;
      v67 = v9;

      v9 = v18;
      (v205)(v217);
      v68 = v217;
      if (v204)
      {
        __swift_destroy_boxed_opaque_existential_1(v217);
        *(v67 + 160) = v197;

        if (*(*(v67 + 16) + 16))
        {
LABEL_51:
          specialized Array._customRemoveLast()();
          if (v69 > 0xFDu)
          {
            specialized Array.remove(at:)(*(*v12 + 16) - 1);
          }

          outlined consume of JSONDecoder.DateDecodingStrategy(v205, v18, 1);
          outlined consume of _CodingPathNode?(v199);
LABEL_54:

          return;
        }

        __break(1u);
      }

      __swift_destroy_boxed_opaque_existential_1(v68);
      *(v67 + 160) = v197;

      if (*(*(v67 + 16) + 16))
      {
        goto LABEL_51;
      }

      __break(1u);
      goto LABEL_187;
    }

    v20 = swift_allocObject();
    v20[5] = &type metadata for _CodingKey;
    v20[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v21 = swift_allocObject();
    v20[2] = v21;
    v22 = v207;
    *(v21 + 16) = a5;
    *(v21 + 24) = v207;
    *(v21 + 32) = v206;
    *(v21 + 40) = v12;
    v20[7] = v13;
    if (v13 >> 62)
    {
      if (v13 >> 62 != 1)
      {
        v59 = 1;
        goto LABEL_42;
      }

      v23 = ((v13 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v23 = (v13 + 64);
    }

    v58 = *v23;

    v59 = v58 + 1;
    if (!__OFADD__(v58, 1))
    {
LABEL_42:
      v20[8] = v59;
      v197 = *(v9 + 160);

      v13 = v20;
      v45 = v197 & 0x3FFFFFFFFFFFFFFFLL;
      goto LABEL_43;
    }

    __break(1u);
LABEL_58:
    v70 = type metadata accessor for DecodingError();
    swift_allocError();
    v72 = v71;
    v73 = _CodingPathNode.path.getter(v18);
    if (v11 != -1)
    {
      v74 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v75 = swift_initStackObject();
      *(v75 + 16) = xmmword_181218E20;
      *(v75 + 56) = &type metadata for _CodingKey;
      *(v75 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v76 = swift_allocObject();
      *(v75 + 32) = v76;
      *(v76 + 16) = v204;
      *(v76 + 24) = v207;
      *(v76 + 32) = v12;
      *(v76 + 40) = v11;
      v217[0] = v74;
      outlined copy of _CodingKey(v204, v207, v12, v11);
      specialized Array.append<A>(contentsOf:)(v75);
    }

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6B00], v70);
    swift_willThrow();
    outlined consume of JSONDecoder.DateDecodingStrategy(v205, v206, 0);
    return;
  }

  if (v17 <= 1)
  {
    if (!(v17 | v18))
    {
      v200 = a1;
      LOBYTE(v201) = a3;
      v202 = a2;
      v203 = a9;
      v206 = a7;
      v204 = v10;
      if (a8 == 0xFF)
      {
        v60 = *(v9 + 160);
        v77 = v60 & 0x3FFFFFFFFFFFFFFFLL;

        swift_retain_n();
        goto LABEL_71;
      }

      v15 = a4;
      v13 = swift_allocObject();
      *(v13 + 40) = &type metadata for _CodingKey;
      *(v13 + 48) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v41 = swift_allocObject();
      *(v13 + 16) = v41;
      *(v41 + 16) = a5;
      *(v41 + 24) = v207;
      *(v41 + 32) = v206;
      *(v41 + 40) = v12;
      *(v13 + 56) = v15;
      if (v15 >> 62)
      {
        if (v15 >> 62 != 1)
        {
          v84 = 0;
          goto LABEL_69;
        }

        v42 = ((v15 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v42 = (v15 + 64);
      }

      v84 = *v42;

LABEL_69:
      if (!__OFADD__(v84, 1))
      {
        *(v13 + 64) = v84 + 1;
        v60 = *(v9 + 160);
        v77 = v60 & 0x3FFFFFFFFFFFFFFFLL;

LABEL_71:
        *(v9 + 160) = v13;
        outlined copy of _CodingKey?(a5, v207, v206, v12);

        v12 = v9 + 16;
        v61 = *(v9 + 16);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        *(v9 + 16) = v61;
        v199 = v13;
        v18 = v77;
        if (v85)
        {
LABEL_72:
          v86 = v202;
          v88 = *(v61 + 2);
          v87 = *(v61 + 3);
          if (v88 >= v87 >> 1)
          {
            v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v61);
            v86 = v202;
            v61 = v184;
          }

          *(v61 + 2) = v88 + 1;
          v89 = &v61[24 * v88];
          *(v89 + 4) = v200;
          *(v89 + 5) = v86;
          v89[48] = v201;
          *(v9 + 16) = v61;

          v90 = v9;
          specialized JSONDecoderImpl.decode(_:)();
          LOBYTE(v13) = v204;
          if (v204)
          {

            *(v9 + 160) = v60;
            v90 = v18;

            if (*(*(v9 + 16) + 16))
            {
LABEL_78:
              specialized Array._customRemoveLast()();
              if (v95 > 0xFDu)
              {
                specialized Array.remove(at:)(*(*v12 + 16) - 1);
              }

              outlined consume of _CodingPathNode?(v199);
              goto LABEL_54;
            }

            __break(1u);
          }

          v92 = v91;
          v93 = v90;

          *v203 = v92;
          *(v90 + 160) = v60;
          v52 = v18;

          if (*(*(v93 + 16) + 16))
          {
            goto LABEL_78;
          }

          __break(1u);
          goto LABEL_191;
        }

LABEL_187:
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
        *v12 = v61;
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_189;
    }

    specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v10)
    {
      return;
    }

LABEL_31:
    *v14 = v44 + -978307200.0;
    return;
  }

  if (!(v17 ^ 2 | v18))
  {
    specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v10)
    {
      return;
    }

    v44 = v43 / 1000.0;
    goto LABEL_31;
  }

  v203 = a9;
  v198 = v9;
  v50 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
  LOBYTE(v13) = v10;
  if (v10)
  {
    return;
  }

  v12 = v50;
  v14 = v51;
  if (one-time initialization token for cache != -1)
  {
LABEL_189:
    swift_once();
  }

  v53 = *(&xmmword_1ED440468 + 1);
  v52 = xmmword_1ED440468;
  *(v15 + 264) = 0;
  BYTE4(v217[0]) = 1;
  *(v15 + 288) = __PAIR128__(v53, v52);
  LODWORD(v217[0]) = 0x10000;
  v54 = one-time initialization token for cache;
  swift_unknownObjectRetain_n();
  if (v54 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v55 = *(v18 + 16);
  v206 = v14;
  if (*(v55 + 16) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v57 & 1) != 0))
  {
    v207 = *(*(v55 + 56) + 16 * v56);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v18 + 24));
    if (v207)
    {
      goto LABEL_91;
    }
  }

  else
  {
    os_unfair_lock_unlock((v18 + 24));
  }

  v205 = v53;
  v78 = type metadata accessor for _CalendarGregorian();
  v79 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, type metadata accessor for _CalendarGregorian);
  LOBYTE(v213.tv_sec) = 7;
  *(v15 + 208) = 0;
  *(v15 + 216) = 0;
  *(v15 + 160) = 0;
  *(v15 + 168) = 0;
  *(v15 + 80) = 0;
  v211 = 1;
  *&v207 = v79;
  v202 = v78;
  v60 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v213, &v216, v215, 0, 1, 0, 1, &v210);
  os_unfair_lock_lock((v18 + 24));
  v80 = *(v18 + 16);
  if (*(v80 + 16))
  {
    v81 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v82)
    {
      v83 = *(*(v80 + 56) + 16 * v81);
      goto LABEL_90;
    }
  }

  LOBYTE(v204) = v13;
  swift_unknownObjectRetain();
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *(v18 + 16);
  v61 = v216;
  v94 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v98 = *(v61 + 2);
  v99 = (v97 & 1) == 0;
  v100 = v98 + v99;
  if (!__OFADD__(v98, v99))
  {
    LOBYTE(v13) = v97;
    if (*(v61 + 3) >= v100)
    {
      if ((v96 & 1) == 0)
      {
        goto LABEL_194;
      }

      v101 = v61;
      v15 = v208;
      v14 = v206;
      if ((v97 & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_85;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v100, v96);
    v15 = v208;
    v101 = v216;
    v102 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if ((v13 & 1) == (v103 & 1))
    {
      v94 = v102;
      v14 = v206;
      if ((v13 & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_85;
    }

LABEL_217:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
  do
  {
    __break(1u);
LABEL_194:
    v199 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v185 = static _DictionaryStorage.copy(original:)();
    v101 = v185;
    if (*(v61 + 2))
    {
      v186 = (v185 + 64);
      v201 = v61 + 64;
      v187 = ((1 << *(v101 + 32)) + 63) >> 6;
      if (v101 != v61 || v186 >= &v201[8 * v187])
      {
        memmove(v186, v201, 8 * v187);
      }

      v188 = 0;
      *(v101 + 16) = *(v61 + 2);
      v189 = 1 << v61[32];
      v190 = -1;
      if (v189 < 64)
      {
        v190 = ~(-1 << v189);
      }

      v200 = v190 & *(v61 + 8);
      v191 = (v189 + 63) >> 6;
      while (v200)
      {
        v192 = __clz(__rbit64(v200));
        v200 &= v200 - 1;
LABEL_207:
        v195 = v192 | (v188 << 6);
        v196 = *(*(v61 + 7) + 16 * v195);
        *(*(v101 + 48) + v195) = *(*(v61 + 6) + v195);
        *(*(v101 + 56) + 16 * v195) = v196;
        swift_unknownObjectRetain();
      }

      v193 = v188;
      while (1)
      {
        v188 = v193 + 1;
        if (__OFADD__(v193, 1))
        {
          break;
        }

        if (v188 >= v191)
        {
          goto LABEL_209;
        }

        v194 = *&v201[8 * v188];
        ++v193;
        if (v194)
        {
          v192 = __clz(__rbit64(v194));
          v200 = (v194 - 1) & v194;
          goto LABEL_207;
        }
      }

      __break(1u);
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

LABEL_209:

    v15 = v208;
    v14 = v206;
    v94 = v199;
    if (v13)
    {
LABEL_85:
      v104 = (*(v101 + 56) + 16 * v94);
      v13 = v207;
      *v104 = v60;
      v104[1] = v207;
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_88:
      v13 = v207;
      specialized _NativeDictionary._insert(at:key:value:)(v94, 7, v60, v101, v202, v207);
    }

    *(v18 + 16) = v101;
    *&v83 = v60;
    *(&v83 + 1) = v13;
    LOBYTE(v13) = v204;
LABEL_90:
    v207 = v83;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v18 + 24));

    v53 = v205;
LABEL_91:
    *(v15 + 272) = v207;
    *(v15 + 80) = v52;
    *(v15 + 88) = v53;
    Calendar.timeZone.setter(&v210);
    v105 = *(v15 + 256);
    v106 = *(v15 + 272);
    *(v15 + 160) = v105;
    *(v15 + 176) = v106;
    v107 = *(v15 + 288);
    *(v15 + 192) = v107;
    *(v15 + 208) = v105;
    *(v15 + 224) = v106;
    *(v15 + 240) = v107;
    *(v15 + 80) = v105;
    *(v15 + 96) = v106;
    *(v15 + 112) = v107;
    Date.ISO8601FormatStyle.parse(_:in:)(v12, v14, &v213);
    if ((v214 & 1) == 0)
    {
      v121 = *(v15 + 144);
      outlined destroy of DateComponents.ISO8601FormatStyle(v215);

      *v203 = v121;
      return;
    }

    v108 = *(v15 + 224);
    *(v15 + 80) = *(v15 + 208);
    *(v15 + 96) = v108;
    *(v15 + 112) = *(v15 + 240);
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    clock_gettime(_CLOCK_REALTIME, &v213);
    v109._time = *(v15 + 136) + -978307200.0 + *(v15 + 144) * 0.000000001;
    *(v15 + 136) = v109._time;
    v110 = Date.ISO8601FormatStyle.format(_:)(v109);
    *(v15 + 80) = 0;
    *(v15 + 88) = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    v111 = *(v15 + 88);
    *(v15 + 80) = *(v15 + 80);
    *(v15 + 88) = v111;
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v12, v14);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    *&v207 = v110._object;
    MEMORY[0x1865CB0E0](v110._countAndFlagsBits, v110._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v112 = *(v15 + 80);
    v113 = *(v15 + 88);
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v115 = @"NSDebugDescription";
    v116 = v115;
    if (!isTaggedPointer)
    {
      goto LABEL_98;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v115);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v118 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v120 = v119;

          goto LABEL_114;
        }

LABEL_98:
        LOBYTE(v213.tv_sec) = 0;
        *(v15 + 80) = 0;
        if (__CFStringIsCF())
        {
          if (!*(v15 + 80))
          {

LABEL_104:
            v118 = 0;
            v120 = 0xE000000000000000;
            goto LABEL_114;
          }
        }

        else
        {
          v122 = v116;
          v123 = String.init(_nativeStorage:)();
          if (v124)
          {
            v118 = v123;
            v120 = v124;

            goto LABEL_114;
          }

          v128 = [(__CFString *)v122 length];
          *(v15 + 80) = v128;
          if (!v128)
          {

            goto LABEL_104;
          }
        }

        v118 = String.init(_cocoaString:)();
        v120 = v129;
        goto LABEL_114;
      }

      v125 = [(__CFString *)v116 UTF8String];
      if (!v125)
      {
        goto LABEL_213;
      }

      v126 = String.init(utf8String:)(v125);
      if (v127)
      {
LABEL_109:
        v118 = v126;
        v120 = v127;

        goto LABEL_114;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v126 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v127)
    {
      goto LABEL_109;
    }

    [(__CFString *)v116 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v118 = *(v15 + 136);
    v120 = *(v15 + 144);
LABEL_114:
    v209[0] = v118;
    v209[1] = v120;
    *(v15 + 72) = MEMORY[0x1E69E6158];
    v209[2] = v112;
    *(v15 + 56) = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v18 = static _DictionaryStorage.allocate(capacity:)();
    v60 = &v210;
    outlined init with copy of FloatingPointRoundingRule?(v209, &v210, &_sSS_yptMd);

    outlined destroy of TermOfAddress?(v209, &_sSS_yptMd);
    v52 = *(v15 + 80);
    v61 = *(v15 + 88);
    v130 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v61);
    v12 = v131;

    if (v12)
    {
      goto LABEL_192;
    }

    *(v18 + 8 * (v130 >> 6) + 64) |= 1 << v130;
    v132 = (*(v18 + 48) + 16 * v130);
    *v132 = v52;
    v132[1] = v61;
    outlined init with take of Any(&v212, (*(v18 + 56) + 32 * v130));
    v133 = *(v18 + 16);
    v134 = __OFADD__(v133, 1);
    v135 = v133 + 1;
  }

  while (v134);
  *(v18 + 16) = v135;
  v136 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v137 = @"NSCocoaErrorDomain";
  v138 = v137;
  if (!v136)
  {
    goto LABEL_121;
  }

  v139 = _objc_getTaggedPointerTag(v137);
  if (v139)
  {
    if (v139 != 22)
    {
      if (v139 == 2)
      {
        MEMORY[0x1EEE9AC00](v139);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_137;
      }

LABEL_121:
      LOBYTE(v213.tv_sec) = 0;
      *(v15 + 80) = 0;
      if (__CFStringIsCF())
      {
        if (*(v15 + 80))
        {
          goto LABEL_136;
        }

LABEL_135:
      }

      else
      {
        v140 = v138;
        String.init(_nativeStorage:)();
        if (!v141 && (v145 = [(__CFString *)v140 length], (*(v15 + 80) = v145) != 0))
        {
LABEL_136:
          String.init(_cocoaString:)();
        }

        else
        {
        }
      }

      goto LABEL_137;
    }

    v142 = [(__CFString *)v138 UTF8String];
    if (v142)
    {
      String.init(utf8String:)(v142);
      if (v143)
      {
        goto LABEL_135;
      }

      __break(1u);
      goto LABEL_130;
    }

LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

LABEL_130:
  _CFIndirectTaggedPointerStringGetContents();
  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v144)
  {
    goto LABEL_135;
  }

  [(__CFString *)v138 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
LABEL_137:
  v146 = objc_allocWithZone(NSError);
  v147 = String._bridgeToObjectiveCImpl()();

  v148 = [v146 initWithDomain:v147 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v149 = [v148 domain];
  if (!v149)
  {
    goto LABEL_146;
  }

  v150 = v149;
  v151 = _objc_isTaggedPointer(v149);
  v152 = v150;
  v153 = v152;
  if ((v151 & 1) == 0)
  {
    goto LABEL_143;
  }

  v154 = _objc_getTaggedPointerTag(v152);
  switch(v154)
  {
    case 0:
      goto LABEL_153;
    case 0x16:
      v161 = [v153 UTF8String];
      if (!v161)
      {
        goto LABEL_216;
      }

      v162 = String.init(utf8String:)(v161);
      if (v163)
      {
        goto LABEL_154;
      }

      __break(1u);
LABEL_153:
      _CFIndirectTaggedPointerStringGetContents();
      v162 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v163)
      {
        [v153 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        tv_sec = v213.tv_sec;
        tv_nsec = v213.tv_nsec;
        goto LABEL_159;
      }

LABEL_154:
      tv_sec = v162;
      tv_nsec = v163;

      goto LABEL_159;
    case 2:
      MEMORY[0x1EEE9AC00](v154);
      tv_sec = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      tv_nsec = v156;

      goto LABEL_160;
  }

LABEL_143:
  LOBYTE(v213.tv_sec) = 0;
  *(v15 + 80) = 0;
  if (!__CFStringIsCF())
  {
    v158 = v153;
    v159 = String.init(_nativeStorage:)();
    if (v160)
    {
      tv_sec = v159;
      tv_nsec = v160;

      goto LABEL_160;
    }

    v210 = [v158 length];
    if (v210)
    {
      goto LABEL_158;
    }

LABEL_146:
    tv_sec = 0;
    tv_nsec = 0xE000000000000000;
    goto LABEL_160;
  }

  if (!*(v15 + 80))
  {

    goto LABEL_146;
  }

LABEL_158:
  tv_sec = String.init(_cocoaString:)();
  tv_nsec = v164;
LABEL_159:

LABEL_160:
  v165 = v138;
  v166 = v165;
  if (!v136)
  {
LABEL_165:
    LOBYTE(v213.tv_sec) = 0;
    v210 = 0;
    if (__CFStringIsCF())
    {
      if (v210)
      {
        goto LABEL_180;
      }
    }

    else
    {
      v171 = v166;
      v172 = String.init(_nativeStorage:)();
      if (v173)
      {
        v168 = v172;
        v170 = v173;

        goto LABEL_181;
      }

      v210 = [(__CFString *)v171 length];
      if (v210)
      {
LABEL_180:
        v168 = String.init(_cocoaString:)();
        v170 = v177;
        goto LABEL_181;
      }
    }

    v168 = 0;
    v170 = 0xE000000000000000;
    goto LABEL_181;
  }

  v167 = _objc_getTaggedPointerTag(v165);
  if (!v167)
  {
    goto LABEL_175;
  }

  if (v167 == 22)
  {
    v174 = [(__CFString *)v166 UTF8String];
    if (!v174)
    {
      goto LABEL_215;
    }

    v175 = String.init(utf8String:)(v174);
    if (v176)
    {
LABEL_176:
      v168 = v175;
      v170 = v176;

      goto LABEL_181;
    }

    __break(1u);
LABEL_175:
    _CFIndirectTaggedPointerStringGetContents();
    v175 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v176)
    {
      [(__CFString *)v166 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v168 = v213.tv_sec;
      v170 = v213.tv_nsec;
      goto LABEL_181;
    }

    goto LABEL_176;
  }

  if (v167 != 2)
  {
    goto LABEL_165;
  }

  MEMORY[0x1EEE9AC00](v167);
  v168 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v170 = v169;

LABEL_181:
  if (tv_sec == v168 && tv_nsec == v170)
  {
  }

  else
  {
    v178 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v178 & 1) == 0)
    {
      __break(1u);
    }
  }

  swift_willThrow();

  outlined destroy of DateComponents.ISO8601FormatStyle(v215);
  v179 = type metadata accessor for DecodingError();
  swift_allocError();
  v181 = v180;
  v182 = *(v198 + 160);

  _CodingPathNode.path.getter(v182);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v179 - 8) + 104))(v181, *MEMORY[0x1E69E6B00], v179);
LABEL_29:
  swift_willThrow();
}

uint64_t DateComponents.year.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 48) = v3;
  *(v2 + 56) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.month.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 64) = v3;
  *(v2 + 72) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t PropertyListEncoder.encodeToTopLevelContainerXML<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = type metadata accessor for __PlistEncoderXML();
  v13 = swift_allocObject();
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v26 = xmmword_181248570;
  *(v13 + 40) = xmmword_181248570;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 8;
  *(v13 + 80) = xmmword_18121B2B0;
  *(v13 + 96) = 8;
  *(v13 + 104) = xmmword_18121D490;
  *(v13 + 120) = 8;
  if (swift_dynamicCastMetatype())
  {
    (*(v7 + 16))(v9, a1, a2);

    swift_dynamicCast();
    v14 = v29;

    v16 = 0;
    v17 = 4;
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      *(v13 + 40) = v26;
      v32 = v12;
      v33 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistEncoderXML and conformance __PlistEncoderXML, type metadata accessor for __PlistEncoderXML);
      v29 = v13;

      v19 = a1;
      v20 = v34;
      dispatch thunk of Encodable.encode(to:)();
      if (v20)
      {
        __swift_destroy_boxed_opaque_existential_1(&v29);
        *(v13 + 40) = 0x8000000000000000;

        *(v13 + 48) = 0;
        if (*(*(v13 + 16) + 16))
        {
          specialized ContiguousArray._customRemoveLast()(&v29);
          if (v31 == 255)
          {
            outlined consume of _XMLPlistEncodingFormat.Reference?(v29, v30, 0xFFu);
            specialized ContiguousArray.remove(at:)(*(*(v13 + 16) + 16) - 1, &v29);
            outlined consume of _XMLPlistEncodingFormat.Reference(v29, v30, v31);
          }

          else
          {
            outlined consume of _XMLPlistEncodingFormat.Reference?(v29, v30, v31);
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v29);
        *(v13 + 40) = 0x8000000000000000;

        *(v13 + 48) = 0;
        if (*(*(v13 + 16) + 16))
        {
          specialized ContiguousArray._customRemoveLast()(&v29);
          v17 = v31;
          v14 = v29;
          v16 = v30;
          if (v31 == 255)
          {
            outlined consume of _XMLPlistEncodingFormat.Reference?(v29, v30, 0xFFu);
            specialized ContiguousArray.remove(at:)(*(*(v13 + 16) + 16) - 1, &v29);

            v14 = v29;
            v16 = v30;
            v17 = v31;
          }

          else
          {
          }

          goto LABEL_5;
        }

        v21 = type metadata accessor for EncodingError();
        swift_allocError();
        v23 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v23[3] = a2;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
        (*(v7 + 16))(boxed_opaque_existential_0, v19, a2);
        v29 = 0;
        v30 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);

        v29 = 0x6576656C2D706F54;
        v30 = 0xEA0000000000206CLL;
        v25 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v25);

        MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181482320);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B30], v21);
      }

      swift_willThrow();
    }

    (*(v7 + 16))(v9, a1, a2);

    swift_dynamicCast();
    v14 = v29;
    v16 = v30;

    v17 = 5;
  }

LABEL_5:
  v18 = v28;
  *v28 = v14;
  v18[1] = v16;
  *(v18 + 16) = v17;
  return result;
}

uint64_t _PlistUnkeyedEncodingContainerXML.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *&v39 = a2;
  *(&v39 + 1) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  result = (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  if ((v3[3] & 0xFE) != 6)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v10 = *(v7 + 40);
  v11 = *(*(v3[1] + 16) + 16);
  v33 = v39;
  v12 = v39;
  v13 = __swift_project_boxed_opaque_existential_1(v38, v39);
  v14 = swift_dynamicCastMetatype();
  if (v14)
  {
    *&v33 = v4;
    v15 = MEMORY[0x1EEE9AC00](v14);
    (*(v17 + 16))(&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12, v15);
    swift_dynamicCast();
    v18 = v34;
    v19 = 4;
    v20 = 0;
  }

  else
  {
    v21 = swift_dynamicCastMetatype();
    if (v21)
    {
      *&v33 = v4;
      v22 = MEMORY[0x1EEE9AC00](v21);
      (*(v24 + 16))(&v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12, v22);
      swift_dynamicCast();
      v18 = v34;
      v20 = v35;
      v19 = 5;
    }

    else
    {
      MEMORY[0x1EEE9AC00](0);

      specialized __PlistEncoderXML._wrapGeneric<A>(_:for:_:)(partial apply for specialized closure #1 in __PlistEncoderXML.wrapGeneric<A, B>(_:for:_:), v10, v11, 0, 0, 2, v36);

      if (v4)
      {
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }

      *&v33 = 0;
      v19 = v37;
      if (v37 == 255)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__SDyA2EGGMd);
        v19 = 7;
        v18 = swift_allocObject();
        v20 = 0;
        *(v18 + 16) = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v18 = v36[0];
        v20 = v36[1];
      }
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(v38);
  if (*(v3 + 24) != 6)
  {
    goto LABEL_18;
  }

  v26 = v3[2];
  v25 = v3[1];
  v27 = (v25 + 16);
  v28 = *(v25 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 16) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
    v28 = *v27;
  }

  v31 = *(v28 + 16);
  v30 = *(v28 + 24);
  if (v31 >= v30 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
    v28 = *v27;
  }

  *(v28 + 16) = v31 + 1;
  v32 = v28 + 24 * v31;
  *(v32 + 32) = v18;
  *(v32 + 40) = v20;
  *(v32 + 48) = v19;
  *(v25 + 16) = v28;
  return outlined consume of _XMLPlistEncodingFormat.Reference(v25, v26, 6u);
}

uint64_t lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__cdecl NSZoneRealloc(NSZone *zone, void *ptr, NSUInteger size)
{
  if (ptr)
  {
    if (zone)
    {

      return malloc_type_zone_realloc(zone, ptr, size, 0x9C765993uLL);
    }

    else
    {

      return malloc_type_realloc(ptr, size, 0x56C3EBuLL);
    }
  }

  else
  {
    if (!zone)
    {
      zone = malloc_default_zone();
    }

    return malloc_type_zone_malloc(zone, size, 0x409734D7uLL);
  }
}

void *static DecodableAttributedStringKey<>.decode(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    type metadata accessor for NSKeyedUnarchiver();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)(AssociatedTypeWitness, v10, v11);
    v3 = v5;
    if (v5)
    {
      outlined consume of Data._Representation(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
      swift_willThrow();
      outlined consume of Data._Representation(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  return v3;
}

unint64_t specialized BidirectionalCollection<>._getBlock(for:in:)@<X0>(char a1@<W0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = BigString.UTF8View.startIndex.getter();
  v8 = v7;
  v10 = v9;
  v70 = v11;
  result = BigString.UTF8View.endIndex.getter();
  v16 = result >> 10;
  v17 = v6 >> 10;
  if (result >> 10 < v6 >> 10)
  {
    __break(1u);
LABEL_59:
    swift_once();
    goto LABEL_16;
  }

  v68 = v8;
  v69 = v10;
  v3 = *a2 >> 10;
  if (v3 == v17 && v16 == a2[4] >> 10 && (a1 & 4) == 0)
  {
    *a3 = v6;
    a3[1] = v8;
    a3[2] = v10;
    a3[3] = v70;
    a3[4] = result;
    a3[5] = v13;
    a3[6] = v14;
    a3[7] = v15;
    a3[8] = 0;
    a3[9] = 0;
    a3[10] = 0;
    a3[11] = 2;
    return result;
  }

  if (v3 < v17 || (v65 = a2[4], v64 = v65 >> 10, v16 < v65 >> 10))
  {
    *a3 = v6;
    a3[1] = v8;
    a3[2] = v10;
    a3[3] = v70;
    a3[4] = result;
    a3[5] = v13;
    a3[6] = v14;
    a3[7] = v15;
    a3[8] = result;
    a3[9] = v13;
    a3[10] = v14;
    a3[11] = v15;
    return result;
  }

  v63 = a2[5];
  v59 = a2[6];
  v60 = a2[7];
  v67 = result >> 10;
  if ((a1 & 8) == 0)
  {
    v66 = &outlined read-only object #1 of one-time initialization function for paragraphSeparators;
    if (a1)
    {
      goto LABEL_13;
    }

LABEL_17:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 2;
    goto LABEL_18;
  }

  if (one-time initialization token for lineSeparators != -1)
  {
    goto LABEL_59;
  }

LABEL_16:
  v66 = static String.lineSeparators;

  v16 = v67;
  if ((a1 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (v3 == v17)
  {
LABEL_14:
    v19 = v6;
    v20 = v68;
    v21 = v69;
    v22 = v70;
    goto LABEL_18;
  }

  v42 = BigString.UTF8View.index(before:)();
  v16 = v67;
  v57 = v42;
  v58 = v43;
  v62 = v44;
  v22 = v45;
  if (v3 < v67)
  {
    if (BigString.UTF8View.subscript.getter() == 10)
    {
      v19 = v57;
      v21 = v58;
      v20 = v62;
      if (BigString.UTF8View.subscript.getter() == 13)
      {
        if (v17 >= v57 >> 10)
        {
          v16 = v67;
          if (v70 != 2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v19 = BigString.UTF8View.index(before:)();
          v20 = v46;
          v21 = v47;
          v22 = v48;
          v16 = v67;
        }
      }

      else
      {
        v16 = v67;
      }

      goto LABEL_38;
    }

    v16 = v67;
  }

  v19 = v57;
  v21 = v58;
  v20 = v62;
LABEL_38:
  v49 = v19 >> 10;
  if (v19 >> 10 >= v17 && v49 < v16)
  {
    while (1)
    {
      specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v66, v19, v20, v21, v22, 1, &v73);
      if (v76 != 2)
      {
        v19 = BigString.UTF8View.index(after:)();
        v20 = v53;
        v21 = v54;
        v22 = v55;
        v16 = v67;
        goto LABEL_18;
      }

      if (v17 >= v49)
      {
        v19 = v6;
        v20 = v68;
        v21 = v69;
        v22 = v70;
        v16 = v67;
        goto LABEL_18;
      }

      v19 = BigString.UTF8View.index(before:)();
      v20 = v50;
      v21 = v51;
      v22 = v52;
      v49 = v19 >> 10;
      if (v19 >> 10 < v17)
      {
        break;
      }

      v16 = v67;
      if (v49 >= v67)
      {
        goto LABEL_18;
      }
    }

    v16 = v67;
  }

LABEL_18:
  if ((a1 & 6) != 0)
  {
    v61 = v20;
    v23 = v64;
    if (v3 == v64)
    {
      v24 = v65;
      v26 = v59;
      v25 = v60;
      if (v64 >= v16)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v24 = BigString.UTF8View.index(before:)();
      v63 = v35;
      v26 = v36;
      v25 = v37;
      v23 = v24 >> 10;
      if (v24 >> 10 >= v67)
      {
        goto LABEL_48;
      }
    }

    v72 = v22;
    specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v66, v24, v63, v26, v25, 1, &v73);
    v33 = v76;
    if (v76 == 2)
    {
      specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v66, v24, v63, v26, v25, 0, &v73);
      v33 = v76;
      if (v76 != 2)
      {
LABEL_35:

        v27 = v73;
        v28 = v74;
        v29 = v75;
        v30 = v77;
        v31 = v78;
        v32 = v79;
        v34 = v80;
        v22 = v72;
LABEL_49:
        v56 = v23 == v67;
        if (v23 == v67)
        {
          v27 = v24;
        }

        v20 = v61;
        if (v56)
        {
          v28 = v63;
          v29 = v26;
          v33 = v25;
          v30 = v24;
          v31 = v63;
          v32 = v26;
          v34 = v25;
        }

        goto LABEL_53;
      }

      while (1)
      {
        v24 = BigString.UTF8View.index(after:)();
        v41 = v38;
        v26 = v39;
        v25 = v40;
        v23 = v24 >> 10;
        if (v24 >> 10 >= v67)
        {
          break;
        }

        specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v66, v24, v38, v39, v40, 0, &v73);
        v33 = v76;
        if (v76 != 2)
        {
          v63 = v41;
          goto LABEL_35;
        }
      }

      v63 = v38;
      v22 = v72;
LABEL_48:

      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 2;
      v34 = 2;
      goto LABEL_49;
    }

    v27 = v73;
    v28 = v74;
    v29 = v75;
    v30 = v77;
    v31 = v78;
    v32 = v79;
    v34 = v80;
    v20 = v61;
  }

  else
  {

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 2;
    v34 = 2;
  }

LABEL_53:
  *a3 = v19;
  a3[1] = v20;
  a3[2] = v21;
  a3[3] = v22;
  a3[4] = v30;
  a3[5] = v31;
  a3[6] = v32;
  a3[7] = v34;
  a3[8] = v27;
  a3[9] = v28;
  a3[10] = v29;
  a3[11] = v33;
  return result;
}