uint64_t closure #1 in _LocaleICU.calendarIdentifierDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v6 = a2;
  *&v113[514] = *MEMORY[0x1E69E9840];
  v96 = a1;
  v8 = *(a1 + 480);
  if (*(v8 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      *a4 = *(*(v8 + 56) + 16 * v9);
    }
  }

  v101 = v4;
  v12 = 0xEF3D7261646E656CLL;
  v13 = *(a3 + 24);
  v100 = v6;
  v107 = v6;
  v14 = Calendar.Identifier.cfCalendarIdentifier.getter();
  *&v111[0] = 0x61634053555F6E65;
  *(&v111[0] + 1) = 0xEF3D7261646E656CLL;
  MEMORY[0x1865CB0E0](v14);

  v106 = 0;
  String.utf8CString.getter();

  v15 = String.utf8CString.getter();
  DisplayKeywordValue = uloc_getDisplayKeywordValue();

  if (DisplayKeywordValue - 1 <= 0x100)
  {
    v17 = specialized String.init(_utf16:)(v113, DisplayKeywordValue);
    if (v18)
    {
      v12 = v17;
      v15 = v18;

      goto LABEL_99;
    }
  }

  v19 = *(a3 + 136);
  v20 = *(a3 + 168);
  v111[6] = *(a3 + 152);
  *v112 = v20;
  *&v112[12] = *(a3 + 180);
  v21 = *(a3 + 72);
  v22 = *(a3 + 104);
  v111[2] = *(a3 + 88);
  v111[3] = v22;
  v111[4] = *(a3 + 120);
  v111[5] = v19;
  v111[0] = *(a3 + 56);
  v111[1] = v21;
  v95 = a4;
  if (_s10Foundation17LocalePreferencesVSgWOg(v111) != 1)
  {
    v23 = *(&v111[0] + 1);
    if (*(&v111[0] + 1))
    {

      v25 = *(v23 + 2);
      if (!v25)
      {
LABEL_97:

        v12 = 0;
        v15 = 0;
LABEL_98:
        a4 = v95;
LABEL_99:
        v68 = v96;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v111[0] = *(v68 + 480);
        v13 = *&v111[0];
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
        v71 = *(v13 + 16);
        v72 = (v70 & 1) == 0;
        v73 = __OFADD__(v71, v72);
        v74 = v71 + v72;
        if (v73)
        {
LABEL_110:
          __break(1u);
        }

        else
        {
          LOBYTE(a3) = v70;
          if (*(v13 + 24) < v74)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, isUniquelyReferenced_nonNull_native);
            v75 = *&v111[0];
            v24 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
            if ((a3 & 1) != (v76 & 1))
            {
              goto LABEL_134;
            }

            if (a3)
            {
              goto LABEL_103;
            }

LABEL_106:
            result = specialized _NativeDictionary._insert(at:key:value:)(v24, v100, v12, v15, v75);
            goto LABEL_107;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v75 = v13;
            if ((v70 & 1) == 0)
            {
              goto LABEL_106;
            }

LABEL_103:
            v77 = (*(v75 + 56) + 16 * v24);
            *v77 = v12;
            v77[1] = v15;

LABEL_107:
            *(v96 + 480) = v75;
            *a4 = v12;
            *(a4 + 8) = v15;
            return result;
          }
        }

        v99 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSSSgGMd);
        v78 = static _DictionaryStorage.copy(original:)();
        v75 = v78;
        if (*(v13 + 16))
        {
          v95 = a4;
          v79 = (v78 + 64);
          v80 = v13 + 64;
          v81 = ((1 << *(v75 + 32)) + 63) >> 6;
          if (v75 != v13 || v79 >= v80 + 8 * v81)
          {
            memmove(v79, (v13 + 64), 8 * v81);
          }

          v82 = 0;
          *(v75 + 16) = *(v13 + 16);
          v83 = 1 << *(v13 + 32);
          v84 = *(v13 + 64);
          v85 = -1;
          if (v83 < 64)
          {
            v85 = ~(-1 << v83);
          }

          v86 = v85 & v84;
          v87 = (v83 + 63) >> 6;
          if ((v85 & v84) != 0)
          {
            do
            {
              v88 = __clz(__rbit64(v86));
              v86 &= v86 - 1;
LABEL_124:
              v91 = v88 | (v82 << 6);
              v92 = *(*(v13 + 56) + 16 * v91);
              *(*(v75 + 48) + v91) = *(*(v13 + 48) + v91);
              *(*(v75 + 56) + 16 * v91) = v92;
            }

            while (v86);
          }

          v89 = v82;
          while (1)
          {
            v82 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              __break(1u);
            }

            if (v82 >= v87)
            {
              break;
            }

            v90 = *(v80 + 8 * v82);
            ++v89;
            if (v90)
            {
              v88 = __clz(__rbit64(v90));
              v86 = (v90 - 1) & v90;
              goto LABEL_124;
            }
          }

          a4 = v95;
        }

        v24 = v99;
        if ((a3 & 1) == 0)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }

      goto LABEL_51;
    }
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = String._bridgeToObjectiveCImpl()();
  v26 = CFPreferencesCopyAppValue(v15, *MEMORY[0x1E695E8A8]);
  swift_unknownObjectRelease();
  if (v26 && (v109 = v26, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v102;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v99 = *(v24 + 16);
  if (!v99)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_50:

    v25 = *(v23 + 2);
    if (!v25)
    {
      goto LABEL_97;
    }

LABEL_51:
    a4 = v25;
    v12 = 0;
    v99 = *MEMORY[0x1E695E4A8];
    v44 = v23 + 40;
    while (1)
    {
      if (v12 >= *(v23 + 2))
      {
        goto LABEL_109;
      }

      v45 = String._bridgeToObjectiveCImpl()();
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v99, v45);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_68;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v48 = CanonicalLanguageIdentifierFromString;
      v49 = v48;
      if (!isTaggedPointer)
      {
        goto LABEL_60;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v48);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v51 = v101;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v15 = v52;
            v101 = v51;

            goto LABEL_91;
          }

LABEL_60:
          LOBYTE(v102) = 0;
          v109 = 0;
          LOBYTE(v104) = 0;
          v105 = 0;
          IsCF = __CFStringIsCF();
          if (!IsCF)
          {
            v54 = v49;
            String.init(_nativeStorage:)();
            if (v55)
            {
              v15 = v55;

              goto LABEL_91;
            }

            v109 = [(__CFString *)v54 length];
            if (!v109)
            {

              goto LABEL_68;
            }

LABEL_88:
            String.init(_cocoaString:)();
LABEL_89:
            v15 = v58;
            goto LABEL_90;
          }

          if (!v109)
          {

LABEL_68:
            v15 = 0xE000000000000000;
            goto LABEL_91;
          }

          if (v105 == 1)
          {
            if (v102)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_89;
          }

          if ((v104 & 1) == 0)
          {
            goto LABEL_88;
          }

          if (v102 != 1)
          {
            IsCF = [(__CFString *)v49 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v59 = v101;
          v60 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v15 = v61;
          v101 = v59;
          v62 = (v61 >> 56) & 0xF;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v62 = v60 & 0xFFFFFFFFFFFFLL;
          }

          if (!v62)
          {

            goto LABEL_88;
          }

          goto LABEL_74;
        }

        v56 = [(__CFString *)v49 UTF8String];
        if (!v56)
        {
          goto LABEL_132;
        }

        String.init(utf8String:)(v56);
        if (!v57)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v104 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v57)
        {
          [(__CFString *)v49 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v15 = v103;
          goto LABEL_90;
        }
      }

      v15 = v57;
LABEL_74:

LABEL_90:
LABEL_91:
      LOBYTE(v104) = v100;
      v63 = Calendar.Identifier.cfCalendarIdentifier.getter();
      v109 = 0x61634053555F6E65;
      v110 = 0xEF3D7261646E656CLL;
      MEMORY[0x1865CB0E0](v63);

      LODWORD(v102) = 0;
      v13 = String.utf8CString.getter();

      LOBYTE(a3) = String.utf8CString.getter();

      v64 = uloc_getDisplayKeywordValue();

      if (v102 <= 0 && v102 != -127 && (v64 - 1) < 0x101)
      {
        a3 = &v94;
        MEMORY[0x1EEE9AC00](v24);
        v66 = v101;
        v24 = closure #1 in String.init(_utf16:)(&v94 - v65, v108, v67, &v109);
        v101 = v66;
        if (v66)
        {
          goto LABEL_133;
        }

        v15 = v110;
        if (v110)
        {
          v12 = v109;

          goto LABEL_98;
        }
      }

      ++v12;
      v44 += 16;
      if (a4 == v12)
      {
        goto LABEL_97;
      }
    }
  }

  v27 = 0;
  v98 = *MEMORY[0x1E695E4A8];
  a4 = v24 + 40;
  v23 = MEMORY[0x1E69E7CC0];
  v97 = v24;
  while (1)
  {
    if (v27 >= *(v24 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v28 = String._bridgeToObjectiveCImpl()();

    v29 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v98, v28);
    swift_unknownObjectRelease();
    if (!v29)
    {

      goto LABEL_29;
    }

    v30 = _objc_isTaggedPointer(v29);
    v31 = v29;
    v32 = v31;
    if ((v30 & 1) == 0)
    {
      goto LABEL_26;
    }

    v33 = _objc_getTaggedPointerTag(v31);
    if (!v33)
    {
      v104 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v39 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v40)
      {
        [(__CFString *)v32 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        a3 = v102;
        v13 = v103;
LABEL_42:

        goto LABEL_43;
      }

LABEL_37:
      a3 = v39;
      v13 = v40;

      goto LABEL_43;
    }

    if (v33 == 22)
    {
      break;
    }

    if (v33 != 2)
    {
LABEL_26:
      LOBYTE(v102) = 0;
      v109 = 0;
      LOBYTE(v104) = 0;
      v105 = 0;
      if (__CFStringIsCF())
      {
        a3 = v109;

LABEL_30:
        v13 = 0xE000000000000000;
        goto LABEL_43;
      }

      v35 = v32;
      v36 = String.init(_nativeStorage:)();
      if (v37)
      {
        a3 = v36;
        v13 = v37;

        goto LABEL_43;
      }

      v109 = [(__CFString *)v35 length];
      if (v109)
      {
        a3 = String.init(_cocoaString:)();
        v13 = v41;
        goto LABEL_42;
      }

LABEL_29:
      a3 = 0;
      goto LABEL_30;
    }

    MEMORY[0x1EEE9AC00](v33);
    a3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v13 = v34;

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v12 = *(v23 + 2);
    v42 = *(v23 + 3);
    v15 = (v12 + 1);
    if (v12 >= v42 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v12 + 1, 1, v23);
    }

    v27 = (v27 + 1);
    *(v23 + 2) = v15;
    v43 = &v23[16 * v12];
    *(v43 + 4) = a3;
    *(v43 + 5) = v13;
    a4 += 16;
    v24 = v97;
    if (v99 == v27)
    {
      goto LABEL_50;
    }
  }

  v38 = [(__CFString *)v32 UTF8String];
  if (!v38)
  {
    goto LABEL_130;
  }

  v39 = String.init(utf8String:)(v38);
  if (v40)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  v93 = v101;
  swift_willThrow();

  __break(1u);
LABEL_134:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #1 in _LocaleICU.timeZone.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 384);
  v5 = *(a1 + 392);
  if (v4 != 1)
  {
    *a2 = v4;
    a2[1] = v5;
    goto LABEL_10;
  }

  v7 = specialized static Locale.keywordValue(identifier:key:)();
  if (!v8)
  {
LABEL_9:
    outlined consume of TimeZone??(*(a1 + 384));
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_10;
  }

  if (one-time initialization token for cache != -1)
  {
    v13 = v7;
    swift_once();
    v7 = v13;
  }

  v9 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock(v9 + 30);
  partial apply for closure #1 in TimeZoneCache.fixed(_:)(v14);
  if (!v2)
  {
    os_unfair_lock_unlock(v9 + 30);
    v10 = v14[0];
    v11 = v14[1];

    if (v10)
    {
      v12 = *(a1 + 384);
      swift_unknownObjectRetain();
      outlined consume of TimeZone??(v12);
      *(a1 + 384) = v10;
      *(a1 + 392) = v11;
      *a2 = v10;
      a2[1] = v11;
LABEL_10:
      outlined copy of TimeZone??(v4);
      return;
    }

    goto LABEL_9;
  }

  os_unfair_lock_unlock(v9 + 30);
  __break(1u);
}

__CFString *closure #1 in _LocaleICU.collationIdentifierDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *p_info@<X8>)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 488);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *p_info = *(*(v10 + 56) + 16 * v11);
    }
  }

  v95 = v7;
  v94 = v6;
  v14 = specialized _LocaleICU.displayKeyword(for:keyword:value:)(*(a4 + 16), *(a4 + 24), 0x6F6974616C6C6F63, 0xE90000000000006ELL, v7, v6);
  if (v15)
  {
    v6 = v14;
    v16 = v15;

    goto LABEL_77;
  }

  v87 = v8;
  v17 = *(a4 + 152);
  v98[5] = *(a4 + 136);
  v98[6] = v17;
  v99[0] = *(a4 + 168);
  *(v99 + 12) = *(a4 + 180);
  v18 = *(a4 + 72);
  v19 = *(a4 + 104);
  v98[2] = *(a4 + 88);
  v98[3] = v19;
  v98[4] = *(a4 + 120);
  v98[0] = *(a4 + 56);
  v98[1] = v18;
  v89 = p_info;
  if (_s10Foundation17LocalePreferencesVSgWOg(v98) != 1)
  {
    v8 = *(&v98[0] + 1);
    if (*(&v98[0] + 1))
    {

LABEL_16:
      v16 = v95;
      p_info = *(v8 + 16);
      if (!p_info)
      {
LABEL_43:

        v6 = 0;
        v16 = 0;
LABEL_76:
        p_info = v89;
        v8 = v87;
LABEL_77:

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v98[0] = *(v8 + 488);
        v7 = *&v98[0];
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
        data = v7->data;
        v61 = (v59 & 1) == 0;
        v62 = __OFADD__(data, v61);
        v63 = &data[v61];
        if (v62)
        {
LABEL_87:
          __break(1u);
        }

        else
        {
          LOBYTE(a4) = v59;
          if (v7->length < v63)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, isUniquelyReferenced_nonNull_native);
            v64 = *&v98[0];
            v20 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
            if ((a4 & 1) == (v65 & 1))
            {
              goto LABEL_83;
            }

            v20 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v64 = v7;
LABEL_83:
            if (a4)
            {
LABEL_84:
              v66 = v20;

              v67 = (v64[1].length + 16 * v66);
              *v67 = v6;
              v67[1] = v16;

LABEL_106:
              *(v8 + 488) = v64;
              *p_info = v6;
              p_info[1] = v16;
              return result;
            }

LABEL_105:
            result = specialized _NativeDictionary._insert(at:key:value:)(v20, v95, v94, v6, v16, v64);
            goto LABEL_106;
          }
        }

        v93 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
        v68 = static _DictionaryStorage.copy(original:)();
        v64 = v68;
        if (v7->data)
        {
          v88 = v8;
          v90 = p_info;
          v69 = (v68 + 64);
          v70 = v7 + 2;
          v71 = ((1 << LOBYTE(v64[1].isa)) + 63) >> 6;
          if (v64 != v7 || v69 >= &v70->isa + 8 * v71)
          {
            memmove(v69, &v7[2], 8 * v71);
          }

          v72 = 0;
          v64->data = v7->data;
          v73 = 1 << LOBYTE(v7[1].isa);
          isa = v7[2].isa;
          v75 = -1;
          if (v73 < 64)
          {
            v75 = ~(-1 << v73);
          }

          v76 = v75 & isa;
          v77 = (v73 + 63) >> 6;
          if ((v75 & isa) != 0)
          {
            do
            {
              v78 = __clz(__rbit64(v76));
              v76 &= v76 - 1;
LABEL_101:
              v81 = 16 * (v78 | (v72 << 6));
              v82 = &v7[1].data[v81];
              v83 = *v82;
              v84 = v82[1];
              v85 = &v64[1].data[v81];
              v86 = *(v7[1].length + v81);
              *v85 = v83;
              *(v85 + 1) = v84;
              *(v64[1].length + v81) = v86;
            }

            while (v76);
          }

          v79 = v72;
          while (1)
          {
            v72 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              __break(1u);
            }

            if (v72 >= v77)
            {
              break;
            }

            v80 = *(&v70->isa + v72);
            ++v79;
            if (v80)
            {
              v78 = __clz(__rbit64(v80));
              v76 = (v80 - 1) & v80;
              goto LABEL_101;
            }
          }

          p_info = v90;
          v8 = v88;
        }

        v20 = v93;
        if (a4)
        {
          goto LABEL_84;
        }

        goto LABEL_105;
      }

      v24 = 0;
      v25 = *MEMORY[0x1E695E4A8];
      v26 = v8 + 40;
      while (1)
      {
        if (v24 >= *(v8 + 16))
        {
          goto LABEL_86;
        }

        v27 = String._bridgeToObjectiveCImpl()();
        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v25, v27);
        swift_unknownObjectRelease();
        if (!CanonicalLanguageIdentifierFromString)
        {
          goto LABEL_29;
        }

        isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
        v30 = CanonicalLanguageIdentifierFromString;
        v31 = v30;
        if (!isTaggedPointer)
        {
          goto LABEL_25;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v30);
        if (TaggedPointerTag)
        {
          break;
        }

        _CFIndirectTaggedPointerStringGetContents();
        v39 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v40)
        {
          a4 = v40;
          v7 = v39;
LABEL_38:

          goto LABEL_40;
        }

        [(__CFString *)v31 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v7 = v96;
        a4 = v97;
LABEL_40:

        v34 = v7;
LABEL_41:
        v6 = specialized _LocaleICU.displayKeyword(for:keyword:value:)(v34, a4, 0x6F6974616C6C6F63, 0xE90000000000006ELL, v16, v94);
        v16 = v42;

        if (v16)
        {

          goto LABEL_76;
        }

        ++v24;
        v26 += 16;
        v16 = v95;
        if (p_info == v24)
        {
          goto LABEL_43;
        }
      }

      if (TaggedPointerTag == 22)
      {
        result = [(__CFString *)v31 UTF8String];
        if (!result)
        {
          goto LABEL_110;
        }

        result = String.init(utf8String:)(result);
        if (!v38)
        {
          goto LABEL_109;
        }

        v7 = result;
        a4 = v38;
        goto LABEL_38;
      }

      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        a4 = v33;

        v34 = v7;
        v16 = v95;
        goto LABEL_41;
      }

LABEL_25:
      LOBYTE(v96) = 0;
      if (__CFStringIsCF())
      {

LABEL_29:
        v34 = 0;
        a4 = 0xE000000000000000;
        goto LABEL_41;
      }

      v7 = v31;
      v35 = String.init(_nativeStorage:)();
      if (v36)
      {
        a4 = v36;
        v37 = v35;

        v34 = v37;
        goto LABEL_41;
      }

      if (![(__CFString *)v7 length])
      {

        goto LABEL_29;
      }

      v7 = String.init(_cocoaString:)();
      a4 = v41;
      goto LABEL_40;
    }
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v21 = String._bridgeToObjectiveCImpl()();
  v6 = CFPreferencesCopyAppValue(v21, *MEMORY[0x1E695E8A8]);
  v20 = swift_unknownObjectRelease();
  if (v6 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), v20 = swift_dynamicCast(), (v20 & 1) != 0))
  {
    v22 = v96;
    v23 = v96->data;
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v23)
    {
LABEL_14:
      v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

      goto LABEL_16;
    }
  }

  v16 = 0;
  v92 = *MEMORY[0x1E695E4A8];
  p_info = &v22[1].info;
  v8 = MEMORY[0x1E69E7CC0];
  v91 = v23;
  while (1)
  {
    if (v16 >= v22->data)
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v43 = String._bridgeToObjectiveCImpl()();

    v44 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v92, v43);
    swift_unknownObjectRelease();
    if (!v44)
    {

      a4 = 0;
      v7 = 0xE000000000000000;
      goto LABEL_69;
    }

    v45 = _objc_isTaggedPointer(v44);
    v46 = v44;
    v47 = v46;
    if (v45)
    {
      break;
    }

LABEL_53:
    LOBYTE(v96) = 0;
    if (!__CFStringIsCF())
    {
      v50 = v47;
      v51 = String.init(_nativeStorage:)();
      if (v52)
      {
        a4 = v51;
        v7 = v52;

        goto LABEL_67;
      }

      if (![(__CFString *)v50 length])
      {

        a4 = 0;
        v7 = 0xE000000000000000;
        goto LABEL_67;
      }

      v23 = v91;
      a4 = String.init(_cocoaString:)();
      v7 = v54;
LABEL_68:

      goto LABEL_69;
    }

    a4 = 0;

    v7 = 0xE000000000000000;
LABEL_69:
    v20 = swift_isUniquelyReferenced_nonNull_native();
    if ((v20 & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = v20;
    }

    v56 = *(v8 + 16);
    v55 = *(v8 + 24);
    v6 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v8);
      v8 = v20;
    }

    ++v16;
    *(v8 + 16) = v6;
    v57 = v8 + 16 * v56;
    *(v57 + 32) = a4;
    *(v57 + 40) = v7;
    p_info += 2;
    if (v23 == v16)
    {
      goto LABEL_15;
    }
  }

  v48 = _objc_getTaggedPointerTag(v46);
  if (!v48)
  {
    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v53)
    {
      [(__CFString *)v47 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      a4 = v96;
      v7 = v97;
      goto LABEL_68;
    }

    goto LABEL_62;
  }

  if (v48 != 22)
  {
    if (v48 == 2)
    {
      MEMORY[0x1EEE9AC00](v48);
      a4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v7 = v49;

LABEL_67:
      v23 = v91;
      goto LABEL_69;
    }

    goto LABEL_53;
  }

  result = [(__CFString *)v47 UTF8String];
  if (!result)
  {
    goto LABEL_108;
  }

  result = String.init(utf8String:)(result);
  if (v53)
  {
LABEL_62:
    a4 = result;
    v7 = v53;

    goto LABEL_69;
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t closure #1 in _LocaleICU.collation.getter@<X0>(Swift::String *a1@<X0>, Swift::String *a2@<X8>)
{
  countAndFlagsBits = a1[6]._countAndFlagsBits;
  object = a1[6]._object;
  v5 = a1[7]._countAndFlagsBits;
  v6 = a1[7]._object;
  if (object)
  {
    a2->_countAndFlagsBits = countAndFlagsBits;
    a2->_object = object;
    a2[1]._countAndFlagsBits = v5;
    a2[1]._object = v6;
  }

  else
  {
    v8 = specialized static Locale.keywordValue(identifier:key:)();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = String.lowercased()();
      v13 = a1[6]._countAndFlagsBits;
      v21 = a1[6]._object;

      outlined consume of Locale.LanguageCode?(v13, v21);
      a1[6]._countAndFlagsBits = v10;
      a1[6]._object = v11;
      a1[7] = v12;
      a2->_countAndFlagsBits = v10;
      a2->_object = v11;
      a2[1] = v12;
    }

    else
    {
      if (one-time initialization token for standard != -1)
      {
        swift_once();
      }

      v14 = *algn_1EA7B7188;
      v15 = *(&xmmword_1EA7B7190 + 1);
      v22 = xmmword_1EA7B7190;
      v23 = static Locale.Collation.standard;
      v16 = a1[6]._countAndFlagsBits;
      v20 = a1[6]._object;

      outlined consume of Locale.LanguageCode?(v16, v20);
      a1[6]._countAndFlagsBits = v23;
      a1[6]._object = v14;
      a1[7]._countAndFlagsBits = v22;
      a1[7]._object = v15;
      v17 = *algn_1EA7B7188;
      v18 = xmmword_1EA7B7190;
      a2->_countAndFlagsBits = static Locale.Collation.standard;
      a2->_object = v17;
      a2[1] = v18;
    }
  }

  return outlined copy of Locale.LanguageCode?(countAndFlagsBits, object);
}

uint64_t closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)@<X0>(UChar *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __break(1u);
  }

  v4 = String.utf8CString.getter();
  u_charsToUChars((v4 + 32), a1, 3);

  a1[3] = 0;
  String.utf8CString.getter();
  Name = ucurr_getName();

  if (Name)
  {
    result = specialized String.init(_utf16:)(Name, 0);
    *a2 = result;
    if (v7)
    {
      a2[1] = v7;
    }

    else
    {
      a2[1] = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t closure #1 in _LocaleICU.currencySymbolDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v145 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 496);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *a5 = *(*(v10 + 56) + 16 * v11);
    }
  }

  v119 = a5;
  v14 = v133;
  v129 = a3;
  v130 = a2;
  if (String.count.getter() == 3)
  {
    closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)(&v131, v144);
    if (v5)
    {
      goto LABEL_154;
    }

    v15 = *&v144[8];
    if (*&v144[8])
    {
      a4 = *v144;
LABEL_121:

LABEL_122:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v144 = *(a1 + 496);
      v31 = *v144;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
      v85 = *(v31 + 16);
      v86 = (v84 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
LABEL_132:
        __break(1u);
      }

      else
      {
        LOBYTE(v14) = v84;
        if (*(v31 + 24) < v88)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v88, isUniquelyReferenced_nonNull_native);
          v89 = *v144;
          v90 = v130;
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
          if ((v14 & 1) != (v91 & 1))
          {
            goto LABEL_155;
          }

          v92 = v119;
          if (v14)
          {
            goto LABEL_126;
          }

LABEL_129:
          result = specialized _NativeDictionary._insert(at:key:value:)(v36, v90, v129, a4, v15, v89);
          goto LABEL_130;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v89 = v31;
          v92 = v119;
          v90 = v130;
          if ((v84 & 1) == 0)
          {
            goto LABEL_129;
          }

LABEL_126:
          v93 = v36;

          v94 = (*(v89 + 56) + 16 * v93);
          *v94 = a4;
          v94[1] = v15;

LABEL_130:
          *(a1 + 496) = v89;
          *v92 = a4;
          v92[1] = v15;
          return result;
        }
      }

      v128 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
      v95 = static _DictionaryStorage.copy(original:)();
      v89 = v95;
      if (*(v31 + 16))
      {
        v96 = (v95 + 64);
        v97 = ((1 << *(v89 + 32)) + 63) >> 6;
        if (v89 != v31 || v96 >= v31 + 64 + 8 * v97)
        {
          memmove(v96, (v31 + 64), 8 * v97);
        }

        v98 = 0;
        *(v89 + 16) = *(v31 + 16);
        v99 = 1 << *(v31 + 32);
        v100 = *(v31 + 64);
        v101 = -1;
        if (v99 < 64)
        {
          v101 = ~(-1 << v99);
        }

        v102 = v101 & v100;
        v103 = (v99 + 63) >> 6;
        if ((v101 & v100) != 0)
        {
          do
          {
            v104 = __clz(__rbit64(v102));
            v102 &= v102 - 1;
LABEL_146:
            v107 = 16 * (v104 | (v98 << 6));
            v108 = (*(v31 + 48) + v107);
            v109 = *v108;
            v110 = v108[1];
            v111 = (*(v89 + 48) + v107);
            v112 = *(*(v31 + 56) + v107);
            *v111 = v109;
            v111[1] = v110;
            *(*(v89 + 56) + v107) = v112;
          }

          while (v102);
        }

        v105 = v98;
        while (1)
        {
          v98 = v105 + 1;
          if (__OFADD__(v105, 1))
          {
            __break(1u);
          }

          if (v98 >= v103)
          {
            break;
          }

          v106 = *(v31 + 64 + 8 * v98);
          ++v105;
          if (v106)
          {
            v104 = __clz(__rbit64(v106));
            v102 = (v106 - 1) & v106;
            goto LABEL_146;
          }
        }
      }

      v92 = v119;

      v36 = v128;
      v90 = v130;
      if ((v14 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_126;
    }

    v22 = *(a4 + 136);
    v23 = *(a4 + 168);
    v142 = *(a4 + 152);
    v143[0] = v23;
    *(v143 + 12) = *(a4 + 180);
    v24 = *(a4 + 72);
    v25 = *(a4 + 104);
    v138 = *(a4 + 88);
    v139 = v25;
    v140 = *(a4 + 120);
    v141 = v22;
    v136 = *(a4 + 56);
    v137 = v24;
    v26 = *(a4 + 136);
    v27 = *(a4 + 168);
    *&v144[96] = *(a4 + 152);
    *&v144[112] = v27;
    *&v144[124] = *(a4 + 180);
    v28 = *(a4 + 72);
    v29 = *(a4 + 104);
    *&v144[32] = *(a4 + 88);
    *&v144[48] = v29;
    *&v144[64] = *(a4 + 120);
    *&v144[80] = v26;
    *v144 = *(a4 + 56);
    *&v144[16] = v28;
  }

  else
  {
    v16 = *(a4 + 152);
    v141 = *(a4 + 136);
    v142 = v16;
    v143[0] = *(a4 + 168);
    *(v143 + 12) = *(a4 + 180);
    v17 = *(a4 + 72);
    v18 = *(a4 + 104);
    v138 = *(a4 + 88);
    v139 = v18;
    v140 = *(a4 + 120);
    v136 = *(a4 + 56);
    v137 = v17;
    v19 = *(a4 + 152);
    *&v144[80] = *(a4 + 136);
    *&v144[96] = v19;
    *&v144[112] = *(a4 + 168);
    *&v144[124] = *(a4 + 180);
    v20 = *(a4 + 72);
    v21 = *(a4 + 104);
    *&v144[32] = *(a4 + 88);
    *&v144[48] = v21;
    *&v144[64] = *(a4 + 120);
    *v144 = *(a4 + 56);
    *&v144[16] = v20;
  }

  if (_s10Foundation17LocalePreferencesVSgWOg(v144) == 1)
  {
    v31 = a2;
  }

  else
  {
    v30.i32[0] = *&v144[136];
    v123 = *&v144[120];
    v125 = vmovl_u8(v30).u64[0];
    v120 = *&v144[104];
    v115 = *&v144[56];
    v116 = *&v144[72];
    v113 = *&v144[24];
    v114 = *&v144[40];
    v117 = *&v144[8];
    v118 = *&v144[88];
    v32 = v144[0];
    v133[6] = v142;
    v134[0] = v143[0];
    *(v134 + 12) = *(v143 + 12);
    v133[2] = v138;
    v133[3] = v139;
    v133[4] = v140;
    v133[5] = v141;
    v133[0] = v136;
    v133[1] = v137;
    outlined init with copy of LocalePreferences(v133, v132);
    v144[0] = v32;
    *&v144[8] = v117;
    *&v144[24] = v113;
    *&v144[40] = v114;
    *&v144[56] = v115;
    *&v144[72] = v116;
    *&v144[88] = v118;
    *&v144[104] = v120;
    *&v144[120] = v123;
    v33 = v117;
    *&v144[136] = vuzp1_s8(v125, v125).u32[0];
    v31 = a2;
    if (v117)
    {

      outlined destroy of LocalePreferences(v144);
      v34 = *(v117 + 16);
      if (!v34)
      {
LABEL_120:

        a4 = 0;
        v15 = 0;
        goto LABEL_122;
      }

      goto LABEL_73;
    }

    outlined destroy of LocalePreferences(v144);
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = String._bridgeToObjectiveCImpl()();
  v35 = CFPreferencesCopyAppValue(v15, *MEMORY[0x1E695E8A8]);
  v36 = swift_unknownObjectRelease();
  if (v35 && (*v144 = v35, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), v36 = swift_dynamicCast(), (v36 & 1) != 0))
  {
    v37 = v136;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v126 = *(v37 + 16);
  if (!v126)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_72:

    v34 = *(v33 + 16);
    if (!v34)
    {
      goto LABEL_120;
    }

LABEL_73:
    v62 = 0;
    v63 = *MEMORY[0x1E695E4A8];
    v64 = v33 + 40;
    v127 = v34 - 1;
    while (1)
    {
      v65 = String._bridgeToObjectiveCImpl()();
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v63, v65);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_88;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v68 = CanonicalLanguageIdentifierFromString;
      v69 = v68;
      if (!isTaggedPointer)
      {
        goto LABEL_80;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v68);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v133[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v76 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v78)
          {
            [(__CFString *)v69 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            LOBYTE(v14) = v136;
            goto LABEL_111;
          }

          goto LABEL_93;
        case 0x16:
          v75 = [(__CFString *)v69 UTF8String];
          if (!v75)
          {
            goto LABEL_153;
          }

          v76 = String.init(utf8String:)(v75);
          if (!v77)
          {
            goto LABEL_152;
          }

LABEL_93:
          LOBYTE(v14) = v76;

          goto LABEL_111;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          LOBYTE(v14) = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          break;
        default:
LABEL_80:
          LOBYTE(v136) = 0;
          *v144 = 0;
          LOBYTE(v133[0]) = 0;
          v132[0] = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            if (!*v144)
            {

LABEL_88:
              LOBYTE(v14) = 0;
              break;
            }

            if (v132[0] == 1)
            {
              if (v136)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v79 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_110;
            }

            if ((v133[0] & 1) == 0)
            {
              goto LABEL_109;
            }

            if (v136 != 1)
            {
              IsCF = [(__CFString *)v69 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v82 = HIBYTE(v81) & 0xF;
            if ((v81 & 0x2000000000000000) == 0)
            {
              v82 = v80 & 0xFFFFFFFFFFFFLL;
            }

            if (!v82)
            {

LABEL_109:
              v79 = String.init(_cocoaString:)();
LABEL_110:
              LOBYTE(v14) = v79;
LABEL_111:

              break;
            }

            LOBYTE(v14) = v80;
          }

          else
          {
            v72 = v69;
            v73 = String.init(_nativeStorage:)();
            if (v74)
            {
              LOBYTE(v14) = v73;
            }

            else
            {
              *v144 = [(__CFString *)v72 length];
              if (*v144)
              {
                goto LABEL_109;
              }

              LOBYTE(v14) = 0;
            }
          }

          break;
      }

      if (String.count.getter() == 3)
      {
        closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)(&v135, v144);
        if (v5)
        {
          goto LABEL_154;
        }

        v15 = *&v144[8];
        if (*&v144[8])
        {
          a4 = *v144;

          goto LABEL_121;
        }
      }

      else
      {
      }

      if (v127 == v62)
      {
        goto LABEL_120;
      }

      ++v62;
      v64 += 16;
      if (v62 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_120;
      }
    }
  }

  v38 = 0;
  v124 = *MEMORY[0x1E695E4A8];
  v39 = v37 + 40;
  v33 = MEMORY[0x1E69E7CC0];
  v121 = v37;
  while (1)
  {
    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_132;
    }

    v40 = String._bridgeToObjectiveCImpl()();

    v41 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v124, v40);
    swift_unknownObjectRelease();
    if (v41)
    {
      break;
    }

LABEL_37:
    v46 = 0;
    v14 = 0xE000000000000000;
LABEL_65:
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1, v33);
      v33 = v36;
    }

    a4 = *(v33 + 16);
    v60 = *(v33 + 24);
    v15 = (a4 + 1);
    if (a4 >= v60 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), a4 + 1, 1, v33);
      v33 = v36;
    }

    ++v38;
    *(v33 + 16) = v15;
    v61 = v33 + 16 * a4;
    *(v61 + 32) = v46;
    *(v61 + 40) = v14;
    v39 += 16;
    v31 = v130;
    if (v126 == v38)
    {
      goto LABEL_72;
    }
  }

  v42 = _objc_isTaggedPointer(v41);
  v43 = v41;
  v44 = v43;
  if ((v42 & 1) == 0)
  {
LABEL_31:
    LOBYTE(v136) = 0;
    *v144 = 0;
    LOBYTE(v133[0]) = 0;
    v132[0] = 0;
    v48 = __CFStringIsCF();
    if (!v48)
    {
      v49 = v44;
      v50 = String.init(_nativeStorage:)();
      if (v51)
      {
        v46 = v50;
        v14 = v51;
      }

      else
      {
        *v144 = [(__CFString *)v49 length];
        if (*v144)
        {
          v37 = v121;
          goto LABEL_62;
        }

        v46 = 0;
        v14 = 0xE000000000000000;
      }

      goto LABEL_60;
    }

    if (*v144)
    {
      if (v132[0] == 1)
      {
        if (v136)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v55 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_63;
      }

      if ((v133[0] & 1) == 0)
      {
        goto LABEL_62;
      }

      if (v136 != 1)
      {
        v48 = [(__CFString *)v44 lengthOfBytesUsingEncoding:4];
      }

      MEMORY[0x1EEE9AC00](v48);
      v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v58;
      v59 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v59 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (!v59)
      {
        v37 = v121;

LABEL_62:
        v55 = String.init(_cocoaString:)();
LABEL_63:
        v46 = v55;
        v14 = v56;
LABEL_64:

        goto LABEL_65;
      }

      v46 = v57;

      goto LABEL_60;
    }

    goto LABEL_37;
  }

  v45 = _objc_getTaggedPointerTag(v43);
  if (!v45)
  {
    LOWORD(v133[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v53 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v54)
    {
      [(__CFString *)v44 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v14 = *(&v136 + 1);
      v46 = v136;
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (v45 != 22)
  {
    if (v45 == 2)
    {
      MEMORY[0x1EEE9AC00](v45);
      v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v47;

LABEL_60:
      v37 = v121;
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  v52 = [(__CFString *)v44 UTF8String];
  if (!v52)
  {
    goto LABEL_151;
  }

  v53 = String.init(utf8String:)(v52);
  if (v54)
  {
LABEL_45:
    v46 = v53;
    v14 = v54;

    goto LABEL_65;
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

uint64_t closure #1 in _LocaleICU.currencyCodeDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v145 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 504);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *a5 = *(*(v10 + 56) + 16 * v11);
    }
  }

  v119 = a5;
  v14 = v133;
  v129 = a3;
  v130 = a2;
  if (String.count.getter() == 3)
  {
    closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)(&v131, v144);
    if (v5)
    {
      goto LABEL_154;
    }

    v15 = *&v144[8];
    if (*&v144[8])
    {
      a4 = *v144;
LABEL_121:

LABEL_122:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v144 = *(a1 + 504);
      v31 = *v144;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
      v85 = *(v31 + 16);
      v86 = (v84 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
LABEL_132:
        __break(1u);
      }

      else
      {
        LOBYTE(v14) = v84;
        if (*(v31 + 24) < v88)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v88, isUniquelyReferenced_nonNull_native);
          v89 = *v144;
          v90 = v130;
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
          if ((v14 & 1) != (v91 & 1))
          {
            goto LABEL_155;
          }

          v92 = v119;
          if (v14)
          {
            goto LABEL_126;
          }

LABEL_129:
          result = specialized _NativeDictionary._insert(at:key:value:)(v36, v90, v129, a4, v15, v89);
          goto LABEL_130;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v89 = v31;
          v92 = v119;
          v90 = v130;
          if ((v84 & 1) == 0)
          {
            goto LABEL_129;
          }

LABEL_126:
          v93 = v36;

          v94 = (*(v89 + 56) + 16 * v93);
          *v94 = a4;
          v94[1] = v15;

LABEL_130:
          *(a1 + 504) = v89;
          *v92 = a4;
          v92[1] = v15;
          return result;
        }
      }

      v128 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
      v95 = static _DictionaryStorage.copy(original:)();
      v89 = v95;
      if (*(v31 + 16))
      {
        v96 = (v95 + 64);
        v97 = ((1 << *(v89 + 32)) + 63) >> 6;
        if (v89 != v31 || v96 >= v31 + 64 + 8 * v97)
        {
          memmove(v96, (v31 + 64), 8 * v97);
        }

        v98 = 0;
        *(v89 + 16) = *(v31 + 16);
        v99 = 1 << *(v31 + 32);
        v100 = *(v31 + 64);
        v101 = -1;
        if (v99 < 64)
        {
          v101 = ~(-1 << v99);
        }

        v102 = v101 & v100;
        v103 = (v99 + 63) >> 6;
        if ((v101 & v100) != 0)
        {
          do
          {
            v104 = __clz(__rbit64(v102));
            v102 &= v102 - 1;
LABEL_146:
            v107 = 16 * (v104 | (v98 << 6));
            v108 = (*(v31 + 48) + v107);
            v109 = *v108;
            v110 = v108[1];
            v111 = (*(v89 + 48) + v107);
            v112 = *(*(v31 + 56) + v107);
            *v111 = v109;
            v111[1] = v110;
            *(*(v89 + 56) + v107) = v112;
          }

          while (v102);
        }

        v105 = v98;
        while (1)
        {
          v98 = v105 + 1;
          if (__OFADD__(v105, 1))
          {
            __break(1u);
          }

          if (v98 >= v103)
          {
            break;
          }

          v106 = *(v31 + 64 + 8 * v98);
          ++v105;
          if (v106)
          {
            v104 = __clz(__rbit64(v106));
            v102 = (v106 - 1) & v106;
            goto LABEL_146;
          }
        }
      }

      v92 = v119;

      v36 = v128;
      v90 = v130;
      if ((v14 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_126;
    }

    v22 = *(a4 + 136);
    v23 = *(a4 + 168);
    v142 = *(a4 + 152);
    v143[0] = v23;
    *(v143 + 12) = *(a4 + 180);
    v24 = *(a4 + 72);
    v25 = *(a4 + 104);
    v138 = *(a4 + 88);
    v139 = v25;
    v140 = *(a4 + 120);
    v141 = v22;
    v136 = *(a4 + 56);
    v137 = v24;
    v26 = *(a4 + 136);
    v27 = *(a4 + 168);
    *&v144[96] = *(a4 + 152);
    *&v144[112] = v27;
    *&v144[124] = *(a4 + 180);
    v28 = *(a4 + 72);
    v29 = *(a4 + 104);
    *&v144[32] = *(a4 + 88);
    *&v144[48] = v29;
    *&v144[64] = *(a4 + 120);
    *&v144[80] = v26;
    *v144 = *(a4 + 56);
    *&v144[16] = v28;
  }

  else
  {
    v16 = *(a4 + 152);
    v141 = *(a4 + 136);
    v142 = v16;
    v143[0] = *(a4 + 168);
    *(v143 + 12) = *(a4 + 180);
    v17 = *(a4 + 72);
    v18 = *(a4 + 104);
    v138 = *(a4 + 88);
    v139 = v18;
    v140 = *(a4 + 120);
    v136 = *(a4 + 56);
    v137 = v17;
    v19 = *(a4 + 152);
    *&v144[80] = *(a4 + 136);
    *&v144[96] = v19;
    *&v144[112] = *(a4 + 168);
    *&v144[124] = *(a4 + 180);
    v20 = *(a4 + 72);
    v21 = *(a4 + 104);
    *&v144[32] = *(a4 + 88);
    *&v144[48] = v21;
    *&v144[64] = *(a4 + 120);
    *v144 = *(a4 + 56);
    *&v144[16] = v20;
  }

  if (_s10Foundation17LocalePreferencesVSgWOg(v144) == 1)
  {
    v31 = a2;
  }

  else
  {
    v30.i32[0] = *&v144[136];
    v123 = *&v144[120];
    v125 = vmovl_u8(v30).u64[0];
    v120 = *&v144[104];
    v115 = *&v144[56];
    v116 = *&v144[72];
    v113 = *&v144[24];
    v114 = *&v144[40];
    v117 = *&v144[8];
    v118 = *&v144[88];
    v32 = v144[0];
    v133[6] = v142;
    v134[0] = v143[0];
    *(v134 + 12) = *(v143 + 12);
    v133[2] = v138;
    v133[3] = v139;
    v133[4] = v140;
    v133[5] = v141;
    v133[0] = v136;
    v133[1] = v137;
    outlined init with copy of LocalePreferences(v133, v132);
    v144[0] = v32;
    *&v144[8] = v117;
    *&v144[24] = v113;
    *&v144[40] = v114;
    *&v144[56] = v115;
    *&v144[72] = v116;
    *&v144[88] = v118;
    *&v144[104] = v120;
    *&v144[120] = v123;
    v33 = v117;
    *&v144[136] = vuzp1_s8(v125, v125).u32[0];
    v31 = a2;
    if (v117)
    {

      outlined destroy of LocalePreferences(v144);
      v34 = *(v117 + 16);
      if (!v34)
      {
LABEL_120:

        a4 = 0;
        v15 = 0;
        goto LABEL_122;
      }

      goto LABEL_73;
    }

    outlined destroy of LocalePreferences(v144);
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = String._bridgeToObjectiveCImpl()();
  v35 = CFPreferencesCopyAppValue(v15, *MEMORY[0x1E695E8A8]);
  v36 = swift_unknownObjectRelease();
  if (v35 && (*v144 = v35, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), v36 = swift_dynamicCast(), (v36 & 1) != 0))
  {
    v37 = v136;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v126 = *(v37 + 16);
  if (!v126)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_72:

    v34 = *(v33 + 16);
    if (!v34)
    {
      goto LABEL_120;
    }

LABEL_73:
    v62 = 0;
    v63 = *MEMORY[0x1E695E4A8];
    v64 = v33 + 40;
    v127 = v34 - 1;
    while (1)
    {
      v65 = String._bridgeToObjectiveCImpl()();
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v63, v65);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_88;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v68 = CanonicalLanguageIdentifierFromString;
      v69 = v68;
      if (!isTaggedPointer)
      {
        goto LABEL_80;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v68);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v133[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v76 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v78)
          {
            [(__CFString *)v69 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            LOBYTE(v14) = v136;
            goto LABEL_111;
          }

          goto LABEL_93;
        case 0x16:
          v75 = [(__CFString *)v69 UTF8String];
          if (!v75)
          {
            goto LABEL_153;
          }

          v76 = String.init(utf8String:)(v75);
          if (!v77)
          {
            goto LABEL_152;
          }

LABEL_93:
          LOBYTE(v14) = v76;

          goto LABEL_111;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          LOBYTE(v14) = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          break;
        default:
LABEL_80:
          LOBYTE(v136) = 0;
          *v144 = 0;
          LOBYTE(v133[0]) = 0;
          v132[0] = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            if (!*v144)
            {

LABEL_88:
              LOBYTE(v14) = 0;
              break;
            }

            if (v132[0] == 1)
            {
              if (v136)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v79 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_110;
            }

            if ((v133[0] & 1) == 0)
            {
              goto LABEL_109;
            }

            if (v136 != 1)
            {
              IsCF = [(__CFString *)v69 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v82 = HIBYTE(v81) & 0xF;
            if ((v81 & 0x2000000000000000) == 0)
            {
              v82 = v80 & 0xFFFFFFFFFFFFLL;
            }

            if (!v82)
            {

LABEL_109:
              v79 = String.init(_cocoaString:)();
LABEL_110:
              LOBYTE(v14) = v79;
LABEL_111:

              break;
            }

            LOBYTE(v14) = v80;
          }

          else
          {
            v72 = v69;
            v73 = String.init(_nativeStorage:)();
            if (v74)
            {
              LOBYTE(v14) = v73;
            }

            else
            {
              *v144 = [(__CFString *)v72 length];
              if (*v144)
              {
                goto LABEL_109;
              }

              LOBYTE(v14) = 0;
            }
          }

          break;
      }

      if (String.count.getter() == 3)
      {
        closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)(&v135, v144);
        if (v5)
        {
          goto LABEL_154;
        }

        v15 = *&v144[8];
        if (*&v144[8])
        {
          a4 = *v144;

          goto LABEL_121;
        }
      }

      else
      {
      }

      if (v127 == v62)
      {
        goto LABEL_120;
      }

      ++v62;
      v64 += 16;
      if (v62 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_120;
      }
    }
  }

  v38 = 0;
  v124 = *MEMORY[0x1E695E4A8];
  v39 = v37 + 40;
  v33 = MEMORY[0x1E69E7CC0];
  v121 = v37;
  while (1)
  {
    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_132;
    }

    v40 = String._bridgeToObjectiveCImpl()();

    v41 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v124, v40);
    swift_unknownObjectRelease();
    if (v41)
    {
      break;
    }

LABEL_37:
    v46 = 0;
    v14 = 0xE000000000000000;
LABEL_65:
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1, v33);
      v33 = v36;
    }

    a4 = *(v33 + 16);
    v60 = *(v33 + 24);
    v15 = (a4 + 1);
    if (a4 >= v60 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), a4 + 1, 1, v33);
      v33 = v36;
    }

    ++v38;
    *(v33 + 16) = v15;
    v61 = v33 + 16 * a4;
    *(v61 + 32) = v46;
    *(v61 + 40) = v14;
    v39 += 16;
    v31 = v130;
    if (v126 == v38)
    {
      goto LABEL_72;
    }
  }

  v42 = _objc_isTaggedPointer(v41);
  v43 = v41;
  v44 = v43;
  if ((v42 & 1) == 0)
  {
LABEL_31:
    LOBYTE(v136) = 0;
    *v144 = 0;
    LOBYTE(v133[0]) = 0;
    v132[0] = 0;
    v48 = __CFStringIsCF();
    if (!v48)
    {
      v49 = v44;
      v50 = String.init(_nativeStorage:)();
      if (v51)
      {
        v46 = v50;
        v14 = v51;
      }

      else
      {
        *v144 = [(__CFString *)v49 length];
        if (*v144)
        {
          v37 = v121;
          goto LABEL_62;
        }

        v46 = 0;
        v14 = 0xE000000000000000;
      }

      goto LABEL_60;
    }

    if (*v144)
    {
      if (v132[0] == 1)
      {
        if (v136)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v55 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_63;
      }

      if ((v133[0] & 1) == 0)
      {
        goto LABEL_62;
      }

      if (v136 != 1)
      {
        v48 = [(__CFString *)v44 lengthOfBytesUsingEncoding:4];
      }

      MEMORY[0x1EEE9AC00](v48);
      v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v58;
      v59 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v59 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (!v59)
      {
        v37 = v121;

LABEL_62:
        v55 = String.init(_cocoaString:)();
LABEL_63:
        v46 = v55;
        v14 = v56;
LABEL_64:

        goto LABEL_65;
      }

      v46 = v57;

      goto LABEL_60;
    }

    goto LABEL_37;
  }

  v45 = _objc_getTaggedPointerTag(v43);
  if (!v45)
  {
    LOWORD(v133[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v53 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v54)
    {
      [(__CFString *)v44 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v14 = *(&v136 + 1);
      v46 = v136;
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (v45 != 22)
  {
    if (v45 == 2)
    {
      MEMORY[0x1EEE9AC00](v45);
      v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v47;

LABEL_60:
      v37 = v121;
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  v52 = [(__CFString *)v44 UTF8String];
  if (!v52)
  {
    goto LABEL_151;
  }

  v53 = String.init(utf8String:)(v52);
  if (v54)
  {
LABEL_45:
    v46 = v53;
    v14 = v54;

    goto LABEL_65;
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

uint64_t closure #1 in _LocaleICU.currency.getter@<X0>(uint64_t *a1@<X0>, Swift::String *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1[16];
  v3 = a1[17];
  v5 = a1 + 16;
  v6 = a1[18];
  v7 = a1[19];
  if (v3 == 1)
  {
    String.utf8CString.getter();
    v9 = ucurr_forLocale();

    if (v9 - 1 <= 0x100 && (v10 = specialized String.init(_utf16:)(v18, v9), v11))
    {
      v12 = v10;
      v13 = v11;
      v14 = String.lowercased()();
      v15 = a1[16];
      v17 = a1[17];

      sub_1807E2788(v15, v17);
      a1[16] = v12;
      a1[17] = v13;
      *(a1 + 9) = v14;
      a2->_countAndFlagsBits = v12;
      a2->_object = v13;
      a2[1] = v14;
    }

    else
    {
      sub_1807E2788(a1[16], a1[17]);
      *v5 = 0u;
      v5[1] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  else
  {
    a2->_countAndFlagsBits = v4;
    a2->_object = v3;
    a2[1]._countAndFlagsBits = v6;
    a2[1]._object = v7;
  }

  return sub_1808B890C(v4, v3);
}

uint64_t _LocaleICU.delimiterString(_:)()
{
  v4 = *MEMORY[0x1E69E9840];
  String.utf8CString.getter();
  ulocdata_open();

  Delimiter = ulocdata_getDelimiter();
  v1 = 0;
  if (Delimiter - 1 < 0x82)
  {
    v1 = specialized String.init(_utf16:)(v3, Delimiter);
  }

  ulocdata_close();
  return v1;
}

Swift::Int_optional __swiftcall _LocaleICU.forceMinDaysInFirstWeek(_:)(Foundation::Calendar::Identifier a1)
{
  v2 = *a1;
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v16 = *(v1 + 152);
  v17[0] = v4;
  *(v17 + 12) = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v13 = v6;
  v14 = *(v1 + 120);
  v15 = v3;
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  if (_s10Foundation17LocalePreferencesVSgWOg(v12) != 1 && (v7 = *(&v13 + 1)) != 0 && *(*(&v13 + 1) + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v9 & 1) != 0))
  {
    v10 = 0;
    v11 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  result.value = v11;
  result.is_nil = v10;
  return result;
}

uint64_t _LocaleICU._lockedNumberingSystem(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[20];
  v2 = a1[21];
  v4 = a1[22];
  v5 = a1[23];
  if (v2)
  {
    *a2 = v3;
    a2[1] = v2;
    a2[2] = v4;
    a2[3] = v5;
  }

  else
  {

    Locale.Components.init(identifier:)(v15);
    v7 = v17;
    if (v17)
    {
      v8 = v19;
      v12 = v16;
      v13 = v18;

      outlined destroy of Locale.Components(v15);
      v9 = a1[20];
      v10 = a1[21];

      outlined consume of Locale.LanguageCode?(v9, v10);
      a1[20] = v12;
      a1[21] = v7;
      a1[22] = v13;
      a1[23] = v8;
      *a2 = v12;
      a2[1] = v7;
      a2[2] = v13;
      a2[3] = v8;
    }

    else
    {

      Locale.NumberingSystem.init(localeIdentifier:)(a2);
      outlined destroy of Locale.Components(v15);
    }
  }

  return outlined copy of Locale.LanguageCode?(v3, v2);
}

void closure #1 in _LocaleICU.availableNumberingSystems.getter(unint64_t a1@<X0>, void *a2@<X8>)
{
  i = a1;
  v4 = *(a1 + 192);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v47 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMd);
    v5 = swift_allocObject();
    v44 = v5 + 32;
    if (one-time initialization token for latn != -1)
    {
LABEL_28:
      swift_once();
    }

    v6 = unk_1EA7AE6E0;
    v7 = xmmword_1EA7AE6E8;
    *(v5 + 32) = static Locale.NumberingSystem.latn;
    *(v5 + 40) = v6;
    *(v5 + 48) = v7;

    v42 = i;
    _LocaleICU._lockedNumberingSystem(_:)(i, (v5 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation6LocaleV15NumberingSystemVGMd);
    v8 = static _SetStorage.allocate(capacity:)();
    v9 = 0;
    v10 = 0;
    v11 = v8 + 56;
    do
    {
      v46 = v9;
      v12 = (v44 + 32 * v10);
      v13 = v12[1];
      v45 = *v12;
      v14 = v12[2];
      v5 = v12[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(v8 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v17 = *(v11 + 8 * (i >> 6));
        if (((1 << i) & v17) == 0)
        {
          break;
        }

        v18 = *(v8 + 48) + 32 * i;
        v19 = *(v18 + 16) == v14 && *(v18 + 24) == v5;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_6;
        }
      }

      *(v11 + 8 * (i >> 6)) = (1 << i) | v17;
      v20 = (*(v8 + 48) + 32 * i);
      *v20 = v45;
      v20[1] = v13;
      v20[2] = v14;
      v20[3] = v5;
      v21 = *(v8 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        goto LABEL_28;
      }

      *(v8 + 16) = v23;
LABEL_6:
      v9 = 1;
      v10 = 1;
    }

    while ((v46 & 1) == 0);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v53 = v8;
    v24 = swift_allocObject();
    v25 = String.lowercased()();
    v24[2]._countAndFlagsBits = 0x746C7561666564;
    v24[2]._object = 0xE700000000000000;
    v24[3] = v25;
    v26 = String.lowercased()();
    v24[4]._countAndFlagsBits = 0x65766974616ELL;
    v24[4]._object = 0xE600000000000000;
    v24[5] = v26;
    v27 = String.lowercased()();
    v24[6]._countAndFlagsBits = 0x6F69746964617274;
    v24[6]._object = 0xEB000000006C616ELL;
    v24[7] = v27;
    v28 = String.lowercased()();
    v29 = 0;
    v24[8]._countAndFlagsBits = 0x65636E616E6966;
    v24[8]._object = 0xE700000000000000;
    v24[9] = v28;
    while (1)
    {
      countAndFlagsBits = v24[v29 + 3]._countAndFlagsBits;
      object = v24[v29 + 3]._object;
      v33 = v24[v29 + 2]._countAndFlagsBits;
      v32 = v24[v29 + 2]._object;

      Locale.Components.init(identifier:)(v51);
      outlined consume of Locale.LanguageCode?(v51[21], v51[22]);
      v51[21] = v33;
      v51[22] = v32;
      v51[23] = countAndFlagsBits;
      v51[24] = object;
      v34 = memcpy(v52, v51, sizeof(v52));
      if (one-time initialization token for cache != -1)
      {
        v34 = swift_once();
      }

      v35 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v34);
      os_unfair_lock_lock(v35 + 12);
      partial apply for closure #1 in LocaleCache.fixedComponents(_:)(&v35[4], v50);
      if (v47)
      {
        break;
      }

      v47 = 0;
      os_unfair_lock_unlock(v35 + 12);
      v36 = v50[1];
      ObjectType = swift_getObjectType();
      (*(v36 + 64))(ObjectType, v36);
      Locale.NumberingSystem.init(localeIdentifier:)(v48);
      specialized Set._Variant.insert(_:)(v49, v48[0], v48[1], v48[2], v48[3]);
      swift_unknownObjectRelease();

      memcpy(v49, v51, sizeof(v49));
      outlined destroy of Locale.Components(v49);
      v29 += 2;
      if (v29 == 8)
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v38 = v53;
        v39 = *(v53 + 16);
        if (!v39)
        {
          goto LABEL_25;
        }

        v40 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation6LocaleV15NumberingSystemV_Tt1g5(*(v53 + 16), 0);
        v41 = specialized Sequence._copyContents(initializing:)(v51, v40 + 4, v39, v38);
        outlined consume of Set<AnyKeyPath>.Iterator._Variant();
        if (v41 != v39)
        {
          __break(1u);
LABEL_25:

          v40 = MEMORY[0x1E69E7CC0];
        }

        *(v42 + 192) = v40;
        *a2 = v40;
        return;
      }
    }

    os_unfair_lock_unlock(v35 + 12);
    __break(1u);
  }
}

uint64_t protocol witness for _LocaleProtocol.init(identifier:prefs:) in conformance _LocaleICU(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  _LocaleICU.init(identifier:prefs:)(a1, a2, a3);
  return v6;
}

uint64_t protocol witness for _LocaleProtocol.init(name:prefs:disableBundleMatching:) in conformance _LocaleICU(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v8 = swift_allocObject();
  _LocaleICU.init(name:prefs:disableBundleMatching:)(a1, a2, a3, a4);
  return v8;
}

uint64_t protocol witness for _LocaleProtocol.init(components:) in conformance _LocaleICU(void *a1)
{
  v2 = swift_allocObject();
  _LocaleICU.init(components:)(a1);
  return v2;
}

unint64_t protocol witness for _LocaleProtocol.identifierDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.identifierDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.scriptCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.scriptCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.variantCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.variantCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.calendarIdentifierDisplayName(for:) in conformance _LocaleICU(unsigned __int8 *a1)
{
  v2 = *(v1 + 200);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 134);
  closure #1 in _LocaleICU.calendarIdentifierDisplayName(for:)(&v2[4], v3, v1, &v5);
  os_unfair_lock_unlock(v2 + 134);
  return v5;
}

unint64_t protocol witness for _LocaleProtocol.currencyCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.currencyCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

unint64_t protocol witness for _LocaleProtocol.currencySymbolDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.currencySymbolDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.collationIdentifierDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.collationIdentifierDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.collationIdentifier.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock((v1 + 536));
  closure #1 in _LocaleICU.collation.getterpartial apply((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 536));
  countAndFlagsBits = v4._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t protocol witness for _LocaleProtocol.groupingSeparator.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.groupingSeparator.getter(&v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

void protocol witness for _LocaleProtocol.currency.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.currency.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

uint64_t protocol witness for _LocaleProtocol.availableNumberingSystems.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.availableNumberingSystems.getter(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

void protocol witness for _LocaleProtocol.collation.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.collation.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

void protocol witness for _LocaleProtocol.timeZone.getter in conformance _LocaleICU(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock(v3 + 134);
  partial apply for closure #1 in _LocaleICU.timeZone.getter(&v3[4], a1);

  os_unfair_lock_unlock(v3 + 134);
}

void protocol witness for _LocaleProtocol.subdivision.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.subdivision.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

void protocol witness for _LocaleProtocol.variant.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.variant.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

uint64_t static Locale.windowsLocaleCode(fromIdentifier:)()
{
  String.utf8CString.getter();
  LCID = uloc_getLCID();

  return LCID;
}

uint64_t static Locale.numberingSystemForLocaleIdentifier(_:)@<X0>(Swift::String *a1@<X8>)
{
  specialized static Locale.keywordValue(identifier:key:)();
  if (v2)
  {

    result = Locale.NumberingSystem.init(localeIdentifier:)(&v11._countAndFlagsBits);
    v4 = v12;
    v5 = v13;
    *a1 = v11;
    a1[1]._countAndFlagsBits = v4;
    a1[1]._object = v5;
  }

  else
  {
    result = static Locale.NumberingSystem.defaultNumberingSystem(for:)(&v11);
    object = v11._object;
    if (v11._object)
    {
      v8 = v12;
      v7 = v13;
      a1->_countAndFlagsBits = v11._countAndFlagsBits;
      a1->_object = object;
      a1[1]._countAndFlagsBits = v8;
      a1[1]._object = v7;
    }

    else
    {
      if (one-time initialization token for latn != -1)
      {
        swift_once();
      }

      v9 = unk_1EA7AE6E0;
      v10 = xmmword_1EA7AE6E8;
      a1->_countAndFlagsBits = static Locale.NumberingSystem.latn;
      a1->_object = v9;
      a1[1] = v10;
    }
  }

  return result;
}

id static Locale.localeIdentifierByReplacingLanguageCodeAndScriptCode(localeIDWithDesiredLangCode:localeIDWithDesiredComponents:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v591 = *MEMORY[0x1E69E9840];
  String.utf8CString.getter();
  v5 = uloc_addLikelySubtags();

  if (v5 <= 0)
  {
    return 0;
  }

  v590[v5] = 0;
  MEMORY[0x1865CAEB0](v590);
  if (!v6)
  {
    return 0;
  }

  memset(v589, 0, 96);
  outlined destroy of Locale.Language.Components(v589);
  LODWORD(v538._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v8 = 0;
  v9 = 0;
  if (Language > 0)
  {
    v588[Language] = 0;
    v8 = MEMORY[0x1865CAEB0](v588, 0);
  }

  v400 = v9;
  v355 = v4;
  v356 = v3;
  LODWORD(v538._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v11 = 0;
  v12 = 0;
  if (Script > 0)
  {
    v587[Script] = 0;
    v11 = MEMORY[0x1865CAEB0](v587);
    v12 = v13;
  }

  LODWORD(v538._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v15 = 0;
  v414 = v8;
  v16 = 0;
  if (Country > 0)
  {
    v586[Country] = 0;
    v15 = MEMORY[0x1865CAEB0](v586, 0);
  }

  v398 = v16;
  if (!v400)
  {
    v414 = 0;
    countAndFlagsBits = 0;
    object = 0;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    v11 = 0;
    v404 = 0;
    v402 = 0;
    goto LABEL_15;
  }

  v17 = String.lowercased()();
  countAndFlagsBits = v17._countAndFlagsBits;
  object = v17._object;
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  v538._countAndFlagsBits = v11;
  v538._object = v12;

  String.init<A>(_:)();
  v18 = String._capitalized()();
  v404 = v18._countAndFlagsBits;
  v402 = v18._object;

LABEL_15:
  v392 = v12;
  if (v398)
  {
    v20 = v15;
    v21 = v398;
    v22 = String.uppercased()();
    v23 = v22._countAndFlagsBits;
    v24 = v22._object;
  }

  else
  {
    v20 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
  }

  v364 = v24;
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  v585[0] = v414;
  v585[1] = v400;
  v585[2] = countAndFlagsBits;
  v585[3] = object;
  v585[4] = v11;
  v585[5] = v392;
  v585[6] = v404;
  v585[7] = v402;
  v585[8] = v20;
  v585[9] = v21;
  v585[10] = v23;
  v585[11] = v24;
  outlined copy of Locale.LanguageCode?(v414, v400);
  outlined copy of Locale.LanguageCode?(v11, v392);
  v374 = v20;
  outlined copy of Locale.LanguageCode?(v20, v21);
  outlined destroy of Locale.Language.Components(v585);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);

  v25 = specialized _withFixedCharBuffer(size:_:)(257);
  v27 = v26;

  v372 = v23;
  v362 = v27;
  if (v27)
  {
    v370 = v25;
    v28 = String.lowercased()();
    v368 = v28._countAndFlagsBits;
    v366 = v28._object;
    outlined consume of Locale.LanguageCode?(0, 0);
  }

  else
  {
    v370 = 0;
    v368 = 0;
    v366 = 0;
  }

  String.utf8CString.getter();
  v29 = uloc_openKeywords();

  v380 = v11;
  if (!v29)
  {

    v44 = 0;
    v42 = 0;
    v43 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v38 = 0;
    v34 = 0;
    v376 = 0;
    v76 = 0;
    v75 = 0;
    v41 = 0;
    v40 = 0;
    v37 = 0;
    v39 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v36 = 0;
    v406 = 0;
    v408 = 4;
    v52 = 7;
    v57 = 27;
    goto LABEL_24;
  }

  type metadata accessor for ICU.Enumerator();
  *(swift_allocObject() + 16) = v29;
  LODWORD(v538._countAndFlagsBits) = 0;
  LODWORD(v470._countAndFlagsBits) = 0;
  v30 = uenum_next();
  v70 = 0;
  v71 = 0;
  v322 = 0;
  v324 = 0;
  v325 = 0;
  v327 = 0;
  v329 = 0;
  v331 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v376 = 0;
  v78 = 0;
  v333 = 0;
  v335 = 0;
  v337 = 0;
  v339 = 0;
  v341 = 0;
  v343 = 0;
  v349 = 0;
  v351 = 0;
  v79 = 0;
  v353 = 27;
  v345 = 7;
  v347 = 0;
  countAndFlagsBits_low = 4;
  while (v30)
  {
    v384 = v71;
    v386 = v72;
    v388 = v73;
    v390 = v74;
    v382 = v78;
    v81 = String.init(cString:)();
    static Locale.legacyKey(forKey:)(v81, v82, &v538._countAndFlagsBits);

    v83 = v538._object;
    if (v538._object)
    {
      v409 = countAndFlagsBits_low;
      v378 = v79;
      v358 = v75;
      v360 = v77;
      v84 = v538._countAndFlagsBits;
      LODWORD(v538._countAndFlagsBits) = 0;
      String.utf8CString.getter();
      String.utf8CString.getter();
      KeywordValue = uloc_getKeywordValue();

      if (SLODWORD(v538._countAndFlagsBits) <= 0 && KeywordValue > 0 && (v426[KeywordValue] = 0, v86 = MEMORY[0x1865CAEB0](v426), v87))
      {
        v88 = v86;
        v77 = v87;
        if ((v84 != 0x7261646E656C6163 || v83 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v320 = v88;
          countAndFlagsBits_low = v409;
          if (v84 == 0x6F6974616C6C6F63 && v83 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v90 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v347, v79);
            v347 = v320;
            v349 = v90._object;
            v79 = v77;
            v351 = v90._countAndFlagsBits;
            goto LABEL_59;
          }

          if (v84 == 0x79636E6572727563 && v83 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v91 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v343, v341);
            v341 = v77;
            v343 = v320;
            v337 = v91._object;
            v339 = v91._countAndFlagsBits;
            goto LABEL_59;
          }

          if (v84 == 0x737265626D756ELL && v83 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v92 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v335, v333);
            v333 = v77;
            v335 = v320;
            v331 = v92._countAndFlagsBits;
            v78 = v92._object;
          }

          else
          {
            if (v84 == 30566 && v83 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v592._countAndFlagsBits = v320;
              v592._object = v77;
              Locale.Weekday.init(rawValue:)(v592, &v538);
              v345 = v538._countAndFlagsBits;
            }

            else
            {
              if ((v84 != 0x7372756F68 || v83 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                if (v84 == 0x6572757361656DLL && v83 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  if (v320 == 0x6C61697265706D69 && v77 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    if (one-time initialization token for uk != -1)
                    {
                      swift_once();
                    }

                    v93 = static Locale.MeasurementSystem.uk;
                    v77 = *algn_1EA7AFAD8;
                    v75 = *(&xmmword_1EA7AFAE0 + 1);
                    v94 = xmmword_1EA7AFAE0;

                    outlined consume of Locale.LanguageCode?(v376, v360);
                    v376 = v93;
                    v76 = v94;
                  }

                  else
                  {
                    v100 = String.lowercased()();
                    v75 = v100._object;
                    outlined consume of Locale.LanguageCode?(v376, v360);
                    v376 = v320;
                    v76 = v100._countAndFlagsBits;
                  }

                  v78 = v382;
LABEL_108:
                  v79 = v378;
LABEL_109:
                  countAndFlagsBits_low = v409;
                  goto LABEL_43;
                }

                if (v84 == 26482 && v83 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  if (String.count.getter() > 2)
                  {
                    specialized Collection.prefix(_:)(2);

                    v95 = Substring.uppercased()();

                    v538 = v95;
                    v96 = String.init<A>(_:)();
                    v98 = v97;
                    v99 = String.uppercased()();
                    outlined consume of Locale.LanguageCode?(v390, v388);
                    v390 = v96;
                    v388 = v98;
                    v386 = v99._countAndFlagsBits;
                    v329 = v99._object;
LABEL_107:
                    v78 = v382;
                    v77 = v360;
                    v75 = v358;
                    goto LABEL_108;
                  }

LABEL_106:

                  goto LABEL_107;
                }

                if (v84 == 25715 && v83 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v101 = String.lowercased()();
                  outlined consume of Locale.LanguageCode?(v327, v325);
                  v325 = v77;
                  v327 = v320;
                  v322 = v101._object;
                  v324 = v101._countAndFlagsBits;
                  goto LABEL_107;
                }

                if (v84 == 0x656E6F7A656D6974 && v83 == 0xE800000000000000)
                {
                }

                else
                {
                  v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v103 & 1) == 0)
                  {
                    goto LABEL_106;
                  }
                }

                if (one-time initialization token for cache != -1)
                {
                  v102 = swift_once();
                }

                v104 = static TimeZoneCache.cache;
                MEMORY[0x1EEE9AC00](v102);
                os_unfair_lock_lock(v104 + 30);
                closure #1 in TimeZoneCache.fixed(_:)partial apply(&v538._countAndFlagsBits);
                os_unfair_lock_unlock(v104 + 30);
                v105 = v538._countAndFlagsBits;
                v106 = v538._object;

                if (!v105)
                {
                  v106 = 0;
                }

                swift_unknownObjectRelease();
                v384 = v105;
                v78 = v382;
                v77 = v360;
                v70 = v106;
                v75 = v358;
                v79 = v378;
                goto LABEL_109;
              }

              v593._countAndFlagsBits = v320;
              v593._object = v77;
              Locale.HourCycle.init(rawValue:)(v593, &v538);
              countAndFlagsBits_low = LOBYTE(v538._countAndFlagsBits);
            }

LABEL_59:
            v78 = v382;
          }

          v77 = v360;
          v75 = v358;
          goto LABEL_43;
        }

        v89._countAndFlagsBits = v88;
        v89._object = v77;
        Calendar.Identifier.init(identifierString:)(v89);
        v353 = v538._countAndFlagsBits;
        v78 = v382;
        v77 = v360;
        v75 = v358;
      }

      else
      {

        v78 = v382;
        v77 = v360;
        v75 = v358;
      }

      countAndFlagsBits_low = v409;
    }

    else
    {
      v78 = v382;
    }

LABEL_43:
    LODWORD(v538._countAndFlagsBits) = 0;
    LODWORD(v470._countAndFlagsBits) = 0;
    v30 = uenum_next();
    v74 = v390;
    v73 = v388;
    v72 = v386;
    v71 = v384;
    if (SLODWORD(v538._countAndFlagsBits) > 0)
    {
      break;
    }
  }

  v408 = countAndFlagsBits_low;
  v406 = v70;
  v377 = v79;
  v31 = v74;
  v32 = v73;
  v33 = v72;
  v34 = v78;
  v35 = v71;

  v36 = v35;
  v29 = v77;
  v37 = v33;
  v39 = v329;
  v38 = v331;
  v40 = v32;
  v41 = v31;
  v42 = v377;
  v43 = v351;
  v44 = v347;
  v45 = v349;
  v47 = v341;
  v46 = v343;
  v49 = v337;
  v48 = v339;
  v51 = v333;
  v50 = v335;
  v52 = v345;
  v54 = v325;
  v53 = v327;
  v56 = v322;
  v55 = v324;
  v57 = v353;
LABEL_24:
  v539 = countAndFlagsBits;
  v540 = object;
  v545 = v374;
  v546 = v398;
  v547 = v372;
  v548 = v364;
  v549 = v57;
  v551 = v44;
  v552 = v42;
  *v550 = *v425;
  *&v550[3] = *&v425[3];
  v538._countAndFlagsBits = v414;
  v538._object = v400;
  v541 = v380;
  v542 = v392;
  v543 = v404;
  v544 = v402;
  v553 = v43;
  v554 = v45;
  v555 = v46;
  v556 = v47;
  v557 = v48;
  v558 = v49;
  v559 = v50;
  v560 = v51;
  v561 = v38;
  v562 = v34;
  v563 = v52;
  v564 = v408;
  v566 = v424;
  v565 = v423;
  v567 = v376;
  v568 = v29;
  v569 = v76;
  v570 = v75;
  v571 = v41;
  v572 = v40;
  v573 = v37;
  v574 = v39;
  v575 = v53;
  v576 = v54;
  v577 = v55;
  v578 = v56;
  v579 = v36;
  v580 = v406;
  v581 = v370;
  v582 = v362;
  v583 = v368;
  v584 = v366;
  if (!v400 || !v392)
  {
    v69 = &v538;
LABEL_38:
    outlined destroy of Locale.Components(v69);
    return 0;
  }

  v470._countAndFlagsBits = v414;
  v470._object = v400;
  outlined copy of Locale.LanguageCode?(v380, v392);

  MEMORY[0x1865CB0E0](45, 0xE100000000000000);

  outlined consume of Locale.LanguageCode?(v380, v392);
  MEMORY[0x1865CB0E0](v380, v392);

  outlined destroy of Locale.Components(&v538);
  String.utf8CString.getter();
  v58 = uloc_addLikelySubtags();

  if (v58 <= 0 || (v537[v58] = 0, MEMORY[0x1865CAEB0](v537), !v59))
  {

    return 0;
  }

  memset(v536, 0, 96);
  outlined destroy of Locale.Language.Components(v536);
  LODWORD(v470._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v60 = uloc_getLanguage();

  v61 = 0;
  v62 = 0;
  if (SLODWORD(v470._countAndFlagsBits) <= 0 && v60 > 0)
  {
    v535[v60] = 0;
    v61 = MEMORY[0x1865CAEB0](v535, 0);
  }

  v397 = v62;
  LODWORD(v470._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v63 = uloc_getScript();

  v64 = 0;
  v65 = 0;
  if (SLODWORD(v470._countAndFlagsBits) <= 0 && v63 > 0)
  {
    v534[v63] = 0;
    v64 = MEMORY[0x1865CAEB0](v534, 0);
  }

  v393 = v65;
  v395 = v64;
  LODWORD(v470._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v66 = uloc_getCountry();

  v67 = 0;
  if (SLODWORD(v470._countAndFlagsBits) > 0)
  {
    v415 = 0;
  }

  else
  {
    v415 = 0;
    if (v66 > 0)
    {
      v533[v66] = 0;
      v67 = MEMORY[0x1865CAEB0](v533);
      v415 = v68;
    }
  }

  if (v397)
  {
    v375 = String.lowercased()();
    v107 = v393;
    if (v393)
    {
      goto LABEL_113;
    }

LABEL_115:
    v395 = 0;
    v373._countAndFlagsBits = 0;
    v373._object = 0;
  }

  else
  {
    v61 = 0;
    v375._countAndFlagsBits = 0;
    v375._object = 0;
    v107 = v393;
    if (!v393)
    {
      goto LABEL_115;
    }

LABEL_113:
    v470._countAndFlagsBits = v395;
    v470._object = v107;

    String.init<A>(_:)();
    v373 = String._capitalized()();
  }

  v379 = v61;
  if (v415)
  {
    v108 = String.uppercased()();
    v109 = v108._countAndFlagsBits;
    v110 = v108._object;
  }

  else
  {
    v67 = 0;
    v109 = 0;
    v110 = 0;
  }

  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  v524[0] = v379;
  v524[1] = v397;
  v525 = v375;
  v526 = v395;
  v527 = v393;
  v528 = v373;
  v529 = v67;
  v530 = v415;
  v531 = v109;
  v532 = v110;
  outlined copy of Locale.LanguageCode?(v379, v397);
  outlined copy of Locale.LanguageCode?(v395, v393);
  v354 = v67;
  v367 = v109;
  v352 = v110;
  outlined copy of Locale.LanguageCode?(v67, v415);
  outlined destroy of Locale.Language.Components(v524);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  LODWORD(v470._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  if (SLODWORD(v470._countAndFlagsBits) > 0 || Variant <= 0)
  {
    v303 = 0;
    v336 = 0;
    v316 = 0;
    v317 = 0;
  }

  else
  {
    v523[Variant] = 0;
    v112 = MEMORY[0x1865CAEB0](v523);
    if (v113)
    {
      v303 = v112;
      v336 = v113;
      v114 = String.lowercased()();
      v316 = v114._object;
      v317 = v114._countAndFlagsBits;
      outlined consume of Locale.LanguageCode?(0, 0);
    }

    else
    {
      v303 = 0;
      v336 = 0;
      v316 = 0;
      v317 = 0;
    }
  }

  String.utf8CString.getter();
  v115 = uloc_openKeywords();

  if (!v115)
  {

    v314 = 0;
    v315 = 0;
    v348 = 0;
    v350 = 0;
    v344 = 0;
    v346 = 0;
    v359 = 0;
    v328 = 0;
    v330 = 0;
    v361 = 0;
    v383 = 0;
    v369 = 0;
    v387 = 0;
    v304 = 0;
    v305 = 0;
    v338 = 0;
    v340 = 0;
    v323 = 0;
    v334 = 0;
    v363 = 0;
    v321 = 0;
    v318 = 0;
    v319 = 0;
    v385 = 0;
    v342 = 4;
    v357 = 7;
    v371 = 27;
    goto LABEL_131;
  }

  type metadata accessor for ICU.Enumerator();
  v357 = 7;
  *(swift_allocObject() + 16) = v115;
  LODWORD(v470._countAndFlagsBits) = 0;
  LODWORD(v427._countAndFlagsBits) = 0;
  v116 = uenum_next();
  if (SLODWORD(v470._countAndFlagsBits) <= 0)
  {
    v318 = 0;
    v319 = 0;
    v385 = 0;
    v321 = 0;
    v338 = 0;
    v340 = 0;
    v304 = 0;
    v305 = 0;
    v328 = 0;
    v330 = 0;
    v363 = 0;
    v334 = 0;
    v323 = 0;
    v387 = 0;
    v369 = 0;
    v383 = 0;
    v361 = 0;
    v346 = 0;
    v348 = 0;
    v344 = 0;
    v314 = 0;
    v315 = 0;
    v359 = 0;
    v350 = 0;
    v371 = 27;
    v357 = 7;
    v342 = 4;
    while (1)
    {
      if (!v116)
      {
        goto LABEL_130;
      }

      v185 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v185, v186, &v470._countAndFlagsBits);

      v187 = v470._object;
      if (v470._object)
      {
        v188 = v470._countAndFlagsBits;
        v189 = specialized static Locale.keywordValue(identifier:key:)();
        if (v190)
        {
          v191 = v189;
          v192 = v190;
          if (v188 == 0x7261646E656C6163 && v187 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v193._countAndFlagsBits = v191;
            v193._object = v192;
            Calendar.Identifier.init(identifierString:)(v193);
            v371 = LOBYTE(v470._countAndFlagsBits);
            goto LABEL_168;
          }

          if (v188 == 0x6F6974616C6C6F63 && v187 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v194 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v315, v350);
            v315 = v191;
            v350 = v192;
            v346 = v194._countAndFlagsBits;
            v359 = v194._object;
            goto LABEL_168;
          }

          if (v188 == 0x79636E6572727563 && v187 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v195 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v314, v344);
            v314 = v191;
            v344 = v192;
            v328 = v195._countAndFlagsBits;
            v348 = v195._object;
            goto LABEL_168;
          }

          if (v188 == 0x737265626D756ELL && v187 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v196 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v361, v383);
            v361 = v191;
            v383 = v192;
            v369 = v196._countAndFlagsBits;
            v387 = v196._object;
            goto LABEL_168;
          }

          if (v188 == 30566 && v187 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v594._countAndFlagsBits = v191;
            v594._object = v192;
            Locale.Weekday.init(rawValue:)(v594, &v470);
            v357 = LOBYTE(v470._countAndFlagsBits);
            goto LABEL_168;
          }

          if (v188 == 0x7372756F68 && v187 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v595._countAndFlagsBits = v191;
            v595._object = v192;
            Locale.HourCycle.init(rawValue:)(v595, &v470);
            v342 = v470._countAndFlagsBits;
            goto LABEL_168;
          }

          if (v188 == 0x6572757361656DLL && v187 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (v191 == 0x6C61697265706D69 && v192 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (one-time initialization token for uk != -1)
              {
                swift_once();
              }

              v198 = static Locale.MeasurementSystem.uk;
              v197 = *algn_1EA7AFAD8;
              v199 = xmmword_1EA7AFAE0;

              outlined consume of Locale.LanguageCode?(v305, v340);
              v305 = v198;
              v340 = v197;
              v323 = v199;
            }

            else
            {
              v205 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v305, v340);
              v305 = v191;
              v340 = v192;
              v323 = v205;
            }

            goto LABEL_168;
          }

          if (v188 == 26482 && v187 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (String.count.getter() > 2)
            {
              specialized Collection.prefix(_:)(2);

              v200 = Substring.uppercased()();

              v470 = v200;
              v201 = String.init<A>(_:)();
              v203 = v202;
              v204 = String.uppercased()();
              outlined consume of Locale.LanguageCode?(v334, v363);
              v334 = v201;
              v363 = v203;
              v330 = v204._countAndFlagsBits;
              v321 = v204._object;
              goto LABEL_168;
            }
          }

          else
          {
            if (v188 == 25715 && v187 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v206 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v304, v338);
              v304 = v191;
              v338 = v192;
              v319 = v206;
              goto LABEL_168;
            }

            if (v188 == 0x656E6F7A656D6974 && v187 == 0xE800000000000000)
            {

LABEL_219:
              if (one-time initialization token for cache != -1)
              {
                v207 = swift_once();
              }

              v209 = static TimeZoneCache.cache;
              MEMORY[0x1EEE9AC00](v207);
              os_unfair_lock_lock(v209 + 30);
              closure #1 in TimeZoneCache.fixed(_:)partial apply(&v470._countAndFlagsBits);
              os_unfair_lock_unlock(v209 + 30);
              v210 = v470._countAndFlagsBits;
              v211 = v470._object;

              if (v210)
              {
                v212 = v211;
              }

              else
              {
                v212 = 0;
              }

              v318 = v212;
              swift_unknownObjectRelease();
              v385 = v210;
              goto LABEL_168;
            }

            v208 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v208)
            {
              goto LABEL_219;
            }
          }
        }
      }

LABEL_168:
      LODWORD(v470._countAndFlagsBits) = 0;
      LODWORD(v427._countAndFlagsBits) = 0;
      v116 = uenum_next();
      if (SLODWORD(v470._countAndFlagsBits) > 0)
      {
        goto LABEL_130;
      }
    }
  }

  v314 = 0;
  v315 = 0;
  v348 = 0;
  v350 = 0;
  v344 = 0;
  v346 = 0;
  v359 = 0;
  v328 = 0;
  v330 = 0;
  v361 = 0;
  v383 = 0;
  v369 = 0;
  v387 = 0;
  v304 = 0;
  v305 = 0;
  v338 = 0;
  v340 = 0;
  v323 = 0;
  v334 = 0;
  v363 = 0;
  v321 = 0;
  v318 = 0;
  v319 = 0;
  v385 = 0;
  v342 = 4;
  v371 = 27;
LABEL_130:

LABEL_131:
  memset(v522, 0, 96);
  outlined destroy of Locale.Language.Components(v522);
  LODWORD(v470._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v117 = uloc_getLanguage();

  v118 = 0;
  v119 = 0;
  if (SLODWORD(v470._countAndFlagsBits) <= 0 && v117 > 0)
  {
    v521[v117] = 0;
    v118 = MEMORY[0x1865CAEB0](v521);
    v119 = v120;
  }

  LODWORD(v470._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v121 = uloc_getScript();

  v122 = 0;
  v413 = 0;
  if (SLODWORD(v470._countAndFlagsBits) <= 0 && v121 > 0)
  {
    v520[v121] = 0;
    v413 = MEMORY[0x1865CAEB0](v520);
    v122 = v123;
  }

  LODWORD(v470._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v124 = uloc_getCountry();

  v125 = 0;
  v126 = 0;
  if (SLODWORD(v470._countAndFlagsBits) <= 0 && v124 > 0)
  {
    v519[v124] = 0;
    v125 = MEMORY[0x1865CAEB0](v519);
    v126 = v127;
  }

  if (v119)
  {
    v128 = String.lowercased()();
    v405 = v128._countAndFlagsBits;
    v403 = v128._object;
    if (v122)
    {
      goto LABEL_142;
    }

LABEL_145:
    v413 = 0;
    v401 = 0;
    v399 = 0;
    if (!v126)
    {
      goto LABEL_146;
    }

LABEL_143:
    v130 = String.uppercased()();
    v131 = v130._countAndFlagsBits;
    v132 = v130._object;
  }

  else
  {
    v118 = 0;
    v405 = 0;
    v403 = 0;
    if (!v122)
    {
      goto LABEL_145;
    }

LABEL_142:
    v470._countAndFlagsBits = v413;
    v470._object = v122;

    String.init<A>(_:)();
    v129 = String._capitalized()();
    v401 = v129._countAndFlagsBits;
    v399 = v129._object;

    if (v126)
    {
      goto LABEL_143;
    }

LABEL_146:
    v125 = 0;
    v131 = 0;
    v132 = 0;
  }

  v306 = v132;
  v307 = v126;
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  v518[0] = v118;
  v518[1] = v119;
  v518[2] = v405;
  v518[3] = v403;
  v518[4] = v413;
  v518[5] = v122;
  v518[6] = v401;
  v518[7] = v399;
  v518[8] = v125;
  v518[9] = v126;
  v518[10] = v131;
  v518[11] = v132;
  v391 = v118;
  outlined copy of Locale.LanguageCode?(v118, v119);
  v326 = v122;
  outlined copy of Locale.LanguageCode?(v413, v122);
  v313 = v125;
  outlined copy of Locale.LanguageCode?(v125, v126);
  outlined destroy of Locale.Language.Components(v518);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  LODWORD(v470._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v133 = uloc_getVariant();

  v312 = v131;
  if (SLODWORD(v470._countAndFlagsBits) <= 0 && v133 > 0 && (v517[v133] = 0, v134 = MEMORY[0x1865CAEB0](v517), v135))
  {
    v310 = v135;
    v311 = v134;
    v136 = String.lowercased()();
    v308 = v136._object;
    v309 = v136._countAndFlagsBits;
    outlined consume of Locale.LanguageCode?(0, 0);
  }

  else
  {
    v310 = 0;
    v311 = 0;
    v308 = 0;
    v309 = 0;
  }

  String.utf8CString.getter();
  v137 = uloc_openKeywords();

  v389 = v119;
  if (!v137)
  {

    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v407 = 0;
    v410 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v381 = 0;
    v160 = 0;
    LOBYTE(v161) = 4;
    v162 = 7;
    v163 = 27;
    goto LABEL_158;
  }

  type metadata accessor for ICU.Enumerator();
  v298 = 7;
  *(swift_allocObject() + 16) = v137;
  LODWORD(v470._countAndFlagsBits) = 0;
  LODWORD(v427._countAndFlagsBits) = 0;
  v164 = uenum_next();
  if (SLODWORD(v470._countAndFlagsBits) <= 0)
  {
    v160 = 0;
    v168 = 0;
    v281 = 0;
    v282 = 0;
    v283 = 0;
    v284 = 0;
    v285 = 0;
    v286 = 0;
    v287 = 0;
    v288 = 0;
    v167 = 0;
    v289 = 0;
    v290 = 0;
    v166 = 0;
    v165 = 0;
    v291 = 0;
    v292 = 0;
    v293 = 0;
    v294 = 0;
    v295 = 0;
    v296 = 0;
    v300 = 0;
    v139 = 0;
    v299 = 0;
    v169 = 27;
    v297 = 0;
    v298 = 7;
    v161 = 4;
    while (1)
    {
      if (!v164)
      {
        goto LABEL_157;
      }

      v332 = v169;
      v365 = v167;
      v411 = v166;
      v213 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v213, v214, &v470._countAndFlagsBits);

      v215 = v470._object;
      if (!v470._object)
      {
        goto LABEL_227;
      }

      v301 = v161;
      v302 = v139;
      v216 = v470._countAndFlagsBits;
      v217 = specialized static Locale.keywordValue(identifier:key:)();
      if (v218)
      {
        v219 = v217;
        v220 = v218;
        if (v216 == 0x7261646E656C6163 && v215 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v221._countAndFlagsBits = v219;
          v221._object = v220;
          Calendar.Identifier.init(identifierString:)(v221);
          v169 = LOBYTE(v470._countAndFlagsBits);
          v167 = v365;
          v139 = v302;
          v161 = v301;
          goto LABEL_228;
        }

        if (v216 == 0x6F6974616C6C6F63 && v215 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v222 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v299, v302);
          v299 = v219;
          v300 = v222;
          v139 = v220;
          v167 = v365;
          v161 = v301;
          goto LABEL_227;
        }

        if (v216 == 0x79636E6572727563 && v215 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v223 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v297, v296);
          v296 = v220;
          v297 = v219;
          v294 = v223._object;
          v295 = v223._countAndFlagsBits;
          goto LABEL_237;
        }

        if (v216 == 0x737265626D756ELL && v215 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v224 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v293, v292);
          v292 = v220;
          v293 = v219;
          v290 = v224._object;
          v291 = v224._countAndFlagsBits;
          goto LABEL_237;
        }

        if (v216 == 30566 && v215 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v596._countAndFlagsBits = v219;
          v596._object = v220;
          Locale.Weekday.init(rawValue:)(v596, &v470);
          v298 = v470._countAndFlagsBits;
          goto LABEL_237;
        }

        if (v216 == 0x7372756F68 && v215 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v597._countAndFlagsBits = v219;
          v597._object = v220;
          Locale.HourCycle.init(rawValue:)(v597, &v470);
          v161 = LOBYTE(v470._countAndFlagsBits);
          v167 = v365;
          v139 = v302;
          goto LABEL_227;
        }

        if (v216 == 0x6572757361656DLL && v215 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (v219 == 0x6C61697265706D69 && v220 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (one-time initialization token for uk != -1)
            {
              swift_once();
            }

            v226 = static Locale.MeasurementSystem.uk;
            v225 = *algn_1EA7AFAD8;
            v167 = *(&xmmword_1EA7AFAE0 + 1);
            v227 = xmmword_1EA7AFAE0;

            outlined consume of Locale.LanguageCode?(v165, v411);
            v165 = v226;
            v411 = v225;
            v289 = v227;
          }

          else
          {
            v233 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v165, v411);
            v165 = v219;
            v411 = v220;
            v289 = v233._countAndFlagsBits;
            v167 = v233._object;
          }

          goto LABEL_238;
        }

        if (v216 == 26482 && v215 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (String.count.getter() > 2)
          {
            specialized Collection.prefix(_:)(2);

            v228 = Substring.uppercased()();

            v470 = v228;
            v229 = String.init<A>(_:)();
            v231 = v230;
            v232 = String.uppercased()();
            outlined consume of Locale.LanguageCode?(v288, v287);
            v287 = v231;
            v288 = v229;
            v285 = v232._object;
            v286 = v232._countAndFlagsBits;
            goto LABEL_237;
          }
        }

        else
        {
          if (v216 == 25715 && v215 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v234 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v284, v283);
            v283 = v220;
            v284 = v219;
            v281 = v234._object;
            v282 = v234._countAndFlagsBits;
            goto LABEL_237;
          }

          if (v216 == 0x656E6F7A656D6974 && v215 == 0xE800000000000000)
          {

LABEL_282:
            if (one-time initialization token for cache != -1)
            {
              v235 = swift_once();
            }

            v237 = static TimeZoneCache.cache;
            MEMORY[0x1EEE9AC00](v235);
            os_unfair_lock_lock(v237 + 30);
            closure #1 in TimeZoneCache.fixed(_:)partial apply(&v470._countAndFlagsBits);
            os_unfair_lock_unlock(v237 + 30);
            v238 = v470._countAndFlagsBits;
            v239 = v470._object;

            if (v238)
            {
              v160 = v239;
            }

            else
            {
              v160 = 0;
            }

            swift_unknownObjectRelease();
            v168 = v238;
            goto LABEL_237;
          }

          v236 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v236)
          {
            goto LABEL_282;
          }
        }
      }

LABEL_237:
      v167 = v365;
LABEL_238:
      v139 = v302;
      v161 = v301;
LABEL_227:
      v169 = v332;
LABEL_228:
      LODWORD(v470._countAndFlagsBits) = 0;
      LODWORD(v427._countAndFlagsBits) = 0;
      v164 = uenum_next();
      v166 = v411;
      if (SLODWORD(v470._countAndFlagsBits) > 0)
      {
        goto LABEL_157;
      }
    }
  }

  v299 = 0;
  v300 = 0;
  v139 = 0;
  v296 = 0;
  v297 = 0;
  v294 = 0;
  v295 = 0;
  v292 = 0;
  v293 = 0;
  v290 = 0;
  v291 = 0;
  v165 = 0;
  v166 = 0;
  v288 = 0;
  v289 = 0;
  v167 = 0;
  v286 = 0;
  v287 = 0;
  v284 = 0;
  v285 = 0;
  v282 = 0;
  v283 = 0;
  v281 = 0;
  v168 = 0;
  v160 = 0;
  LOBYTE(v161) = 4;
  LOBYTE(v169) = 27;
LABEL_157:
  v381 = v168;
  v410 = v166;
  v407 = v165;
  v163 = v169;

  v141 = v300._object;
  v140 = v300._countAndFlagsBits;
  v143 = v296;
  v142 = v297;
  v145 = v294;
  v144 = v295;
  v147 = v292;
  v146 = v293;
  v149 = v290;
  v148 = v291;
  v153 = v287;
  v152 = v288;
  v162 = v298;
  v138 = v299;
  v155 = v285;
  v154 = v286;
  v157 = v283;
  v156 = v284;
  v151 = v167;
  v159 = v281;
  v158 = v282;
  v150 = v289;
LABEL_158:
  v477 = v313;
  v478 = v307;
  v479 = v312;
  v480 = v306;
  v481 = v163;
  v483 = v138;
  v484 = v139;
  *v482 = *v419;
  *&v482[3] = *&v419[3];
  v485 = v140;
  v470._countAndFlagsBits = v391;
  v470._object = v389;
  v471 = v405;
  v472 = v403;
  v170 = v413;
  v473 = v413;
  v474 = v326;
  v475 = v401;
  v476 = v399;
  v486 = v141;
  v487 = v142;
  v488 = v143;
  v489 = v144;
  v490 = v145;
  v491 = v146;
  v492 = v147;
  v493 = v148;
  v494 = v149;
  v495 = v162;
  v496 = v161;
  v498 = v418;
  v497 = v417;
  v499 = v407;
  v500 = v410;
  v501 = v150;
  v502 = v151;
  v503 = v152;
  v504 = v153;
  v505 = v154;
  v506 = v155;
  v507 = v156;
  v508 = v157;
  v509 = v158;
  v510 = v159;
  v511 = v381;
  v512 = v160;
  v513 = v311;
  v514 = v310;
  v515 = v309;
  v516 = v308;
  if (!v389 || !v326)
  {
    outlined destroy of Locale.Components(&v470);
    v427._countAndFlagsBits = v379;
    v427._object = v397;
    v428 = v375;
    v429 = v395;
    v430 = v393;
    v431 = v373;
    v432 = v354;
    v433 = v415;
    v434 = v367;
    v435 = v352;
    v436 = v371;
    v438 = v315;
    v439 = v350;
    *v437 = *v422;
    *&v437[3] = *&v422[3];
    v440 = v346;
    v441 = v359;
    v442 = v314;
    v443 = v344;
    v444 = v328;
    v445 = v348;
    v446 = v361;
    v447 = v383;
    v448 = v369;
    v449 = v387;
    v450 = v357;
    v451 = v342;
    v453 = v421;
    v452 = v420;
    v454 = v305;
    v455 = v340;
    v456 = v323;
    v457 = v334;
    v458 = v363;
    v459 = v330;
    v460 = v321;
    v461 = v304;
    v462 = v338;
    v463 = v319;
    v464 = v385;
    v465 = v318;
    v466 = v303;
    v467 = v336;
    v468 = v317;
    v469 = v316;
    v69 = &v427;
    goto LABEL_38;
  }

  v171 = v326;
  outlined copy of Locale.LanguageCode?(v391, v389);
  outlined copy of Locale.LanguageCode?(v413, v326);
  outlined consume of Locale.LanguageCode?(v379, v397);
  outlined consume of Locale.LanguageCode?(v395, v393);
  static Locale.numberingSystemForLocaleIdentifier(_:)(&v427);
  v172 = v427._countAndFlagsBits;
  v173 = v427._object;
  v174 = v428._countAndFlagsBits;
  v175 = v428._object;
  v176 = specialized static Locale.NumberingSystem.validNumberingSystems(for:)(v355, v356);
  v177 = specialized Collection<>.firstIndex(of:)(v172, v173, v174, v175, v176);
  LOBYTE(v174) = v178;

  if (v174)
  {

    outlined consume of Locale.LanguageCode?(v361, v383);
    v361 = 0;
    v383 = 0;
    v369 = 0;
    v387 = 0;
    v179 = v389;
  }

  else
  {
    v179 = v389;
    if (v177)
    {
      if (v177 < 1)
      {
      }

      else
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v177, 1, v176);
        v180 = &v176[32 * v177];
        v182 = *(v180 + 4);
        v181 = *(v180 + 5);
        v184 = *(v180 + 6);
        v183 = *(v180 + 7);

        outlined consume of Locale.LanguageCode?(v361, v383);
        v361 = v182;
        v383 = v181;
        v369 = v184;
        v387 = v183;
      }
    }

    else
    {

      outlined consume of Locale.LanguageCode?(v361, v383);
      v361 = 0;
      v383 = 0;
      v369 = 0;
      v387 = 0;
    }
  }

  v240 = MEMORY[0x1E69E7CC0];
  v416 = MEMORY[0x1E69E7CC0];
  if (v371 != 27)
  {
    LOBYTE(v427._countAndFlagsBits) = v371;
    v241 = Calendar.Identifier.cldrIdentifier.getter();
    v243 = v242;
    v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v245 = v240[2];
    v244 = v240[3];
    if (v245 >= v244 >> 1)
    {
      v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v244 > 1), v245 + 1, 1, v240);
    }

    v240[2] = v245 + 1;
    v246 = &v240[4 * v245];
    v246[4] = 0x7261646E656C6163;
    v246[5] = 0xE800000000000000;
    v246[6] = v241;
    v246[7] = v243;
    v416 = v240;
  }

  v247 = v391;
  if (!v350)
  {
    goto LABEL_300;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_354;
  }

  while (1)
  {
    v248 = v240[2];
    v249 = v240[3];
    if (v248 >= v249 >> 1)
    {
      v279 = v240[2];
      v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v249 > 1), v248 + 1, 1, v240);
      v248 = v279;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v248, 0x6F6974616C6C6F63, 0xE90000000000006ELL, v346, v359);
    v416 = v240;
LABEL_300:
    if (v344)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v240[2] + 1, 1, v240);
      }

      v250 = v240[2];
      v251 = v240[3];
      if (v250 >= v251 >> 1)
      {
        v280 = v240[2];
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v251 > 1), v250 + 1, 1, v240);
        v250 = v280;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v250, 0x79636E6572727563, 0xE800000000000000, v328, v348);
      v416 = v240;
    }

    if (v383)
    {

      v416 = v240;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v240[2] + 1, 1, v240);
        v416 = v240;
      }

      v252 = v240[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v252);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v252, 0x737265626D756ELL, 0xE700000000000000, v369, v387);
      v240 = v416;
    }

    if (v357 != 7)
    {
      LOBYTE(v427._countAndFlagsBits) = v357;
      v253 = Locale.Weekday.rawValue.getter();
      v255 = v254;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v256 = v416[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v256);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v256, 30566, 0xE200000000000000, v253, v255);
      v240 = v416;
    }

    if (v342 <= 1u)
    {
      v257 = 3223912;
      if (v342)
      {
        v257 = 3289448;
      }
    }

    else if (v342 == 2)
    {
      v257 = 3355240;
    }

    else
    {
      if (v342 != 3)
      {
        goto LABEL_320;
      }

      v257 = 3420776;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v258 = v416[2];
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v258);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v258, 0x7372756F68, 0xE500000000000000, v257, 0xE300000000000000);
    v240 = v416;
LABEL_320:
    if (v340)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v259 = v416[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v259);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v259, 0x6572757361656DLL, 0xE700000000000000, v323._countAndFlagsBits, v323._object);
      v240 = v416;
    }

    if (v363)
    {
      if (!v415)
      {
        outlined copy of Locale.LanguageCode?(v334, v363);
        outlined copy of Locale.LanguageCode?(v354, 0);
        outlined copy of Locale.LanguageCode?(v334, v363);

        v247 = v391;
        outlined consume of Locale.LanguageCode?(v334, v363);
        v171 = v326;
        outlined consume of Locale.LanguageCode?(v354, 0);
LABEL_329:
        v427._countAndFlagsBits = v334;
        v427._object = v363;

        MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
        v260 = String.lowercased()();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v261 = v416[2];
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v261);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v261, 26482, 0xE200000000000000, v260._countAndFlagsBits, v260._object);
        v240 = v416;
        goto LABEL_330;
      }

      v413 = v170;
      if (v330 == v367 && v321 == v352)
      {
        outlined copy of Locale.LanguageCode?(v334, v363);
        outlined copy of Locale.LanguageCode?(v354, v415);
        outlined copy of Locale.LanguageCode?(v334, v363);
        outlined consume of Locale.LanguageCode?(v354, v415);

        outlined consume of Locale.LanguageCode?(v334, v363);
        v247 = v391;
        v171 = v326;
        goto LABEL_330;
      }

      v412 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of Locale.LanguageCode?(v334, v363);
      outlined copy of Locale.LanguageCode?(v354, v415);
      outlined copy of Locale.LanguageCode?(v334, v363);
      outlined consume of Locale.LanguageCode?(v354, v415);

      v179 = v389;
      outlined consume of Locale.LanguageCode?(v334, v363);
      v247 = v391;
      v171 = v326;
      if ((v412 & 1) == 0)
      {
        goto LABEL_329;
      }
    }

LABEL_330:
    if (v338)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v262 = v416[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v262);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v262, 25715, 0xE200000000000000, v319._countAndFlagsBits, v319._object);
      v240 = v416;
    }

    if (v385)
    {
      ObjectType = swift_getObjectType();
      v264 = v318[4](ObjectType);
      v266 = v265;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v267 = v416[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v267);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v267, 0x656E6F7A656D6974, 0xE800000000000000, v264, v266);
      v240 = v416;
    }

    if (v336)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v268 = v416[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v268);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v268, 24950, 0xE200000000000000, v317, v316);
      v240 = v416;
    }

    v427._countAndFlagsBits = v247;
    v427._object = v179;
    v428._countAndFlagsBits = v405;
    v428._object = v403;
    v429 = v170;
    v430 = v171;
    v431._countAndFlagsBits = v401;
    v431._object = v399;
    v432 = v354;
    v433 = v415;
    v434 = v367;
    v435 = v352;
    Locale.Language.Components.identifier.getter();
    v269 = specialized Array.count.getter(v240);
    if (v269 >= 1)
    {
      MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    }

    v270 = v240[2];
    if (!v270)
    {
      break;
    }

    v247 = 0;
    v170 = v269 - 1;
    v179 = __OFSUB__(v269, 1);
    v271 = v240 + 7;
    while (v247 < v270)
    {
      v273 = *(v271 - 1);
      v272 = *v271;
      v274 = *(v271 - 2);
      v427._countAndFlagsBits = *(v271 - 3);
      v427._object = v274;

      MEMORY[0x1865CB0E0](61, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v273, v272);

      MEMORY[0x1865CB0E0](v427._countAndFlagsBits, v427._object);

      if (v179)
      {
        goto LABEL_353;
      }

      if (v170 != v247)
      {
        MEMORY[0x1865CB0E0](59, 0xE100000000000000);
      }

      ++v247;
      v270 = v240[2];
      v271 += 4;
      if (v247 == v270)
      {
        goto LABEL_348;
      }
    }

    __break(1u);
LABEL_353:
    __break(1u);
LABEL_354:
    v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v240[2] + 1, 1, v240);
  }

LABEL_348:

  v275 = *MEMORY[0x1E695E4A8];
  v276 = String._bridgeToObjectiveCImpl()();

  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(v275, v276);
  swift_unknownObjectRelease();
  if (CanonicalLocaleIdentifierFromString)
  {
    v278 = static String._unconditionallyBridgeFromObjectiveC(_:)(CanonicalLocaleIdentifierFromString);
    outlined destroy of Locale.Components(&v470);
  }

  else
  {
    outlined destroy of Locale.Components(&v470);
    v278 = 0;
  }

  v427._countAndFlagsBits = v391;
  v427._object = v389;
  v428._countAndFlagsBits = v405;
  v428._object = v403;
  v429 = v413;
  v430 = v171;
  v431._countAndFlagsBits = v401;
  v431._object = v399;
  v432 = v354;
  v433 = v415;
  v434 = v367;
  v435 = v352;
  v436 = v371;
  v438 = v315;
  v439 = v350;
  *v437 = *v422;
  *&v437[3] = *&v422[3];
  v440 = v346;
  v441 = v359;
  v442 = v314;
  v443 = v344;
  v444 = v328;
  v445 = v348;
  v446 = v361;
  v447 = v383;
  v448 = v369;
  v449 = v387;
  v450 = v357;
  v451 = v342;
  v453 = v421;
  v452 = v420;
  v454 = v305;
  v455 = v340;
  v456 = v323;
  v457 = v334;
  v458 = v363;
  v459 = v330;
  v460 = v321;
  v461 = v304;
  v462 = v338;
  v463 = v319;
  v464 = v385;
  v465 = v318;
  v466 = v303;
  v467 = v336;
  v468 = v317;
  v469 = v316;
  outlined destroy of Locale.Components(&v427);
  return v278;
}

uint64_t specialized static _LocaleICU.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v230 = *(a1 + 32);
  v231 = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v232 = *(a1 + 64);
  v233 = v5;
  v6 = *(a1 + 16);
  v229[0] = *a1;
  v229[1] = v6;
  v7 = *(a1 + 104);
  v190 = *(a1 + 96);
  v8 = *(a1 + 120);
  v191 = *(a1 + 112);
  v180 = *(a1 + 128);
  v179 = *(a1 + 136);
  v181 = *(a1 + 144);
  v182 = *(a1 + 152);
  v177 = *(a1 + 160);
  v183 = *(a1 + 168);
  v184 = *(a1 + 176);
  v175 = *(a1 + 184);
  v171 = *(a1 + 192);
  v168 = *(a1 + 200);
  v9 = *(a2 + 16);
  v10 = *(a2 + 48);
  v235 = *(a2 + 32);
  v236 = v10;
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  v237 = *(a2 + 64);
  v238 = v12;
  v13 = *(a2 + 16);
  v234[0] = *a2;
  v234[1] = v13;
  v14 = *(a1 + 208);
  v15 = *(a1 + 224);
  v226 = v4;
  v227 = v232;
  v228 = *(a1 + 80);
  v16 = *(a1 + 240);
  v162 = *(a1 + 256);
  v167 = *(a1 + 257);
  v159 = *(a1 + 264);
  v165 = *(a1 + 272);
  v160 = *(a1 + 273);
  v153 = *(a1 + 280);
  v155 = *(a1 + 288);
  v157 = *(a1 + 296);
  v156 = *(a1 + 304);
  v146 = *(a1 + 312);
  v144 = *(a1 + 328);
  v142 = *(a1 + 336);
  v140 = *(a1 + 320);
  v141 = *(a1 + 344);
  v225 = v230;
  v224 = v3;
  v223 = *(a2 + 80);
  v17 = *(a2 + 240);
  v222 = v237;
  v221 = v11;
  v219 = v9;
  v220 = v235;
  v136 = *(a1 + 360);
  v134 = *(a1 + 368);
  v132 = *(a1 + 352);
  v133 = *(a1 + 376);
  v128 = *(a1 + 384);
  v126 = *(a1 + 392);
  v18 = *(a1 + 400);
  v19 = *(a1 + 408);
  v21 = *(a1 + 416);
  v20 = *(a1 + 424);
  v22 = *(a1 + 440);
  v120 = *(a1 + 432);
  v24 = *(a1 + 448);
  v23 = *(a1 + 456);
  v25 = *(a1 + 464);
  v26 = *(a1 + 472);
  v28 = *(a1 + 480);
  v27 = *(a1 + 488);
  v30 = *(a1 + 496);
  v29 = *(a1 + 504);
  v31 = *(a1 + 512);
  v32 = *(a2 + 96);
  v33 = *(a2 + 104);
  v34 = *(a2 + 112);
  v189 = *(a2 + 120);
  v178 = *(a2 + 128);
  v188 = *(a2 + 136);
  v186 = *(a2 + 144);
  v185 = *(a2 + 152);
  v174 = *(a2 + 160);
  v173 = *(a2 + 168);
  v176 = *(a2 + 176);
  v172 = *(a2 + 184);
  v170 = *(a2 + 192);
  v169 = *(a2 + 200);
  v147 = *(a2 + 208);
  v148 = *(a2 + 216);
  v149 = *(a2 + 224);
  v150 = *(a2 + 232);
  v163 = *(a2 + 256);
  v166 = *(a2 + 257);
  v158 = *(a2 + 264);
  v164 = *(a2 + 272);
  v161 = *(a2 + 273);
  v152 = *(a2 + 280);
  v154 = *(a2 + 288);
  v187 = *(a2 + 296);
  v151 = *(a2 + 304);
  v145 = *(a2 + 312);
  v143 = *(a2 + 328);
  v139 = *(a2 + 336);
  v137 = *(a2 + 320);
  v138 = *(a2 + 344);
  v135 = *(a2 + 360);
  v131 = *(a2 + 368);
  v129 = *(a2 + 352);
  v130 = *(a2 + 376);
  v127 = *(a2 + 384);
  v124 = *(a2 + 408);
  v125 = *(a2 + 392);
  v122 = *(a2 + 400);
  v123 = *(a2 + 416);
  v121 = *(a2 + 424);
  v118 = *(a2 + 440);
  v119 = *(a2 + 432);
  v116 = *(a2 + 448);
  v117 = *(a2 + 456);
  v113 = *(a2 + 464);
  v114 = *(a2 + 472);
  v35 = *(a2 + 488);
  v115 = *(a2 + 480);
  v37 = *(a2 + 496);
  v36 = *(a2 + 504);
  v38 = *(a2 + 512);
  v39 = v229[0];
  v40 = v234[0];
  if (*(&v229[0] + 1) == 1)
  {
    if (*(&v234[0] + 1) == 1)
    {
      v109 = v17;
      v110 = v16;
      v111 = v15;
      v112 = v14;
      v103 = *(a1 + 448);
      v104 = *(a1 + 440);
      v91 = *(a2 + 488);
      v92 = *(a2 + 496);
      v101 = *(a1 + 456);
      v102 = *(a1 + 464);
      v93 = *(a2 + 504);
      v94 = *(a2 + 512);
      v95 = *(a1 + 472);
      v96 = *(a1 + 480);
      v107 = *(a1 + 416);
      v108 = *(a1 + 408);
      v97 = *(a1 + 488);
      v98 = *(a1 + 496);
      v105 = *(a1 + 400);
      v106 = *(a1 + 424);
      v99 = *(a1 + 504);
      v100 = *(a1 + 512);
      *&v207 = *&v229[0];
      *(&v207 + 1) = 1;
      v41 = *(a1 + 64);
      v210 = *(a1 + 48);
      v211 = v41;
      v212 = *(a1 + 80);
      v42 = *(a1 + 16);
      v209 = *(a1 + 32);
      v208 = v42;
      outlined init with copy of FloatingPointRoundingRule?(v229, &v201, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(v234, &v201, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
      outlined destroy of TermOfAddress?(&v207, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
      goto LABEL_9;
    }

    outlined init with copy of FloatingPointRoundingRule?(v229, &v207, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
    outlined init with copy of FloatingPointRoundingRule?(v234, &v207, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
LABEL_7:
    v207 = v39;
    v210 = v226;
    v211 = v227;
    v212 = v228;
    v209 = v225;
    v208 = v224;
    v213 = v40;
    v218 = v223;
    v217 = v222;
    v216 = v221;
    v214 = v219;
    v215 = v220;
    outlined destroy of TermOfAddress?(&v207, &_s10Foundation6LocaleV8LanguageV10ComponentsVSg_AHtMd);
    goto LABEL_35;
  }

  v207 = v229[0];
  v43 = *(a1 + 64);
  v210 = *(a1 + 48);
  v211 = v43;
  v212 = *(a1 + 80);
  v44 = *(a1 + 16);
  v209 = *(a1 + 32);
  v208 = v44;
  v203 = v209;
  v204 = v210;
  v205 = v43;
  v206 = v212;
  v201 = v229[0];
  v202 = v44;
  if (*(&v234[0] + 1) == 1)
  {
    v198 = v210;
    v199 = v211;
    v200 = v212;
    v195 = v207;
    v196 = v208;
    v197 = v209;
    outlined init with copy of FloatingPointRoundingRule?(v229, v194, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
    outlined init with copy of FloatingPointRoundingRule?(v234, v194, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
    outlined init with copy of FloatingPointRoundingRule?(&v207, v194, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
    outlined destroy of Locale.Language.Components(&v195);
    goto LABEL_7;
  }

  v109 = v17;
  v110 = v16;
  v111 = v15;
  v112 = v14;
  v103 = v24;
  v104 = v22;
  v91 = v35;
  v92 = v37;
  v101 = v23;
  v102 = v25;
  v93 = v36;
  v94 = v38;
  v95 = v26;
  v96 = v28;
  v107 = v21;
  v108 = v19;
  v97 = v27;
  v98 = v30;
  v105 = v18;
  v106 = v20;
  v99 = v29;
  v100 = v31;
  v45 = *(a2 + 64);
  v198 = *(a2 + 48);
  v199 = v45;
  v200 = *(a2 + 80);
  v46 = *(a2 + 32);
  v196 = *(a2 + 16);
  v197 = v46;
  v195 = v234[0];
  outlined init with copy of FloatingPointRoundingRule?(v229, v194, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
  outlined init with copy of FloatingPointRoundingRule?(v234, v194, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
  outlined init with copy of FloatingPointRoundingRule?(&v207, v194, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
  v47 = specialized static Locale.Language.Components.== infix(_:_:)(&v201, &v195);
  v193[2] = v197;
  v193[3] = v198;
  v193[4] = v199;
  v193[5] = v200;
  v193[0] = v195;
  v193[1] = v196;
  outlined destroy of Locale.Language.Components(v193);
  v194[2] = v203;
  v194[3] = v204;
  v194[4] = v205;
  v194[5] = v206;
  v194[0] = v201;
  v194[1] = v202;
  outlined destroy of Locale.Language.Components(v194);
  v195 = v39;
  v198 = v226;
  v199 = v227;
  v200 = v228;
  v196 = v224;
  v197 = v225;
  outlined destroy of TermOfAddress?(&v195, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
  if (!v47)
  {
    goto LABEL_35;
  }

LABEL_9:
  if (!v7)
  {
    v48 = v190;
    outlined copy of Locale.LanguageCode?(v190, 0);
    v49 = v32;
    if (!v33)
    {
      outlined copy of Locale.LanguageCode?(v32, 0);
      v7 = 0;
      goto LABEL_22;
    }

    outlined copy of Locale.LanguageCode?(v32, v33);
LABEL_17:
    outlined consume of Locale.LanguageCode?(v48, v7);
    v50 = v49;
    v51 = v33;
LABEL_18:
    outlined consume of Locale.LanguageCode?(v50, v51);
    goto LABEL_35;
  }

  v48 = v190;
  v49 = v32;
  if (!v33)
  {
    outlined copy of Locale.LanguageCode?(v190, v7);
    outlined copy of Locale.LanguageCode?(v32, 0);
    outlined copy of Locale.LanguageCode?(v190, v7);

    goto LABEL_17;
  }

  if (v191 == v34 && v8 == v189)
  {
    outlined copy of Locale.LanguageCode?(v190, v7);
    outlined copy of Locale.LanguageCode?(v32, v33);
    outlined copy of Locale.LanguageCode?(v190, v7);
    outlined consume of Locale.LanguageCode?(v32, v33);

LABEL_22:
    outlined consume of Locale.LanguageCode?(v48, v7);
    v53 = v188;
    goto LABEL_23;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v190, v7);
  outlined copy of Locale.LanguageCode?(v32, v33);
  outlined copy of Locale.LanguageCode?(v190, v7);
  outlined consume of Locale.LanguageCode?(v32, v33);

  outlined consume of Locale.LanguageCode?(v190, v7);
  v53 = v188;
  if ((v52 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_23:
  v54 = v179;
  if (v179 == 1)
  {
    v55 = v187;
    v56 = v184;
    v57 = v183;
    v58 = v180;
    if (v53 == 1)
    {
      v54 = 1;
      sub_1808B890C(v180, 1);
      sub_1808B890C(v178, 1);
LABEL_26:
      sub_1807E2788(v58, v54);
      goto LABEL_27;
    }

    goto LABEL_33;
  }

  v55 = v187;
  v56 = v184;
  v57 = v183;
  v58 = v180;
  if (v53 == 1)
  {
LABEL_33:
    sub_1808B890C(v58, v179);
    sub_1808B890C(v178, v53);
    sub_1807E2788(v58, v179);
    v61 = v178;
    v62 = v53;
LABEL_34:
    sub_1807E2788(v61, v62);
    goto LABEL_35;
  }

  if (!v179)
  {
    sub_1808B890C(v180, 0);
    if (!v53)
    {
      sub_1808B890C(v178, 0);
      sub_1808B890C(v180, 0);
      outlined consume of Locale.LanguageCode?(v180, 0);
      v54 = 0;
      goto LABEL_26;
    }

    v67 = v178;
    sub_1808B890C(v178, v53);
    sub_1808B890C(v180, 0);
    goto LABEL_51;
  }

  if (!v53)
  {
    sub_1808B890C(v180, v179);
    v67 = v178;
    sub_1808B890C(v178, 0);
    sub_1808B890C(v180, v179);
    outlined copy of Locale.LanguageCode?(v180, v179);

LABEL_51:
    outlined consume of Locale.LanguageCode?(v180, v179);
    outlined consume of Locale.LanguageCode?(v67, v53);
    v61 = v180;
    v62 = v179;
    goto LABEL_34;
  }

  if (v181 == v186 && v182 == v185)
  {
    sub_1808B890C(v180, v179);
    sub_1808B890C(v178, v53);
    sub_1808B890C(v180, v179);
    outlined copy of Locale.LanguageCode?(v180, v179);
    outlined consume of Locale.LanguageCode?(v178, v53);

    outlined consume of Locale.LanguageCode?(v180, v179);
    goto LABEL_26;
  }

  v192 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_1808B890C(v180, v179);
  sub_1808B890C(v178, v53);
  sub_1808B890C(v180, v179);
  outlined copy of Locale.LanguageCode?(v180, v179);
  v55 = v187;
  outlined consume of Locale.LanguageCode?(v178, v53);

  outlined consume of Locale.LanguageCode?(v180, v179);
  sub_1807E2788(v180, v179);
  if ((v192 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_27:
  if (!v57)
  {
    outlined copy of Locale.LanguageCode?(v177, 0);
    v59 = v173;
    if (!v173)
    {
      outlined copy of Locale.LanguageCode?(v174, 0);
      v57 = 0;
      v60 = v177;
      goto LABEL_53;
    }

    v65 = v174;
    outlined copy of Locale.LanguageCode?(v174, v173);
    v66 = v177;
    goto LABEL_47;
  }

  v59 = v173;
  if (!v173)
  {
    v66 = v177;
    outlined copy of Locale.LanguageCode?(v177, v57);
    v65 = v174;
    outlined copy of Locale.LanguageCode?(v174, 0);
    outlined copy of Locale.LanguageCode?(v177, v57);

LABEL_47:
    outlined consume of Locale.LanguageCode?(v66, v57);
    v50 = v65;
    v51 = v59;
    goto LABEL_18;
  }

  if (v56 == v176 && v175 == v172)
  {
    v60 = v177;
    outlined copy of Locale.LanguageCode?(v177, v57);
    outlined copy of Locale.LanguageCode?(v174, v173);
    outlined copy of Locale.LanguageCode?(v177, v57);
    outlined consume of Locale.LanguageCode?(v174, v173);

LABEL_53:
    outlined consume of Locale.LanguageCode?(v60, v57);
    goto LABEL_54;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v177, v57);
  outlined copy of Locale.LanguageCode?(v174, v173);
  outlined copy of Locale.LanguageCode?(v177, v57);
  outlined consume of Locale.LanguageCode?(v174, v173);

  outlined consume of Locale.LanguageCode?(v177, v57);
  if ((v68 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_54:
  if (v171)
  {
    if (!v170 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation6LocaleV15NumberingSystemV_Tt1g5(v171, v170) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v170)
  {
    goto LABEL_35;
  }

  if (v168 == 7)
  {
    if (v169 != 7)
    {
      goto LABEL_35;
    }
  }

  else if (v169 == 7 || (specialized == infix<A>(_:_:)(v168, v169) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v167)
  {
    if ((v166 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v166)
    {
      goto LABEL_35;
    }

    if (v162)
    {
      if ((v163 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v207 = v112;
      v208 = v111;
      v209 = v110;
      LOBYTE(v210) = 0;
      if (v163)
      {
        goto LABEL_35;
      }

      *&v201 = v147;
      BYTE8(v201) = v148 & 1;
      *&v202 = v149;
      BYTE8(v202) = v150 & 1;
      v203 = v109;
      if (!specialized static WeekendRange.== infix(_:_:)(&v207, &v201))
      {
        goto LABEL_35;
      }
    }
  }

  if (v165)
  {
    if (!v164)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v69 = v164;
    if (v159 != v158)
    {
      v69 = 1;
    }

    if (v69)
    {
      goto LABEL_35;
    }
  }

  if (v160 == 4)
  {
    if (v161 != 4)
    {
      goto LABEL_35;
    }
  }

  else if (v161 == 4 || (specialized == infix<A>(_:_:)(v160, v161) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!v155)
  {
    v70 = v153;
    outlined copy of Locale.LanguageCode?(v153, 0);
    if (!v154)
    {
      outlined copy of Locale.LanguageCode?(v152, 0);
      v71 = 0;
      goto LABEL_99;
    }

    v72 = v152;
    outlined copy of Locale.LanguageCode?(v152, v154);
    goto LABEL_95;
  }

  if (!v154)
  {
    v70 = v153;
    outlined copy of Locale.LanguageCode?(v153, v155);
    v72 = v152;
    outlined copy of Locale.LanguageCode?(v152, 0);
    outlined copy of Locale.LanguageCode?(v153, v155);

LABEL_95:
    outlined consume of Locale.LanguageCode?(v70, v155);
    v50 = v72;
    v51 = v154;
    goto LABEL_18;
  }

  if (v157 == v55 && v156 == v151)
  {
    v70 = v153;
    v71 = v155;
    outlined copy of Locale.LanguageCode?(v153, v155);
    outlined copy of Locale.LanguageCode?(v152, v154);
    outlined copy of Locale.LanguageCode?(v153, v155);
    outlined consume of Locale.LanguageCode?(v152, v154);

LABEL_99:
    outlined consume of Locale.LanguageCode?(v70, v71);
    goto LABEL_100;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v153, v155);
  outlined copy of Locale.LanguageCode?(v152, v154);
  outlined copy of Locale.LanguageCode?(v153, v155);
  outlined consume of Locale.LanguageCode?(v152, v154);

  outlined consume of Locale.LanguageCode?(v153, v155);
  if ((v73 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_100:
  if (v146 == 2)
  {
    if (v145 != 2)
    {
      goto LABEL_35;
    }

LABEL_105:
    if (v144 == 1)
    {
      if (v143 == 1)
      {
        v144 = 1;
        sub_1808B890C(v140, 1);
        sub_1808B890C(v137, 1);
LABEL_108:
        sub_1807E2788(v140, v144);
        goto LABEL_109;
      }

LABEL_133:
      v76 = v140;
      v77 = v144;
      sub_1808B890C(v140, v144);
      v78 = v137;
      v79 = v137;
      v80 = v143;
      v81 = v143;
LABEL_141:
      sub_1808B890C(v79, v81);
      sub_1807E2788(v76, v77);
      v61 = v78;
      v62 = v80;
      goto LABEL_34;
    }

    if (v143 == 1)
    {
      goto LABEL_133;
    }

    if (v144)
    {
      if (v143)
      {
        if (v142 == v139 && v141 == v138)
        {
          sub_1808B890C(v140, v144);
          sub_1808B890C(v137, v143);
          sub_1808B890C(v140, v144);
          outlined copy of Locale.LanguageCode?(v140, v144);
          outlined consume of Locale.LanguageCode?(v137, v143);

          outlined consume of Locale.LanguageCode?(v140, v144);
          goto LABEL_108;
        }

        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1808B890C(v140, v144);
        sub_1808B890C(v137, v143);
        sub_1808B890C(v140, v144);
        outlined copy of Locale.LanguageCode?(v140, v144);
        outlined consume of Locale.LanguageCode?(v137, v143);

        outlined consume of Locale.LanguageCode?(v140, v144);
        sub_1807E2788(v140, v144);
        if ((v87 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_109:
        if (v136 == 1)
        {
          if (v135 == 1)
          {
            v136 = 1;
            sub_1808B890C(v132, 1);
            sub_1808B890C(v129, 1);
LABEL_112:
            sub_1807E2788(v132, v136);
            goto LABEL_113;
          }

          goto LABEL_140;
        }

        if (v135 == 1)
        {
LABEL_140:
          v76 = v132;
          v77 = v136;
          sub_1808B890C(v132, v136);
          v78 = v129;
          v79 = v129;
          v80 = v135;
          v81 = v135;
          goto LABEL_141;
        }

        if (v136)
        {
          if (v135)
          {
            if (v134 == v131 && v133 == v130)
            {
              sub_1808B890C(v132, v136);
              sub_1808B890C(v129, v135);
              sub_1808B890C(v132, v136);
              outlined copy of Locale.LanguageCode?(v132, v136);
              outlined consume of Locale.LanguageCode?(v129, v135);

              outlined consume of Locale.LanguageCode?(v132, v136);
              goto LABEL_112;
            }

            v89 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1808B890C(v132, v136);
            sub_1808B890C(v129, v135);
            sub_1808B890C(v132, v136);
            outlined copy of Locale.LanguageCode?(v132, v136);
            outlined consume of Locale.LanguageCode?(v129, v135);

            outlined consume of Locale.LanguageCode?(v132, v136);
            sub_1807E2788(v132, v136);
            if ((v89 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_113:
            if (v128 == 1)
            {
              if (v127 == 1)
              {
                v74 = 1;
                outlined copy of TimeZone??(1);
                outlined copy of TimeZone??(1);
LABEL_116:
                outlined consume of TimeZone??(v74);
LABEL_117:
                if (v108 == 1)
                {
                  if (v124 == 1)
                  {
                    v75 = 1;
                    sub_1808B890C(v105, 1);
                    sub_1808B890C(v122, 1);
LABEL_120:
                    sub_1807E2788(v105, v75);
LABEL_121:
                    if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v120, v119) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation6LocaleV14IdentifierTypeO_SSTt1g5(v104, v118) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v103, v116) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v101, v117) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v102, v113) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v95, v114) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SSSgTt1g5(v96, v115) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v97, v91) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v98, v92) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v99, v93))
                    {
                      v63 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SpySvSgGTt1g5(v100, v94);
                      return v63 & 1;
                    }

                    goto LABEL_35;
                  }

                  goto LABEL_164;
                }

                if (v124 == 1)
                {
LABEL_164:
                  v76 = v105;
                  v77 = v108;
                  sub_1808B890C(v105, v108);
                  v78 = v122;
                  v79 = v122;
                  v80 = v124;
                  v81 = v124;
                  goto LABEL_141;
                }

                if (v108)
                {
                  if (v124)
                  {
                    if (v107 == v123 && v106 == v121)
                    {
                      sub_1808B890C(v105, v108);
                      sub_1808B890C(v122, v124);
                      sub_1808B890C(v105, v108);
                      outlined copy of Locale.LanguageCode?(v105, v108);
                      outlined consume of Locale.LanguageCode?(v122, v124);

                      v75 = v108;
                      outlined consume of Locale.LanguageCode?(v105, v108);
                      goto LABEL_120;
                    }

                    v90 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    sub_1808B890C(v105, v108);
                    sub_1808B890C(v122, v124);
                    sub_1808B890C(v105, v108);
                    outlined copy of Locale.LanguageCode?(v105, v108);
                    outlined consume of Locale.LanguageCode?(v122, v124);

                    outlined consume of Locale.LanguageCode?(v105, v108);
                    sub_1807E2788(v105, v108);
                    if (v90)
                    {
                      goto LABEL_121;
                    }

LABEL_35:
                    v63 = 0;
                    return v63 & 1;
                  }

                  sub_1808B890C(v105, v108);
                  sub_1808B890C(v122, 0);
                  sub_1808B890C(v105, v108);
                  outlined copy of Locale.LanguageCode?(v105, v108);
                }

                else
                {
                  sub_1808B890C(v105, 0);
                  if (!v124)
                  {
                    sub_1808B890C(v122, 0);
                    sub_1808B890C(v105, 0);
                    outlined consume of Locale.LanguageCode?(v105, 0);
                    v75 = 0;
                    goto LABEL_120;
                  }

                  sub_1808B890C(v122, v124);
                  sub_1808B890C(v105, 0);
                }

                v83 = v105;
                v84 = v108;
                outlined consume of Locale.LanguageCode?(v105, v108);
                v85 = v122;
                v86 = v124;
LABEL_167:
                outlined consume of Locale.LanguageCode?(v85, v86);
                v61 = v83;
                v62 = v84;
                goto LABEL_34;
              }
            }

            else if (v127 != 1)
            {
              if (v128)
              {
                *&v207 = v128;
                *(&v207 + 1) = v126;
                if (v127)
                {
                  *&v201 = v127;
                  *(&v201 + 1) = v125;
                  outlined copy of TimeZone??(v128);
                  outlined copy of TimeZone??(v127);
                  outlined copy of TimeZone??(v128);
                  swift_unknownObjectRetain();
                  v88 = specialized static TimeZone.== infix(_:_:)(&v207, &v201);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  outlined consume of TimeZone??(v128);
                  if ((v88 & 1) == 0)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_117;
                }

                outlined copy of TimeZone??(v128);
                outlined copy of TimeZone??(0);
                outlined copy of TimeZone??(v128);
              }

              else
              {
                outlined copy of TimeZone??(0);
                if (!v127)
                {
                  outlined copy of TimeZone??(0);
                  outlined copy of TimeZone??(0);
                  v74 = 0;
                  goto LABEL_116;
                }

                outlined copy of TimeZone??(v127);
                outlined copy of TimeZone??(0);
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v82 = v128;
LABEL_151:
              outlined consume of TimeZone??(v82);
              goto LABEL_35;
            }

            outlined copy of TimeZone??(v128);
            outlined copy of TimeZone??(v127);
            outlined consume of TimeZone??(v128);
            v82 = v127;
            goto LABEL_151;
          }

          sub_1808B890C(v132, v136);
          sub_1808B890C(v129, 0);
          sub_1808B890C(v132, v136);
          outlined copy of Locale.LanguageCode?(v132, v136);
        }

        else
        {
          sub_1808B890C(v132, 0);
          if (!v135)
          {
            sub_1808B890C(v129, 0);
            sub_1808B890C(v132, 0);
            outlined consume of Locale.LanguageCode?(v132, 0);
            sub_1807E2788(v132, 0);
            goto LABEL_113;
          }

          sub_1808B890C(v129, v135);
          sub_1808B890C(v132, 0);
        }

        v83 = v132;
        v84 = v136;
        outlined consume of Locale.LanguageCode?(v132, v136);
        v85 = v129;
        v86 = v135;
        goto LABEL_167;
      }

      sub_1808B890C(v140, v144);
      sub_1808B890C(v137, 0);
      sub_1808B890C(v140, v144);
      outlined copy of Locale.LanguageCode?(v140, v144);
    }

    else
    {
      sub_1808B890C(v140, 0);
      if (!v143)
      {
        sub_1808B890C(v137, 0);
        sub_1808B890C(v140, 0);
        outlined consume of Locale.LanguageCode?(v140, 0);
        sub_1807E2788(v140, 0);
        goto LABEL_109;
      }

      sub_1808B890C(v137, v143);
      sub_1808B890C(v140, 0);
    }

    v83 = v140;
    v84 = v144;
    outlined consume of Locale.LanguageCode?(v140, v144);
    v85 = v137;
    v86 = v143;
    goto LABEL_167;
  }

  v63 = 0;
  if (v145 != 2 && ((v145 ^ v146) & 1) == 0)
  {
    goto LABEL_105;
  }

  return v63 & 1;
}

uint64_t specialized static Locale.identifierWithKeywordValue(_:key:value:)(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = String.utf8CString.getter();
  strlcpy(__dst, (v2 + 32), 0x9DuLL);

  String.utf8CString.getter();
  String.utf8CString.getter();
  v3 = uloc_setKeywordValue();

  if (v3 < 1)
  {

    return a1;
  }

  else
  {
    __dst[v3] = 0;
    return String.init(cString:)();
  }
}

uint64_t specialized _LocaleICU.displayKeyword(for:keyword:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x1E69E9840];
  MEMORY[0x1865CB0E0](a3, a4);

  MEMORY[0x1865CB0E0](61, 0xE100000000000000);

  MEMORY[0x1865CB0E0](a5, a6);

  String.utf8CString.getter();

  String.utf8CString.getter();
  String.utf8CString.getter();
  DisplayKeywordValue = uloc_getDisplayKeywordValue();

  result = 0;
  if (DisplayKeywordValue - 1 < 0x101)
  {
    return specialized String.init(_utf16:)(v10, DisplayKeywordValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _LocaleICU.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 432);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _LocaleICU.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 432) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LocaleICU.State and conformance _LocaleICU.State()
{
  result = lazy protocol witness table cache variable for type _LocaleICU.State and conformance _LocaleICU.State;
  if (!lazy protocol witness table cache variable for type _LocaleICU.State and conformance _LocaleICU.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LocaleICU.State and conformance _LocaleICU.State);
  }

  return result;
}

uint64_t outlined consume of TimeZone??(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined copy of TimeZone??(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LocaleICU.State.NumberFormattersBox and conformance _LocaleICU.State.NumberFormattersBox()
{
  result = lazy protocol witness table cache variable for type _LocaleICU.State.NumberFormattersBox and conformance _LocaleICU.State.NumberFormattersBox;
  if (!lazy protocol witness table cache variable for type _LocaleICU.State.NumberFormattersBox and conformance _LocaleICU.State.NumberFormattersBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LocaleICU.State.NumberFormattersBox and conformance _LocaleICU.State.NumberFormattersBox);
  }

  return result;
}

uint64_t static Locale.isoLanguageCodes.getter(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

id @objc static NSLocale._isoCurrencyCodes.getter()
{
  specialized static Locale.isoCurrencyCodes.getter();
  v0 = _ContiguousArrayBuffer._asCocoaArray()();

  return v0;
}

id @objc static NSLocale._commonISOCurrencyCodes.getter()
{
  specialized static Locale.Currency.commonISOCurrencies.getter();
  v0 = _ContiguousArrayBuffer._asCocoaArray()();

  return v0;
}

uint64_t @objc static NSLocale._windowsLocaleCode(fromLocaleIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  String.utf8CString.getter();

  LCID = uloc_getLCID();

  return LCID;
}

uint64_t static Locale.lineDirection(forLanguage:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E5750];

  return static Locale.characterDirection(forLanguage:)(a1, a2, v2);
}

id @objc static NSLocale._numberingSystem(forLocaleIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static NSLocale._numberingSystem(forLocaleIdentifier:)();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id @objc static NSLocale._validNumberingSystems(forLocaleIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static NSLocale._validNumberingSystems(forLocaleIdentifier:)(v3, v4);

  v5 = _ContiguousArrayBuffer._asCocoaArray()();

  return v5;
}

id @objc static NSLocale._localeIdentifierByReplacingLanguageCodeAndScriptCode(_:desiredComponents:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  static Locale.localeIdentifierByReplacingLanguageCodeAndScriptCode(localeIDWithDesiredLangCode:localeIDWithDesiredComponents:)(v5);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id @objc NSLocale._localeWithNewCalendarIdentifier(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

uint64_t @objc NSLocale._doesNotRequireSpecialCaseHandling()(void *a1)
{
  v1 = a1;
  v2 = [v1 localeIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  LOBYTE(v2) = specialized static Locale.identifierDoesNotRequireSpecialCaseHandling(_:)(v3, v5);

  return v2 & 1;
}

id _NSSwiftLocale.init(coder:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  v148[6] = *MEMORY[0x1E69E9840];
  if (![a1 allowsKeyedCoding])
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v6 = @"NSDebugDescription";
    v7 = v6;
    if (!isTaggedPointer)
    {
LABEL_9:
      LOBYTE(v144) = 0;
      *&v146 = 0;
      LOBYTE(v141) = 0;
      v142 = 0;
      if (__CFStringIsCF())
      {

LABEL_30:
        v9 = 0;
        v11 = 0xE000000000000000;
        goto LABEL_51;
      }

      v24 = v7;
      v25 = String.init(_nativeStorage:)();
      if (v26)
      {
        v9 = v25;
        v11 = v26;

        goto LABEL_51;
      }

      *&v146 = [(__CFString *)v24 length];
      if (!v146)
      {

        goto LABEL_30;
      }

      v9 = String.init(_cocoaString:)();
      v11 = v36;
LABEL_51:
      v148[0] = v9;
      v148[1] = v11;
      v148[5] = MEMORY[0x1E69E6158];
      v148[2] = 0xD000000000000026;
      v148[3] = 0x800000018147E7F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v37 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)(v148, &v146);

      outlined destroy of TermOfAddress?(v148, &_sSS_yptMd);
      v38 = v146;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v146, *(&v146 + 1));
      v41 = v40;

      if (v41)
      {
        __break(1u);
      }

      else
      {
        v37[(v39 >> 6) + 8] |= 1 << v39;
        *(v37[6] + 16 * v39) = v38;
        outlined init with take of Any(v147, (v37[7] + 32 * v39));
        v42 = v37[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (!v43)
        {
          v37[2] = v44;
          v45 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v46 = @"NSCocoaErrorDomain";
          v47 = v46;
          v139 = v3;
          if (!v45)
          {
LABEL_58:
            LOBYTE(v144) = 0;
            *&v146 = 0;
            LOBYTE(v141) = 0;
            v142 = 0;
            if (!__CFStringIsCF())
            {
              v49 = v47;
              String.init(_nativeStorage:)();
              if (v50 || (*&v146 = [(__CFString *)v49 length], !v146))
              {

                goto LABEL_76;
              }

              goto LABEL_75;
            }

            if (v146)
            {
              if (v142 == 1)
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_76;
              }

LABEL_75:
              String.init(_cocoaString:)();
LABEL_76:
              v53 = objc_allocWithZone(NSError);
              v54 = String._bridgeToObjectiveCImpl()();

              v55 = [v53 initWithDomain:v54 code:4864 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v56 = [v55 domain];
              if (!v56)
              {
                v63 = 0;
                v65 = 0xE000000000000000;
LABEL_162:
                v106 = v47;
                v82 = v106;
                v3 = v139;
                if (!v45)
                {
                  goto LABEL_167;
                }

                TaggedPointerTag = _objc_getTaggedPointerTag(v106);
                if (!TaggedPointerTag)
                {
                  goto LABEL_177;
                }

                if (TaggedPointerTag != 22)
                {
                  if (TaggedPointerTag == 2)
                  {
                    MEMORY[0x1EEE9AC00](TaggedPointerTag);
                    v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v109 = v108;

                    goto LABEL_185;
                  }

LABEL_167:
                  LOBYTE(v144) = 0;
                  *&v146 = 0;
                  LOBYTE(v141) = 0;
                  v142 = 0;
                  if (__CFStringIsCF())
                  {
                    v80 = v146;
                    if (!v146)
                    {

                      v109 = 0xE000000000000000;
                      goto LABEL_185;
                    }

                    if (v142 == 1)
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      v115 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_184:
                      v80 = v115;
                      v109 = v116;
LABEL_185:
                      if (v63 == v80 && v65 == v109)
                      {
                        goto LABEL_225;
                      }

                      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v117)
                      {
LABEL_227:
                        [v3 failWithError_];
                        swift_unknownObjectRelease();

                        type metadata accessor for _NSSwiftLocale();
                        swift_deallocPartialClassInstance();
                        return 0;
                      }

                      __break(1u);
                      v118 = [v2 lengthOfBytesUsingEncoding_];
                      MEMORY[0x1EEE9AC00](v118);
                      v119 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v98 = v120;
                      v121 = HIBYTE(v120) & 0xF;
                      if ((v120 & 0x2000000000000000) == 0)
                      {
                        v121 = v119 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v121)
                      {

                        goto LABEL_193;
                      }

                      v96 = v119;
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v110 = v82;
                    v111 = String.init(_nativeStorage:)();
                    if (v112)
                    {
                      v80 = v111;
                      v109 = v112;

                      goto LABEL_185;
                    }

                    *&v146 = [(__CFString *)v110 length];
                    if (!v146)
                    {

                      v80 = 0;
                      v109 = 0xE000000000000000;
                      goto LABEL_185;
                    }
                  }

                  v115 = String.init(_cocoaString:)();
                  goto LABEL_184;
                }

                result = [(__CFString *)v82 UTF8String];
                if (result)
                {
                  v113 = String.init(utf8String:)(result);
                  if (v114)
                  {
                    goto LABEL_178;
                  }

                  __break(1u);
LABEL_177:
                  v141 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v113 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v114)
                  {
                    [(__CFString *)v82 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v109 = *(&v144 + 1);
                    v80 = v144;
                    goto LABEL_185;
                  }

LABEL_178:
                  v80 = v113;
                  v109 = v114;

                  goto LABEL_185;
                }

LABEL_236:
                __break(1u);
                goto LABEL_237;
              }

              v57 = v2;
              v58 = v56;
              v59 = _objc_isTaggedPointer(v56);
              v60 = v58;
              v61 = v60;
              if ((v59 & 1) == 0)
              {
                goto LABEL_82;
              }

              v62 = _objc_getTaggedPointerTag(v60);
              if (v62)
              {
                if (v62 != 22)
                {
                  if (v62 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v62);
                    v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v65 = v64;

LABEL_161:
                    v2 = v57;
                    goto LABEL_162;
                  }

LABEL_82:
                  LOBYTE(v144) = 0;
                  *&v146 = 0;
                  LOBYTE(v141) = 0;
                  v142 = 0;
                  if (__CFStringIsCF())
                  {
                    if (v146)
                    {
                      if (v142 == 1)
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        v71 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_159:
                        v63 = v71;
                        v65 = v72;
                        goto LABEL_160;
                      }

LABEL_158:
                      v71 = String.init(_cocoaString:)();
                      goto LABEL_159;
                    }
                  }

                  else
                  {
                    v66 = v61;
                    v67 = String.init(_nativeStorage:)();
                    if (v68)
                    {
                      v63 = v67;
                      v65 = v68;

                      goto LABEL_161;
                    }

                    *&v146 = [v66 length];
                    if (v146)
                    {
                      goto LABEL_158;
                    }
                  }

                  v63 = 0;
                  v65 = 0xE000000000000000;
                  goto LABEL_161;
                }

                result = [v61 UTF8String];
                if (!result)
                {
LABEL_240:
                  __break(1u);
                  goto LABEL_241;
                }

                v69 = String.init(utf8String:)(result);
                if (v70)
                {
                  goto LABEL_95;
                }

                __break(1u);
              }

              v141 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v69 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v70)
              {
                [v61 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v65 = *(&v144 + 1);
                v63 = v144;
                goto LABEL_160;
              }

LABEL_95:
              v63 = v69;
              v65 = v70;

LABEL_160:
              goto LABEL_161;
            }

LABEL_74:

            goto LABEL_76;
          }

          v48 = _objc_getTaggedPointerTag(v46);
          if (!v48)
          {
LABEL_68:
            v141 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v52)
            {
              [(__CFString *)v47 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_76;
            }

            goto LABEL_74;
          }

          if (v48 != 22)
          {
            if (v48 == 2)
            {
              MEMORY[0x1EEE9AC00](v48);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_76;
            }

            goto LABEL_58;
          }

          result = [(__CFString *)v47 UTF8String];
          if (result)
          {
            String.init(utf8String:)(result);
            if (v51)
            {
              goto LABEL_74;
            }

            __break(1u);
            goto LABEL_68;
          }

LABEL_235:
          __break(1u);
          goto LABEL_236;
        }
      }

      __break(1u);
      goto LABEL_230;
    }

    v8 = _objc_getTaggedPointerTag(v6);
    if (v8)
    {
      if (v8 != 22)
      {
        if (v8 == 2)
        {
          MEMORY[0x1EEE9AC00](v8);
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v11 = v10;

          goto LABEL_51;
        }

        goto LABEL_9;
      }

      result = [(__CFString *)v7 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_235;
      }

      v30 = String.init(utf8String:)(result);
      if (v31)
      {
LABEL_35:
        v9 = v30;
        v11 = v31;

        goto LABEL_51;
      }

      __break(1u);
    }

    v141 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v31)
    {
      [(__CFString *)v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = *(&v144 + 1);
      v9 = v144;
      goto LABEL_51;
    }

    goto LABEL_35;
  }

  v4 = [v3 decodeObjectForKey_];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v144 = 0u;
    v145 = 0u;
  }

  v146 = v144;
  v147[0] = v145;
  if (*(&v145 + 1))
  {
    v12 = swift_dynamicCast();
    if (v12)
    {
      if (one-time initialization token for cache == -1)
      {
LABEL_15:
        v13 = static LocaleCache.cache;
        MEMORY[0x1EEE9AC00](v12);
        os_unfair_lock_lock((v13 + 48));
        closure #1 in LocaleCache.fixed(_:)partial apply((v13 + 16), &v146);
        os_unfair_lock_unlock((v13 + 48));
        v137 = v146;

        *&v2[OBJC_IVAR____NSSwiftLocale_locale] = v137;
        v14 = String._bridgeToObjectiveCImpl()();
        v140.receiver = v2;
        v140.super_class = type metadata accessor for _NSSwiftLocale();
        v15 = objc_msgSendSuper2(&v140, sel_initWithLocaleIdentifier_, v14);
        swift_unknownObjectRelease();

        return v15;
      }

LABEL_233:
      v12 = swift_once();
      goto LABEL_15;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(&v146, &_sypSgMd);
  }

  v17 = _objc_isTaggedPointer(@"NSDebugDescription");
  v18 = @"NSDebugDescription";
  v19 = v18;
  if (!v17)
  {
    goto LABEL_22;
  }

  v20 = _objc_getTaggedPointerTag(v18);
  switch(v20)
  {
    case 0:
      goto LABEL_43;
    case 0x16:
      result = [(__CFString *)v19 UTF8String];
      if (result)
      {
        v32 = String.init(utf8String:)(result);
        if (v33)
        {
          goto LABEL_44;
        }

        __break(1u);
LABEL_43:
        v141 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v33)
        {
          [(__CFString *)v19 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v23 = *(&v144 + 1);
          v21 = v144;
          goto LABEL_102;
        }

LABEL_44:
        v21 = v32;
        v23 = v33;

        goto LABEL_102;
      }

LABEL_237:
      __break(1u);
      goto LABEL_238;
    case 2:
      MEMORY[0x1EEE9AC00](v20);
      v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v23 = v22;

      goto LABEL_102;
  }

LABEL_22:
  LOBYTE(v144) = 0;
  *&v146 = 0;
  LOBYTE(v141) = 0;
  v142 = 0;
  if (!__CFStringIsCF())
  {
    v27 = v19;
    v28 = String.init(_nativeStorage:)();
    if (v29)
    {
      v21 = v28;
      v23 = v29;

      goto LABEL_102;
    }

    *&v146 = [(__CFString *)v27 length];
    if (v146)
    {
      goto LABEL_100;
    }

LABEL_37:
    v21 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_102;
  }

  if (!v146)
  {

    goto LABEL_37;
  }

  if (v142 != 1)
  {
LABEL_100:
    v34 = String.init(_cocoaString:)();
    goto LABEL_101;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v34 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_101:
  v21 = v34;
  v23 = v35;
LABEL_102:
  v143[0] = v21;
  v143[1] = v23;
  v143[5] = MEMORY[0x1E69E6158];
  v143[2] = 0xD00000000000001DLL;
  v143[3] = 0x800000018147E820;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v73 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v143, &v146);

  outlined destroy of TermOfAddress?(v143, &_sSS_yptMd);
  v74 = v146;
  v75 = specialized __RawDictionaryStorage.find<A>(_:)(v146, *(&v146 + 1));
  v77 = v76;

  if (v77)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v73[(v75 >> 6) + 8] |= 1 << v75;
  *(v73[6] + 16 * v75) = v74;
  outlined init with take of Any(v147, (v73[7] + 32 * v75));
  v78 = v73[2];
  v43 = __OFADD__(v78, 1);
  v79 = v78 + 1;
  if (v43)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v73[2] = v79;
  LODWORD(v80) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v81 = @"NSCocoaErrorDomain";
  v82 = v81;
  if (!v80)
  {
    goto LABEL_109;
  }

  v83 = _objc_getTaggedPointerTag(v81);
  switch(v83)
  {
    case 0:
LABEL_120:
      v141 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v87)
      {
        [(__CFString *)v82 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_130;
      }

      goto LABEL_128;
    case 0x16:
      result = [(__CFString *)v82 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v86)
        {
          goto LABEL_128;
        }

        __break(1u);
        goto LABEL_120;
      }

LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
      goto LABEL_240;
    case 2:
      MEMORY[0x1EEE9AC00](v83);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_130;
  }

LABEL_109:
  LOBYTE(v144) = 0;
  *&v146 = 0;
  LOBYTE(v141) = 0;
  v142 = 0;
  if (!__CFStringIsCF())
  {
    v84 = v82;
    String.init(_nativeStorage:)();
    if (v85 || (*&v146 = [(__CFString *)v84 length], !v146))
    {

      goto LABEL_130;
    }

    goto LABEL_129;
  }

  if (!v146)
  {
LABEL_128:

    goto LABEL_130;
  }

  if (v142 != 1)
  {
LABEL_129:
    String.init(_cocoaString:)();
    goto LABEL_130;
  }

  if (v144)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_130:
  v88 = objc_allocWithZone(NSError);
  v89 = String._bridgeToObjectiveCImpl()();

  v90 = [v88 initWithDomain:v89 code:4864 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v91 = [v90 domain];
  if (!v91)
  {
    v96 = 0;
    v98 = 0xE000000000000000;
LABEL_197:
    v122 = v82;
    v123 = v122;
    if (!v80)
    {
      goto LABEL_202;
    }

    v124 = _objc_getTaggedPointerTag(v122);
    if (!v124)
    {
      goto LABEL_213;
    }

    if (v124 != 22)
    {
      if (v124 == 2)
      {
        MEMORY[0x1EEE9AC00](v124);
        v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v127 = v126;

        goto LABEL_223;
      }

LABEL_202:
      LOBYTE(v144) = 0;
      *&v146 = 0;
      LOBYTE(v141) = 0;
      v142 = 0;
      if (__CFStringIsCF())
      {
        v125 = v146;
        if (!v146)
        {

          v127 = 0xE000000000000000;
          goto LABEL_223;
        }

        if (v142 == 1)
        {
          if (v144)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v133 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_222;
        }
      }

      else
      {
        v128 = v123;
        v129 = String.init(_nativeStorage:)();
        if (v130)
        {
          v125 = v129;
          v127 = v130;

          goto LABEL_223;
        }

        *&v146 = [(__CFString *)v128 length];
        if (!v146)
        {

          v125 = 0;
          v127 = 0xE000000000000000;
          goto LABEL_223;
        }
      }

      v133 = String.init(_cocoaString:)();
LABEL_222:
      v125 = v133;
      v127 = v134;
LABEL_223:
      if (v96 == v125 && v98 == v127)
      {
LABEL_225:

        goto LABEL_227;
      }

      v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v135)
      {
        goto LABEL_227;
      }

LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    result = [(__CFString *)v123 UTF8String];
    if (result)
    {
      v131 = String.init(utf8String:)(result);
      if (v132)
      {
        goto LABEL_214;
      }

      __break(1u);
LABEL_213:
      v141 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v131 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v132)
      {
        [(__CFString *)v123 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v127 = *(&v144 + 1);
        v125 = v144;
        goto LABEL_223;
      }

LABEL_214:
      v125 = v131;
      v127 = v132;

      goto LABEL_223;
    }

    goto LABEL_239;
  }

  v138 = v2;
  v92 = v91;
  v93 = _objc_isTaggedPointer(v91);
  v94 = v92;
  v2 = v94;
  if (!v93)
  {
    goto LABEL_136;
  }

  v95 = _objc_getTaggedPointerTag(v94);
  if (!v95)
  {
    goto LABEL_149;
  }

  if (v95 != 22)
  {
    if (v95 == 2)
    {
      MEMORY[0x1EEE9AC00](v95);
      v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v98 = v97;

LABEL_196:
      v2 = v138;
      goto LABEL_197;
    }

LABEL_136:
    LOBYTE(v144) = 0;
    *&v146 = 0;
    LOBYTE(v141) = 0;
    v142 = 0;
    if (__CFStringIsCF())
    {
      if (v146)
      {
        if (v142 == 1)
        {
          if (v144)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v104 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_194;
        }

LABEL_193:
        v104 = String.init(_cocoaString:)();
LABEL_194:
        v96 = v104;
        v98 = v105;
        goto LABEL_195;
      }
    }

    else
    {
      v99 = v2;
      v100 = String.init(_nativeStorage:)();
      if (v101)
      {
        v96 = v100;
        v98 = v101;

        goto LABEL_196;
      }

      *&v146 = [v99 length];
      if (v146)
      {
        goto LABEL_193;
      }
    }

    v96 = 0;
    v98 = 0xE000000000000000;
    goto LABEL_196;
  }

  result = [v2 UTF8String];
  if (result)
  {
    v102 = String.init(utf8String:)(result);
    if (v103)
    {
LABEL_150:
      v96 = v102;
      v98 = v103;
LABEL_151:

LABEL_195:
      goto LABEL_196;
    }

    __break(1u);
LABEL_149:
    v141 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v102 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v103)
    {
      [v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v98 = *(&v144 + 1);
      v96 = v144;
      goto LABEL_195;
    }

    goto LABEL_150;
  }

LABEL_241:
  __break(1u);
  return result;
}

uint64_t _NSSwiftLocale.exemplarCharacterSet.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____NSSwiftLocale_locale + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 184);
  swift_unknownObjectRetain();
  v5(&alloc, ObjectType, v3);
  swift_unknownObjectRelease();
  result = alloc;
  if (alloc)
  {
    goto LABEL_4;
  }

  result = CFCharacterSetCreateMutable(0);
  if (result)
  {
    v7 = result;
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = 1;
LABEL_4:
    *a1 = result;
    return result;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall _NSSwiftLocale.localizedString(forCalendarIdentifier:)(Swift::String forCalendarIdentifier)
{
  v2 = String._bridgeToObjectiveCImpl()();
  static Calendar._fromNSCalendarIdentifier(_:)(v2, &v14);
  swift_unknownObjectRelease();
  v3 = v14;
  if (v14 == 27)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    ObjectType = swift_getObjectType();
    v13 = v3;
    v8 = *(v6 + 112);
    swift_unknownObjectRetain();
    v9 = v8(&v13, ObjectType, v6);
    v11 = v10;
    swift_unknownObjectRelease();
    v5 = v11;
    v4 = v9;
  }

  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

id _NSSwiftLocale.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _NSSwiftLocale();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static Locale._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
    v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    result = swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
    result = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t static Locale._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
    v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
    v7 = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Locale(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
    v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
    v7 = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return 1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Locale@<X0>(id result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    type metadata accessor for _NSSwiftLocale();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
      v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
      result = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _LocaleBridged();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
      result = v2;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSLocale._toCustomAnyHashable()()
{
  type metadata accessor for _NSSwiftLocale();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    *(swift_allocObject() + 16) = v0;
    lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
    v1 = v0;
  }

  lazy protocol witness table accessor for type Locale and conformance Locale();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSLocale()
{
  v1 = *v0;
  type metadata accessor for _NSSwiftLocale();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    *(swift_allocObject() + 16) = v1;
    lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
    v2 = v1;
  }

  lazy protocol witness table accessor for type Locale and conformance Locale();
  AnyHashable.init<A>(_:)();
}

uint64_t one-time initialization function for languageIdentifier()
{
  result = String._bridgeToObjectiveCImpl()();
  static NSLocaleKey.languageIdentifier = result;
  return result;
}

uint64_t specialized static Locale.isoCurrencyCodes.getter()
{
  v0 = specialized static Locale.Currency.isoCurrencies.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

unint64_t instantiation function for generic protocol witness table for Locale(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Locale and conformance Locale();
  a1[2] = lazy protocol witness table accessor for type Locale and conformance Locale();
  a1[3] = lazy protocol witness table accessor for type Locale and conformance Locale();
  result = lazy protocol witness table accessor for type Locale and conformance Locale();
  a1[4] = result;
  return result;
}

uint64_t specialized static NSLocale._numberingSystem(forLocaleIdentifier:)()
{

  Locale.Components.init(identifier:)(v4);
  object = v6;
  if (v6)
  {
    countAndFlagsBits = v5;

    outlined destroy of Locale.Components(v4);
  }

  else
  {
    static Locale.NumberingSystem.defaultNumberingSystem(for:)(&v3);
    outlined destroy of Locale.Components(v4);
    object = v3._object;
    if (!v3._object)
    {
      return 0;
    }

    countAndFlagsBits = v3._countAndFlagsBits;
  }

  outlined consume of Locale.LanguageCode?(countAndFlagsBits, object);
  return countAndFlagsBits;
}

uint64_t specialized static NSLocale._validNumberingSystems(forLocaleIdentifier:)(void *a1, uint64_t a2)
{
  v2 = specialized static Locale.NumberingSystem.validNumberingSystems(for:)(a1, a2);
  v3 = *(v2 + 2);
  if (v3)
  {
    v12 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v12;
    v5 = (v2 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);

      if (v8 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v10 = v12 + 16 * v8;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t Locale.Language.isEquivalent(to:)()
{
  v0 = Locale.Language.maximalIdentifier.getter();
  v2 = v1;
  if (v0 == Locale.Language.maximalIdentifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

unint64_t specialized Collection.prefix(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    a4 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      a4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    a2 = (a4 << 16) | 7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      if (a4 >= a1)
      {
        a2 = (a1 << 16) | 4;
      }

      return _StringGuts.validateSubscalarRange(_:)(0xFuLL, a2, v5, v4);
    }
  }

  v7 = (a4 << 16) | 0xB;
  if ((v5 & 0x800000000000000) != 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  v9 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
  v11 = v10;
  a2 = v8;
  if ((v11 & 1) == 0)
  {
    a2 = v9;
  }

  return _StringGuts.validateSubscalarRange(_:)(0xFuLL, a2, v5, v4);
}

uint64_t static Locale.NumberingSystem.defaultNumberingSystem(for:)@<X0>(Swift::String *a1@<X8>)
{
  v216 = *MEMORY[0x1E69E9840];
  memset(v215, 0, 96);
  outlined destroy of Locale.Language.Components(v215);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v2 = 0;
  v3 = 0;
  if (Language > 0)
  {
    v214[Language] = 0;
    v2 = MEMORY[0x1865CAEB0](v214);
    v3 = v4;
  }

  LODWORD(v168._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v6 = 0;
  v7 = 0;
  if (Script > 0)
  {
    v213[Script] = 0;
    v6 = MEMORY[0x1865CAEB0](v213);
    v7 = v8;
  }

  LODWORD(v168._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v10 = 0;
  v11 = 0;
  if (Country > 0)
  {
    v212[Country] = 0;
    v10 = MEMORY[0x1865CAEB0](v212, 0);
  }

  v164 = v11;
  v12 = v10;
  if (v3)
  {
    v13 = String.lowercased()();
    object = v13._object;
    countAndFlagsBits = v13._countAndFlagsBits;
    if (v7)
    {
LABEL_9:
      v168._countAndFlagsBits = v6;
      v168._object = v7;

      String.init<A>(_:)();
      v14 = String._capitalized()();
      v159 = v14._object;
      v160 = v14._countAndFlagsBits;

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    object = 0;
    countAndFlagsBits = 0;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
  v159 = 0;
  v160 = 0;
LABEL_12:
  v15 = v12;
  v166 = v7;
  if (v164)
  {
    v16 = String.uppercased()();
    v17 = v16._countAndFlagsBits;
    v18 = v16._object;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
  }

  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  v211[0] = v2;
  v211[1] = v3;
  v211[2] = countAndFlagsBits;
  v211[3] = object;
  v211[4] = v6;
  v211[5] = v7;
  v211[6] = v160;
  v211[7] = v159;
  v211[8] = v15;
  v211[9] = v164;
  v211[10] = v17;
  v211[11] = v18;
  v128._countAndFlagsBits = v2;
  outlined copy of Locale.LanguageCode?(v2, v3);
  v165 = v6;
  outlined copy of Locale.LanguageCode?(v6, v7);
  v146 = v17;
  v147 = v15;
  v145 = v18;
  outlined copy of Locale.LanguageCode?(v15, v164);
  outlined destroy of Locale.Language.Components(v211);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  LODWORD(v168._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  v128._object = v3;
  if (Variant > 0 && (v210[Variant] = 0, v20 = MEMORY[0x1865CAEB0](v210), v21))
  {
    v122 = v20;
    v127 = v21;
    v22 = String.lowercased()();
    v126 = v22._countAndFlagsBits;
    v138 = v22._object;
    outlined consume of Locale.LanguageCode?(0, 0);
  }

  else
  {
    v122 = 0;
    v126 = 0;
    v127 = 0;
    v138 = 0;
  }

  v23 = v7;
  String.utf8CString.getter();
  v24 = uloc_openKeywords();

  v25 = 0;
  v143 = 4;
  v148 = 7;
  countAndFlagsBits_low = 27;
  v151 = 0;
  v26 = 0;
  v158 = 0;
  v27 = 0;
  v144 = 0;
  v137 = 0;
  v153 = 0;
  v154 = 0;
  v28 = 0;
  v29 = 0;
  v124 = 0;
  v125 = 0;
  v141 = 0;
  v142 = 0;
  v134 = 0;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v163 = 0;
  v139 = 0;
  v140 = 0;
  v152 = 0;
  v131 = 0;
  if (v24)
  {
    type metadata accessor for ICU.Enumerator();
    *(swift_allocObject() + 16) = v24;
    LODWORD(v168._countAndFlagsBits) = 0;
    v30 = uenum_next();
    v131 = 0;
    v132 = 0;
    v140 = 0;
    v141 = 0;
    v152 = 0;
    v153 = 0;
    v124 = 0;
    v125 = 0;
    v133 = 0;
    v134 = 0;
    v139 = 0;
    v163 = 0;
    v135 = 0;
    v142 = 0;
    v49 = 0;
    v29 = 0;
    v28 = 0;
    v154 = 0;
    v156 = 0;
    v137 = 0;
    v144 = 0;
    v130 = 0;
    v158 = 0;
    v151 = 0;
    v25 = 0;
    countAndFlagsBits_low = 27;
    v148 = 7;
    v143 = 4;
    while (1)
    {
      if (!v30)
      {
LABEL_21:

        v26 = v156;
        v27 = v130;
        break;
      }

      v50 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v50, v51, &v168._countAndFlagsBits);

      v52 = v168._object;
      if (v168._object)
      {
        v149 = v49;
        v53 = v168._countAndFlagsBits;
        LODWORD(v168._countAndFlagsBits) = 0;
        String.utf8CString.getter();
        String.utf8CString.getter();
        KeywordValue = uloc_getKeywordValue();

        if (SLODWORD(v168._countAndFlagsBits) > 0)
        {
          goto LABEL_62;
        }

        if (KeywordValue <= 0)
        {
          goto LABEL_62;
        }

        v167[KeywordValue] = 0;
        v55 = MEMORY[0x1865CAEB0](v167);
        if (!v56)
        {
          goto LABEL_62;
        }

        v57 = v55;
        v58 = v56;
        if (v53 == 0x7261646E656C6163 && v52 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v59._countAndFlagsBits = v57;
          v59._object = v58;
          Calendar.Identifier.init(identifierString:)(v59);
          countAndFlagsBits_low = LOBYTE(v168._countAndFlagsBits);
          goto LABEL_63;
        }

        if (v53 == 0x6F6974616C6C6F63 && v52 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v60 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v25, v151);
          v25 = v57;
          v151 = v58;
          v156 = v60._countAndFlagsBits;
          v158 = v60._object;
          goto LABEL_63;
        }

        if (v53 == 0x79636E6572727563 && v52 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v61 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v130, v144);
          v130 = v57;
          v144 = v58;
          v137 = v61._countAndFlagsBits;
          v154 = v61._object;
          goto LABEL_63;
        }

        if (v53 == 0x737265626D756ELL && v52 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v62 = String.lowercased()()._object;
          outlined consume of Locale.LanguageCode?(v28, v29);
          v29 = v58;
          v28 = v57;
          v49 = v62;
          v6 = v165;
          v23 = v166;
          goto LABEL_64;
        }

        if (v53 == 30566 && v52 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v217._countAndFlagsBits = v57;
          v217._object = v58;
          Locale.Weekday.init(rawValue:)(v217, &v168);
          v148 = v168._countAndFlagsBits;
          goto LABEL_63;
        }

        if ((v53 != 0x7372756F68 || v52 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v53 == 0x6572757361656DLL && v52 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (v57 == 0x6C61697265706D69 && v58 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (one-time initialization token for uk != -1)
              {
                swift_once();
              }

              v66 = static Locale.MeasurementSystem.uk;
              v65 = *algn_1EA7AFAD8;
              v67 = xmmword_1EA7AFAE0;

              outlined consume of Locale.LanguageCode?(v125, v142);
              v125 = v66;
              v142 = v65;
              v153 = *(&v67 + 1);
              v135 = v67;
            }

            else
            {
              v73 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v125, v142);
              v125 = v57;
              v142 = v58;
              v135 = v73._countAndFlagsBits;
              v153 = v73._object;
            }

            goto LABEL_63;
          }

          if ((v53 != 26482 || v52 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (v53 == 25715 && v52 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v74 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v124, v141);
              v124 = v57;
              v141 = v58;
              v132 = v74._countAndFlagsBits;
              v152 = v74._object;
              goto LABEL_63;
            }

            if (v53 == 0x656E6F7A656D6974 && v52 == 0xE800000000000000)
            {
            }

            else
            {
              v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v76 & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            if (one-time initialization token for cache != -1)
            {
              v75 = swift_once();
            }

            v77 = static TimeZoneCache.cache;
            MEMORY[0x1EEE9AC00](v75);
            os_unfair_lock_lock(v77 + 30);
            closure #1 in TimeZoneCache.fixed(_:)partial apply(&v168._countAndFlagsBits);
            os_unfair_lock_unlock(v77 + 30);
            v78 = v168._countAndFlagsBits;
            v79 = v168._object;

            if (v78)
            {
              v80 = v79;
            }

            else
            {
              v80 = 0;
            }

            v131 = v80;
            swift_unknownObjectRelease();
            v140 = v78;
            goto LABEL_63;
          }

          if (String.count.getter() > 2)
          {
            specialized Collection.prefix(_:)(2);

            v68 = Substring.uppercased()();

            v168 = v68;
            v69 = String.init<A>(_:)();
            v71 = v70;
            v72 = String.uppercased()();
            outlined consume of Locale.LanguageCode?(v133, v163);
            v133 = v69;
            v134 = v72._object;
            v163 = v71;
            v139 = v72._countAndFlagsBits;
            goto LABEL_63;
          }

LABEL_62:

LABEL_63:
          v6 = v165;
          v23 = v166;
          v49 = v149;
          goto LABEL_64;
        }

        v63._countAndFlagsBits = v57;
        v63._object = v58;
        v64 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.HourCycle.init(rawValue:), v63);

        if (v64 > 1)
        {
          v6 = v165;
          v23 = v166;
          v49 = v149;
          if (v64 == 2)
          {
            v143 = 2;
            goto LABEL_64;
          }

          if (v64 != 3)
          {
            goto LABEL_101;
          }

          v143 = 3;
        }

        else
        {
          v6 = v165;
          v23 = v166;
          v49 = v149;
          if (!v64)
          {
            v143 = 0;
            goto LABEL_64;
          }

          if (v64 != 1)
          {
LABEL_101:
            v143 = 4;
            goto LABEL_64;
          }

          v143 = 1;
        }
      }

LABEL_64:
      LODWORD(v168._countAndFlagsBits) = 0;
      v30 = uenum_next();
      if (SLODWORD(v168._countAndFlagsBits) > 0)
      {
        goto LABEL_21;
      }
    }
  }

  v129 = v27;
  v155 = v26;
  v31 = String.lowercased()();
  outlined consume of Locale.LanguageCode?(v28, v29);
  if (countAndFlagsBits_low == 27)
  {
    v32 = MEMORY[0x1E69E7CC0];
    if (!v151)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  LOBYTE(v168._countAndFlagsBits) = countAndFlagsBits_low;
  v33 = Calendar.Identifier.cldrIdentifier.getter();
  v35 = v34;
  v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v37 = v32[2];
  v36 = v32[3];
  if (v37 >= v36 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v32);
  }

  v32[2] = v37 + 1;
  v38 = &v32[4 * v37];
  v38[4] = 0x7261646E656C6163;
  v38[5] = 0xE800000000000000;
  v38[6] = v33;
  v38[7] = v35;
  if (v151)
  {
LABEL_28:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v40 = v32[2];
    v39 = v32[3];
    if (v40 >= v39 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v32);
    }

    v32[2] = v40 + 1;
    v41 = &v32[4 * v40];
    v41[4] = 0x6F6974616C6C6F63;
    v41[5] = 0xE90000000000006ELL;
    v41[6] = v155;
    v41[7] = v158;
  }

LABEL_33:
  if (v144)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v43 = v32[2];
    v42 = v32[3];
    if (v43 >= v42 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v32);
    }

    v32[2] = v43 + 1;
    v44 = &v32[4 * v43];
    v44[4] = 0x79636E6572727563;
    v44[5] = 0xE800000000000000;
    v44[6] = v137;
    v44[7] = v154;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_193;
  }

  while (1)
  {
    v46 = v32[2];
    v45 = v32[3];
    if (v46 >= v45 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v32);
    }

    v32[2] = v46 + 1;
    v47 = &v32[4 * v46];
    v47[2]._countAndFlagsBits = 0x737265626D756ELL;
    v47[2]._object = 0xE700000000000000;
    v47[3] = v31;
    if (v148 > 3u)
    {
      if (v148 > 5u)
      {
        if (v148 != 6)
        {
          goto LABEL_132;
        }

        v48 = 7627123;
      }

      else
      {
        v48 = v148 == 4 ? 7694452 : 6910566;
      }
    }

    else if (v148 > 1u)
    {
      v48 = v148 == 2 ? 6649204 : 6579575;
    }

    else
    {
      v48 = 7237485;
      if (!v148)
      {
        v48 = 7239027;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v82 = v32[2];
    v81 = v32[3];
    if (v82 >= v81 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v32);
    }

    v32[2] = v82 + 1;
    v83 = &v32[4 * v82];
    v83[4] = 30566;
    v83[5] = 0xE200000000000000;
    v83[6] = v48;
    v83[7] = 0xE300000000000000;
LABEL_132:
    if (v143 <= 1u)
    {
      v84 = 3223912;
      if (v143)
      {
        v84 = 3289448;
      }
    }

    else if (v143 == 2)
    {
      v84 = 3355240;
    }

    else
    {
      if (v143 != 3)
      {
        goto LABEL_144;
      }

      v84 = 3420776;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v86 = v32[2];
    v85 = v32[3];
    if (v86 >= v85 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v32);
    }

    v32[2] = v86 + 1;
    v87 = &v32[4 * v86];
    v87[4] = 0x7372756F68;
    v87[5] = 0xE500000000000000;
    v87[6] = v84;
    v87[7] = 0xE300000000000000;
LABEL_144:
    if (v142)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
      }

      v89 = v32[2];
      v88 = v32[3];
      if (v89 >= v88 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v32);
      }

      v32[2] = v89 + 1;
      v90 = &v32[4 * v89];
      v90[4] = 0x6572757361656DLL;
      v90[5] = 0xE700000000000000;
      v90[6] = v135;
      v90[7] = v153;
    }

    if (v163)
    {
      if (v164)
      {
        if (v139 == v146 && v134 == v145)
        {
          outlined copy of Locale.LanguageCode?(v133, v163);
          outlined copy of Locale.LanguageCode?(v147, v164);
          outlined copy of Locale.LanguageCode?(v133, v163);
          outlined consume of Locale.LanguageCode?(v147, v164);

          outlined consume of Locale.LanguageCode?(v133, v163);
          v6 = v165;
          v23 = v166;
          goto LABEL_163;
        }

        v150 = v25;
        v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v91 = v133;
        v92 = v163;
        outlined copy of Locale.LanguageCode?(v133, v163);
        outlined copy of Locale.LanguageCode?(v147, v164);
        outlined copy of Locale.LanguageCode?(v133, v163);
        outlined consume of Locale.LanguageCode?(v147, v164);

        outlined consume of Locale.LanguageCode?(v133, v163);
        v23 = v166;
        if (v136)
        {
          v6 = v165;
          goto LABEL_163;
        }
      }

      else
      {
        v150 = v25;
        v91 = v133;
        v92 = v163;
        outlined copy of Locale.LanguageCode?(v133, v163);
        outlined copy of Locale.LanguageCode?(v147, 0);
        outlined copy of Locale.LanguageCode?(v133, v163);

        outlined consume of Locale.LanguageCode?(v133, v163);
        outlined consume of Locale.LanguageCode?(v147, 0);
      }

      v168._countAndFlagsBits = v91;
      v168._object = v92;

      MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
      v93 = String.lowercased()();

      v25 = v150;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
      }

      v95 = v32[2];
      v94 = v32[3];
      v6 = v165;
      if (v95 >= v94 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v32);
      }

      v32[2] = v95 + 1;
      v96 = &v32[4 * v95];
      v96[2]._countAndFlagsBits = 26482;
      v96[2]._object = 0xE200000000000000;
      v96[3] = v93;
    }

LABEL_163:
    if (v141)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
      }

      v98 = v32[2];
      v97 = v32[3];
      if (v98 >= v97 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v32);
      }

      v32[2] = v98 + 1;
      v99 = &v32[4 * v98];
      v99[4] = 25715;
      v99[5] = 0xE200000000000000;
      v99[6] = v132;
      v99[7] = v152;
    }

    if (v140)
    {
      ObjectType = swift_getObjectType();
      v101 = v131[4](ObjectType);
      v103 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
      }

      v105 = v32[2];
      v104 = v32[3];
      if (v105 >= v104 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v32);
      }

      v32[2] = v105 + 1;
      v106 = &v32[4 * v105];
      v106[4] = 0x656E6F7A656D6974;
      v106[5] = 0xE800000000000000;
      v106[6] = v101;
      v106[7] = v103;
    }

    if (v127)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
      }

      v108 = v32[2];
      v107 = v32[3];
      if (v108 >= v107 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v32);
      }

      v32[2] = v108 + 1;
      v109 = &v32[4 * v108];
      v109[4] = 24950;
      v109[5] = 0xE200000000000000;
      v109[6] = v126;
      v109[7] = v138;
    }

    v168 = v128;
    v169 = countAndFlagsBits;
    v170 = object;
    v171 = v6;
    v172 = v23;
    v173 = v160;
    v174 = v159;
    v175 = v147;
    v176 = v164;
    v177 = v146;
    v178 = v145;
    Locale.Language.Components.identifier.getter();
    v110 = v32[2];
    if (!v110)
    {
      break;
    }

    MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    v111 = v32[2];
    if (!v111)
    {
      break;
    }

    v23 = 0;
    v6 = v110 - 1;
    v112 = v32 + 7;
    while (v23 < v111)
    {
      v114 = *(v112 - 1);
      v113 = *v112;
      v115 = *(v112 - 2);
      v168._countAndFlagsBits = *(v112 - 3);
      v168._object = v115;

      MEMORY[0x1865CB0E0](61, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v114, v113);

      MEMORY[0x1865CB0E0](v168._countAndFlagsBits, v168._object);

      if (v6 != v23)
      {
        MEMORY[0x1865CB0E0](59, 0xE100000000000000);
      }

      ++v23;
      v111 = v32[2];
      v112 += 4;
      if (v23 == v111)
      {
        goto LABEL_188;
      }
    }

    __break(1u);
LABEL_193:
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
  }

LABEL_188:

  String.utf8CString.getter();

  v116 = unumsys_open();

  if (MEMORY[0x1865D32B0](v116))
  {
    v117 = String.init(cString:)();
    v119 = v118;
    v120 = String.lowercased()();
    a1->_countAndFlagsBits = v117;
    a1->_object = v119;
    a1[1] = v120;
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  unumsys_close();
  v168 = v128;
  v169 = countAndFlagsBits;
  v170 = object;
  v171 = v165;
  v172 = v166;
  v173 = v160;
  v174 = v159;
  v175 = v147;
  v176 = v164;
  v177 = v146;
  v178 = v145;
  v179 = countAndFlagsBits_low;
  v180 = v25;
  v181 = v151;
  v182 = v155;
  v183 = v158;
  v184 = v129;
  v185 = v144;
  v186 = v137;
  v187 = v154;
  v188 = xmmword_18122D600;
  v189 = v31;
  v190 = v148;
  v191 = v143;
  v192 = v125;
  v193 = v142;
  v194 = v135;
  v195 = v153;
  v196 = v133;
  v197 = v163;
  v198 = v139;
  v199 = v134;
  v200 = v124;
  v201 = v141;
  v202 = v132;
  v203 = v152;
  v204 = v140;
  v205 = v131;
  v206 = v122;
  v207 = v127;
  v208 = v126;
  v209 = v138;
  return outlined destroy of Locale.Components(&v168);
}

uint64_t Locale.Language.lineLayoutDirection.getter()
{
  v0 = MEMORY[0x1E69E5750];

  return Locale.Language.characterDirection.getter(v0);
}

uint64_t Locale.Language.characterDirection.getter(uint64_t (*a1)(uint64_t, int *))
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v13 = v1[2];
  v14 = v3;
  v4 = v1[5];
  v15 = v1[4];
  v16 = v4;
  v5 = v1[1];
  v11 = *v1;
  v12 = v5;
  v10 = 0;
  Locale.Language.Components.identifier.getter();
  v6 = String.utf8CString.getter();

  v7 = a1(v6 + 32, &v10);

  if (v7 < 4 && v10 < 1)
  {
    return v7 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Locale.LanguageCode.identifier(_:)(char *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if ((v2 & 1) == 0)
  {
    String.utf8CString.getter();
    Language = uloc_getLanguage();

    if (Language > 0)
    {
      v20[Language] = 0;
      v10 = MEMORY[0x1865CAEB0](v20);
      v12 = v11;
      if (!v11)
      {
        return 0;
      }

      if (one-time initialization token for _isoLanguageCodeStrings != -1)
      {
        v17 = v10;
        swift_once();
        v10 = v17;
      }

      v13 = v10;
      v19[0] = v10;
      v19[1] = v12;
      MEMORY[0x1EEE9AC00](v10);
      v18[2] = v19;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v18, v14))
      {
        return v13;
      }

      goto LABEL_16;
    }

    return 0;
  }

  v5 = v3;
  v6 = String.utf8CString.getter() + 32;
  ISO3Language = uloc_getISO3Language();
  if (!ISO3Language)
  {

    return 0;
  }

  if (ISO3Language == v6)
  {
  }

  else
  {
    v5 = String.init(cString:)();
    v4 = v8;
  }

  v16 = HIBYTE(v4) & 0xF;
  result = v5;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v16 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_16:

    return 0;
  }

  return result;
}

uint64_t Locale.LanguageCode.isISOLanguage.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (one-time initialization token for _isoLanguageCodeStrings != -1)
  {
    a1 = swift_once();
  }

  v11 = v5;
  v12 = v4;
  MEMORY[0x1EEE9AC00](a1);
  v9[2] = &v11;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v6))
  {
    return 1;
  }

  v11 = v2;
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v10 = 0;
  Locale.LanguageCode.identifier(_:)(&v10);
  if (v7)
  {

    return 1;
  }

  return 0;
}

uint64_t static Locale.LanguageCode.isoLanguageCodes.getter()
{
  if (one-time initialization token for _isoLanguageCodeStrings != -1)
  {
    swift_once();
  }

  v0 = static Locale.LanguageCode._isoLanguageCodeStrings;
  v1 = *(static Locale.LanguageCode._isoLanguageCodeStrings + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = String.lowercased()();
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = (v11 + 32 * v7);
      v9[2]._countAndFlagsBits = v4;
      v9[2]._object = v5;
      v9[3] = v6;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

BOOL Locale.Script.isISOScript.getter()
{
  String.utf8CString.getter();
  Code = uscript_getCode();

  result = 0;
  if (Code > 0)
  {
    return v2 != -1;
  }

  return result;
}

BOOL Locale.Region.isISORegion.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = String.utf8CString.getter();
  v1 = MEMORY[0x1865D34B0](v0 + 32, &v4);

  return v4 < 1 && v1 != 0;
}

uint64_t Locale.Region.subRegions.getter()
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v0 = String.utf8CString.getter();
  v1 = MEMORY[0x1865D34B0](v0 + 32, &v18);

  if (v18 > 0 || v1 == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  ContainedRegions = uregion_getContainedRegions();
  v3 = MEMORY[0x1E69E7CC0];
  if (v18 <= 0 && ContainedRegions != 0)
  {
    v6 = ContainedRegions;
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

uint64_t Locale.Region.containingRegion.getter@<X0>(Swift::String *a1@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = String.utf8CString.getter();
  v3 = MEMORY[0x1865D34B0](v2 + 32, &v10);

  if (v10 <= 0 && v3 != 0)
  {
    result = MEMORY[0x1865D3480](v3);
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

uint64_t Locale.Region.continent.getter@<X0>(Swift::String *a1@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = String.utf8CString.getter();
  v3 = MEMORY[0x1865D34B0](v2 + 32, &v10);

  if (v10 <= 0 && v3 != 0)
  {
    result = MEMORY[0x1865D3490](v3, 3);
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

uint64_t static Locale.Region.isoRegions.getter()
{
  if (one-time initialization token for _isoRegionCodes != -1)
  {
    swift_once();
  }

  v0 = static Locale.Region._isoRegionCodes;
  v1 = *(static Locale.Region._isoRegionCodes + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = String.uppercased()();
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = (v11 + 32 * v7);
      v9[2]._countAndFlagsBits = v4;
      v9[2]._object = v5;
      v9[3] = v6;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t one-time initialization function for _isoRegionCodes()
{
  result = closure #1 in variable initialization expression of static Locale.Region._isoRegionCodes();
  static Locale.Region._isoRegionCodes = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static Locale.Region._isoRegionCodes()
{
  v13 = MEMORY[0x1E69E7CC0];
  Available = uregion_getAvailable();
  if (Available)
  {
    v1 = Available;
    type metadata accessor for ICU.Enumerator();
    inited = swift_initStackObject();
    *(inited + 16) = v1;
    specialized Array.append<A>(contentsOf:)(inited);
  }

  v3 = uregion_getAvailable();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for ICU.Enumerator();
    v5 = swift_initStackObject();
    *(v5 + 16) = v4;
    specialized Array.append<A>(contentsOf:)(v5);
  }

  v6 = uregion_getAvailable();
  if (v6)
  {
    type metadata accessor for ICU.Enumerator();
    v7 = swift_initStackObject();
    *(v7 + 16) = v6;
    specialized Array.append<A>(contentsOf:)(v7);
  }

  v8 = uregion_getAvailable();
  if (v8)
  {
    type metadata accessor for ICU.Enumerator();
    v9 = swift_initStackObject();
    *(v9 + 16) = v8;
    specialized Array.append<A>(contentsOf:)(v9);
  }

  v10 = uregion_getAvailable();
  if (v10)
  {
    type metadata accessor for ICU.Enumerator();
    v11 = swift_initStackObject();
    *(v11 + 16) = v10;
    specialized Array.append<A>(contentsOf:)(v11);
  }

  return v13;
}

uint64_t Locale.Region.Category.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x646C726F77;
  v3 = 0x69746E6F63627573;
  v4 = 0x726F746972726574;
  if (v1 != 3)
  {
    v4 = 0x676E6970756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656E69746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t Locale.Region.Category.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (v5 >= 5)
    {
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1(v11);
      *a2 = v6;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Locale.Region.Category.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

Swift::Int Locale.Region.Category.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Region.Category()
{
  v1 = *v0;
  v2 = 0x646C726F77;
  v3 = 0x69746E6F63627573;
  v4 = 0x726F746972726574;
  if (v1 != 3)
  {
    v4 = 0x676E6970756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656E69746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static Locale.Region.isoRegions(ofCategory:)()
{
  Available = uregion_getAvailable();
  v1 = MEMORY[0x1E69E7CC0];
  if (Available)
  {
    v2 = Available;
    type metadata accessor for ICU.Enumerator();
    *(swift_initStackObject() + 16) = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    for (i = uenum_next(); i; i = uenum_next())
    {
      v4 = String.init(cString:)();
      v6 = v5;
      v9 = String.uppercased()();
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