void _BPlistEncodingFormat.Reference.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = v6 >> 4;
  if (v6 >> 4 <= 2)
  {
    if (!v7)
    {
      MEMORY[0x1865CD060](v5, v3, v4);
      return;
    }

    if (v7 != 1 && v7 != 2)
    {
      goto LABEL_26;
    }

    v10 = *(v1 + 16);
LABEL_20:
    MEMORY[0x1865CD090](v10, v3, v4);
    return;
  }

  if (v6 >> 4 <= 6)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        if ((v3 & 0x7FFFFF) == 0 && (*(v1 + 16) & 0x7F800000) == 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v1 + 16);
        }

        Hasher._combine(_:)(v9);
        return;
      }

LABEL_26:
      outlined copy of _BPlistEncodingFormat.Reference.Backing(v3, v4, v5, v6);
      _StringGuts.grow(_:)(79);
      MEMORY[0x1865CB0E0](0xD00000000000004DLL, 0x8000000181480E80);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    goto LABEL_17;
  }

  if (v7 == 7)
  {
LABEL_17:
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = *(v1 + 16);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_20;
  }

  if (v7 != 8)
  {
    goto LABEL_26;
  }

  Data.hash(into:)(a1, v3, v4);
}

uint64_t __PlistEncoderBPlist.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void _BPlistEncodingFormat.Writer.append(_:count:)(char a1, Swift::Int64 a2)
{
  v4 = byte_18124730A[a1];
  if (a2 <= 14)
  {
    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v5 = v4 | a2;
    v9 = *(v2 + 32);
    if (v9 != 0x2000)
    {
      *(*(v2 + 16) + v9) = v5;
      v7 = __OFADD__(v9, 1);
      v12 = v9 + 1;
      if (!v7)
      {
        *(v2 + 32) = v12;
        return;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v5 = v4 | 0xF;
    v6 = *(v2 + 32);
    if (v6 != 0x2000)
    {
      *(*(v2 + 16) + v6) = v5;
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (!v7)
      {
        *(v2 + 32) = v8;
LABEL_11:

        _BPlistEncodingFormat.Writer.append(_:)(a2);
        return;
      }

LABEL_18:
      __break(1u);
      return;
    }
  }

  v10 = *(v2 + 16);
  if (v10)
  {
    v11 = v10 + 0x2000;
  }

  else
  {
    v11 = 0;
  }

  Data._Representation.append(contentsOf:)(v10, v11);
  **(v2 + 16) = v5;
  *(v2 + 32) = 1;
  if (a2 >= 15)
  {
    goto LABEL_11;
  }
}

Swift::Void __swiftcall _BPlistEncodingFormat.Writer.flush()()
{
  v1 = *(v0 + 32);
  if (v1 >= 1)
  {
    v2 = *(v0 + 16);
    v3 = &v2[v1];
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    Data._Representation.append(contentsOf:)(v2, v4);
    *(v0 + 32) = 0;
  }
}

unint64_t lazy protocol witness table accessor for type _PlistUnkeyedEncodingContainerBPlist and conformance _PlistUnkeyedEncodingContainerBPlist()
{
  result = lazy protocol witness table cache variable for type _PlistUnkeyedEncodingContainerBPlist and conformance _PlistUnkeyedEncodingContainerBPlist;
  if (!lazy protocol witness table cache variable for type _PlistUnkeyedEncodingContainerBPlist and conformance _PlistUnkeyedEncodingContainerBPlist)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistUnkeyedEncodingContainerBPlist and conformance _PlistUnkeyedEncodingContainerBPlist);
  }

  return result;
}

void PropertyListEncoder.encode<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v148[6] = *MEMORY[0x1E69E9840];
  v8 = 0xD00000000000001DLL;
  v9 = (*(*v3 + 96))();
  if (v9 == 1)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v12 = @"NSDebugDescription";
    v13 = v12;
    v141 = a1;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v12);
      switch(TaggedPointerTag)
      {
        case 0:
          goto LABEL_34;
        case 0x16:
          v30 = [(__CFString *)v13 UTF8String];
          if (!v30)
          {
            __break(1u);
            goto LABEL_196;
          }

          v31 = String.init(utf8String:)(v30);
          if (v32)
          {
LABEL_35:
            v15 = v31;
            v17 = v32;

            goto LABEL_45;
          }

          __break(1u);
LABEL_31:
          v33 = [(__CFString *)v13 UTF8String];
          if (v33)
          {
            v34 = String.init(utf8String:)(v33);
            if (!v35)
            {
              __break(1u);
LABEL_34:
              _CFIndirectTaggedPointerStringGetContents();
              v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v32)
              {
                [(__CFString *)v13 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v15 = v142;
                v17 = v143;
                goto LABEL_45;
              }

              goto LABEL_35;
            }

LABEL_37:
            v21 = v34;
            v23 = v35;

            goto LABEL_67;
          }

LABEL_196:
          __break(1u);
          goto LABEL_197;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v17 = v16;

LABEL_45:
          v144[0] = v15;
          v144[1] = v17;
          v144[5] = MEMORY[0x1E69E6158];
          v144[2] = 0xD000000000000038;
          v144[3] = 0x8000000181485E40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v37 = static _DictionaryStorage.allocate(capacity:)();
          outlined init with copy of (String, Any)(v144, &v145);

          outlined destroy of (String, Any)(v144);
          v38 = v145;
          v39 = v146;
          v40 = specialized __RawDictionaryStorage.find<A>(_:)(v145, v146);
          v42 = v41;

          if (v42)
          {
            __break(1u);
LABEL_191:
            __break(1u);
            goto LABEL_192;
          }

          v37[(v40 >> 6) + 8] |= 1 << v40;
          v43 = (v37[6] + 16 * v40);
          *v43 = v38;
          v43[1] = v39;
          outlined init with take of Any(v147, (v37[7] + 32 * v40));
          v44 = v37[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
LABEL_192:
            __break(1u);
            goto LABEL_193;
          }

          v37[2] = v46;
          v47 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v48 = @"NSCocoaErrorDomain";
          v49 = v48;
          if (!v47)
          {
LABEL_52:
            LOBYTE(v142) = 0;
            v145 = 0;
            if (!__CFStringIsCF())
            {
              v51 = v49;
              String.init(_nativeStorage:)();
              if (v52 || (v145 = [(__CFString *)v51 length]) == 0)
              {

                goto LABEL_89;
              }

              goto LABEL_88;
            }

            if (v145)
            {
LABEL_88:
              String.init(_cocoaString:)();
LABEL_89:
              v75 = objc_allocWithZone(NSError);
              v76 = String._bridgeToObjectiveCImpl()();

              v10 = [v75 initWithDomain:v76 code:3852 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v77 = [v10 domain];
              if (!v77)
              {
                v83 = 0;
                v85 = 0xE000000000000000;
                goto LABEL_137;
              }

              v78 = v77;
              v79 = _objc_isTaggedPointer(v77);
              v80 = v78;
              v81 = v80;
              if ((v79 & 1) == 0)
              {
                goto LABEL_95;
              }

              v82 = _objc_getTaggedPointerTag(v80);
              if (v82)
              {
                if (v82 != 22)
                {
                  if (v82 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v82);
                    v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v85 = v84;

LABEL_136:
                    v8 = 0xD00000000000001DLL;
LABEL_137:
                    v109 = v49;
                    v68 = v109;
                    if (!v47)
                    {
LABEL_142:
                      LOBYTE(v142) = 0;
                      v145 = 0;
                      if (__CFStringIsCF())
                      {
                        v66 = v145;
                        if (!v145)
                        {

                          v112 = 0xE000000000000000;
                          goto LABEL_157;
                        }
                      }

                      else
                      {
                        v113 = v68;
                        v114 = String.init(_nativeStorage:)();
                        if (v115)
                        {
                          v66 = v114;
                          v112 = v115;

                          goto LABEL_157;
                        }

                        v145 = [(__CFString *)v113 length];
                        if (!v145)
                        {

                          v66 = 0;
                          v112 = 0xE000000000000000;
                          goto LABEL_157;
                        }
                      }

                      v66 = String.init(_cocoaString:)();
                      v112 = v119;
LABEL_157:
                      if (v83 == v66 && v85 == v112)
                      {
                        goto LABEL_185;
                      }

                      v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v120)
                      {
LABEL_187:
                        swift_willThrow();
                        a1 = v141;
                        goto LABEL_188;
                      }

                      __break(1u);

                      goto LABEL_161;
                    }

                    v110 = _objc_getTaggedPointerTag(v109);
                    if (v110)
                    {
                      if (v110 != 22)
                      {
                        if (v110 == 2)
                        {
                          MEMORY[0x1EEE9AC00](v110);
                          v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v112 = v111;

                          goto LABEL_157;
                        }

                        goto LABEL_142;
                      }

                      v116 = [(__CFString *)v68 UTF8String];
                      if (!v116)
                      {
LABEL_199:
                        __break(1u);
LABEL_200:
                        __break(1u);
                        goto LABEL_201;
                      }

                      v117 = String.init(utf8String:)(v116);
                      if (v118)
                      {
LABEL_152:
                        v66 = v117;
                        v112 = v118;

                        goto LABEL_157;
                      }

                      __break(1u);
                    }

                    _CFIndirectTaggedPointerStringGetContents();
                    v117 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v118)
                    {
                      [(__CFString *)v68 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v66 = v142;
                      v112 = v143;
                      goto LABEL_157;
                    }

                    goto LABEL_152;
                  }

LABEL_95:
                  LOBYTE(v142) = 0;
                  v145 = 0;
                  if (__CFStringIsCF())
                  {
                    if (v145)
                    {
LABEL_134:
                      v83 = String.init(_cocoaString:)();
                      v85 = v108;
                      goto LABEL_135;
                    }
                  }

                  else
                  {
                    v86 = v81;
                    v87 = String.init(_nativeStorage:)();
                    if (v88)
                    {
                      v83 = v87;
                      v85 = v88;

                      goto LABEL_136;
                    }

                    v145 = [v86 length];
                    if (v145)
                    {
                      goto LABEL_134;
                    }
                  }

                  v83 = 0;
                  v85 = 0xE000000000000000;
                  goto LABEL_136;
                }

                v89 = [v81 UTF8String];
                if (!v89)
                {
LABEL_201:
                  __break(1u);
                  goto LABEL_202;
                }

                v90 = String.init(utf8String:)(v89);
                if (v91)
                {
                  goto LABEL_107;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v91)
              {
                [v81 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v83 = v142;
                v85 = v143;
                goto LABEL_135;
              }

LABEL_107:
              v83 = v90;
              v85 = v91;

LABEL_135:
              goto LABEL_136;
            }

LABEL_62:

            goto LABEL_89;
          }

          v50 = _objc_getTaggedPointerTag(v48);
          if (!v50)
          {
LABEL_61:
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v55)
            {
              [(__CFString *)v49 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_89;
            }

            goto LABEL_62;
          }

          if (v50 != 22)
          {
            if (v50 == 2)
            {
              MEMORY[0x1EEE9AC00](v50);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_89;
            }

            goto LABEL_52;
          }

          v53 = [(__CFString *)v49 UTF8String];
          if (v53)
          {
            String.init(utf8String:)(v53);
            if (v54)
            {
              goto LABEL_62;
            }

            __break(1u);
            goto LABEL_61;
          }

LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
          goto LABEL_199;
      }
    }

    LOBYTE(v142) = 0;
    v145 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v24 = v13;
      v25 = String.init(_nativeStorage:)();
      if (v26)
      {
        v15 = v25;
        v17 = v26;

        goto LABEL_45;
      }

      v145 = [(__CFString *)v24 length];
      if (v145)
      {
        v15 = String.init(_cocoaString:)();
        v17 = v36;
        goto LABEL_45;
      }
    }

    v15 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_45;
  }

  if (v9 == 100)
  {
    PropertyListEncoder._encodeXML<A>(_:)(a1, a2, a3);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v9 != 200)
  {
    v141 = a1;
    a1 = v9;
    v18 = _objc_isTaggedPointer(@"NSDebugDescription");
    v19 = @"NSDebugDescription";
    v13 = v19;
    if (!v18)
    {
LABEL_20:
      v145 = 0;
      if (__CFStringIsCF())
      {

LABEL_27:
        v21 = 0;
        v23 = 0xE000000000000000;
        goto LABEL_67;
      }

      v27 = v13;
      v28 = String.init(_nativeStorage:)();
      if (v29)
      {
        v21 = v28;
        v23 = v29;

        goto LABEL_67;
      }

      if (![(__CFString *)v27 length])
      {

        goto LABEL_27;
      }

      v21 = String.init(_cocoaString:)();
      v23 = v56;
LABEL_67:
      v148[0] = v21;
      v148[1] = v23;
      v145 = 0;
      v146 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181485DE0);
      v142 = a1;
      type metadata accessor for NSPropertyListFormat(0);
      _print_unlocked<A, B>(_:_:)();
      v148[5] = MEMORY[0x1E69E6158];
      v148[2] = v145;
      v148[3] = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v57 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)(v148, &v145);

      outlined destroy of (String, Any)(v148);
      v58 = v145;
      v59 = v146;
      v60 = specialized __RawDictionaryStorage.find<A>(_:)(v145, v146);
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        v57[(v60 >> 6) + 8] |= 1 << v60;
        v63 = (v57[6] + 16 * v60);
        *v63 = v58;
        v63[1] = v59;
        outlined init with take of Any(v147, (v57[7] + 32 * v60));
        v64 = v57[2];
        v45 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (!v45)
        {
          v57[2] = v65;
          LODWORD(v66) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v67 = @"NSCocoaErrorDomain";
          v68 = v67;
          if (!v66)
          {
LABEL_74:
            LOBYTE(v142) = 0;
            v145 = 0;
            if (!__CFStringIsCF())
            {
              v70 = v68;
              String.init(_nativeStorage:)();
              if (v71 || (v145 = [(__CFString *)v70 length]) == 0)
              {

                goto LABEL_112;
              }

              goto LABEL_111;
            }

            if (v145)
            {
LABEL_111:
              String.init(_cocoaString:)();
LABEL_112:
              v92 = objc_allocWithZone(NSError);
              v93 = String._bridgeToObjectiveCImpl()();

              v10 = [v92 initWithDomain:v93 code:3852 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v94 = [v10 domain];
              if (!v94)
              {
                v99 = 0;
                v101 = 0xE000000000000000;
                goto LABEL_163;
              }

              v95 = v94;
              v96 = _objc_isTaggedPointer(v94);
              v97 = v95;
              v8 = v97;
              if (!v96)
              {
LABEL_118:
                LOBYTE(v142) = 0;
                v145 = 0;
                if (__CFStringIsCF())
                {
                  if (v145)
                  {
LABEL_161:
                    v99 = String.init(_cocoaString:)();
                    v101 = v121;
                    goto LABEL_162;
                  }
                }

                else
                {
                  v102 = v8;
                  v103 = String.init(_nativeStorage:)();
                  if (v104)
                  {
                    v99 = v103;
                    v101 = v104;

                    goto LABEL_163;
                  }

                  v145 = [v102 length];
                  if (v145)
                  {
                    goto LABEL_161;
                  }
                }

                v99 = 0;
                v101 = 0xE000000000000000;
                goto LABEL_163;
              }

              v98 = _objc_getTaggedPointerTag(v97);
              if (v98)
              {
                if (v98 != 22)
                {
                  if (v98 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v98);
                    v99 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v101 = v100;

LABEL_163:
                    v122 = v68;
                    v123 = v122;
                    if (!v66)
                    {
LABEL_168:
                      v145 = 0;
                      if (__CFStringIsCF())
                      {
                        v125 = v145;
                        if (!v145)
                        {

                          v127 = 0xE000000000000000;
                          goto LABEL_183;
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

                          goto LABEL_183;
                        }

                        v145 = [(__CFString *)v128 length];
                        if (!v145)
                        {

                          v125 = 0;
                          v127 = 0xE000000000000000;
                          goto LABEL_183;
                        }
                      }

                      v125 = String.init(_cocoaString:)();
                      v127 = v134;
LABEL_183:
                      if (v99 == v125 && v101 == v127)
                      {
LABEL_185:

                        goto LABEL_187;
                      }

                      v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v135)
                      {
                        goto LABEL_187;
                      }

LABEL_194:
                      __break(1u);
                    }

                    v124 = _objc_getTaggedPointerTag(v122);
                    if (!v124)
                    {
                      goto LABEL_177;
                    }

                    if (v124 != 22)
                    {
                      if (v124 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v124);
                        v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v127 = v126;

                        goto LABEL_183;
                      }

                      goto LABEL_168;
                    }

                    v131 = [(__CFString *)v123 UTF8String];
                    if (v131)
                    {
                      v132 = String.init(utf8String:)(v131);
                      if (v133)
                      {
                        goto LABEL_178;
                      }

                      __break(1u);
LABEL_177:
                      _CFIndirectTaggedPointerStringGetContents();
                      v132 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v133)
                      {
                        [(__CFString *)v123 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v125 = v142;
                        v127 = v143;
                        goto LABEL_183;
                      }

LABEL_178:
                      v125 = v132;
                      v127 = v133;

                      goto LABEL_183;
                    }

                    goto LABEL_200;
                  }

                  goto LABEL_118;
                }

                v105 = [v8 UTF8String];
                if (!v105)
                {
LABEL_202:
                  __break(1u);
                  return;
                }

                v106 = String.init(utf8String:)(v105);
                if (v107)
                {
                  goto LABEL_130;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              v106 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v107)
              {
                [v8 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v99 = v142;
                v101 = v143;
                goto LABEL_162;
              }

LABEL_130:
              v99 = v106;
              v101 = v107;

LABEL_162:
              goto LABEL_163;
            }

LABEL_84:

            goto LABEL_112;
          }

          v69 = _objc_getTaggedPointerTag(v67);
          if (!v69)
          {
LABEL_83:
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v74)
            {
              [(__CFString *)v68 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_112;
            }

            goto LABEL_84;
          }

          if (v69 != 22)
          {
            if (v69 == 2)
            {
              MEMORY[0x1EEE9AC00](v69);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_112;
            }

            goto LABEL_74;
          }

          v72 = [(__CFString *)v68 UTF8String];
          if (v72)
          {
            String.init(utf8String:)(v72);
            if (v73)
            {
              goto LABEL_84;
            }

            __break(1u);
            goto LABEL_83;
          }

          goto LABEL_198;
        }

LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

      goto LABEL_191;
    }

    v20 = _objc_getTaggedPointerTag(v19);
    if (!v20)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v35)
      {
        [(__CFString *)v13 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v21 = v142;
        v23 = v143;
        goto LABEL_67;
      }

      goto LABEL_37;
    }

    if (v20 != 22)
    {
      if (v20 == 2)
      {
        MEMORY[0x1EEE9AC00](v20);
        v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v23 = v22;

        goto LABEL_67;
      }

      goto LABEL_20;
    }

    goto LABEL_31;
  }

  PropertyListEncoder._encodeBPlist<A>(_:)(a1, a2, a3);
  if (!v4)
  {
    return;
  }

LABEL_7:
  v10 = v4;
LABEL_188:
  v136 = type metadata accessor for EncodingError();
  swift_allocError();
  v138 = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
  v138[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v138);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v140 = v10;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v136 - 8) + 104))(v138, *MEMORY[0x1E69E6B30], v136);
  swift_willThrow();
}

uint64_t PropertyListEncoder.outputFormat.getter()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock(v1 + 4);

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);

  os_unfair_lock_unlock(v3 + 4);

  return v2;
}

void *PropertyListEncoder.init()()
{
  v1 = MEMORY[0x1E69E7CC8];
  v0[2] = 200;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[4] = v2;
  return v0;
}

uint64_t PropertyListEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall _BPlistEncodingFormat.Writer.append(_:)(Swift::Int64 a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (a1 <= 0xFF)
  {
    _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 0);
    LOBYTE(v3[0]) = a1;
    v2 = 1;
  }

  else if (a1 >> 16)
  {
    if (HIDWORD(a1))
    {
      _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 3);
      v3[0] = bswap64(a1);
      v2 = 8;
    }

    else
    {
      _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 2);
      LODWORD(v3[0]) = bswap32(a1);
      v2 = 4;
    }
  }

  else
  {
    _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 1);
    LOWORD(v3[0]) = bswap32(a1) >> 16;
    v2 = 2;
  }

  _BPlistEncodingFormat.Writer.write(_:)(v3, v2);
}

void _BPlistEncodingFormat.Writer.write(_:subtype:)(char a1, char a2)
{
  v3 = byte_18124730A[a1] | a2;
  v4 = *(v2 + 32);
  if (v4 == 0x2000)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = v5 + 0x2000;
    }

    else
    {
      v6 = 0;
    }

    Data._Representation.append(contentsOf:)(v5, v6);
    v4 = 0;
  }

  *(*(v2 + 16) + v4) = v3;
  v7 = __OFADD__(v4, 1);
  v8 = v4 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 32) = v8;
  }
}

uint64_t specialized _BPlistEncodingFormat.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _BPlistEncodingFormat.Reference();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 2;
  *(v2 + 40) = -112;
  *(v2 + 48) = -1;
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 40) = -112;
  *(v3 + 48) = -1;
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 1;
  *(v4 + 40) = -112;
  *(v4 + 48) = -1;
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 2;
  *(result + 40) = -112;
  *(result + 48) = -1;
  *a1 = v2;
  a1[1] = v3;
  v6 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = result;
  return result;
}

uint64_t specialized __PlistEncoderBPlist._wrapGeneric<A>(_:for:_:)(void (*a1)(void), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = v7;
  v14 = a3;
  v15 = a1;
  v16 = v9 + 2;
  v17 = *(v9[2] + 16);
  v25 = v17;
  if (a7 != -1)
  {
    v22 = a1;
    v23 = v8;
    v16 = swift_allocObject();
    v16[5] = &type metadata for _CodingKey;
    v16[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    v16[2] = v18;
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    *(v18 + 32) = a6;
    *(v18 + 40) = a7;
    v16[7] = v14;
    if (v14 >> 62)
    {
      if (v14 >> 62 != 1)
      {
        v20 = 1;
        goto LABEL_10;
      }

      v19 = ((v14 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = (v14 + 64);
    }

    v8 = *v19;

    v20 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
LABEL_10:
      v16[8] = v20;
      v17 = v9[5];
      v24 = v9[6];
      v9[5] = v16;

      v14 = v16;
      v16 = v9 + 2;
LABEL_15:
      outlined copy of _CodingKey?(a4, a5, a6, a7);
      v15 = v22;
      v8 = v23;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  v17 = v9[5];
  v24 = v9[6];
  v9[5] = a3;
  if (!(a3 >> 62))
  {
LABEL_13:
    v22 = v15;
    v23 = v8;
    v20 = *(v14 + 64);
    goto LABEL_14;
  }

  if (a3 >> 62 == 1)
  {
    v22 = a1;
    v23 = v8;
    v20 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_14:
    swift_retain_n();
    goto LABEL_15;
  }

  v20 = 0;
LABEL_16:
  v9[6] = v20;
  v15(v9);
  if (v8)
  {
    outlined consume of _CodingPathNode?(v14);
    v9[5] = v17;

    v9[6] = v24;
    if (v25 < *(v9[2] + 16))
    {
      if (!specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew()))
      {
        specialized ContiguousArray.remove(at:)(*(*v16 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      }
    }

    return swift_willThrow();
  }

  else
  {
    outlined consume of _CodingPathNode?(v14);
    v9[5] = v17;

    v9[6] = v24;
    if (v25 >= *(v9[2] + 16))
    {
      return 0;
    }

    else
    {
      result = specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      if (!result)
      {
        return specialized ContiguousArray.remove(at:)(*(*v16 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      }
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _BPlistEncodingFormat.Reference and conformance _BPlistEncodingFormat.Reference(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC10Foundation21_BPlistEncodingFormatV9ReferenceC_Tt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo9NSCopying_p_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v74 = a6;
  v75 = a4;
  v9 = *(a3 + 16);
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v70 - v15;
  v81 = v6;
  v16 = *v6;
  v17 = *(a3 + 24);
  v77 = a2;
  v71 = v17;
  v18 = dispatch thunk of CodingKey.stringValue.getter();
  v20 = v19;
  v21 = specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v18, v19);
  v80 = v11;
  v82 = v12;
  if (v21)
  {

    v22 = MEMORY[0x1865CB280](v18, v20);
    v23 = 1;
  }

  else
  {
    v24 = String._bridgeToObjectiveCImpl()();

    v22 = [v24 hash];
    swift_unknownObjectRelease();
    v23 = 0;
  }

  v25 = *(v16 + 88);
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  v28 = *(v25 + 32);
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22;
  v29 = *(v25 + 40);
  *(v25 + 40) = v23;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v27, v26, v28, v29);

  v30 = specialized Set._Variant.insert(_:)(&v84, v25);

  v31 = v84;
  if (v30)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    *(v32 + 16) = 2;
    *(v32 + 40) = -112;
    *(v32 + 48) = -1;

    *(v16 + 88) = v32;
  }

  v34 = v81;
  v35 = v81[1];
  if ((*(v35 + 40) & 0xF0) != 0x60)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = *(v35 + 24);
  v36 = *(v35 + 32);
  v38 = *(v35 + 16);

  v39 = specialized OrderedDictionary.subscript.getter(v31, v38, v37, v36);

  v40 = v82;
  v76 = v39;
  if (v39)
  {
    if ((*(v39 + 40) & 0xF0) == 0x60)
    {
LABEL_12:
      v54 = v34[2];
      v55 = v79;
      v56 = v83;
      (*(v79 + 16))(v83, v77, v9);
      (*(v55 + 56))(v56, 0, 1, v9);
      v57 = v78;
      v58 = v80;
      (*(v40 + 16))(v78, v56, v80);
      if ((*(v55 + 48))(v57, 1, v9) == 1)
      {
        v59 = *(v40 + 8);

        v59(v56, v58);
        v59(v57, v58);

LABEL_20:
        v84 = v16;
        *&v85 = v39;
        *(&v85 + 1) = v54;
        type metadata accessor for _PlistKeyedEncodingContainerBPlist();

        swift_getWitnessTable();
        KeyedEncodingContainer.init<A>(_:)();
      }

      v81 = v31;
      v60 = v57;
      v61 = *(v55 + 32);
      v62 = v72;
      v61(v72, v60, v9);
      v63 = swift_allocObject();
      v64 = v71;
      v63[5] = v9;
      v63[6] = v64;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v63 + 2);
      v61(boxed_opaque_existential_0, v62, v9);
      v66 = *(v40 + 8);

      v66(v83, v58);
      v63[7] = v54;
      if (v54 >> 62)
      {
        if (v54 >> 62 != 1)
        {
          v69 = 1;
          goto LABEL_19;
        }

        v67 = ((v54 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v67 = (v54 + 64);
      }

      v68 = *v67;

      v69 = v68 + 1;
      if (!__OFADD__(v68, 1))
      {
LABEL_19:
        v63[8] = v69;
        v54 = v63;
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
  }

  v41 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v43 = v42;
  v45 = v44;
  type metadata accessor for _BPlistEncodingFormat.Reference();
  result = swift_allocObject();
  *(result + 16) = v41;
  *(result + 24) = v43;
  *(result + 32) = v45;
  *(result + 40) = 96;
  *(result + 48) = -1;
  v46 = *(v35 + 40);
  if ((v46 & 0xF0) == 0x60)
  {
    v39 = result;
    v48 = *(v35 + 24);
    v47 = *(v35 + 32);
    v84 = *(v35 + 16);
    v49 = v84;
    *&v85 = v48;
    *(&v85 + 1) = v47;
    *(v35 + 16) = 2;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    *(v35 + 40) = -112;

    outlined copy of _BPlistEncodingFormat.Reference.Backing(v49, v48, v47, v46);
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v49, v48, v47, v46);

    specialized OrderedDictionary.subscript.setter(v39, v31);
    v50 = *(v35 + 16);
    v51 = *(v35 + 24);
    v52 = *(v35 + 32);
    *(v35 + 16) = v84;
    *(v35 + 24) = v85;
    v53 = *(v35 + 40);
    *(v35 + 40) = 96;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v50, v51, v52, v53);
    v40 = v82;
    goto LABEL_12;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_180849660()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t specialized ContiguousArray._customRemoveLast()(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = a1(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = *(v3 + 8 * v6 + 32);
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
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
LABEL_27:

    return 1;
  }

  v18 = 4 * v8;
  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = 15;
  while (1)
  {
    v12 = v11 & 0xC;
    result = v11;
    if (v12 == v10)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a3, a4);
    }

    v14 = result >> 16;
    if (result >> 16 >= v8)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v15 = result;
      if (v12 != v10)
      {
        goto LABEL_18;
      }
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v17[0] = a3;
      v17[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v15 = *(v17 + v14);
      if (v12 != v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v15 = *(result + v14);
      if (v12 != v10)
      {
LABEL_18:
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a3, a4);
    v11 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_19:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v8 <= v11 >> 16)
    {
      goto LABEL_30;
    }

    v11 = String.UTF8View._foreignIndex(after:)();
LABEL_24:
    LOBYTE(v17[0]) = v15;
    v16 = a1(v17);
    if (v4 || (v16 & 1) == 0)
    {

      return 0;
    }

    if (v18 == v11 >> 14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t _BPlistEncodingFormat.Reference.__deallocating_deinit(void (*a1)(void, void, void, void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));

  return a3(v3, a2, 7);
}

uint64_t _BPlistEncodingFormat.Writer.serializePlist(_:)(uint64_t a1)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v35[0] = 0;
  _BPlistEncodingFormat.Writer.flattenPlist(_:_:)(a1, v35);
  *(v1 + 8) = 8 - (__clz(v35[0]) >> 3);
  _BPlistEncodingFormat.Writer.write(_:)("bplist00", 8);
  _BPlistEncodingFormat.Writer.append(_:)(a1);
  v33 = v1;
  v5 = v1[5];
  v4 = v1 + 5;
  v3 = v5;
  v6 = *(v4 - 1);
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = v3 + 16;
    v3 = *(v3 + 16);
    v10 = *(v11 + 8);
    v12 = __OFSUB__(v10, v3);
    v9 = v10 - v3;
    if (!v12)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    goto LABEL_10;
  }

  v12 = __OFSUB__(HIDWORD(v3), v3);
  v13 = HIDWORD(v3) - v3;
  if (v12)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  v9 = v13;
LABEL_10:
  v14 = v9 + v6;
  if (__OFADD__(v9, v6))
  {
    goto LABEL_37;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = __clz(v14) >> 3;
  v16 = 8 - v15;
  v17 = *v33;
  v18 = *(*v33 + 16);
  if (v18)
  {
    v32 = v9 + v6;
    v19 = v16;
    v20 = &__src[1] - v16;

    v21 = 32;
    do
    {
      __src[0] = bswap64(*(v17 + v21));
      if (v15 != 8)
      {
        v22 = 0x2000 - v6;
        if (__OFSUB__(0x2000, v6))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        if (v22 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = 0x2000 - v6;
        }

        if (v22 < v19)
        {
          if (v6 > 0)
          {
            v25 = v33[2];
            if (v25)
            {
              v26 = &v25[v6];
            }

            else
            {
              v26 = 0;
            }

            Data._Representation.append(contentsOf:)(v25, v26);
            v6 = 0;
            v33[4] = 0;
          }

          Data._Representation.append(contentsOf:)(v20, &v20[v19]);
        }

        else
        {
          v24 = v33[2];
          if (!v24)
          {
            goto LABEL_40;
          }

          memmove((v24 + v6), v20, v19);
          v12 = __OFADD__(v6, v23);
          v6 += v23;
          if (v12)
          {
            goto LABEL_36;
          }

          v33[4] = v6;
        }
      }

      v21 += 8;
      --v18;
    }

    while (v18);

    v27 = *(v17 + 16);
    v14 = v32;
    LOBYTE(v16) = 8 - v15;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v33 + 8);
  WORD2(__src[0]) = 0;
  LODWORD(__src[0]) = 0;
  BYTE6(__src[0]) = v16;
  HIBYTE(__src[0]) = v28;
  __src[1] = bswap64(v27);
  __src[2] = 0;
  __src[3] = bswap64(v14);
  _BPlistEncodingFormat.Writer.write(_:)(__src, 32);
  _BPlistEncodingFormat.Writer.flush()();
  v29 = v33[5];
  v30 = v33[2];
  outlined copy of Data._Representation(v29, v33[6]);
  if (v30)
  {
    MEMORY[0x1865D2690](v30, -1, -1);
  }

  return v29;
}

uint64_t _BPlistEncodingFormat.Writer.flattenPlist(_:_:)(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v3 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 40);
  if (v6 >> 4 == 6)
  {
    v13 = *a2;
    *(result + 48) = *a2;
    v8 = __OFADD__(v13, 1);
    v14 = v13 + 1;
    if (v8)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    *a2 = v14;
    v15 = *(v3 + 16);
    if (v15)
    {

      v16 = 0;
      while (v16 < *(v3 + 16))
      {
        v17 = *(v3 + 32 + 8 * v16++);
        result = _BPlistEncodingFormat.Writer.flattenPlist(_:_:)(v17, a2);
        if (v15 == v16)
        {
          v18 = *(v5 + 16);
          if (v18)
          {
            goto LABEL_21;
          }

          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v18 = *(v5 + 16);
    if (v18)
    {
LABEL_21:

      v21 = 0;
      while (v21 < *(v5 + 16))
      {
        ++v21;

        _BPlistEncodingFormat.Writer.flattenPlist(_:_:)(v22, a2);

        if (v18 == v21)
        {

          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

LABEL_25:

    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v3, v5, v6);
  }

  else if (v6 >> 4 == 5)
  {
    v7 = *a2;
    *(result + 48) = *a2;
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *a2 = v9;
    v10 = *(v4 + 16);
    if (v10)
    {

      v11 = 0;
      while (v11 < *(v4 + 16))
      {
        ++v11;

        _BPlistEncodingFormat.Writer.flattenPlist(_:_:)(v12, a2);

        if (v10 == v11)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else if (*(result + 48) == -1)
  {
    v19 = *a2;
    *(result + 48) = *a2;
    v8 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v8)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    *a2 = v20;
  }

  return result;
}

void _BPlistEncodingFormat.Writer.write(_:)(char *__src, int64_t __len)
{
  if (__len < 1)
  {
    return;
  }

  v4 = *(v2 + 32);
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

      v11 = *(v2 + 16);
      if (!v11)
      {
LABEL_25:
        __break(1u);
        return;
      }

      if (__src)
      {
        memmove((v11 + v4), __src, __len);
      }

      if (!__OFADD__(v4, v6))
      {
        *(v2 + 32) = v4 + v6;
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_8:
  if (v4 >= 1)
  {
    v7 = *(v2 + 16);
    if (v7)
    {
      v8 = &v7[v4];
    }

    else
    {
      v8 = 0;
    }

    v9 = __src;
    Data._Representation.append(contentsOf:)(v7, v8);
    __src = v9;
    *(v2 + 32) = 0;
  }

  if (__src)
  {
    v10 = &__src[__len];
  }

  else
  {
    v10 = 0;
  }

  Data._Representation.append(contentsOf:)(__src, v10);
}

uint64_t PropertyListEncoder._encodeBPlist<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = PropertyListEncoder.encodeToTopLevelContainerBPlist<A>(_:)(a1, a2, a3);
  if (!v4)
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 40);
    if ((v9 & 0xF0) == 0x90 && (v9 == 144 ? (v10 = (*(v7 + 24) | *(v7 + 32) | v8) == 0) : (v10 = 0), v10 || (v9 == 144 ? (v11 = v8 == 1) : (v11 = 0), v11 ? (v12 = *(v7 + 24) == 0) : (v12 = 0), v12)))
    {
      v3 = v7;
      v14 = type metadata accessor for EncodingError();
      swift_allocError();
      v16 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
      v16[3] = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
      (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
      v22 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v22);

      v23 = "er property list fragment.";
      v24 = 0xD00000000000002BLL;
    }

    else
    {
      v13 = v9 >> 4;
      if ((v9 >> 4) - 1 <= 3)
      {
        v3 = v7;
        v14 = type metadata accessor for EncodingError();
        swift_allocError();
        v16 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v16[3] = a2;
        v17 = __swift_allocate_boxed_opaque_existential_0(v16);
        (*(*(a2 - 8) + 16))(v17, a1, a2);
        _StringGuts.grow(_:)(54);
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        v18 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v18);

        v19 = " encoded as number property list fragment.";
LABEL_24:
        v25 = (v19 - 32) | 0x8000000000000000;
        v24 = 0xD00000000000002ALL;
        goto LABEL_25;
      }

      if (!v13 || v13 == 9 && v9 == 144 && v8 == 2 && *(v7 + 24) == 0)
      {
        v3 = v7;
        v14 = type metadata accessor for EncodingError();
        swift_allocError();
        v16 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v16[3] = a2;
        v27 = __swift_allocate_boxed_opaque_existential_0(v16);
        (*(*(a2 - 8) + 16))(v27, a1, a2);
        _StringGuts.grow(_:)(54);
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        v28 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v28);

        v19 = " encoded as string property list fragment.";
        goto LABEL_24;
      }

      v3 = v7;
      if ((v9 & 0xF0) != 0x70)
      {
        swift_slowAlloc();
        v3 = _BPlistEncodingFormat.Writer.serializePlist(_:)(v3);

        outlined consume of Data._Representation(0, 0xC000000000000000);

        return v3;
      }

      v14 = type metadata accessor for EncodingError();
      swift_allocError();
      v16 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
      v16[3] = a2;
      v31 = __swift_allocate_boxed_opaque_existential_0(v16);
      (*(*(a2 - 8) + 16))(v31, a1, a2);
      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
      v32 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v32);

      v23 = "list version=1.0>\n";
      v24 = 0xD000000000000028;
    }

    v25 = v23 | 0x8000000000000000;
LABEL_25:
    MEMORY[0x1865CB0E0](v24, v25);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B30], v14);
    swift_willThrow();
  }

  return v3;
}

uint64_t __DataStorage.init(length:)(uint64_t result)
{
  *(v2 + 16) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  if (result > 0x3FFFFFFFFFFFFFFELL)
  {
    __break(1u);
LABEL_17:
    result = swift_once();
    goto LABEL_5;
  }

  v1 = result;
  v3 = result;
  if (result <= 0x3FFFFFFF)
  {
    v3 = result + (result >> 2);
    if (__OFADD__(result, result >> 2))
    {
      __break(1u);
LABEL_19:
      result = swift_once();
      goto LABEL_7;
    }
  }

  if (one-time initialization token for vmOpsThreshold != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v3 < static __DataStorage.vmOpsThreshold)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for _pageSize != -1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v4 = _pageSize + v3;
  if (__OFADD__(_pageSize, v3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (__OFSUB__(_pageSize, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = v6 & ~(_pageSize - 1);
LABEL_11:
  HIWORD(v7) = 0;
  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v7 + 1);
  if (v1 > 0x20000)
  {
    result = malloc_type_calloc(1uLL, v3, HIWORD(v7) << 48);
  }

  else
  {
    result = malloc_type_malloc(v3, HIWORD(v7) << 48);
  }

  if (result)
  {
    *(v2 + 64) = v1 <= 0x20000;
    *(v2 + 16) = result;
    *(v2 + 24) = 0;
    *(v2 + 32) = v3;
    *(v2 + 40) = 0;
    __DataStorage.length.setter(v1);
    return v2;
  }

LABEL_23:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Data.InlineSlice.ensureUniqueReference()()
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = *v0;
    v5 = v0[1];
    if (v5 < v4)
    {
      __break(1u);
    }

    else
    {
      v6 = *(v0 + 1);
      v7 = *(v6 + 16);
      if (!v7)
      {
        v1 = 0;
LABEL_7:
        type metadata accessor for __DataStorage();
        v11 = swift_allocObject();
        v2 = v11;
        *(v11 + 16) = 0;
        v3 = (v11 + 16);
        *(v11 + 48) = 0;
        *(v11 + 56) = 0;
        *(v11 + 40) = v4;
        if (v5 == v4)
        {
          *(v11 + 64) = 0;
          *(v11 + 24) = 0;
          *(v11 + 32) = 0;
          *v3 = 0;
LABEL_16:

          *(v0 + 1) = v2;
          return;
        }

        v4 = v5 - v4;
        if (one-time initialization token for vmOpsThreshold == -1)
        {
LABEL_10:
          if (v4 >= static __DataStorage.vmOpsThreshold)
          {
            *(v2 + 24) = v4;
            *(v2 + 32) = v4;
            *(v2 + 64) = 1;
            v14 = 0;
            _So30malloc_type_layout_semantics_ta_generic_data_setter(&v14 + 1);
            v12 = malloc_type_malloc(v4, v14 << 32);
            if (v12)
            {
              *v3 = v12;
              goto LABEL_15;
            }
          }

          else
          {
            *(v2 + 24) = v4;
            v13 = 0;
            _So30malloc_type_layout_semantics_ta_generic_data_setter(&v13 + 1);
            v12 = malloc_type_malloc(v4, v13 << 32);
            if (v12)
            {
              *(v2 + 16) = v12;
              *(v2 + 32) = v4;
              *(v2 + 64) = 1;
LABEL_15:
              specialized static __DataStorage.move(_:_:_:)(v12, v1, v4);
              goto LABEL_16;
            }

            __break(1u);
          }

          __break(1u);
          return;
        }

LABEL_20:
        swift_once();
        goto LABEL_10;
      }

      v8 = *(v6 + 40);
      v9 = __OFSUB__(v4, v8);
      v10 = v4 - v8;
      if (!v9)
      {
        v1 = v10 + v7;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

void __DataStorage.replaceBytes(in:with:length:)(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v5 = v4[5];
  v6 = a1 - v5;
  if (__OFSUB__(a1, v5))
  {
    __break(1u);
    goto LABEL_26;
  }

  v7 = __OFSUB__(a2, v5);
  v8 = a2 - v5;
  if (v7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = v8 - v6;
  if (v8 < v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (__OFSUB__(v8, v6))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = v4[3];
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v11 + a4;
  if (__OFADD__(v11, a4))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (__OFSUB__(v13, v10))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v10 >= v13)
  {
    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  }

  else
  {
    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v11 + a4, 0);
    v4[3] = v13;
  }

  v15 = v4[2];
  if (!v15)
  {
    goto LABEL_34;
  }

  if (v13 == v10)
  {
    goto LABEL_16;
  }

  v16 = v10 - v6;
  if (__OFSUB__(v10, v6))
  {
    goto LABEL_32;
  }

  if (__OFSUB__(v16, v9))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  memmove((v15 + v6 + a4), (v15 + v6 + v9), v16 - v9);
LABEL_16:
  if (a4)
  {
    v17 = (v15 + v6);
    if (!a3)
    {
      bzero(v17, a4);
      if (v13 >= v10)
      {
        return;
      }

      goto LABEL_20;
    }

    memmove(v17, a3, a4);
  }

  if (v13 >= v10)
  {
    return;
  }

LABEL_20:

  __DataStorage.length.setter(v13);
}

{
  v4 = __OFADD__(a1, a2);
  v5 = a1 + a2;
  if (v4)
  {
    __break(1u);
  }

  else if (v5 >= a1)
  {
    __DataStorage.replaceBytes(in:with:length:)(a1, v5, a3, a4);
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(Swift::Int growingTo, Swift::Bool clear)
{
  v4 = v2[4];
  if (v4)
  {
    v5 = v4 < growingTo;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return;
  }

  v6 = growingTo;
  if (growingTo)
  {
    v7 = clear;
    if (!v4)
    {
      v23 = malloc_good_size(growingTo);
      LODWORD(v58) = 0;
      _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
      if (v7)
      {
        v24 = malloc_type_calloc(1uLL, v23, WORD1(v58) << 48);
      }

      else
      {
        v24 = malloc_type_malloc(v23, WORD1(v58) << 48);
      }

      v26 = v24;
      v27 = v2[2];
      if (v27)
      {
        if (!v24)
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        specialized static __DataStorage.move(_:_:_:)(v24, v27, v2[3]);
        v28 = v2[2];
        if (v28)
        {
          v29 = v2[6];
          if (v29)
          {
            v30 = v2[3];

            v29(v28, v30);
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v29);
          }

          else
          {
            free(v2[2]);
          }
        }
      }

      v47 = v2[6];
      v2[6] = 0;
      v2[7] = 0;
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v47);
      v2[3] = v6;
      v2[4] = v23;
      v2[2] = v26;
      v48 = 1;
LABEL_89:
      *(v2 + 64) = v48;
      return;
    }

    if (one-time initialization token for vmOpsThreshold != -1)
    {
      swift_once();
    }

    v8 = 1;
    if (static __DataStorage.vmOpsThreshold <= v6)
    {
      v8 = 2;
    }

    v9 = v6 >> v8;
    if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, v9))
    {
      __break(1u);
    }

    else
    {
      if (0x7FFFFFFFFFFFFFFFLL - v9 < v6)
      {
        v9 = 0;
      }

      v10 = __OFADD__(v6, v9);
      v11 = v6 + v9;
      if (!v10)
      {
        if (v11 <= v4)
        {
          v12 = v4;
        }

        else
        {
          v12 = v11;
        }

        v13 = malloc_good_size(v12);
        v14 = v7 && v13 > 0x20000;
        v15 = v2[3];
        if (!v2[2])
        {
          LODWORD(v58) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
          if (v7 && v13 > 0x20000)
          {
            v25 = malloc_type_calloc(1uLL, v13, WORD1(v58) << 48);
            if (v25)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v25 = malloc_type_malloc(v13, WORD1(v58) << 48);
            if (v25)
            {
              goto LABEL_79;
            }
          }

          LODWORD(v58) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
          if (v7 && v6 > 0x20000)
          {
            LOBYTE(v14) = 1;
            v25 = malloc_type_calloc(1uLL, v6, WORD1(v58) << 48);
            goto LABEL_75;
          }

          v46 = malloc_type_malloc(v6, WORD1(v58) << 48);
LABEL_74:
          v25 = v46;
          LOBYTE(v14) = 0;
LABEL_75:
          if (!v25)
          {
            v58 = 0;
            v59 = 0xE000000000000000;
            _StringGuts.grow(_:)(41);

            v58 = 0xD000000000000026;
            v59 = 0x8000000181481210;
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            v6 = v51;
            MEMORY[0x1865CB0E0](v50);

            v2 = &v58;
            MEMORY[0x1865CB0E0](41, 0xE100000000000000);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            goto LABEL_77;
          }

LABEL_79:
          v53 = (v15 < v6 && v7) | v14;
          if (v15 >= v6 || !v7 || (v14 & 1) != 0)
          {
            goto LABEL_88;
          }

          goto LABEL_86;
        }

        if (v15)
        {
          if (v6 == 0x8000000000000000 && v15 == -1)
          {
            goto LABEL_96;
          }

          v3 = v6 / v15 > 3;
          if ((v14 & v3) != 1)
          {
            goto LABEL_53;
          }
        }

        else if (!v7 || v13 <= 0x20000)
        {
          v3 = 1;
LABEL_53:
          v34 = (v2 + 6);
          if (v2[6])
          {
            LODWORD(v58) = 0;
            _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
            v35 = malloc_type_calloc(1uLL, v13, v58 << 32);
            if (v35)
            {
              v36 = v2[2];
              if (!v36)
              {
LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

              v25 = v35;
              specialized static __DataStorage.move(_:_:_:)(v35, v36, v15);
              v37 = v2[2];
              if (v37)
              {
                v38 = *v34;
                if (*v34)
                {
                  v57 = v2[3];

                  v38(v37, v57);
                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v38);
                }

                else
                {
                  free(v2[2]);
                }
              }

              v54 = v2[6];
              *v34 = 0;
              v2[7] = 0;
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v54);
              goto LABEL_84;
            }
          }

          else
          {
            v39 = v2[2];
            if (!v39)
            {
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }

            LODWORD(v58) = 0;
            _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
            v25 = malloc_type_realloc(v39, v13, v58 << 32);
            if (v25)
            {
LABEL_84:
              v53 = 0;
              if (v15 >= v6 || !v7)
              {
                goto LABEL_88;
              }

LABEL_86:
              if (!__OFSUB__(v6, v15))
              {
                bzero(&v25[v15], v6 - v15);
                v53 = 0;
LABEL_88:
                v2[2] = v25;
                v2[4] = v13;
                v48 = (v53 & 1) == 0;
                goto LABEL_89;
              }

              goto LABEL_95;
            }
          }

          v13 = malloc_good_size(v6);
          if ((v7 & v3 & (v13 > 0x20000)) == 1)
          {
            LODWORD(v58) = 0;
            _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
            v40 = malloc_type_calloc(1uLL, v13, v58 << 32);
            if (v40)
            {
              v41 = v2[2];
              if (v41)
              {
                v25 = v40;
                specialized static __DataStorage.move(_:_:_:)(v40, v41, v15);
                v42 = v2[2];
                if (v42)
                {
                  v43 = *v34;
                  if (*v34)
                  {
                    v44 = v2[3];

                    v43(v42, v44);
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v43);
                  }

                  else
                  {
                    free(v2[2]);
                  }
                }

                v55 = v2[6];
                *v34 = 0;
                v2[7] = 0;
                outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v55);
                v53 = 1;
                goto LABEL_88;
              }

LABEL_104:
              __break(1u);
              return;
            }
          }

          v45 = v2[2];
          if (!v45)
          {
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          LODWORD(v58) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
          v46 = malloc_type_realloc(v45, v13, v58 << 32);
          goto LABEL_74;
        }

        LODWORD(v58) = 0;
        _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
        v3 = 1;
        v31 = malloc_type_calloc(1uLL, v13, v58 << 32);
        if (v31)
        {
          v32 = v2[2];
          if (!v32)
          {
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          v25 = v31;
          specialized static __DataStorage.move(_:_:_:)(v31, v32, v15);
          v3 = v2[2];
          if (!v3)
          {
            goto LABEL_78;
          }

          v33 = v2[6];
          if (v33)
          {
            v56 = v2[3];

            v33(v3, v56);
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v33);
LABEL_78:
            v52 = v2[6];
            v2[6] = 0;
            v2[7] = 0;
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v52);
            goto LABEL_79;
          }

LABEL_77:
          free(v3);
          goto LABEL_78;
        }

        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v4)
  {
    return;
  }

  v16 = malloc_good_size(v2[3]);
  LODWORD(v58) = 0;
  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v58 + 1);
  v17 = malloc_type_malloc(v16, v58 << 32);
  if (!v17)
  {
    goto LABEL_98;
  }

  v18 = v2[2];
  if (!v18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v19 = v17;
  specialized static __DataStorage.move(_:_:_:)(v17, v18, v2[3]);
  v20 = v2[2];
  if (v20)
  {
    v21 = v2[6];
    if (v21)
    {
      v22 = v2[3];

      v21(v20, v22);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v21);
    }

    else
    {
      free(v2[2]);
    }
  }

  v49 = v2[6];
  v2[6] = 0;
  v2[7] = 0;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v49);
  v2[2] = v19;
  v2[4] = v16;
  *(v2 + 64) = 0;
}

void Data._Representation.append(contentsOf:)(_BYTE *__src, _BYTE *a2)
{
  v3 = v2;
  v36 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *&v35 = v7;
      *(&v35 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v19 = v7;
      v20 = v7 >> 32;
      if (v7 >> 32 >= v7)
      {
        v21 = a2 - __src;
        if (!__src)
        {
          v21 = 0;
        }

        v22 = v20 + v21;
        if (!__OFADD__(v20, v21))
        {
          *v3 = xmmword_181234410;
          outlined consume of Data._Representation(0, 0xC000000000000000);
          if (v22 <= 2147483646)
          {
            goto LABEL_18;
          }

          type metadata accessor for Data.RangeReference();
          v27 = swift_allocObject();
          *(v27 + 16) = v19;
          *(v27 + 24) = v20;
          *v33 = v27;
          Data.LargeSlice.append(contentsOf:)(__src, a2);
          v16 = *v33;
          v17 = v18;
LABEL_30:
          v23 = v17 | 0x8000000000000000;
          goto LABEL_31;
        }

        goto LABEL_41;
      }
    }

    else
    {
      *v33 = *v2;
      *&v33[8] = v6;
      v33[10] = BYTE2(v6);
      v33[11] = BYTE3(v6);
      v9 = a2 - __src;
      v33[12] = BYTE4(v6);
      v10 = HIWORD(v6);
      v33[13] = BYTE5(v6);
      if (__src)
      {
        v11 = a2 - __src;
      }

      else
      {
        v11 = 0;
      }

      v12 = BYTE6(v6);
      v34 = BYTE6(v6);
      v13 = __OFADD__(BYTE6(v6), v11);
      v14 = BYTE6(v6) + v11;
      if (!v13)
      {
        if (v14 > 14)
        {
          if (v14 <= 0x7FFFFFFE)
          {
            *&v35 = *v33;
            *(&v35 + 6) = *&v33[6];
            type metadata accessor for __DataStorage();
            v15 = swift_allocObject();
            __DataStorage.init(bytes:length:)(&v35, v12);
            LODWORD(v35) = 0;
            DWORD1(v35) = v12;
            *(&v35 + 1) = v15;
LABEL_18:
            Data.InlineSlice.append(contentsOf:)(__src, a2);
            v16 = v35;
            v23 = *(&v35 + 1) | 0x4000000000000000;
LABEL_31:
            *v3 = v16;
            v3[1] = v23;
            return;
          }

          *&v35 = *v33;
          *(&v35 + 6) = *&v33[6];
          type metadata accessor for __DataStorage();
          v29 = swift_allocObject();
          __DataStorage.init(bytes:length:)(&v35, v12);
          type metadata accessor for Data.RangeReference();
          v30 = swift_allocObject();
          *(v30 + 16) = 0;
          *(v30 + 24) = v12;
          *&v35 = v30;
          *(&v35 + 1) = v29;
          goto LABEL_12;
        }

        if (!__src || a2 == __src)
        {
LABEL_28:
          v16 = *v33;
          v23 = *&v33[8] | ((*&v33[12] | (v34 << 16)) << 32);
          goto LABEL_31;
        }

        memcpy(&v33[v12], __src, a2 - __src);
        if (v9 <= 255)
        {
          if ((((v10 + v9) >> 8) & 1) == 0)
          {
            v34 = v10 + v9;
            goto LABEL_28;
          }

LABEL_43:
          __break(1u);
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v8 == 2)
  {
    *&v35 = *v2;
    *(&v35 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v2 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
LABEL_12:
    Data.LargeSlice.append(contentsOf:)(__src, a2);
    v17 = *(&v35 + 1);
    v16 = v35;
    goto LABEL_30;
  }

  if (__src && (v24 = a2 - __src, a2 != __src))
  {
    if (v24 <= 14)
    {
      v25 = specialized Data.InlineData.init(_:)(__src, a2);
      v26 = v31 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v24 >= 0x7FFFFFFF)
    {
      v25 = specialized Data.LargeSlice.init(_:)(__src, a2);
      v26 = v32 | 0x8000000000000000;
    }

    else
    {
      v25 = specialized Data.InlineSlice.init(_:)(__src, a2);
      v26 = v28 | 0x4000000000000000;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0xC000000000000000;
  }

  *v2 = v25;
  v2[1] = v26;
}

id @objc NSObject.__NS_swiftOverlay_keyPathsForValuesAffectingValueForKey(_:original:)(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v9 = v8;
  _Block_copy(v6);
  v10 = a1;
  specialized NSObject.__NS_swiftOverlay_keyPathsForValuesAffectingValueForKey(_:original:)(v7, v9, v10, v6);
  _Block_release(v6);
  _Block_release(v6);

  v11 = _NativeSet.bridged()();

  return v11;
}

uint64_t specialized NSObject.__NS_swiftOverlay_keyPathsForValuesAffectingValueForKey(_:original:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44[0] = a3;
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32NSKeyValueObservingCustomization_pXpMd);
  if (swift_dynamicCast() && specialized static __KVOKeyPathBridgeMachinery._bridgeKeyPath(_:)(a1, a2))
  {
    v9 = (*(v37 + 8))();
    v10 = v9;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = __CocoaSet.count.getter();
      v43 = MEMORY[0x1865CB700](v11, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyKeyPath();
      Set.Iterator.init(_cocoa:)();
      v10 = v44[0];
      v12 = v44[1];
      v14 = v44[2];
      v13 = v44[3];
      v15 = v44[4];
    }

    else
    {
      v25 = MEMORY[0x1865CB700](*(v9 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
      v13 = 0;
      v43 = v25;
      v26 = -1;
      v27 = -1 << *(v10 + 32);
      v12 = v10 + 56;
      v14 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v26 = ~(-1 << v28);
      }

      v15 = (v26 & *(v10 + 56));
    }

    aBlock = v10;
    v37 = v12;
    v38 = v14;
    v39 = v13;
    v40 = v15;
    v41 = closure #1 in NSObject.__NS_swiftOverlay_keyPathsForValuesAffectingValueForKey(_:original:);
    v42 = 0;
    specialized LazyMapSequence.Iterator.next()();
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      do
      {
        specialized Set._Variant.insert(_:)(&v35, v31, v32);

        specialized LazyMapSequence.Iterator.next()();
        v31 = v33;
        v32 = v34;
      }

      while (v34);
    }

    outlined consume of Set<AnyKeyPath>.Iterator._Variant();
    return v43;
  }

  v16 = String._bridgeToObjectiveCImpl()();
  v17 = (*(a4 + 16))(a4, v16);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v18 = static Set._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v18)
  {
    v19 = v18;

    return v19;
  }

  v20 = [v17 count];
  v44[0] = MEMORY[0x1865CB700](v20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v21 = swift_allocObject();
  *(v21 + 16) = v44;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for specialized closure #1 in static Set._forceBridgeFromObjectiveC(_:result:);
  *(v22 + 24) = v21;
  v40 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v41 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v39 = &block_descriptor;
  v23 = _Block_copy(&aBlock);

  [v17 enumerateObjectsUsingBlock_];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    v19 = v44[0];

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *v4;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 > v10 && (a4 & 1) != 0)
  {
    v12 = *v4;
    goto LABEL_83;
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
    v13 = static _SetStorage.resize(original:capacity:move:)();
    v12 = v13;
    if (*(v9 + 16))
    {
      v93 = v4;
      v14 = v9;
      v15 = 0;
      v95 = v14;
      v18 = *(v14 + 56);
      v17 = (v14 + 56);
      v16 = v18;
      v19 = 1 << *(v17 - 24);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & v16;
      v22 = (v19 + 63) >> 6;
      v23 = v13 + 56;
      while (v21)
      {
        v26 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_19:
        v29 = (*(v95 + 48) + 16 * (v26 | (v15 << 6)));
        v30 = *v29;
        v31 = v29[1];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v32 = Hasher._finalize()();
        v33 = -1 << *(v12 + 32);
        v34 = v32 & ~v33;
        v35 = v34 >> 6;
        if (((-1 << v34) & ~*(v23 + 8 * (v34 >> 6))) == 0)
        {
          v36 = 0;
          v37 = (63 - v33) >> 6;
          while (++v35 != v37 || (v36 & 1) == 0)
          {
            v38 = v35 == v37;
            if (v35 == v37)
            {
              v35 = 0;
            }

            v36 |= v38;
            v39 = *(v23 + 8 * v35);
            if (v39 != -1)
            {
              v24 = __clz(__rbit64(~v39)) + (v35 << 6);
              goto LABEL_11;
            }
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v24 = __clz(__rbit64((-1 << v34) & ~*(v23 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
        *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v25 = (*(v12 + 48) + 16 * v24);
        *v25 = v30;
        v25[1] = v31;
        ++*(v12 + 16);
      }

      v27 = v15;
      while (1)
      {
        v15 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_86;
        }

        if (v15 >= v22)
        {
          break;
        }

        v28 = v17[v15];
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v21 = (v28 - 1) & v28;
          goto LABEL_19;
        }
      }

      v57 = 1 << *(v95 + 32);
      if (v57 >= 64)
      {
        bzero(v17, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v17 = -1 << v57;
      }

      v5 = v93;
      *(v95 + 16) = 0;
    }

    goto LABEL_73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  if (v11 <= v10)
  {
    v58 = static _SetStorage.resize(original:capacity:move:)();
    v12 = v58;
    if (!*(v9 + 16))
    {
LABEL_73:

LABEL_75:
      *v5 = v12;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v85 = -1 << *(v12 + 32);
      a3 = result & ~v85;
      if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
      {
        v86 = ~v85;
        while (1)
        {
          v87 = (*(v12 + 48) + 16 * a3);
          if (*v87 == v8 && v87[1] == a2)
          {
            goto LABEL_91;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            goto LABEL_91;
          }

          a3 = (a3 + 1) & v86;
          if (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_83;
    }

    v94 = v4;
    v59 = v9;
    v60 = 0;
    v96 = v59;
    v63 = *(v59 + 56);
    v62 = v59 + 56;
    v61 = v63;
    v64 = 1 << *(v62 - 24);
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v66 = v65 & v61;
    v67 = (v64 + 63) >> 6;
    v68 = v58 + 56;
    while (v66)
    {
      v71 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
LABEL_60:
      v74 = (*(v96 + 48) + 16 * (v71 | (v60 << 6)));
      v75 = *v74;
      v76 = v74[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v77 = Hasher._finalize()();
      v78 = -1 << *(v12 + 32);
      v79 = v77 & ~v78;
      v80 = v79 >> 6;
      if (((-1 << v79) & ~*(v68 + 8 * (v79 >> 6))) == 0)
      {
        v81 = 0;
        v82 = (63 - v78) >> 6;
        while (++v80 != v82 || (v81 & 1) == 0)
        {
          v83 = v80 == v82;
          if (v80 == v82)
          {
            v80 = 0;
          }

          v81 |= v83;
          v84 = *(v68 + 8 * v80);
          if (v84 != -1)
          {
            v69 = __clz(__rbit64(~v84)) + (v80 << 6);
            goto LABEL_52;
          }
        }

        goto LABEL_89;
      }

      v69 = __clz(__rbit64((-1 << v79) & ~*(v68 + 8 * (v79 >> 6)))) | v79 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
      *(v68 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      v70 = (*(v12 + 48) + 16 * v69);
      *v70 = v75;
      v70[1] = v76;
      ++*(v12 + 16);
    }

    v72 = v60;
    while (1)
    {
      v60 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v60 >= v67)
      {

        v5 = v94;
        goto LABEL_75;
      }

      v73 = *(v62 + 8 * v60);
      ++v72;
      if (v73)
      {
        v71 = __clz(__rbit64(v73));
        v66 = (v73 - 1) & v73;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v40 = static _SetStorage.copy(original:)();
    v12 = v40;
    if (!*(v9 + 16))
    {
LABEL_70:

      *v5 = v12;
LABEL_83:
      *(v12 + 8 * (a3 >> 6) + 56) |= 1 << a3;
      v89 = (*(v12 + 48) + 16 * a3);
      *v89 = v8;
      v89[1] = a2;
      v90 = *(v12 + 16);
      v91 = __OFADD__(v90, 1);
      v92 = v90 + 1;
      if (!v91)
      {
        *(v12 + 16) = v92;
        return result;
      }

      goto LABEL_90;
    }

    v41 = (v40 + 56);
    v42 = v9 + 56;
    v43 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v9 || v41 >= v42 + 8 * v43)
    {
      memmove(v41, (v9 + 56), 8 * v43);
    }

    v44 = 0;
    *(v12 + 16) = *(v9 + 16);
    v45 = 1 << *(v9 + 32);
    v46 = *(v9 + 56);
    v47 = -1;
    if (v45 < 64)
    {
      v47 = ~(-1 << v45);
    }

    v48 = v47 & v46;
    v49 = (v45 + 63) >> 6;
    if ((v47 & v46) != 0)
    {
      do
      {
        v50 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
LABEL_42:
        v53 = 16 * (v50 | (v44 << 6));
        v54 = (*(v9 + 48) + v53);
        v55 = v54[1];
        v56 = (*(v12 + 48) + v53);
        *v56 = *v54;
        v56[1] = v55;
      }

      while (v48);
    }

    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
        goto LABEL_70;
      }

      v52 = *(v42 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        v48 = (v52 - 1) & v52;
        goto LABEL_42;
      }
    }

LABEL_87:
    __break(1u);
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t DataProtocol.copyBytes(to:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v47 = a2;
  v49 = a5;
  v50 = *(a5 + 8);
  v51 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v45 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for Range();
  v41 = *(v22 - 8);
  v42 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  v51 = v5;
  v48 = a4;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v25 = *(v12 + 8);
  v25(v15, AssociatedTypeWitness);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v27 = *(v12 + 32);
    v50 = v25;
    v28 = v43;
    v27(v43, v21, AssociatedTypeWitness);
    v29 = v45;
    v27(&v28[*(v45 + 48)], v18, AssociatedTypeWitness);
    v30 = v44;
    v31 = v40;
    (*(v44 + 16))(v40, v28, v29);
    v32 = *(v29 + 48);
    v27(v24, v31, AssociatedTypeWitness);
    v33 = &v31[v32];
    v34 = v50;
    v50(v33, AssociatedTypeWitness);
    (*(v30 + 32))(v31, v28, v29);
    v35 = v42;
    v27(&v24[*(v42 + 36)], &v31[*(v29 + 48)], AssociatedTypeWitness);
    v34(v31, AssociatedTypeWitness);
    v36 = v49;
    v37 = *(v49 + 104);
    WitnessTable = swift_getWitnessTable();
    v39 = v37(v46, v47, v24, v35, WitnessTable, v48, v36);
    (*(v41 + 8))(v24, v35);
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *specialized DataProtocol.copyBytes<A>(to:from:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
    dispatch thunk of RangeExpression.relative<A>(to:)();
    v9 = specialized RandomAccessCollection<>.distance(from:to:)(v24, v25, a4, a5);
    v10 = a2 - v8;
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    result = specialized Slice<>.regions.getter(v24, v25, a4, a5);
    v12 = result;
    v13 = 0;
    v14 = result + 56;
    v15 = -1;
    while (1)
    {
      ++v15;
      v17 = *(v12 + 2);
      if (v15 == v17)
      {
LABEL_29:

        return v13;
      }

      if (v15 >= v17)
      {
        break;
      }

      if (v11 < 1)
      {
        goto LABEL_29;
      }

      v18 = *(v14 - 3);
      v19 = *(v14 - 1);
      v20 = *v14 - v19;
      if (v19)
      {
        v21 = *v14 - v19;
      }

      else
      {
        v21 = 0;
      }

      if (v18 < 0 || v21 < v18)
      {
        goto LABEL_31;
      }

      v22 = *(v14 - 2);
      if (v19)
      {
        if (v20 < v22 || v22 < 0 || v20 < v18)
        {
          goto LABEL_34;
        }

        if (v10 < v13)
        {
          goto LABEL_32;
        }

        if (v11 >= v22 - v18)
        {
          v23 = v22 - v18;
        }

        else
        {
          v23 = v11;
        }

        result = memmove(&v8[v13], (v19 + v18), v23);
        v16 = __OFADD__(v13, v23);
        v13 += v23;
        if (v16)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v22 | v18)
        {
          goto LABEL_36;
        }

        if (v10 < v13)
        {
          goto LABEL_32;
        }

        v23 = 0;
      }

      v14 += 4;
      v16 = __OFSUB__(v11, v23);
      v11 -= v23;
      if (v16)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *specialized Slice<>.regions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  specialized closure #1 in Slice<>.regions.getter(a3, a4, &v11, a3, a4, a1, a2, v12);
  if (v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = v12[1];
  v10 = v12[0];
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[32 * v6];
  *(v7 + 2) = v10;
  *(v7 + 3) = v9;
  return v4;
}

uint64_t specialized closure #1 in Slice<>.regions.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a3;
  if (result)
  {
    v10 = a2 - result;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v14 = a5 - a4;
  if (!a4)
  {
    v14 = 0;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_34;
  }

  v17 = result;
  *a3 = v11;
  if (v9 <= a6 && v11 >= a7)
  {
    result = specialized RandomAccessCollection<>.distance(from:to:)(v9, a6, a4, a5);
    if ((result & 0x8000000000000000) == 0)
    {
      v18 = result;
      if (v10 >= result)
      {
        result = specialized RandomAccessCollection<>.distance(from:to:)(v9, a7, a4, a5);
        if ((result & 0x8000000000000000) == 0 && v10 >= result)
        {
          if (result >= v18)
          {
            v19 = 0;
LABEL_17:
            v20 = a2;
            v21 = v17;
LABEL_32:
            *a8 = v18;
            *(a8 + 8) = result;
            *(a8 + 16) = v21;
            *(a8 + 24) = v20;
            *(a8 + 32) = v19;
            return result;
          }

          goto LABEL_37;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v9 >= a6 && v11 <= a7)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v18 = 0;
      v20 = a2;
      v21 = result;
      result = v10;
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  if (v9 <= a6 && v11 >= a6)
  {
    result = specialized RandomAccessCollection<>.distance(from:to:)(v9, a6, a4, a5);
    if ((result & 0x8000000000000000) == 0)
    {
      v18 = result;
      if (v10 >= result)
      {
        v19 = 0;
        v20 = a2;
        v21 = v17;
        result = v10;
        goto LABEL_32;
      }
    }

    goto LABEL_39;
  }

  v20 = 0;
  v19 = 1;
  v21 = 0;
  result = 0;
  v18 = 0;
  if (v9 < a6 || v9 > a7)
  {
    goto LABEL_32;
  }

  result = specialized RandomAccessCollection<>.distance(from:to:)(v9, a7, a4, a5);
  if ((result & 0x8000000000000000) == 0 && v10 >= result)
  {
    v19 = 0;
    v18 = 0;
    goto LABEL_17;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

id @objc _NSSwiftCalendar.date(byAdding:value:to:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(double *__return_ptr, uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v12 = a1;
  [a5 timeIntervalSinceReferenceDate];
  v16 = v13;
  a7(&v17, a3, a4, &v16, a6);

  if (v18)
  {
    v14 = 0;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v14;
}

Foundation::Date_optional __swiftcall _NSSwiftCalendar.date(byAdding:value:to:options:)(NSCalendarUnit byAdding, Swift::Int value, Foundation::Date to, NSCalendarOptions options)
{
  v7 = v4;
  v9 = v5;
  v10 = *options;
  v11 = _fromNSCalendarUnit(_:)(byAdding, __src);
  v13 = __src[0];
  if (LOBYTE(__src[0]) == 19)
  {
    *v9 = 0;
    *(v9 + 8) = 1;
  }

  else
  {
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    __src[14] = 0;
    LOBYTE(__src[15]) = 1;
    __src[16] = 0;
    LOBYTE(__src[17]) = 1;
    __src[18] = 0;
    LOBYTE(__src[19]) = 1;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[28] = 0;
    LOBYTE(__src[29]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    *(&__src[35] + 1) = 514;
    memset(__src, 0, 40);
    __dst[0] = 0;
    __dst[1] = 0;
    DateComponents.timeZone.setter(__dst);
    __src[4] = 0;
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[14] = 0;
    LOBYTE(__src[15]) = 1;
    __src[16] = 0;
    LOBYTE(__src[17]) = 1;
    __src[18] = 0;
    LOBYTE(__src[19]) = 1;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    LOBYTE(__dst[0]) = v13;
    v22.value = value;
    v22.is_nil = 0;
    DateComponents.setValue(_:for:)(v22, __dst);
    v14 = *(v6 + OBJC_IVAR____NSSwiftCalendar__lock);
    os_unfair_lock_lock((v14 + 32));
    v15 = *(v14 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v14 + 32));
    memcpy(__dst, __src, 0x11BuLL);
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v16 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v10)
    {
      v16 = v10;
    }

    if (*&static Date.validCalendarRange >= v16)
    {
      v17 = *&static Date.validCalendarRange;
    }

    else
    {
      v17 = v16;
    }

    ObjectType = swift_getObjectType();
    *v19 = v17;
    (*(v15 + 200))(__dst, v19, v7 & 1, ObjectType, v15);
    swift_unknownObjectRelease();
    memcpy(v19, __src, 0x11BuLL);
    v11 = outlined destroy of DateComponents(v19);
  }

  result.value = *&v12;
  result.is_nil = v11;
  return result;
}

id closure #1 in TimeZoneCache.bridgedCurrent.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[8];
  if (v3)
  {
    v4 = a1[8];
  }

  else
  {
    if (*a1)
    {
      v6 = a1[1];
      v7 = *a1;
    }

    else
    {
      TimeZoneCache.State.findCurrentTimeZone()(v16);
      v7 = v16[0];
      v6 = v16[1];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *a1 = v7;
      a1[1] = v6;
    }

    v8 = type metadata accessor for _NSSwiftTimeZone();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____NSSwiftTimeZone_timeZone];
    *v10 = v7;
    *(v10 + 1) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
    v11 = swift_allocObject();
    *(v11 + 32) = 0;
    *(v11 + 16) = xmmword_18122E880;
    *&v9[OBJC_IVAR____NSSwiftTimeZone_lock] = v11;
    v15.receiver = v9;
    v15.super_class = v8;
    swift_unknownObjectRetain();
    v12 = objc_msgSendSuper2(&v15, sel_init);
    v13 = a1[8];
    v4 = v12;

    v3 = 0;
    a1[8] = v12;
  }

  *a2 = v4;
  return v3;
}

void iop_removeAllDependencies(unsigned __int8 *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = 0;
  v6 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __iop_removeAllDependencies_block_invoke;
  v21 = &unk_1E69F4618;
  v22 = a2;
  v23 = a1;
  LOBYTE(v7) = 1;
  v8 = 1;
  do
  {
    while (1)
    {
      while (1)
      {
        v9 = v5;
        v10 = v8;
        v11 = v7;
        v12 = _NSOperationDependenciesAndReadyKeys[v6];
        if (v12 != @"isReady")
        {
          break;
        }

        v8 = 0;
        v13 = atomic_load(a1 + 236);
        v14 = v5 | (v13 != 0);
        v5 = 1;
        v7 = v10;
        v6 = 1;
        if (v14)
        {
          goto LABEL_14;
        }
      }

      if (v12 != @"isFinished")
      {
        break;
      }

      v8 = 0;
      v15 = a1 + 235;
LABEL_13:
      v13 = atomic_load(v15);
      v16 = v5 | (v13 != 0);
      v6 = 1;
      v7 = v10;
      v5 = 1;
      if (v16)
      {
LABEL_14:
        if (v13)
        {
          v17 = v11;
        }

        else
        {
          v17 = v10;
        }

        if (v17)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    if (v12 == @"isExecuting")
    {
      v8 = 0;
      v15 = a1 + 234;
      goto LABEL_13;
    }

    if (v12 == @"isCancelled")
    {
      v8 = 0;
      v15 = a1 + 237;
      goto LABEL_13;
    }

    v8 = 0;
    v6 = 1;
    v7 = v10;
    v5 = 1;
  }

  while ((v9 & 1) == 0);
  if (v10)
  {
LABEL_18:
    [a2 _changeValueForKeys:_NSOperationDependenciesAndReadyKeys count:2 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:&v18];
    goto LABEL_21;
  }

LABEL_20:
  (v20)(&v18, 1, v7);
  [__NSOperationInternalObserver _observeValueForKeyPath:@"isReady" ofObject:a2 changeKind:0 oldValue:0 newValue:0 indexes:0 context:0, v18, v19];
LABEL_21:
}

void __iop_removeAllDependencies_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 40) + 224));
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
  os_unfair_lock_unlock((v2 + 224));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        os_unfair_lock_lock((v8 + 232));
        os_unfair_lock_lock((*(a1 + 40) + 224));
        v9 = atomic_load((v8 + 237));
        if (v9 != 244)
        {
          v10 = atomic_load((*(a1 + 40) + 232));
          if ((v10 & 1) == 0)
          {
            v11 = *(a1 + 40);
            v12 = *(v11 + 48);
            *(v11 + 48) = v12 - 1;
            if (v12 <= 0)
            {
              __assert_rtn("iop_removeAllDependencies_block_invoke", "NSOperation.m", 552, "iop->__unfinished_deps >= 0");
            }
          }
        }

        [*(v8 + 48) removeObject:*(a1 + 32)];
        os_unfair_lock_unlock((*(a1 + 40) + 224));
        os_unfair_lock_unlock((v8 + 232));
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v5);
  }
}

char *__iop_setName_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  free(*(v2 + 88));
  if (v1)
  {
    result = strdup([v1 UTF8String]);
  }

  else
  {
    result = 0;
  }

  *(v2 + 88) = result;
  return result;
}

Swift::UInt32_optional __swiftcall String._pathResolveFlags(prefixLength:)(Swift::Int *prefixLength)
{
  v3 = v2;
  v4 = v1;
  if ((specialized Sequence<>.starts<A>(with:)(0x2E2FuLL, 0xE200000000000000, v1, v2) & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((specialized Sequence<>.starts<A>(with:)(0x6C6C6F666F6E2E2FuLL, 0xEB000000002F776FLL, v4, v3) & 1) == 0)
  {
    if (specialized Sequence<>.starts<A>(with:)(0x766C6F7365722E2FuLL, 0xEA00000000002F65, v4, v3))
    {
      v8 = (v3 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0;
      if ((v3 & 0x1000000000000000) != 0)
      {
        v11 = MEMORY[0x1865CB180](15, 10, v4, v3);
        v9 = v3 & 0x2000000000000000;
      }

      else
      {
        v9 = v3 & 0x2000000000000000;
        v10 = HIBYTE(v3) & 0xE;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v10 = v4 & 0xFFFFFFFFFFFELL;
        }

        if (v10 < 0xA)
        {
          __break(1u);
          goto LABEL_32;
        }

        v11 = 655364;
      }

      if (v9)
      {
        v12 = HIBYTE(v3) & 0xF;
      }

      else
      {
        v12 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v11 >> 14 == 4 * v12)
      {
        goto LABEL_34;
      }

      v13 = specialized Collection.suffix(from:)(v11, v4, v3);
      v17 = specialized Collection<>.firstIndex(of:)(47, v13, v14, v15, v16);
      v19 = v18;

      if (v19)
      {
        goto LABEL_34;
      }

      v31 = v8;
      if (v11 >> 14 <= v17 >> 14)
      {
        v20 = String.subscript.getter();
        v24 = v23;
        if ((v20 ^ v21) >> 14)
        {
          v25 = v20;
          v26 = v21;
          v27 = v22;
          v28 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5s6UInt32VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5i9VGXEfU_s6L7V_SsTG5SiTf1cn_n(v20, v21, v22, v23, 10);
          if ((v28 & 0x10000000000) != 0)
          {
            v28 = specialized _parseInteger<A, B>(ascii:radix:)(v25, v26, v27, v24, 10);
          }

          v29 = v28;

          if ((v29 & 0x100000000) == 0)
          {
            if ((v17 & 0xC) == 4 << v31)
            {
              v30 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17, v4, v3) >> 16;
              if ((v3 & 0x1000000000000000) != 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v30 = v17 >> 16;
              if ((v3 & 0x1000000000000000) != 0)
              {
LABEL_25:
                if (v12 < v30)
                {
                  __break(1u);
                  return v30;
                }

                v30 = String.UTF8View._foreignDistance(from:to:)();
              }
            }

            v6 = 0;
            *prefixLength = v30;
            v7 = v29;
            return (v7 | (v6 << 32));
          }

LABEL_34:
          v7 = 0;
          *prefixLength = 0;
          v6 = 1;
          return (v7 | (v6 << 32));
        }

LABEL_33:

        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_28:
    v7 = 0;
    v6 = 0;
    *prefixLength = 0;
    return (v7 | (v6 << 32));
  }

  v6 = 0;
  *prefixLength = 10;
  v7 = 1;
  return (v7 | (v6 << 32));
}

uint64_t specialized Sequence<>.starts<A>(with:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v36 = v6;
  v7 = 4 * v6;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v30 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v31 = a4 & 0xFFFFFFFFFFFFFFLL;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v33 = v7;
  v34 = v10;
  v32 = 4 * v10;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v28 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v29 = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = 15;
  v14 = 15;
  while (v33 != v13 >> 14)
  {
    v15 = v13 & 0xC;
    v16 = v13;
    if (v15 == v9)
    {
      v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, v4);
    }

    v17 = v16 >> 16;
    if (v16 >> 16 >= v36)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v26 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, a1, a2);
      goto LABEL_49;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v19 = String.UTF8View._foreignSubscript(position:)();
      if (v15 != v9)
      {
        goto LABEL_23;
      }
    }

    else if ((v4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v31;
      v19 = *(&v38 + v17);
      if (v15 != v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = v30;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v18 = _StringObject.sharedUTF8.getter();
      }

      v19 = *(v18 + v17);
      if (v15 != v9)
      {
LABEL_23:
        if ((v4 & 0x1000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }
    }

    v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, v4);
    if ((v4 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v36 <= v13 >> 16)
    {
      goto LABEL_60;
    }

    v13 = String.UTF8View._foreignIndex(after:)();
LABEL_29:
    v20 = v14 >> 14 == v32;
    if (v14 >> 14 == v32)
    {
      return v20;
    }

    v21 = v14 & 0xC;
    v22 = v14;
    if (v21 == v12)
    {
      v22 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, a1, a2);
    }

    v23 = v22 >> 16;
    if (v22 >> 16 >= v34)
    {
      goto LABEL_59;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v25 = String.UTF8View._foreignSubscript(position:)();
      if (v21 != v12)
      {
        goto LABEL_40;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v29;
      v25 = *(&v38 + v23);
      if (v21 != v12)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v24 = v28;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v24 = _StringObject.sharedUTF8.getter();
      }

      v25 = *(v24 + v23);
      if (v21 != v12)
      {
LABEL_40:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_41;
      }
    }

    v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_10:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_11;
    }

LABEL_41:
    if (v34 <= v14 >> 16)
    {
      goto LABEL_61;
    }

    v14 = String.UTF8View._foreignIndex(after:)();
LABEL_11:
    if (v19 != v25)
    {
      return v20;
    }
  }

  if (v32 == v14 >> 14)
  {
    return 1;
  }

  v4 = v14 & 0xC;
  v26 = v14;
  if (v4 == v12)
  {
    goto LABEL_62;
  }

LABEL_49:
  if (v34 <= v26 >> 16)
  {
    __break(1u);
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
    if (!(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
    {
      goto LABEL_67;
    }

    if (v4 == v12)
    {
      goto LABEL_68;
    }

    goto LABEL_53;
  }

  String.UTF8View._foreignSubscript(position:)();
  if (v4 == v12)
  {
    goto LABEL_68;
  }

LABEL_53:
  if ((a2 & 0x1000000000000000) != 0)
  {
    while (v34 <= v14 >> 16)
    {
      __break(1u);
LABEL_67:
      _StringObject.sharedUTF8.getter();
      if (v4 != v12)
      {
        goto LABEL_53;
      }

LABEL_68:
      v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
        return 0;
      }
    }

    String.UTF8View._foreignIndex(after:)();
  }

  return 0;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder()
{
  v1 = *v0;
  if (*(*v0 + 32) == 255)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    *(v1 + 16) = v2;
    *(v1 + 24) = v5;
    v6 = *(v1 + 32);
    *(v1 + 32) = 1;
    return outlined consume of JSONEncoderValue?(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  v1 = *v0;
  if (*(*v0 + 32) == 255)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    *(v1 + 16) = v2;
    *(v1 + 24) = v5;
    v6 = *(v1 + 32);
    *(v1 + 32) = 1;
    return outlined consume of JSONEncoderValue?(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  v1 = *v0;
  if (*(*v0 + 32) == 255)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    *(v1 + 16) = v2;
    *(v1 + 24) = v5;
    v6 = *(v1 + 32);
    *(v1 + 32) = 1;
    return outlined consume of JSONEncoderValue?(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  v1 = *v0;
  if (*(*v0 + 32) == 255)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    *(v1 + 16) = v2;
    *(v1 + 24) = v5;
    v6 = *(v1 + 32);
    *(v1 + 32) = 1;
    return outlined consume of JSONEncoderValue?(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder();
}

{
  v1 = *v0;
  if (*(*v0 + 32) == 255)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    *(v1 + 16) = v2;
    *(v1 + 24) = v5;
    v6 = *(v1 + 32);
    *(v1 + 32) = 1;
    return outlined consume of JSONEncoderValue?(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _NSScanIntFromString(void *a1, void *a2, int *a3, unint64_t *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  *c = 0u;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  v7 = *a4;
  v8 = [a1 length];
  *(&v44 + 1) = v8;
  *&v45[0] = v7;
  *&v44 = a1;
  if (v8 <= v7)
  {
    *&v43 = 0;
    v10 = 0xFFFF;
  }

  else
  {
    if (v8 - v7 >= 0x20)
    {
      v9 = 32;
    }

    else
    {
      v9 = v8 - v7;
    }

    *&v43 = v9;
    [a1 getUid("getCharacters:v45 + 8 range:{v7, v9}")];
    v10 = WORD4(v45[0]);
  }

  LOWORD(c[2]) = v10;
  *(&v43 + 1) = 1;
  if (a2)
  {
    if ([a2 characterIsMember:?])
    {
      do
      {
        v11 = *(&v43 + 1);
        if (*(&v43 + 1) - 1 >= v43)
        {
          break;
        }

        if (*(&v43 + 1) >= v43)
        {
          v13 = *&v45[0] + v43;
          if (*(&v44 + 1) > *&v45[0] + v43)
          {
            if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
            {
              v14 = 32;
            }

            else
            {
              v14 = *(&v44 + 1) - (*&v45[0] + v43);
            }

            *&v45[0] += v43;
            *&v43 = v14;
            [v44 getUid("getCharacters:v45 + 8 range:{v13, v14}")];
            LOWORD(c[2]) = WORD4(v45[0]);
            *(&v43 + 1) = 1;
            continue;
          }

          *(&v43 + 1) = v43 + 1;
          v12 = -1;
        }

        else
        {
          ++*(&v43 + 1);
          v12 = *(v45 + v11 + 4);
        }

        LOWORD(c[2]) = v12;
      }

      while (([a2 characterIsMember:?] & 1) != 0);
    }

    v10 = LOWORD(c[2]);
  }

  v42 = v10 == 45;
  if (v10 != 45 && v10 != 43)
  {
    goto LABEL_45;
  }

  if (*(&v43 + 1) >= v43)
  {
    v17 = *&v45[0] + v43;
    if (*(&v44 + 1) > *&v45[0] + v43)
    {
      if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
      {
        v18 = 32;
      }

      else
      {
        v18 = *(&v44 + 1) - (*&v45[0] + v43);
      }

      *&v45[0] += v43;
      *&v43 = v18;
      [v44 getUid("getCharacters:v45 + 8 range:{v17, v18}")];
      LOWORD(c[2]) = WORD4(v45[0]);
      *(&v43 + 1) = 1;
      if (!a2)
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    *(&v43 + 1) = v43 + 1;
    v16 = -1;
  }

  else
  {
    v15 = &v43 + 2 * (*(&v43 + 1))++;
    v16 = *(v15 + 20);
  }

  LOWORD(c[2]) = v16;
  if (!a2)
  {
    goto LABEL_45;
  }

LABEL_33:
  if ([a2 characterIsMember:?])
  {
    do
    {
      v19 = *(&v43 + 1);
      if (*(&v43 + 1) - 1 >= v43)
      {
        break;
      }

      if (*(&v43 + 1) >= v43)
      {
        v21 = *&v45[0] + v43;
        if (*(&v44 + 1) > *&v45[0] + v43)
        {
          if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
          {
            v22 = 32;
          }

          else
          {
            v22 = *(&v44 + 1) - (*&v45[0] + v43);
          }

          *&v45[0] += v43;
          *&v43 = v22;
          [v44 getUid("getCharacters:v45 + 8 range:{v21, v22}")];
          LOWORD(c[2]) = WORD4(v45[0]);
          *(&v43 + 1) = 1;
          continue;
        }

        *(&v43 + 1) = v43 + 1;
        v20 = -1;
      }

      else
      {
        ++*(&v43 + 1);
        v20 = *(v45 + v19 + 4);
      }

      LOWORD(c[2]) = v20;
    }

    while (([a2 characterIsMember:?] & 1) != 0);
  }

LABEL_45:
  v23 = LOWORD(c[2]);
  v24 = isADigit_set;
  if (!isADigit_set)
  {
    v24 = +[NSCharacterSet decimalDigitCharacterSet];
    isADigit_set = v24;
  }

  result = [(NSCharacterSet *)v24 characterIsMember:v23];
  if (result)
  {
    v40 = result;
    v26 = 0;
    while (1)
    {
      if (v26 > 214748363)
      {
        if (v26 != 214748364)
        {
          goto LABEL_54;
        }

        v27 = LOWORD(c[2]) - 48;
        if (v27 > 9)
        {
          v27 = u_charDigitValue(LOWORD(c[2]));
        }

        if (v27 - v42 >= 7)
        {
LABEL_54:
          while (1)
          {
            v28 = *(&v43 + 1);
            if (*(&v43 + 1) >= v43)
            {
              v30 = *&v45[0] + v43;
              if (*(&v44 + 1) > *&v45[0] + v43)
              {
                if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
                {
                  v31 = 32;
                }

                else
                {
                  v31 = *(&v44 + 1) - (*&v45[0] + v43);
                }

                *&v45[0] += v43;
                *&v43 = v31;
                [v44 getUid("getCharacters:v45 + 8 range:{v30, v31}")];
                v29 = WORD4(v45[0]);
                LOWORD(c[2]) = WORD4(v45[0]);
                *(&v43 + 1) = 1;
                goto LABEL_63;
              }

              *(&v43 + 1) = v43 + 1;
              v29 = 0xFFFFLL;
            }

            else
            {
              ++*(&v43 + 1);
              v29 = *(v45 + v28 + 4);
            }

            LOWORD(c[2]) = v29;
LABEL_63:
            v32 = isADigit_set;
            if (!isADigit_set)
            {
              v32 = +[NSCharacterSet decimalDigitCharacterSet];
              isADigit_set = v32;
            }

            if (![(NSCharacterSet *)v32 characterIsMember:v29])
            {
              if (v42)
              {
                v26 = 0x80000000;
              }

              else
              {
                v26 = 0x7FFFFFFF;
              }

              v33 = LOWORD(c[2]);
              v42 = 0;
              goto LABEL_81;
            }
          }
        }
      }

      v34 = LOWORD(c[2]) - 48;
      if (v34 > 9)
      {
        v34 = u_charDigitValue(LOWORD(c[2]));
      }

      v26 = v34 + 10 * v26;
      v35 = *(&v43 + 1);
      if (*(&v43 + 1) < v43)
      {
        break;
      }

      v36 = *&v45[0] + v43;
      if (*(&v44 + 1) <= *&v45[0] + v43)
      {
        *(&v43 + 1) = v43 + 1;
        v33 = 0xFFFFLL;
        goto LABEL_80;
      }

      if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
      {
        v37 = 32;
      }

      else
      {
        v37 = *(&v44 + 1) - (*&v45[0] + v43);
      }

      *&v45[0] += v43;
      *&v43 = v37;
      [v44 getUid("getCharacters:v45 + 8 range:{v36, v37}")];
      v33 = WORD4(v45[0]);
      LOWORD(c[2]) = WORD4(v45[0]);
      *(&v43 + 1) = 1;
LABEL_81:
      v38 = isADigit_set;
      if (!isADigit_set)
      {
        v38 = +[NSCharacterSet decimalDigitCharacterSet];
        isADigit_set = v38;
      }

      if (![(NSCharacterSet *)v38 characterIsMember:v33])
      {
        if (a3)
        {
          if (v42)
          {
            v39 = -v26;
          }

          else
          {
            v39 = v26;
          }

          *a3 = v39;
        }

        *a4 = *&v45[0] + *(&v43 + 1) - 1;
        return v40;
      }
    }

    ++*(&v43 + 1);
    v33 = *(v45 + v35 + 4);
LABEL_80:
    LOWORD(c[2]) = v33;
    goto LABEL_81;
  }

  return result;
}

void *partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(void *result)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = result[1];
  v5 = v4 < v2 + v3 || v4 < v2;
  if (!v5 && ((v2 | v3) & 0x8000000000000000) == 0 && v4 > v3)
  {
    return (*(v1 + 16))(*result + v3);
  }

  __break(1u);
  return result;
}

void *__cdecl NSAllocateMemoryPages(NSUInteger bytes)
{
  address[1] = *MEMORY[0x1E69E9840];
  address[0] = 0;
  if (vm_allocate(*MEMORY[0x1E69E9A60], address, bytes, 687865857))
  {
    v3 = [NSString stringWithFormat:@"*** NSAllocateMemoryPages(%lu) failed", bytes];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v3 userInfo:0]);
  }

  return address[0];
}

void _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA4DataV_Tt1B5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = 2;
  if (a3 > 2348810495)
  {
    if (a3 <= 2483028223)
    {
      if (a3 == 2348810496)
      {
        goto LABEL_39;
      }

      if (a3 != 2415919360)
      {
        goto LABEL_41;
      }

      v5 = 1;
    }

    else
    {
      if (a3 != 2483028224)
      {
        if (a3 != 2550137088)
        {
          if (a3 == 2617245952)
          {
            v5 = 0;
            goto LABEL_39;
          }

LABEL_41:
          specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2, a3);
          if (v27 != 1)
          {
            return;
          }

          outlined copy of Data._Representation(a1, a2);
          v28 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
          v29 = [objc_allocWithZone(NSString) initWithBytes:v28 + 32 length:*(v28 + 16) encoding:a3];
          if (v29)
          {
            v30 = v29;
            isTaggedPointer = _objc_isTaggedPointer(v29);
            v32 = v30;
            v22 = v32;
            if (!isTaggedPointer)
            {
              goto LABEL_55;
            }

            TaggedPointerTag = _objc_getTaggedPointerTag(v32);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
LABEL_47:
                  MEMORY[0x1EEE9AC00](TaggedPointerTag);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_71:

                  return;
                }

LABEL_55:
                if (!__CFStringIsCF())
                {
LABEL_56:
                  v33 = v22;
                  String.init(_nativeStorage:)();
                  if (v34 || ![v33 length])
                  {

                    goto LABEL_71;
                  }

                  String.init(_cocoaString:)();
LABEL_70:

                  goto LABEL_71;
                }

LABEL_58:

                goto LABEL_71;
              }

              v38 = [v22 UTF8String];
              if (v38)
              {
                String.init(utf8String:)(v38);
                if (v39)
                {
                  goto LABEL_68;
                }

LABEL_75:
                __break(1u);
                return;
              }

LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

LABEL_59:
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v35)
            {
              [v22 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();

              return;
            }

            goto LABEL_68;
          }

          goto LABEL_49;
        }

        v5 = 1;
LABEL_39:
        specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2, v5);
        if (v25 < 2)
        {
          outlined copy of Data._Representation(a1, a2);
          specialized String.init<A, B>(_validating:as:)(a1, a2, v5);
        }

        return;
      }

      v5 = 0;
    }

    goto LABEL_36;
  }

  if (a3 > 6)
  {
    if (a3 != 7)
    {
      if (a3 != 10)
      {
        goto LABEL_41;
      }

LABEL_36:
      specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2, v5);
      if (v24 < 2)
      {
        outlined copy of Data._Representation(a1, a2);
        specialized String.init<A, B>(_validating:as:)(a1, a2, v5);
      }

      return;
    }

    goto LABEL_23;
  }

  if (a3 == 1)
  {
LABEL_23:
    specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2);
    if (v13 == 1)
    {
      outlined copy of Data._Representation(a1, a2);
      v14 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
      _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5((v14 + 32), *(v14 + 16));
      v16 = v15;

      v13 = v16;
    }

    if (!v13)
    {
      if (one-time initialization token for compatibility1 != -1)
      {
        swift_once();
      }

      if (static String.compatibility1)
      {
        outlined copy of Data._Representation(a1, a2);
        v17 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
        v18 = [objc_allocWithZone(NSString) initWithBytes:v17 + 32 length:*(v17 + 16) encoding:a3];
        if (v18)
        {
          v19 = v18;
          v20 = _objc_isTaggedPointer(v18);
          v21 = v19;
          v22 = v21;
          if (v20)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v21);
            switch(TaggedPointerTag)
            {
              case 0:
                goto LABEL_59;
              case 0x16:
                v36 = [v22 UTF8String];
                if (v36)
                {
                  String.init(utf8String:)(v36);
                  if (!v37)
                  {
                    __break(1u);
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_70;
                  }

LABEL_68:

                  goto LABEL_70;
                }

                __break(1u);
                goto LABEL_74;
              case 2:
                goto LABEL_47;
            }
          }

          if (!__CFStringIsCF())
          {
            goto LABEL_56;
          }

          goto LABEL_58;
        }

LABEL_49:

        return;
      }
    }

    return;
  }

  if (a3 != 4)
  {
    goto LABEL_41;
  }

  specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2);
  if (v6 == 1)
  {
    outlined copy of Data._Representation(a1, a2);
    v7 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
    v8 = (v7 + 32);
    v9 = *(v7 + 16);
    if (specialized Sequence<>.starts<A>(with:)(&_sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA4DataV_Tt1B5Tv_r, v7 + 32, v9))
    {
      v10 = v9 >= 3;
      v9 -= 3;
      if (!v10)
      {
        __break(1u);
      }

      v8 = (v7 + 35);
    }

    static String._tryFromUTF8(_:)();
    if (v11)
    {
    }

    else
    {
      _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v8, v9);
    }
  }
}

uint64_t specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a2 - a1;
    result = specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of makeString #2 <A>(buffer:) in String.init<A>(bytes:encoding:), a1, a2 - a1);
    if ((result & 1) == 0)
    {
LABEL_5:
      result = static String._tryFromUTF8(_:)();
      if (v6)
      {
        return result;
      }

      v7 = v2;
      v8 = v3;
      return _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v7, v8);
    }

    v5 = v3 < 3;
    v3 -= 3;
    if (!v5)
    {
      v2 += 3;
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  result = specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of makeString #2 <A>(buffer:) in String.init<A>(bytes:encoding:), 0, 0);
  if (result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = static String._tryFromUTF8(_:)();
  if (v8)
  {
    return result;
  }

  v7 = 0;
  return _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v7, v8);
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = percentEncoded;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 248))(v2, ObjectType, v3);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t NSCoder.decodeObject<A>(of:forKey:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = String._bridgeToObjectiveCImpl()();
  v3 = __NSCoderDecodeObjectOfClassForKey(v0, ObjCClassFromMetadata, v2, 0);
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(v6, &_sypSgMd);
    return 0;
  }
}

uint64_t _convertErrorToNSError(_:)(void *a1)
{
  v1 = a1;

  return _swift_stdlib_bridgeErrorToNSError();
}

void static _BPlistDecodingFormat.unwrapDate<A>(from:in:for:_:)(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v29 = a5;
  v30 = a3;
  v31 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v16;
  if (v17 >> 60 == 5)
  {
    *a6 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v28 = v17;
    v20 = *(v12 + 16);
    v20(&v27 - v16, v30, v11, v18);
    (v20)(v14, v19, v11);
    if ((*(v8 + 48))(v14, 1, a4) == 1)
    {
      v21 = *(v12 + 8);
      v21(v14, v11);
      _CodingPathNode.path.getter(v31);
      v21(v19, v11);
    }

    else
    {
      (*(v8 + 32))(v10, v14, a4);
      v22 = _CodingPathNode.path.getter(v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v24 = v29;
      *(inited + 56) = a4;
      *(inited + 64) = v24;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v8 + 16))(boxed_opaque_existential_0, v10, a4);
      v32 = v22;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v8 + 8))(v10, a4);
      (*(v12 + 8))(v19, v11);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(&type metadata for Date, v28, v26);

    swift_willThrow();
  }
}

uint64_t BPlistScanner.scanDate(index:objectRangeEndIndex:)(uint64_t result, uint64_t a2)
{
  if (~result + a2 < 8)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v3 = xmmword_181247340;
    return swift_willThrow();
  }

  v4 = v2[2];
  v5 = v2[4];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 - *v2) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v5 - v4) < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*v2 + v2[1] - v5) >= 0)
  {
    v6 = bswap64(*(result + 1));
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    return v7 | 0x5000000000000000;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t closure #1 in _NSSwiftURLComponents._setPercentEncodedQueryItems(_:)(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 15) = 0;
  if (!a2)
  {

    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    return result;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {

    *(a1 + 120) = xmmword_1812476D0;
    return result;
  }

  v78 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = 0;
  v6 = v78;
  v7 = a2 + 32;
  v72 = a2 + 32;
  while (2)
  {
    v8 = (v7 + 32 * v5);
    v10 = *v8;
    v9 = v8[1];
    v11 = v8[3];
    v73 = v8[2];
    if ((v9 & 0x1000000000000000) == 0)
    {
      if ((v9 & 0x2000000000000000) == 0)
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = v10 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = _StringObject.sharedUTF8.getter();
          if (!v12)
          {
            goto LABEL_105;
          }
        }

        if (v13)
        {
          v14 = 0;
          while (1)
          {
            if (*v12 < 0)
            {
LABEL_189:

              goto LABEL_190;
            }

            v15 = *v12;
            if ((v15 - 39) < 9)
            {
              goto LABEL_14;
            }

            if (*v12 <= 0x24u)
            {
              break;
            }

            if (v15 != 37)
            {
              if (v15 == 38)
              {
                goto LABEL_189;
              }

LABEL_30:
              v20 = v15 - 58;
              if ((v15 - 58) <= 0xFFFFFFF5)
              {
                if (v20 > 6)
                {
LABEL_34:
                  if (v15 != 95 && (v15 - 65) >= 0x1A && v15 != 126 && (v15 - 97) >= 0x1A)
                  {
                    goto LABEL_189;
                  }
                }

                else if (((1 << v20) & 0x63) == 0)
                {
                  if (v15 == 61)
                  {
                    goto LABEL_189;
                  }

                  goto LABEL_34;
                }
              }

LABEL_14:
              v16 = v14-- < 1;
              if (v16)
              {
                v14 = 0;
              }

              else if ((v15 - 58) <= 0xFFFFFFF5)
              {
                v17 = v15 - 65;
                v16 = v17 > 0x25;
                v18 = (1 << v17) & 0x3F0000003FLL;
                if (v16 || v18 == 0)
                {
                  goto LABEL_189;
                }
              }

              goto LABEL_11;
            }

            if (v14)
            {
              goto LABEL_189;
            }

            v14 = 2;
LABEL_11:
            ++v12;
            if (!--v13)
            {
              v30 = v14 == 0;
              goto LABEL_72;
            }
          }

          if (v15 != 33 && v15 != 36)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        }

LABEL_105:
        v29 = 1;
LABEL_106:

        if (!v29)
        {
          goto LABEL_190;
        }

        goto LABEL_107;
      }

      v21 = HIBYTE(v9) & 0xF;
      v76 = v10;
      v77 = v9 & 0xFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        goto LABEL_105;
      }

      v22 = 0;
      v23 = &v76;
      while (1)
      {
        if (*v23 < 0)
        {
LABEL_69:
          v29 = 0;
          goto LABEL_106;
        }

        v24 = *v23;
        if ((v24 - 39) < 9)
        {
          goto LABEL_45;
        }

        if (*v23 <= 0x24u)
        {
          break;
        }

        if (v24 != 37)
        {
          if (v24 == 38)
          {
            goto LABEL_69;
          }

LABEL_61:
          v28 = v24 - 58;
          if ((v24 - 58) <= 0xFFFFFFF5)
          {
            if (v28 > 6)
            {
LABEL_65:
              if (v24 != 95 && (v24 - 65) >= 0x1A && v24 != 126 && (v24 - 97) >= 0x1A)
              {
                goto LABEL_69;
              }
            }

            else if (((1 << v28) & 0x63) == 0)
            {
              if (v24 == 61)
              {
                goto LABEL_69;
              }

              goto LABEL_65;
            }
          }

LABEL_45:
          v16 = v22-- < 1;
          if (v16)
          {
            v22 = 0;
          }

          else if ((v24 - 58) <= 0xFFFFFFF5)
          {
            v25 = v24 - 65;
            v16 = v25 > 0x25;
            v26 = (1 << v25) & 0x3F0000003FLL;
            if (v16 || v26 == 0)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_42;
        }

        if (v22)
        {
          goto LABEL_69;
        }

        v22 = 2;
LABEL_42:
        ++v23;
        if (!--v21)
        {
          v30 = v22 == 0;
LABEL_72:
          v29 = v30;
          goto LABEL_106;
        }
      }

      if (v24 != 33 && v24 != 36)
      {
        goto LABEL_61;
      }

      goto LABEL_45;
    }

    v76 = *v8;
    v77 = v9;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v71 = String._bridgeToObjectiveCImpl()();

    v31 = [v71 _fastCharacterContents];
    v32 = v71;
    if (!v31)
    {
      if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v10, v9, 0x80u, 1) & 1) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_107;
    }

    v76 = v10;
    v77 = v9;
    StringProtocol._ephemeralString.getter();
    v70 = String._bridgeToObjectiveCImpl()();

    v69 = [v70 length];
    swift_unknownObjectRelease();
    if (!v69)
    {
      goto LABEL_107;
    }

    v33 = *v31;
    if (v33 > 0x7F)
    {
      goto LABEL_190;
    }

    v34 = 0;
    v35 = v31 + 1;
    v36 = 2 * v69 - 2;
    while (1)
    {
      if (v33 == 37)
      {
        if (v34 || !v36)
        {
          goto LABEL_190;
        }

        v34 = 2;
        goto LABEL_81;
      }

      if (v33 - 39 >= 9 && v33 != 33 && v33 != 36)
      {
        if (v33 == 38)
        {
          goto LABEL_190;
        }

        if ((v33 - 58) <= 0xF5u)
        {
          if (v33 - 58 <= 6)
          {
            if (((1 << (v33 - 58)) & 0x63) != 0)
            {
              goto LABEL_87;
            }

            if (v33 == 61)
            {
              goto LABEL_190;
            }
          }

          if (v33 != 95 && (v33 - 65) >= 0x1Au && v33 != 126 && (v33 - 97) >= 0x1Au)
          {
            goto LABEL_190;
          }
        }
      }

LABEL_87:
      v16 = v34-- < 1;
      if (v16)
      {
        v34 = 0;
      }

      else if ((v33 - 58) <= 0xF5u)
      {
        v38 = v33 - 65;
        if (v38 > 0x25 || ((1 << v38) & 0x3F0000003FLL) == 0)
        {
          goto LABEL_190;
        }
      }

      if (!v36)
      {
        break;
      }

LABEL_81:
      v37 = *v35++;
      LOWORD(v33) = v37;
      v36 -= 2;
      if (v37 >= 0x80)
      {
        goto LABEL_190;
      }
    }

    if (v34)
    {
      goto LABEL_190;
    }

LABEL_107:
    v76 = v10;
    v77 = v9;
    if (!v11)
    {
      v49 = v4;

      goto LABEL_177;
    }

    if ((v11 & 0x1000000000000000) == 0)
    {
      v39 = v73;
      if ((v11 & 0x2000000000000000) == 0)
      {
        if ((v73 & 0x1000000000000000) != 0)
        {
          v40 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v41 = v73 & 0xFFFFFFFFFFFFLL;
          goto LABEL_112;
        }

        v40 = _StringObject.sharedUTF8.getter();
        if (!v40)
        {
LABEL_175:

          goto LABEL_176;
        }

LABEL_112:
        if (!v41)
        {
          goto LABEL_175;
        }

        if (*v40 < 0)
        {
LABEL_187:

          goto LABEL_188;
        }

        v42 = 0;
        v43 = *v40;
        v44 = v40 + 1;
        v45 = v41 - 1;
        while (2)
        {
          if ((v43 - 38) >= 0xA && v43 != 33 && v43 != 36)
          {
            if (v43 == 37)
            {
              if (v42 || !v45)
              {
                goto LABEL_187;
              }

              v42 = 2;
              goto LABEL_123;
            }

            v48 = v43 - 58;
            if ((v43 - 58) <= 0xFFFFFFF5 && (v48 > 6 || ((1 << v48) & 0x6B) == 0) && v43 != 95 && (v43 - 65) >= 0x1A && v43 != 126 && (v43 - 97) >= 0x1A)
            {
              goto LABEL_187;
            }
          }

          v16 = v42-- < 1;
          if (v16)
          {
            v42 = 0;
          }

          else if ((v43 - 58) <= 0xFFFFFFF5)
          {
            v46 = v43 - 65;
            if (v46 > 0x25 || ((1 << v46) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_187;
            }
          }

          if (!v45)
          {
            goto LABEL_167;
          }

LABEL_123:
          v47 = *v44++;
          v43 = v47;
          --v45;
          if (v47 < 0)
          {
            goto LABEL_187;
          }

          continue;
        }
      }

      v50 = HIBYTE(v11) & 0xF;
      v74 = v73;
      v75 = v11 & 0xFFFFFFFFFFFFFFLL;
      if (!v50)
      {
        goto LABEL_175;
      }

      if (v74 < 0)
      {
        goto LABEL_187;
      }

      v42 = 0;
      v51 = v74;
      v52 = 1;
      while (2)
      {
        if ((v51 - 38) >= 0xA && v51 != 33 && v51 != 36)
        {
          if (v51 == 37)
          {
            if (v42 || v50 == v52)
            {
              goto LABEL_187;
            }

            v42 = 2;
            goto LABEL_151;
          }

          v55 = v51 - 58;
          if ((v51 - 58) <= 0xFFFFFFF5 && (v55 > 6 || ((1 << v55) & 0x6B) == 0) && v51 != 95 && (v51 - 65) >= 0x1A && v51 != 126 && (v51 - 97) >= 0x1A)
          {
            goto LABEL_187;
          }
        }

        v16 = v42-- < 1;
        if (v16)
        {
          v42 = 0;
        }

        else if ((v51 - 58) <= 0xFFFFFFF5)
        {
          v53 = v51 - 65;
          if (v53 > 0x25 || ((1 << v53) & 0x3F0000003FLL) == 0)
          {
            goto LABEL_187;
          }
        }

        if (v50 != v52)
        {
LABEL_151:
          v54 = *(&v74 + v52);
          v51 = *(&v74 + v52++);
          if (v54 < 0)
          {
            goto LABEL_187;
          }

          continue;
        }

        break;
      }

LABEL_167:

      if (v42)
      {
        goto LABEL_188;
      }

LABEL_176:
      v49 = v4;
      v74 = 61;
      v75 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v39, v11);
      MEMORY[0x1865CB0E0](v74, v75);

      v10 = v76;
      v9 = v77;
LABEL_177:
      v78 = v6;
      v62 = *(v6 + 16);
      v61 = *(v6 + 24);
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        v6 = v78;
      }

      ++v5;
      *(v6 + 16) = v62 + 1;
      v63 = v6 + 16 * v62;
      *(v63 + 32) = v10;
      *(v63 + 40) = v9;
      v4 = v49;
      v7 = v72;
      if (v5 == v49)
      {
        v76 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v65 = BidirectionalCollection<>.joined(separator:)();
        v67 = v66;

        *(a1 + 120) = v65;
        *(a1 + 128) = v67;
        return result;
      }

      continue;
    }

    break;
  }

  v74 = v73;
  v75 = v11;
  lazy protocol witness table accessor for type String and conformance String();

  StringProtocol._ephemeralString.getter();
  v56 = String._bridgeToObjectiveCImpl()();

  v57 = [v56 _fastCharacterContents];
  v58 = v56;
  if (v57)
  {
    v74 = v73;
    v75 = v11;
    StringProtocol._ephemeralString.getter();
    v59 = String._bridgeToObjectiveCImpl()();

    v60 = [v59 length];
    swift_unknownObjectRelease();
    v39 = v73;
    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v57, v60, 0x40u, 1))
    {
      goto LABEL_176;
    }
  }

  else
  {
    v39 = v73;
    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v73, v11, 0x40u, 1))
    {
      goto LABEL_176;
    }
  }

LABEL_188:

LABEL_190:
  lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
  swift_allocError();
  *v64 = 7;
  swift_willThrow();
}

uint64_t closure #1 in _NSSwiftURLComponents.fragment.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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
      v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v11, v14, 0x40u, 0);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = specialized Sequence.allSatisfy(_:)(a2, a3, 64);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_8:

    *(a1 + 136) = a2;
    *(a1 + 144) = a3;
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

  v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 0x40u, 0);
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
    v21 = 64;

    v16 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:), v20, a2, a3);
    if (!v17)
    {
      v16 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(a2, a3, 0x40u, 0);
    }

    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  *(a1 + 136) = v18;
  *(a1 + 144) = v19;
  return result;
}

uint64_t _FileManagerImpl._extendedAttribute(_:at:followSymlinks:)(char *name, char *path, char a3)
{
  v128 = *MEMORY[0x1E69E9840];
  v6 = getxattr(path, name, 0, 0, 0, (a3 & 1) == 0);
  if (v6 == -1)
  {
    v12 = String.init(cString:)();
    v14 = v13;
    v15 = MEMORY[0x1865CA7A0]();
    if (v15 > 26)
    {
      if (v15 == 27)
      {
        v16 = 263;
        goto LABEL_31;
      }

      if (v15 != 63)
      {
        if (v15 == 102)
        {
          v17 = 0;
          v18 = 256;
          goto LABEL_116;
        }

LABEL_28:
        v16 = 256;
        goto LABEL_31;
      }

      v16 = 258;
    }

    else
    {
      if (v15 == 1)
      {
LABEL_11:
        v16 = 257;
        goto LABEL_31;
      }

      if (v15 != 2)
      {
        if (v15 == 13)
        {
          goto LABEL_11;
        }

        goto LABEL_28;
      }

      v16 = 260;
    }

LABEL_31:
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_186;
    }

    isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v25 = @"NSPOSIXErrorDomain";
    v26 = v25;
    v119 = v12;
    v121 = v16;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v25);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_71;
          }

          goto LABEL_37;
        }

        v30 = [(__CFString *)v26 UTF8String];
        if (!v30)
        {
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        String.init(utf8String:)(v30);
        if (v31)
        {
          goto LABEL_38;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v32)
      {
        goto LABEL_38;
      }

      [(__CFString *)v26 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_71;
    }

LABEL_37:
    LOBYTE(v123) = 0;
    v127[0] = 0;
    if (__CFStringIsCF())
    {
LABEL_38:

      goto LABEL_71;
    }

    v28 = v26;
    String.init(_nativeStorage:)();
    if (!v29 && (v127[0] = [(__CFString *)v28 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_71:
    v42 = POSIXErrorCode.rawValue.getter();
    v43 = objc_allocWithZone(NSError);
    v44 = String._bridgeToObjectiveCImpl()();

    v17 = [v43 initWithDomain:v44 code:v42 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v45 = [v17 domain];
    if (!v45)
    {
LABEL_81:
      v51 = 0;
      v53 = 0xE000000000000000;
      goto LABEL_93;
    }

    v46 = v45;
    v47 = _objc_isTaggedPointer(v45);
    v48 = v46;
    v49 = v48;
    if ((v47 & 1) == 0)
    {
      goto LABEL_77;
    }

    v50 = _objc_getTaggedPointerTag(v48);
    if (v50)
    {
      if (v50 != 22)
      {
        if (v50 == 2)
        {
          MEMORY[0x1EEE9AC00](v50);
          v51 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v53 = v52;

          goto LABEL_93;
        }

LABEL_77:
        LOBYTE(v123) = 0;
        v127[0] = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_81;
        }

        v54 = v49;
        v55 = String.init(_nativeStorage:)();
        if (v56)
        {
          v51 = v55;
          v53 = v56;

          goto LABEL_93;
        }

        v127[0] = [v54 length];
        if (!v127[0])
        {

          goto LABEL_81;
        }

        v51 = String.init(_cocoaString:)();
        v53 = v60;
LABEL_92:

LABEL_93:
        v61 = v26;
        v62 = v61;
        if (!isTaggedPointer)
        {
          goto LABEL_98;
        }

        v63 = _objc_getTaggedPointerTag(v61);
        if (v63)
        {
          if (v63 != 22)
          {
            if (v63 == 2)
            {
              MEMORY[0x1EEE9AC00](v63);
              v64 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v66 = v65;

              goto LABEL_111;
            }

LABEL_98:
            v127[0] = 0;
            if (__CFStringIsCF())
            {
              v64 = v127[0];

              v66 = 0xE000000000000000;
            }

            else
            {
              v67 = v62;
              v68 = String.init(_nativeStorage:)();
              if (v69)
              {
                v64 = v68;
                v66 = v69;
              }

              else
              {
                v127[0] = [(__CFString *)v67 length];
                if (v127[0])
                {
                  v64 = String.init(_cocoaString:)();
                  v66 = v73;
                }

                else
                {

                  v64 = 0;
                  v66 = 0xE000000000000000;
                }
              }
            }

            goto LABEL_111;
          }

          v70 = [(__CFString *)v62 UTF8String];
          if (!v70)
          {
LABEL_181:
            __break(1u);
            goto LABEL_182;
          }

          v71 = String.init(utf8String:)(v70);
          if (v72)
          {
            goto LABEL_106;
          }

          __break(1u);
        }

        _CFIndirectTaggedPointerStringGetContents();
        v71 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v72)
        {
          [(__CFString *)v62 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v64 = v123;
          v66 = v126;
LABEL_111:
          if (v51 == v64 && v53 == v66)
          {
          }

          else
          {
            v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v74 & 1) == 0)
            {
              __break(1u);
              goto LABEL_178;
            }
          }

          v12 = v119;
          v18 = v121;
LABEL_116:

          URL.init(_fileManagerFailableFileURLWithPath:)(v12, v14, v127);

          v75 = *v127;
          v76 = String._bridgeToObjectiveCImpl()();

          if (v75)
          {
            ObjectType = swift_getObjectType();
            v78 = (*(*(&v75 + 1) + 432))(ObjectType, *(&v75 + 1));
            swift_unknownObjectRelease();
            if (v17)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v78 = 0;
            if (v17)
            {
LABEL_118:
              v124 = v17;
              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
              v17 = v17;
              v79 = _getErrorEmbeddedNSError<A>(_:)();

              if (v79)
              {
                goto LABEL_171;
              }

              goto LABEL_174;
            }
          }

          v80 = 0;
          goto LABEL_176;
        }

LABEL_106:
        v64 = v71;
        v66 = v72;

        goto LABEL_111;
      }

      v57 = [v49 UTF8String];
      if (!v57)
      {
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v58 = String.init(utf8String:)(v57);
      if (v59)
      {
LABEL_86:
        v51 = v58;
        v53 = v59;

        goto LABEL_92;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v58 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v59)
    {
      [v49 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v51 = v123;
      v53 = v126;
      goto LABEL_92;
    }

    goto LABEL_86;
  }

  v7 = v6;
  if (v6 < 1)
  {
    return 0;
  }

  v8 = malloc(v6);
  if (!v8)
  {
    __break(1u);
    goto LABEL_180;
  }

  v9 = v8;
  v10 = getxattr(path, name, v8, v7, 0, (a3 & 1) == 0);
  if (v10 != -1)
  {
    if (v10 >= 1)
    {
      *v127 = xmmword_18121D490;
      return specialized Data.init(bytesNoCopy:count:deallocator:)(v9, v10, v127);
    }

    free(v9);
    return 0;
  }

  free(v9);
  v19 = String.init(cString:)();
  v21 = v20;
  v22 = MEMORY[0x1865CA7A0]();
  if (v22 > 26)
  {
    if (v22 == 27)
    {
      v23 = 263;
      goto LABEL_52;
    }

    if (v22 != 63)
    {
      if (v22 == 102)
      {
        v17 = 0;
        v18 = 256;
LABEL_168:

        URL.init(_fileManagerFailableFileURLWithPath:)(v19, v21, v127);

        v114 = *v127;
        v76 = String._bridgeToObjectiveCImpl()();

        if (v114)
        {
          v115 = swift_getObjectType();
          v78 = (*(*(&v114 + 1) + 432))(v115, *(&v114 + 1));
          swift_unknownObjectRelease();
          if (v17)
          {
            goto LABEL_170;
          }
        }

        else
        {
          v78 = 0;
          if (v17)
          {
LABEL_170:
            v125 = v17;
            lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
            v17 = v17;
            v116 = _getErrorEmbeddedNSError<A>(_:)();

            if (v116)
            {
LABEL_171:

LABEL_175:
              v80 = _swift_stdlib_bridgeErrorToNSError();
              goto LABEL_176;
            }

LABEL_174:
            swift_allocError();
            *v117 = v17;
            goto LABEL_175;
          }
        }

        v80 = 0;
LABEL_176:
        [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
        swift_unknownObjectRelease();

        return swift_willThrow();
      }

LABEL_49:
      v23 = 256;
      goto LABEL_52;
    }

    v23 = 258;
  }

  else
  {
    if (v22 == 1)
    {
LABEL_20:
      v23 = 257;
      goto LABEL_52;
    }

    if (v22 != 2)
    {
      if (v22 == 13)
      {
        goto LABEL_20;
      }

      goto LABEL_49;
    }

    v23 = 260;
  }

LABEL_52:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    v33 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v34 = @"NSPOSIXErrorDomain";
    v35 = v34;
    v120 = v19;
    v122 = v23;
    if (!v33)
    {
LABEL_58:
      LOBYTE(v123) = 0;
      v127[0] = 0;
      if (__CFStringIsCF())
      {
LABEL_59:

        goto LABEL_124;
      }

      v37 = v35;
      String.init(_nativeStorage:)();
      if (!v38 && (v127[0] = [(__CFString *)v37 length]) != 0)
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

LABEL_124:
      v81 = POSIXErrorCode.rawValue.getter();
      v82 = objc_allocWithZone(NSError);
      v83 = String._bridgeToObjectiveCImpl()();

      v17 = [v82 initWithDomain:v83 code:v81 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v84 = [v17 domain];
      if (!v84)
      {
LABEL_134:
        v90 = 0;
        v92 = 0xE000000000000000;
        goto LABEL_145;
      }

      v85 = v84;
      v86 = _objc_isTaggedPointer(v84);
      v87 = v85;
      v88 = v87;
      if ((v86 & 1) == 0)
      {
        goto LABEL_130;
      }

      v89 = _objc_getTaggedPointerTag(v87);
      if (v89)
      {
        if (v89 != 22)
        {
          if (v89 == 2)
          {
            MEMORY[0x1EEE9AC00](v89);
            v90 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v92 = v91;

LABEL_145:
            v100 = v35;
            v101 = v100;
            if (!v33)
            {
              goto LABEL_150;
            }

            v102 = _objc_getTaggedPointerTag(v100);
            if (!v102)
            {
              goto LABEL_157;
            }

            if (v102 != 22)
            {
              if (v102 == 2)
              {
                MEMORY[0x1EEE9AC00](v102);
                v103 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v105 = v104;

                goto LABEL_163;
              }

LABEL_150:
              v127[0] = 0;
              if (__CFStringIsCF())
              {
                v103 = v127[0];

                v105 = 0xE000000000000000;
              }

              else
              {
                v106 = v101;
                v107 = String.init(_nativeStorage:)();
                if (v108)
                {
                  v103 = v107;
                  v105 = v108;
                }

                else
                {
                  v127[0] = [(__CFString *)v106 length];
                  if (v127[0])
                  {
                    v103 = String.init(_cocoaString:)();
                    v105 = v112;
                  }

                  else
                  {

                    v103 = 0;
                    v105 = 0xE000000000000000;
                  }
                }
              }

              goto LABEL_163;
            }

            v109 = [(__CFString *)v101 UTF8String];
            if (v109)
            {
              v110 = String.init(utf8String:)(v109);
              if (v111)
              {
                goto LABEL_158;
              }

              __break(1u);
LABEL_157:
              _CFIndirectTaggedPointerStringGetContents();
              v110 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v111)
              {
                [(__CFString *)v101 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v103 = v123;
                v105 = v126;
LABEL_163:
                if (v90 == v103 && v92 == v105)
                {

LABEL_167:
                  v19 = v120;
                  v18 = v122;
                  goto LABEL_168;
                }

                v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v113)
                {
                  goto LABEL_167;
                }

LABEL_178:
                __break(1u);
              }

LABEL_158:
              v103 = v110;
              v105 = v111;

              goto LABEL_163;
            }

            goto LABEL_184;
          }

LABEL_130:
          LOBYTE(v123) = 0;
          v127[0] = 0;
          if (__CFStringIsCF())
          {

            goto LABEL_134;
          }

          v93 = v88;
          v94 = String.init(_nativeStorage:)();
          if (v95)
          {
            v90 = v94;
            v92 = v95;

            goto LABEL_145;
          }

          v127[0] = [v93 length];
          if (!v127[0])
          {

            goto LABEL_134;
          }

          v90 = String.init(_cocoaString:)();
          v92 = v99;
LABEL_144:

          goto LABEL_145;
        }

        v96 = [v88 UTF8String];
        if (!v96)
        {
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        v97 = String.init(utf8String:)(v96);
        if (v98)
        {
LABEL_139:
          v90 = v97;
          v92 = v98;

          goto LABEL_144;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v97 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v98)
      {
        [v88 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v90 = v123;
        v92 = v126;
        goto LABEL_144;
      }

      goto LABEL_139;
    }

    v36 = _objc_getTaggedPointerTag(v34);
    if (!v36)
    {
LABEL_65:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v41)
      {
        goto LABEL_59;
      }

      [(__CFString *)v35 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_124;
    }

    if (v36 != 22)
    {
      if (v36 == 2)
      {
        MEMORY[0x1EEE9AC00](v36);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_124;
      }

      goto LABEL_58;
    }

    v39 = [(__CFString *)v35 UTF8String];
    if (v39)
    {
      String.init(utf8String:)(v39);
      if (v40)
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_65;
    }

LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

LABEL_186:
  _StringGuts.grow(_:)(22);

  v118 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v118);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *NSReallocateObjectArray(void *ptr, unint64_t a2)
{
  if (a2 >> 61)
  {
    v11 = [NSString stringWithFormat:@"*** attempt to allocate id buffer with too large of a count (%lu) -- possibly data is corrupt", a2];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v11 userInfo:0]);
  }

  if (ptr)
  {
    v4 = malloc_size(ptr);
    v5 = 8 * a2;
    v6 = malloc_good_size(8 * a2);
    v7 = malloc_default_zone();
    v8 = malloc_type_zone_calloc(v7, 1uLL, v6, 0x9DA5E11CuLL);
    v9 = v8;
    if (v8)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      memmove(v8, ptr, v4);
      if (v6 > v4)
      {
        bzero(&v9[v4], v6 - v4);
      }

      free(ptr);
    }

    return v9;
  }

  else
  {

    return NSAllocateObjectArray(a2);
  }
}

uint64_t _PlistKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_sSimMd, &_sSimMR, &_sSimmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E6530];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type Int and conformance Int();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E6530], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_sSumMd, &_sSumMR, &_sSummMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E6810];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type UInt and conformance UInt();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E6810], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_ss6UInt32VmMd, &_ss6UInt32VmMR, &_ss6UInt32VmmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E7668];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E7668], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_ss5Int64VmMd, &_ss5Int64VmMR, &_ss5Int64VmmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E7360];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type Int64 and conformance Int64();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E7360], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_ss6UInt64VmMd, &_ss6UInt64VmMR, &_ss6UInt64VmmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E76D8];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E76D8], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_ss4Int8VmMd, &_ss4Int8VmMR, &_ss4Int8VmmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E7230];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type Int8 and conformance Int8();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E7230], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_ss5Int16VmMd, &_ss5Int16VmMR, &_ss5Int16VmmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E7290];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type Int16 and conformance Int16();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E7290], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_ss5Int32VmMd, &_ss5Int32VmMR, &_ss5Int32VmmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E72F0];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type Int32 and conformance Int32();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E72F0], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_ss5UInt8VmMd, &_ss5UInt8VmMR, &_ss5UInt8VmmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E7508];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type UInt8 and conformance UInt8();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E7508], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_ss6UInt16VmMd, &_ss6UInt16VmMR, &_ss6UInt16VmmMd);
    return swift_willThrow();
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E75F8];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      return (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 88);
      v67 = lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E75F8], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }
}

uint64_t _PlistDecoder.unwrapData<A>(from:for:_:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v43 = a5;
  v44 = a3;
  v11 = *v5;
  v12 = *(a4 - 8);
  v41 = v6;
  v42 = v12;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = *(v11 + 80);
  v22 = *(v11 + 88);
  if ((*(v22 + 40))(a1, v21, v22, v18))
  {
    v39 = a2;
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    *v23 = &type metadata for Data;
    v25 = *(v45 + 16);
    v25(v20, v44, v14);
    v25(v16, v20, v14);
    v26 = v42;
    if ((*(v42 + 48))(v16, 1, a4) == 1)
    {
      v27 = *(v45 + 8);
      v27(v16, v14);
      v28 = _CodingPathNode.path.getter(v39);
      v27(v20, v14);
    }

    else
    {
      v31 = *(v26 + 32);
      v44 = v24;
      v32 = v40;
      v31(v40, v16, a4);
      v33 = _CodingPathNode.path.getter(v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v35 = v43;
      *(inited + 56) = a4;
      *(inited + 64) = v35;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v26 + 16))(boxed_opaque_existential_0, v32, a4);
      v46 = v33;
      specialized Array.append<A>(contentsOf:)(inited);
      v37 = v32;
      v24 = v44;
      (*(v26 + 8))(v37, a4);
      (*(v45 + 8))(v20, v14);
      v28 = v46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
  }

  else
  {
    v29 = v7[3];
    v30 = *(v22 + 64);
    swift_unknownObjectRetain();
    v28 = v30(a1, v29, a2, v44, a4, v43, v21, v22);
    swift_unknownObjectRelease();
  }

  return v28;
}

uint64_t BPlistScanner.scanData(rawTypeMarker:index:objectRangeEndIndex:)(int a1, uint64_t a2, unint64_t a3)
{
  v5 = a2 + 1;
  v12 = a2 + 1;
  if ((~a1 & 0xF) != 0)
  {
    v8 = a1 & 0xF;
    v9 = a3 - v5;
    if ((a3 - v5) < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(&v12, a3, 1635017060, 0xE400000000000000);
    if (v4)
    {
      return result;
    }

    v8 = result;
    v5 = v12;
    v9 = a3 - v12;
    if ((a3 - v12) < 0)
    {
      goto LABEL_8;
    }
  }

  if (v9 >= v8)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v5 - *(v3 + 40);
    *(v10 + 24) = v8;
    return v10 | 0x4000000000000000;
  }

LABEL_8:
  lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
  swift_allocError();
  *v11 = xmmword_181247350;
  return swift_willThrow();
}

uint64_t BPlistMap.Value.dataValue<A>(in:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a3;
  v33 = a6;
  v37 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v18;
  if (a4 >> 60 == 4)
  {
    v21 = *(a1 + 64);
    *&v22 = MEMORY[0x1EEE9AC00](v17);
    *(&v33 - 4) = closure #1 in BPlistMap.Value.dataValue<A>(in:for:_:);
    *(&v33 - 3) = 0;
    *(&v33 - 1) = v22;

    os_unfair_lock_lock((v21 + 40));
    v23 = v35;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v21 + 16));
    os_unfair_lock_unlock((v21 + 40));
    if (v23)
    {

      __break(1u);
    }

    else
    {

      return v36;
    }
  }

  else
  {
    v35 = a4;
    v25 = *(v13 + 16);
    v25(&v33 - v18, v34, v12, v19);
    (v25)(v15, v20, v12);
    if ((*(v9 + 48))(v15, 1, a5) == 1)
    {
      v26 = *(v13 + 8);
      v26(v15, v12);
      _CodingPathNode.path.getter(v37);
      v26(v20, v12);
    }

    else
    {
      (*(v9 + 32))(v11, v15, a5);
      v27 = _CodingPathNode.path.getter(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v29 = v33;
      *(inited + 56) = a5;
      *(inited + 64) = v29;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v9 + 16))(boxed_opaque_existential_0, v11, a5);
      v36 = v27;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v9 + 8))(v11, a5);
      (*(v13 + 8))(v20, v12);
    }

    v31 = v35;
    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5Tm(&type metadata for Data, v31, BPlistMap.Value.debugDataTypeDescription.getter, v32);

    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in BPlistMap.Value.dataValue<A>(in:for:_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(a1, &a1[a2]);
      v8 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v6 = __DataStorage.init(bytes:length:)(a1, a2);
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v8 = v6 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v8 = v6 | 0x4000000000000000;
      }
    }
  }

  else
  {
    result = 0;
    v8 = 0xC000000000000000;
  }

  *a3 = result;
  a3[1] = v8;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanBool()()
{
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  if (v3 != v2)
  {
    v4 = v2 + 1;
    v5 = *v2;
    *(v0 + 3) = v2 + 1;
    if (v5 == 116)
    {
      if (v3 >= v4)
      {
        if (v3 - v4 > 2)
        {
          v6 = *v4 == 30066 && v2[3] == 101;
          if (v6)
          {
            *(v0 + 3) = v2 + 4;
            v1 = v0;
            JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), (v2 + 4));
            v0 = *(v0 + 6);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_36:
              v28 = *(v0 + 2);
              v27 = *(v0 + 3);
              if (v28 >= v27 >> 1)
              {
                v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v0);
              }

              *(v0 + 2) = v28 + 1;
              v29 = &v0[8 * v28];
              v30 = 3;
LABEL_44:
              *(v29 + 4) = v30;
              *(v1 + 6) = v0;
              return;
            }

LABEL_55:
            v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 2) + 1, 1, v0);
            goto LABEL_36;
          }

          v7 = *(v0 + 1);
          v8 = *(v0 + 2);
          if ((((v7 + v8 - v3) | &v4[-v7]) & 0x8000000000000000) == 0)
          {
            if (v4 < v3 && *v4 == 114)
            {
              if (v2[2] == 117)
              {
                v9 = 2 * (v2[3] != 101);
              }

              else
              {
                v9 = 1;
              }
            }

            else
            {
              v9 = 0;
            }

            v15 = &v4[v9];
            *(v0 + 3) = &v4[v9];
            if (&v4[v9] < v3)
            {
              v16 = *v15;
              v17 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v15, v7, v8);
              v19 = v18;
              v21 = v20;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v10 = 0xD000000000000019;
              *(v10 + 8) = 0x8000000181481BB0;
              *(v10 + 16) = v16;
LABEL_33:
              *(v10 + 24) = v17;
              *(v10 + 32) = v19;
              *(v10 + 40) = v21;
              v11 = 1;
              goto LABEL_34;
            }

            goto LABEL_52;
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_17:
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v10 = 1;
        *(v10 + 8) = 0u;
        *(v10 + 24) = 0u;
        *(v10 + 40) = 0;
        v11 = 12;
LABEL_34:
        *(v10 + 48) = v11;
        swift_willThrow();
        return;
      }
    }

    else
    {
      if (v5 == 102)
      {
        if (v3 >= v4)
        {
          if (v3 - v4 > 3)
          {
            if (*v4 == 1702063201)
            {
              *(v0 + 3) = v2 + 5;
              v1 = v0;
              JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), (v2 + 5));
              v0 = *(v0 + 6);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 2) + 1, 1, v0);
              }

              v32 = *(v0 + 2);
              v31 = *(v0 + 3);
              if (v32 >= v31 >> 1)
              {
                v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v0);
              }

              *(v0 + 2) = v32 + 1;
              v29 = &v0[8 * v32];
              v30 = 4;
              goto LABEL_44;
            }

            v12 = *(v0 + 1);
            v13 = *(v0 + 2);
            if ((((v12 + v13 - v3) | &v4[-v12]) & 0x8000000000000000) == 0)
            {
              if (v4 < v3 && *v4 == 97)
              {
                if (v2[2] == 108)
                {
                  if (v2[3] == 115)
                  {
                    v6 = v2[4] == 101;
                    v14 = 3;
                    if (v6)
                    {
                      v14 = 0;
                    }
                  }

                  else
                  {
                    v14 = 2;
                  }
                }

                else
                {
                  v14 = 1;
                }
              }

              else
              {
                v14 = 0;
              }

              v1 = &v4[v14];
              *(v0 + 3) = &v4[v14];
              _StringGuts.grow(_:)(20);

              strcpy(v33, "in expected ");
              BYTE5(v33[1]) = 0;
              HIWORD(v33[1]) = -5120;
              MEMORY[0x1865CB0E0](0x6E61656C6F6F62, 0xE700000000000000);
              v0 = v33;
              MEMORY[0x1865CB0E0](0x65756C617620, 0xE600000000000000);
              if (v1 < v3)
              {
                v22 = v33[0];
                v23 = v33[1];
                v24 = *v1;
                v17 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v1, v12, v13);
                v19 = v25;
                v21 = v26;
                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v10 = v22;
                *(v10 + 8) = v23;
                *(v10 + 16) = v24;
                goto LABEL_33;
              }

              goto LABEL_54;
            }

LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          goto LABEL_17;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_50;
  }

  __break(1u);
}