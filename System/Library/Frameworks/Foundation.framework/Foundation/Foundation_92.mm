uint64_t closure #1 in closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, const std::__fs::filesystem::path *a3, uint64_t *a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, char a9)
{
  v152 = a7;
  v159 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v28 = @"NSCocoaErrorDomain";
    v29 = v28;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v28);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v152 = v9;

            goto LABEL_99;
          }

          goto LABEL_22;
        }

        v152 = v9;
        v38 = [(__CFString *)v29 UTF8String];
        if (!v38)
        {
          __break(1u);
          goto LABEL_236;
        }

        String.init(utf8String:)(v38);
        if (v39)
        {
          goto LABEL_23;
        }

        __break(1u);
      }

      v152 = v9;
      v155 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v40)
      {
        goto LABEL_23;
      }

      [(__CFString *)v29 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_99;
    }

LABEL_22:
    v152 = v9;
    LOBYTE(v153) = 0;
    v157 = 0;
    LOBYTE(v155) = 0;
    v156 = 0;
    if (__CFStringIsCF())
    {
LABEL_23:

      goto LABEL_99;
    }

    v36 = v29;
    String.init(_nativeStorage:)();
    if (!v37 && (v157 = [(__CFString *)v36 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_99:
    v57 = objc_allocWithZone(NSError);
    v58 = String._bridgeToObjectiveCImpl()();

    v59 = [v57 initWithDomain:v58 code:514 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v60 = [v59 domain];
    if (!v60)
    {
LABEL_109:
      v49 = 0;
      v32 = 0xE000000000000000;
      goto LABEL_155;
    }

    v61 = v60;
    v62 = _objc_isTaggedPointer(v60);
    v63 = v61;
    v10 = v63;
    if ((v62 & 1) == 0)
    {
      goto LABEL_105;
    }

    v64 = _objc_getTaggedPointerTag(v63);
    if (v64)
    {
      if (v64 != 22)
      {
        if (v64 == 2)
        {
          MEMORY[0x1EEE9AC00](v64);
          v49 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v32 = v65;

LABEL_155:
          v106 = v29;
          v94 = v106;
          if (!isTaggedPointer)
          {
            goto LABEL_160;
          }

          v107 = _objc_getTaggedPointerTag(v106);
          if (!v107)
          {
            goto LABEL_167;
          }

          if (v107 != 22)
          {
            if (v107 == 2)
            {
              v10 = &v151;
              MEMORY[0x1EEE9AC00](v107);
              v108 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v110 = v109;

              goto LABEL_173;
            }

LABEL_160:
            LOBYTE(v153) = 0;
            v157 = 0;
            LOBYTE(v155) = 0;
            v156 = 0;
            if (__CFStringIsCF())
            {
              v108 = v157;

              v110 = 0xE000000000000000;
            }

            else
            {
              v10 = v94;
              v111 = String.init(_nativeStorage:)();
              if (v112)
              {
                v108 = v111;
                v110 = v112;
              }

              else
              {
                v157 = [(__CFString *)v10 length];
                if (v157)
                {
                  v108 = String.init(_cocoaString:)();
                  v110 = v116;
                }

                else
                {

                  v108 = 0;
                  v110 = 0xE000000000000000;
                }
              }
            }

LABEL_173:
            if (v49 == v108 && v32 == v110)
            {
            }

            else
            {
              v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v31 & 1) == 0)
              {
                __break(1u);
                v117 = [(__CFString *)v94 lengthOfBytesUsingEncoding:4, v151];
                MEMORY[0x1EEE9AC00](v117);
                v118 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v98 = v119;
                v120 = HIBYTE(v119) & 0xF;
                if ((v119 & 0x2000000000000000) == 0)
                {
                  v120 = v118 & 0xFFFFFFFFFFFFLL;
                }

                if (!v120)
                {

LABEL_182:
                  v96 = String.init(_cocoaString:)();
                  v98 = v121;
                  goto LABEL_183;
                }

                v96 = v118;
                goto LABEL_149;
              }
            }

            return swift_willThrow();
          }

          v113 = [(__CFString *)v94 UTF8String];
          if (v113)
          {
            v114 = String.init(utf8String:)(v113);
            if (v115)
            {
LABEL_168:
              v108 = v114;
              v110 = v115;

              goto LABEL_173;
            }

            __break(1u);
LABEL_167:
            v155 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v114 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v115)
            {
              [(__CFString *)v94 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v108 = v153;
              v110 = v154;
              goto LABEL_173;
            }

            goto LABEL_168;
          }

LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }

LABEL_105:
        LOBYTE(v153) = 0;
        v157 = 0;
        LOBYTE(v155) = 0;
        v156 = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_109;
        }

        v66 = v10;
        v67 = String.init(_nativeStorage:)();
        if (v68)
        {
          v49 = v67;
          v32 = v68;

          goto LABEL_155;
        }

        v157 = [(__CFString *)v66 length];
        if (!v157)
        {

          goto LABEL_109;
        }

        v49 = String.init(_cocoaString:)();
        v32 = v105;
LABEL_154:

        goto LABEL_155;
      }

      v69 = [(__CFString *)v10 UTF8String];
      if (!v69)
      {
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      v70 = String.init(utf8String:)(v69);
      if (v71)
      {
LABEL_114:
        v49 = v70;
        v32 = v71;

        goto LABEL_154;
      }

      __break(1u);
    }

    v155 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v70 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v71)
    {
      [(__CFString *)v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v49 = v153;
      v32 = v154;
      goto LABEL_154;
    }

    goto LABEL_114;
  }

  unlink(a1);
  rename(a2, a1, v18);
  if (!v20)
  {
    rename(a3, a2, v19);
    if (!v21)
    {
      unlink(a1);
      return cleanupTemporaryDirectory(at:)(a5, a6);
    }
  }

  v151 = a8;
  LODWORD(v10) = MEMORY[0x1865CA7A0]();
  unlink(a1);
  unlink(a3);
  v23 = *a4;
  v22 = a4[1];

  cleanupTemporaryDirectory(at:)(v23, v22);

  cleanupTemporaryDirectory(at:)(a5, a6);
  if ((a9 & 1) == 0)
  {
    if (v10 > 27)
    {
      if (v10 <= 62)
      {
        v31 = v151;
        if (v10 != 28)
        {
          if (v10 == 30)
          {
            v34 = 642;
            goto LABEL_76;
          }

          goto LABEL_75;
        }
      }

      else
      {
        v31 = v151;
        if (v10 == 63)
        {
          v34 = 514;
          goto LABEL_76;
        }

        if (v10 != 69)
        {
          if (v10 == 102)
          {
            v32 = 0;
            v33 = 512;
            goto LABEL_223;
          }

LABEL_75:
          v34 = 512;
LABEL_76:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_243;
          }

          LODWORD(v49) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v50 = @"NSPOSIXErrorDomain";
          v10 = v50;
          v151 = v34;
          if (v49)
          {
            v51 = _objc_getTaggedPointerTag(v50);
            if (v51)
            {
              if (v51 != 22)
              {
                if (v51 == 2)
                {
                  MEMORY[0x1EEE9AC00](v51);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_133;
                }

                goto LABEL_82;
              }

              v54 = [(__CFString *)v10 UTF8String];
              if (!v54)
              {
LABEL_238:
                __break(1u);
                goto LABEL_239;
              }

              String.init(utf8String:)(v54);
              if (v55)
              {
                goto LABEL_83;
              }

              __break(1u);
            }

            v155 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v56)
            {
              goto LABEL_83;
            }

            [(__CFString *)v10 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_133;
          }

LABEL_82:
          LOBYTE(v153) = 0;
          v157 = 0;
          LOBYTE(v155) = 0;
          v156 = 0;
          if (__CFStringIsCF())
          {
LABEL_83:

            goto LABEL_133;
          }

          v52 = v10;
          String.init(_nativeStorage:)();
          if (!v53 && (v157 = [(__CFString *)v52 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_133:
          v87 = POSIXErrorCode.rawValue.getter();
          v88 = objc_allocWithZone(NSError);
          v89 = String._bridgeToObjectiveCImpl()();

          v32 = [v88 initWithDomain:v89 code:v87 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v90 = [v32 domain];
          if (!v90)
          {
LABEL_143:
            v96 = 0;
            v98 = 0xE000000000000000;
            goto LABEL_184;
          }

          v91 = v90;
          v92 = _objc_isTaggedPointer(v90);
          v93 = v91;
          v94 = v93;
          if ((v92 & 1) == 0)
          {
            goto LABEL_139;
          }

          v95 = _objc_getTaggedPointerTag(v93);
          if (v95)
          {
            if (v95 != 22)
            {
              if (v95 == 2)
              {
                MEMORY[0x1EEE9AC00](v95);
                v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v98 = v97;

                goto LABEL_184;
              }

LABEL_139:
              LOBYTE(v153) = 0;
              v157 = 0;
              LOBYTE(v155) = 0;
              v156 = 0;
              if (__CFStringIsCF())
              {

                goto LABEL_143;
              }

              v99 = v94;
              v100 = String.init(_nativeStorage:)();
              if (v101)
              {
                v96 = v100;
                v98 = v101;

                goto LABEL_184;
              }

              v157 = [(__CFString *)v99 length];
              if (!v157)
              {

                goto LABEL_143;
              }

              goto LABEL_182;
            }

            v102 = [(__CFString *)v94 UTF8String];
            if (!v102)
            {
LABEL_242:
              __break(1u);
              goto LABEL_243;
            }

            v103 = String.init(utf8String:)(v102);
            if (v104)
            {
LABEL_148:
              v96 = v103;
              v98 = v104;
LABEL_149:

LABEL_183:
LABEL_184:
              v122 = v10;
              v123 = v122;
              if (!v49)
              {
                goto LABEL_189;
              }

              v124 = _objc_getTaggedPointerTag(v122);
              if (v124)
              {
                if (v124 != 22)
                {
                  if (v124 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v124);
                    v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v127 = v126;

                    goto LABEL_218;
                  }

LABEL_189:
                  LOBYTE(v153) = 0;
                  v157 = 0;
                  LOBYTE(v155) = 0;
                  v156 = 0;
                  IsCF = __CFStringIsCF();
                  if (IsCF)
                  {
                    v125 = v157;
                    if (!v157)
                    {

                      v127 = 0xE000000000000000;
                      goto LABEL_218;
                    }

                    if (v156 == 1)
                    {
                      if (v153)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v135 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_217;
                    }

                    if (v155)
                    {
                      if (v153 != 1)
                      {
                        IsCF = [(__CFString *)v123 lengthOfBytesUsingEncoding:4];
                      }

                      MEMORY[0x1EEE9AC00](IsCF);
                      v137 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v127 = v138;
                      v139 = HIBYTE(v138) & 0xF;
                      if ((v138 & 0x2000000000000000) == 0)
                      {
                        v139 = v137 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v139)
                      {
                        v125 = v137;

                        goto LABEL_218;
                      }
                    }
                  }

                  else
                  {
                    v129 = v123;
                    v130 = String.init(_nativeStorage:)();
                    if (v131)
                    {
                      v125 = v130;
                      v127 = v131;

                      goto LABEL_218;
                    }

                    v157 = [(__CFString *)v129 length];
                    if (!v157)
                    {

                      v125 = 0;
                      v127 = 0xE000000000000000;
                      goto LABEL_218;
                    }
                  }

                  v135 = String.init(_cocoaString:)();
LABEL_217:
                  v125 = v135;
                  v127 = v136;
LABEL_218:
                  if (v96 == v125 && v98 == v127)
                  {
                  }

                  else
                  {
                    v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v140 & 1) == 0)
                    {
                      goto LABEL_234;
                    }
                  }

                  v33 = v151;
LABEL_223:

                  v141 = v152;
                  URL.init(_fileManagerFailableFileURLWithPath:)(v152, v31, &v157);
                  outlined consume of PathOrURL(v141, v31, 0);
                  v142 = v157;
                  v143 = v158;
                  v144 = String._bridgeToObjectiveCImpl()();
                  if (v142)
                  {
                    ObjectType = swift_getObjectType();
                    v146 = (*(v143 + 432))(ObjectType, v143);
                    swift_unknownObjectRelease();
                    if (v32)
                    {
LABEL_225:
                      v153 = v32;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v32 = v32;
                      v147 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v147)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v149 = v32;
                      }

                      v148 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_231;
                    }
                  }

                  else
                  {
                    v146 = 0;
                    if (v32)
                    {
                      goto LABEL_225;
                    }
                  }

                  v148 = 0;
LABEL_231:
                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  return swift_willThrow();
                }

                v132 = [(__CFString *)v123 UTF8String];
                if (!v132)
                {
LABEL_239:
                  __break(1u);
LABEL_240:
                  __break(1u);
                  goto LABEL_241;
                }

                v133 = String.init(utf8String:)(v132);
                if (v134)
                {
LABEL_201:
                  v125 = v133;
                  v127 = v134;

                  goto LABEL_218;
                }

                __break(1u);
              }

              v155 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v133 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v134)
              {
                [(__CFString *)v123 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v125 = v153;
                v127 = v154;
                goto LABEL_218;
              }

              goto LABEL_201;
            }

            __break(1u);
          }

          v155 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v103 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v104)
          {
            [(__CFString *)v94 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v96 = v153;
            v98 = v154;
            goto LABEL_183;
          }

          goto LABEL_148;
        }
      }

      v34 = 640;
      goto LABEL_76;
    }

    if (v10 > 12)
    {
      v31 = v151;
      if (v10 != 13)
      {
        if (v10 == 17)
        {
          v34 = 516;
          goto LABEL_76;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v31 = v151;
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v34 = 4;
          goto LABEL_76;
        }

        goto LABEL_75;
      }
    }

    v34 = 513;
    goto LABEL_76;
  }

  if (v10 <= 27)
  {
    if (v10 > 12)
    {
      if (v10 != 13)
      {
        if (v10 == 17)
        {
          v25 = 516;
          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

    else if (v10 != 1)
    {
      if (v10 == 2)
      {
        v25 = 4;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v25 = 513;
    goto LABEL_61;
  }

  if (v10 <= 62)
  {
    if (v10 != 28)
    {
      if (v10 == 30)
      {
        v25 = 642;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

LABEL_49:
    v25 = 640;
    goto LABEL_61;
  }

  switch(v10)
  {
    case '?':
      v25 = 514;
      goto LABEL_61;
    case 'E':
      goto LABEL_49;
    case 'f':
      swift_unknownObjectRetain();
      v24 = 0;
      v25 = 512;
      v26 = v151;
LABEL_125:
      v81 = swift_getObjectType();
      (*(v26 + 240))(v81, v26);
      v82 = String._bridgeToObjectiveCImpl()();

      v83 = (*(v26 + 432))(v81, v26);
      outlined consume of PathOrURL(v152, v26, 1);
      if (v24)
      {
        v157 = v24;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v24 = v24;
        v84 = _getErrorEmbeddedNSError<A>(_:)();

        if (v84)
        {
        }

        else
        {
          swift_allocError();
          *v86 = v24;
        }

        v85 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v85 = 0;
      }

      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      return swift_willThrow();
  }

LABEL_60:
  v25 = 512;
LABEL_61:
  swift_unknownObjectRetain();
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    v41 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v42 = @"NSPOSIXErrorDomain";
    v10 = v42;
    if (!v41)
    {
LABEL_67:
      LOBYTE(v153) = 0;
      v157 = 0;
      LOBYTE(v155) = 0;
      v156 = 0;
      if (!__CFStringIsCF())
      {
        v44 = v10;
        String.init(_nativeStorage:)();
        v26 = v151;
        if (v45)
        {

          goto LABEL_121;
        }

        v157 = [(__CFString *)v44 length];
        if (v157)
        {
          String.init(_cocoaString:)();
        }

        else
        {
        }

        goto LABEL_120;
      }

      goto LABEL_118;
    }

    v43 = _objc_getTaggedPointerTag(v42);
    if (!v43)
    {
      v155 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v48)
      {
        [(__CFString *)v10 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_120;
      }

LABEL_118:

      goto LABEL_120;
    }

    if (v43 != 22)
    {
      if (v43 == 2)
      {
        MEMORY[0x1EEE9AC00](v43);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_120:
        v26 = v151;
LABEL_121:
        v72 = POSIXErrorCode.rawValue.getter();
        v73 = objc_allocWithZone(NSError);
        v74 = String._bridgeToObjectiveCImpl()();

        v24 = [v73 initWithDomain:v74 code:v72 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v75 = [v24 domain];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)(v75);
        v78 = v77;

        if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v78 == v79)
        {

          goto LABEL_125;
        }

        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v80)
        {
          goto LABEL_125;
        }

        __break(1u);
LABEL_234:
        __break(1u);
      }

      goto LABEL_67;
    }

    v46 = [(__CFString *)v10 UTF8String];
    v26 = v151;
    if (v46)
    {
      String.init(utf8String:)(v46);
      if (v47)
      {

        goto LABEL_121;
      }

      goto LABEL_240;
    }

    goto LABEL_237;
  }

LABEL_243:
  v157 = 0;
  v158 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v157 = 0xD000000000000014;
  v158 = 0x80000001814813E0;
  LODWORD(v153) = v10;
  v150 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v150);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _BridgedStoredNSError.errorUserInfo.getter(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = v1;
  swift_unknownObjectRetain();
  v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!v3)
  {
    v5 = [v2 count];
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v7 = static _DictionaryStorage.allocate(capacity:)();
      v8 = *(v7 + 48);
      v9 = *(v7 + 56);
      v10 = v7;

      v11 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v8, v9, v2, v6);
      if (v11 < 0 || v6 < v11)
      {
        goto LABEL_72;
      }

      v4 = v10;
      v10[2] = v11;
      if (!v11)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = v11 - 1;
      v13 = v10 + 8;
      while (1)
      {
        while (1)
        {
          if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
          {
            goto LABEL_10;
          }

          v18 = (v4[6] + 16 * v12);
          v19 = *v18;
          v20 = v18[1];

          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
          v23 = v22;

          if ((v23 & 1) == 0)
          {
            break;
          }

          v24 = v4[6] + 16 * v12;

          outlined destroy of String(v24);
          __swift_destroy_boxed_opaque_existential_1(v4[7] + 32 * v12);
          v25 = v4[2];
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v26)
          {
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v4[2] = v27;

LABEL_10:
          if (--v12 < 0)
          {
            goto LABEL_18;
          }
        }

        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (v12 < v21)
        {
          v4 = v10;
          *(v10[6] + 16 * v21) = *(v10[6] + 16 * v12);
          v14 = v10[7];
          v15 = (v14 + 32 * v12);
          v16 = v15[1];
          v17 = (v14 + 32 * v21);
          *v17 = *v15;
          v17[1] = v16;
          goto LABEL_10;
        }

        v4 = v10;
        if (v21 == v12)
        {
          goto LABEL_10;
        }

        v28 = v10[6];
        v29 = (v28 + 16 * v21);
        v30 = (v28 + 16 * v12);
        v31 = *v29;
        v32 = v29[1];
        v33 = v30[1];
        *v29 = *v30;
        v29[1] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = v10[7];
        v35 = (v34 + 32 * v21);
        v36 = (v34 + 32 * v12);
        outlined init with take of Any(v35, &v96);
        outlined init with take of Any(v36, v35);
        outlined init with take of Any(&v96, v36);
        if (v12 < 0)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v4 = MEMORY[0x1E69E7CC8];
    goto LABEL_22;
  }

  v4 = v3;
LABEL_19:

LABEL_22:
  v37 = 0;
  v91 = v4;
  v38 = v4 + 8;
  v39 = 1 << *(v4 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v4[8];
  v42 = (v39 + 63) >> 6;
  for (i = MEMORY[0x1E69E7CC8]; ; i = v63)
  {
    if (!v41)
    {
      if (v42 <= v37 + 1)
      {
        v47 = v37 + 1;
      }

      else
      {
        v47 = v42;
      }

      v48 = v47 - 1;
      while (1)
      {
        v46 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v46 >= v42)
        {
          v41 = 0;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          goto LABEL_38;
        }

        v41 = v38[v46];
        ++v37;
        if (v41)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v46 = v37;
LABEL_37:
    v49 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v50 = v49 | (v46 << 6);
    v51 = (v91[6] + 16 * v50);
    v53 = *v51;
    v52 = v51[1];
    outlined init with copy of Any(v91[7] + 32 * v50, v92);
    *&v93 = v53;
    *(&v93 + 1) = v52;
    outlined init with take of Any(v92, &v94);

    v48 = v46;
LABEL_38:
    v96 = v93;
    v97[0] = v94;
    v97[1] = v95;
    v54 = *(&v93 + 1);
    if (!*(&v93 + 1))
    {

      return i;
    }

    v55 = v96;
    outlined init with take of Any(v97, &v93);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v54);
    v59 = *(i + 16);
    v60 = (v58 & 1) == 0;
    v26 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v26)
    {
      goto LABEL_69;
    }

    v62 = v58;
    if (*(i + 24) >= v61)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, isUniquelyReferenced_nonNull_native);
    v63 = i;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v54);
    if ((v62 & 1) != (v64 & 1))
    {
      goto LABEL_74;
    }

    if (v62)
    {
LABEL_26:
      v44 = v57;

      v45 = (*(v63 + 56) + 32 * v44);
      __swift_destroy_boxed_opaque_existential_1(v45);
      outlined init with take of Any(&v93, v45);
      goto LABEL_27;
    }

LABEL_46:
    *(v63 + 8 * (v57 >> 6) + 64) |= 1 << v57;
    v65 = (*(v63 + 48) + 16 * v57);
    *v65 = v55;
    v65[1] = v54;
    outlined init with take of Any(&v93, (*(v63 + 56) + 32 * v57));
    v66 = *(v63 + 16);
    v26 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v26)
    {
      goto LABEL_70;
    }

    *(v63 + 16) = v67;
LABEL_27:
    v37 = v48;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v63 = i;
    if (v58)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  v84 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v68 = static _DictionaryStorage.copy(original:)();
  v63 = v68;
  if (!*(i + 16))
  {
LABEL_65:

    v57 = v84;
    if (v62)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  v69 = (v68 + 64);
  v70 = (i + 64);
  v71 = ((1 << *(v63 + 32)) + 63) >> 6;
  if (v63 != i || v69 >= &v70[8 * v71])
  {
    memmove(v69, v70, 8 * v71);
  }

  v72 = 0;
  *(v63 + 16) = *(i + 16);
  v73 = 1 << *(i + 32);
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  else
  {
    v74 = -1;
  }

  v75 = v74 & *(i + 64);
  v76 = (v73 + 63) >> 6;
  v85 = v76;
  if (v75)
  {
    do
    {
      v77 = __clz(__rbit64(v75));
      v86 = (v75 - 1) & v75;
LABEL_63:
      v80 = v77 | (v72 << 6);
      v87 = 16 * v80;
      v81 = (*(i + 48) + 16 * v80);
      v90 = v81[1];
      v88 = *v81;
      v89 = 32 * v80;
      outlined init with copy of Any(*(i + 56) + 32 * v80, v92);
      v82 = (*(v63 + 48) + v87);
      *v82 = v88;
      v82[1] = v90;
      outlined init with take of Any(v92, (*(v63 + 56) + v89));

      v76 = v85;
      v75 = v86;
    }

    while (v86);
  }

  v78 = v72;
  while (1)
  {
    v72 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

    if (v72 >= v76)
    {
      goto LABEL_65;
    }

    v79 = *(i + 64 + 8 * v72);
    ++v78;
    if (v79)
    {
      v77 = __clz(__rbit64(v79));
      v86 = (v79 - 1) & v79;
      goto LABEL_63;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  v8 = result;
  if ((result & 1) == 0)
  {
    result = 0;
    goto LABEL_5;
  }

  if (a1)
  {
    result = rmdir(a1);
LABEL_5:
    *a5 = result;
    *(a5 + 4) = (v8 & 1) == 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.withMutableFileSystemRepresentation<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, int a11)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if (result)
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v19 = a7 & 1;
    v20 = a1;
  }

  else
  {
    v19 = a7 & 1;
    v20 = 0;
  }

  closure #1 in createTemporaryFile(at:inPath:prefix:options:variant:)(v20, a5, a6, v19, a8, a10, a11, &v22);
  outlined consume of PathOrURL(a5, a6, a7 & 1);
  if (!v11)
  {
    v21 = v23;
    *a9 = v22;
    *(a9 + 16) = v21;
  }
}

void specialized static NSData._writeData(toPath:data:options:stringEncodingAttributeData:reportProgress:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v8 = v7;
  v121 = a7;
  v123 = a4;
  v124 = a1;
  v137 = *MEMORY[0x1E69E9840];
  v13 = objc_autoreleasePoolPush();
  v14 = [a3 bytes];
  v15 = [a3 length];
  if (([a3 length] & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v16 = [a3 length];
  if (v15 < 0 || v16 < v15)
  {
    goto LABEL_154;
  }

  v17 = v14 + v15;
  if (!v14)
  {
    v17 = 0;
  }

  v120 = v17;
  isTaggedPointer = _objc_isTaggedPointer(0x1EEF114F0uLL);
  v19 = @"com.apple.TextEncoding";
  v20 = v19;
  v126 = a2;
  v122 = v13;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v19);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v117 = v20;
          v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v24 = v23;
          v125 = v7;

          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v125 = v7;
      v28 = [(__CFString *)v20 UTF8String];
      if (!v28)
      {
        __break(1u);
        goto LABEL_164;
      }

      v29 = String.init(utf8String:)(v28);
      if (v30)
      {
LABEL_20:
        v22 = v29;
        v24 = v30;

        goto LABEL_25;
      }

      __break(1u);
    }

    v129 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v29 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    v125 = v7;
    if (!v30)
    {
      [(__CFString *)v20 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v22 = v127;
      v24 = v128;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_11:
  LOBYTE(v127) = 0;
  v131[0] = 0;
  LOBYTE(v129) = 0;
  v130 = 0;
  v125 = v7;
  if (__CFStringIsCF())
  {

LABEL_15:
    v22 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_25;
  }

  v25 = v20;
  v26 = String.init(_nativeStorage:)();
  if (v27)
  {
    v22 = v26;
    v24 = v27;

    goto LABEL_25;
  }

  v131[0] = [(__CFString *)v25 length];
  if (!v131[0])
  {

    goto LABEL_15;
  }

  v22 = String.init(_cocoaString:)();
  v24 = v31;
LABEL_25:
  v13 = &v132;
  v133 = v22;
  v134 = v24;
  v135 = a5;
  v136 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd);
  a3 = static _DictionaryStorage.allocate(capacity:)();
  v8 = v133;
  a2 = v134;
  v32 = v135;
  v33 = v136;
  outlined copy of Data._Representation(a5, a6);

  outlined copy of Data._Representation(v32, v33);
  outlined destroy of (String, Data)(&v133);
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  if (v35)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  a3[(v34 >> 6) + 8] |= 1 << v34;
  v36 = (a3[6] + 16 * v34);
  *v36 = v8;
  v36[1] = a2;
  v37 = (a3[7] + 16 * v34);
  *v37 = v32;
  v37[1] = v33;
  v38 = a3[2];
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
LABEL_156:
    __break(1u);
LABEL_157:
    v41 = String.UTF8View._foreignCount()();
    goto LABEL_33;
  }

  a3[2] = v40;
  LODWORD(a2) = v123;
  if (v123)
  {
    MEMORY[0x1EEE9AC00](v34);
    v112[2] = v124;
    v112[3] = v126;
    v113 = 0;
    v114 = v123;
    LOBYTE(v115) = v121 & 1;
    v116 = v14;
    v117 = v120;
    v118 = a3;
    specialized String.withFileSystemRepresentation<A>(_:)(partial apply for closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:), v112, v124, v126);

LABEL_152:
    objc_autoreleasePoolPop(v122);
    return;
  }

  v8 = v126;
  v13 = v124;
  if ((v126 & 0x1000000000000000) != 0)
  {
    goto LABEL_157;
  }

  if ((v126 & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(v126) & 0xF;
  }

  else
  {
    v41 = v124 & 0xFFFFFFFFFFFFLL;
  }

LABEL_33:
  v42 = 3 * v41;
  if ((v41 * 3) >> 64 != (3 * v41) >> 63)
  {
    __break(1u);
LABEL_159:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v111 = swift_slowAlloc();

      specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v111, a6, v13, v8, a2, v13, v8, 0, v121 & 1, v14, v120, a3);
      MEMORY[0x1865D2690](v111, -1, -1);
      goto LABEL_151;
    }

    goto LABEL_36;
  }

  if (v42 < -1)
  {
    __break(1u);
    goto LABEL_162;
  }

  a6 = v42 + 1;

  if (v42 >= 1024)
  {
    goto LABEL_159;
  }

LABEL_36:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v45 = v119 - v44;
  if (String._fileSystemRepresentation(into:)(v119 - v44, a6, v13, v8))
  {
    v46 = v125;
    closure #1 in writeToFileNoAux(path:buffer:options:attributes:reportProgress:)(v45, a2, v13, v8, 0, v121 & 1, v14, v120, a3);
    if (!v46)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  v47 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v48 = @"NSCocoaErrorDomain";
  v49 = v48;
  v119[1] = v119;
  if (!v47)
  {
    goto LABEL_44;
  }

  v50 = _objc_getTaggedPointerTag(v48);
  switch(v50)
  {
    case 0:
LABEL_55:
      v129 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v57)
      {
        [(__CFString *)v49 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x16:
      v55 = [(__CFString *)v49 UTF8String];
      if (v55)
      {
        String.init(utf8String:)(v55);
        if (v56)
        {
          goto LABEL_69;
        }

        __break(1u);
        goto LABEL_55;
      }

LABEL_164:

      __break(1u);
LABEL_165:

      __break(1u);
      goto LABEL_166;
    case 2:
      MEMORY[0x1EEE9AC00](v50);
      v117 = v49;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_72;
  }

LABEL_44:
  LOBYTE(v127) = 0;
  v131[0] = 0;
  LOBYTE(v129) = 0;
  v130 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v53 = v49;
    String.init(_nativeStorage:)();
    if (v54 || (v131[0] = [(__CFString *)v53 length]) == 0)
    {

      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v52 = v131[0];
  if (!v131[0])
  {
LABEL_69:

    goto LABEL_72;
  }

  if (v130 != 1)
  {
    if (v129)
    {
      if (v127 == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        v115 = v49;
        v116 = v131;
        LODWORD(v117) = 1536;
        v118 = v52;
      }

      else
      {
        v58 = [(__CFString *)v49 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v58);
        v115 = v49;
        v116 = v131;
        LODWORD(v117) = 134217984;
        v118 = v59;
      }

      v60 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v62 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v62 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        goto LABEL_69;
      }
    }

LABEL_71:
    String.init(_cocoaString:)();
    goto LABEL_72;
  }

  if (v127)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_72:
  v63 = objc_allocWithZone(NSError);
  v64 = String._bridgeToObjectiveCImpl()();

  v65 = [v63 initWithDomain:v64 code:514 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v66 = [v65 domain];
  if (!v66)
  {
    goto LABEL_83;
  }

  v67 = v66;
  v68 = _objc_isTaggedPointer(v66);
  v69 = v67;
  v70 = v69;
  if ((v68 & 1) == 0)
  {
LABEL_78:
    LOBYTE(v127) = 0;
    v131[0] = 0;
    LOBYTE(v129) = 0;
    v130 = 0;
    v75 = __CFStringIsCF();
    if (v75)
    {
      v76 = v131[0];
      if (v131[0])
      {
        if (v130 == 1)
        {
          if (v127)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v85 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_109;
        }

        if (v129)
        {
          if (v127 == 1)
          {
            v125 = v119;
            MEMORY[0x1EEE9AC00](v75);
            v115 = v70;
            v116 = v131;
            LODWORD(v117) = 1536;
            v118 = v76;
          }

          else
          {
            v87 = [(__CFString *)v70 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v87);
            v115 = v70;
            v116 = v131;
            LODWORD(v117) = 134217984;
            v118 = v88;
          }

          v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v74 = v84;
          v89 = HIBYTE(v84) & 0xF;
          if ((v84 & 0x2000000000000000) == 0)
          {
            v89 = v83 & 0xFFFFFFFFFFFFLL;
          }

          if (v89)
          {
            v72 = v83;
            goto LABEL_92;
          }
        }

LABEL_108:
        v85 = String.init(_cocoaString:)();
LABEL_109:
        v72 = v85;
        v74 = v86;
        goto LABEL_110;
      }
    }

    else
    {
      v77 = v70;
      v78 = String.init(_nativeStorage:)();
      if (v79)
      {
        v72 = v78;
        v74 = v79;

        goto LABEL_111;
      }

      v131[0] = [(__CFString *)v77 length];
      if (v131[0])
      {
        goto LABEL_108;
      }
    }

LABEL_83:
    v72 = 0;
    v74 = 0xE000000000000000;
    goto LABEL_111;
  }

  v71 = _objc_getTaggedPointerTag(v69);
  if (!v71)
  {
    goto LABEL_90;
  }

  if (v71 != 22)
  {
    if (v71 == 2)
    {
      MEMORY[0x1EEE9AC00](v71);
      v117 = v70;
      v72 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v74 = v73;

LABEL_111:
      v90 = v49;
      v91 = v90;
      if (!v47)
      {
        goto LABEL_116;
      }

      v92 = _objc_getTaggedPointerTag(v90);
      if (!v92)
      {
        goto LABEL_127;
      }

      if (v92 != 22)
      {
        if (v92 == 2)
        {
          MEMORY[0x1EEE9AC00](v92);
          v117 = v91;
          v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v95 = v94;

          goto LABEL_145;
        }

LABEL_116:
        LOBYTE(v127) = 0;
        v131[0] = 0;
        LOBYTE(v129) = 0;
        v130 = 0;
        v96 = __CFStringIsCF();
        if (v96)
        {
          v93 = v131[0];
          if (!v131[0])
          {

            v95 = 0xE000000000000000;
            goto LABEL_145;
          }

          if (v130 == 1)
          {
            if (v127)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v103 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_144;
          }

          if (v129)
          {
            if (v127 == 1)
            {
              MEMORY[0x1EEE9AC00](v96);
              v115 = v91;
              v116 = v131;
              LODWORD(v117) = 1536;
              v118 = v93;
            }

            else
            {
              v105 = [(__CFString *)v91 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v105);
              v115 = v91;
              v116 = v131;
              LODWORD(v117) = 134217984;
              v118 = v106;
            }

            v107 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v95 = v108;
            v109 = HIBYTE(v108) & 0xF;
            if ((v108 & 0x2000000000000000) == 0)
            {
              v109 = v107 & 0xFFFFFFFFFFFFLL;
            }

            if (v109)
            {
              v93 = v107;

              goto LABEL_145;
            }
          }
        }

        else
        {
          v97 = v91;
          v98 = String.init(_nativeStorage:)();
          if (v99)
          {
            v93 = v98;
            v95 = v99;

            goto LABEL_145;
          }

          v131[0] = [(__CFString *)v97 length];
          if (!v131[0])
          {

            v93 = 0;
            v95 = 0xE000000000000000;
            goto LABEL_145;
          }
        }

        v103 = String.init(_cocoaString:)();
LABEL_144:
        v93 = v103;
        v95 = v104;
LABEL_145:
        if (v72 == v93 && v74 == v95)
        {

LABEL_149:
          swift_willThrow();
LABEL_150:
          swift_willThrow();
LABEL_151:

          goto LABEL_152;
        }

        v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v110)
        {
          goto LABEL_149;
        }

LABEL_162:
        __break(1u);
      }

      v100 = [(__CFString *)v91 UTF8String];
      if (v100)
      {
        v101 = String.init(utf8String:)(v100);
        if (v102)
        {
          goto LABEL_128;
        }

        __break(1u);
LABEL_127:
        v129 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v101 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v102)
        {
          [(__CFString *)v91 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v93 = v127;
          v95 = v128;
          goto LABEL_145;
        }

LABEL_128:
        v93 = v101;
        v95 = v102;

        goto LABEL_145;
      }

      goto LABEL_165;
    }

    goto LABEL_78;
  }

  v80 = [(__CFString *)v70 UTF8String];
  if (v80)
  {
    v81 = String.init(utf8String:)(v80);
    if (v82)
    {
LABEL_91:
      v72 = v81;
      v74 = v82;
LABEL_92:

LABEL_110:
      goto LABEL_111;
    }

    __break(1u);
LABEL_90:
    v129 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v81 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v82)
    {
      [(__CFString *)v70 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v72 = v127;
      v74 = v128;
      goto LABEL_110;
    }

    goto LABEL_91;
  }

LABEL_166:

  __break(1u);
}

uint64_t outlined destroy of (String, Data)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DataVtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized DataProtocol.firstRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchData();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v5 = dispatch thunk of Collection.count.getter();
  if (v5)
  {
    v6 = v5;
    lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
    if (dispatch thunk of RandomAccessCollection.distance(from:to:)() >= v6)
    {
      for (i = v10; i < v11 && dispatch thunk of RandomAccessCollection.distance(from:to:)() >= v6; i = v9)
      {
        if (specialized DataProtocol.matches<A>(_:from:)(a1, i, a3))
        {
          result = dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          if (v9 >= i)
          {
            return i;
          }

          __break(1u);
          return result;
        }

        dispatch thunk of Collection.index(after:)();
      }
    }
  }

  return 0;
}

uint64_t specialized DataProtocol.firstRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v11 = a4;
  lazy protocol witness table accessor for type DispatchData.Region and conformance DispatchData.Region();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (!result)
  {
    return 0;
  }

  v14 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v14 < v21)
  {
    goto LABEL_39;
  }

  v15 = v20;
  if (v20 < v10 || v14 < v20 || v21 < v10)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v21, v20))
  {
    goto LABEL_40;
  }

  v16 = result;
  if (v21 - v20 < result || v20 >= v21)
  {
    return 0;
  }

  while (1)
  {
    v18 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v18 < v21 || v21 < v10 || v15 < v10 || v18 < v15)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v21, v15))
    {
      goto LABEL_35;
    }

    if (v21 - v15 < v16)
    {
      return 0;
    }

    v11 = a4;
    v10 = a5;
    result = specialized DataProtocol.matches<A>(_:from:)(a1, v15, a3, a4, a5, a6, a8);
    if (result)
    {
      break;
    }

    if (__OFADD__(a5, a4))
    {
      goto LABEL_36;
    }

    if (v15 < a5 || v15 >= a5 + a4)
    {
      goto LABEL_37;
    }

    if (v21 == ++v15)
    {
      return 0;
    }
  }

  v19 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    goto LABEL_41;
  }

  if (__OFADD__(a5, a4))
  {
    goto LABEL_42;
  }

  if (v19 >= a5 && a5 + a4 >= v19)
  {
    if (v19 < v15)
    {
      goto LABEL_44;
    }

    return v15;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.firstRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (!result)
  {
    return 0;
  }

  v11 = v14;
  if (__OFSUB__(v15, v14))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v12 = result;
    if (v15 - v14 < result || v14 >= v15)
    {
      return 0;
    }

    while (1)
    {
      if (__OFSUB__(v15, v11))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v15 - v11 < v12)
      {
        return 0;
      }

      result = specialized DataProtocol.matches<A>(_:from:)(a1, v11, a3, a4, a6);
      if (result)
      {
        break;
      }

      if (v15 == ++v11)
      {
        return 0;
      }
    }

    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    if (v11 + v12 >= v11)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>, &_ss15ContiguousArrayVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (!result)
  {
    return 0;
  }

  v11 = v14;
  if (__OFSUB__(v15, v14))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v12 = result;
    if (v15 - v14 < result || v14 >= v15)
    {
      return 0;
    }

    while (1)
    {
      if (__OFSUB__(v15, v11))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v15 - v11 < v12)
      {
        return 0;
      }

      result = specialized DataProtocol.matches<A>(_:from:)(a1, v11, a3, a4, a6);
      if (result)
      {
        break;
      }

      if (v15 == ++v11)
      {
        return 0;
      }
    }

    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    if (v11 + v12 >= v11)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.firstRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (**a10)(char *, char *, uint64_t))
{
  v40 = a8;
  v36 = a10;
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v44 = a3;
  v45 = a4;
  v38 = a4;
  v39 = a5;
  v46 = a5;
  v47 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (!result)
  {
    return result;
  }

  v21 = v43;
  if (__OFSUB__(v43, v42))
  {
    goto LABEL_27;
  }

  v22 = result;
  if (v43 - v42 < result || v42 >= v43)
  {
    return 0;
  }

  v40 = a6 >> 1;
  v24 = (v35 + 8);
  v36 = (v35 + 32);
  v37 = v42;
  v32 = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33 = v43;
  v25 = v42;
  v34 = result;
LABEL_10:
  if (__OFSUB__(v21, v25))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (v21 - v25 < v22)
  {
    return 0;
  }

  result = dispatch thunk of Collection.startIndex.getter();
  v35 = v25;
  while (1)
  {
    if (v37 < v39 || v25 >= v40)
    {
      __break(1u);
      goto LABEL_26;
    }

    v26 = *(v38 + v25);
    v27 = dispatch thunk of Collection.subscript.read();
    v29 = *v28;
    v27(v41, 0);
    if (v26 != v29)
    {
      v30 = *v24;
LABEL_20:
      v30(v19, AssociatedTypeWitness);
      result = 0;
      v22 = v34;
      v25 = v35 + 1;
      v21 = v33;
      if (v35 + 1 != v33)
      {
        goto LABEL_10;
      }

      return result;
    }

    dispatch thunk of Collection.index(after:)();
    v30 = *v24;
    (*v24)(v19, AssociatedTypeWitness);
    (*v36)(v19, v16, AssociatedTypeWitness);
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    result = (v30)(v16, AssociatedTypeWitness);
    if (v31)
    {
      break;
    }

    if (v40 == ++v25)
    {
      goto LABEL_20;
    }
  }

  v30(v19, AssociatedTypeWitness);
  result = v35;
  if (__OFADD__(v35, v34))
  {
    goto LABEL_28;
  }

  if (v35 + v34 < v35)
  {
    goto LABEL_29;
  }

  return result;
}

uint64_t specialized DataProtocol.firstRange<A, B>(of:in:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15EmptyCollectionVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type EmptyCollection<UInt8> and conformance EmptyCollection<A>, &_ss15EmptyCollectionVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  if ((dispatch thunk of Collection.count.getter() & 0x8000000000000000) == 0 || v2 >= v3)
  {
    return 0;
  }

  result = dispatch thunk of Collection.startIndex.getter();
  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.firstRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RepeatedVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Repeated<UInt8> and conformance Repeated<A>, &_ss8RepeatedVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (result)
  {
    if (v14 > a3 || (v8 = v13, v13 > a3) || (v14 | v13) < 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = v14 - v13;
    if (v14 - v13 >= result && v14 > v13)
    {
      while (v10 >= v9)
      {
        result = specialized DataProtocol.matches<A>(_:from:)(a1, v8, a3, a4);
        if (result)
        {
          v12 = v8 + v9;
          if (__OFADD__(v8, v9))
          {
            goto LABEL_20;
          }

          if (v12 < 0 || v12 > a3)
          {
            goto LABEL_21;
          }

          if (v12 < v8)
          {
            goto LABEL_22;
          }

          return v8;
        }

        ++v8;
        if (!--v10)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t specialized DataProtocol.firstRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v10 = dispatch thunk of Collection.count.getter();
  if (v10)
  {
    v11 = v10;
    v12 = v15;
    if (specialized RandomAccessCollection<>.distance(from:to:)(v15, v16, a3, a4) >= v10 && v15 < v16)
    {
      while (specialized RandomAccessCollection<>.distance(from:to:)(v12, v16, a3, a4) >= v11)
      {
        if (specialized DataProtocol.matches<A>(_:from:)(a1, v12, a3, a4, a5, a7))
        {
          result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v12, v11, a3, a4);
          if (result >= v12)
          {
            return v12;
          }

          __break(1u);
          return result;
        }

        if (v16 == ++v12)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t specialized DataProtocol.firstRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (result)
  {
    v8 = result;
    v9 = v13;
    v10 = v14 - v13 < result || v14 <= v13;
    if (v10)
    {
      return 0;
    }

    else
    {
      v11 = result + v13;
      v12 = ~v13 + v14;
      while (1)
      {
        result = specialized DataProtocol.matches<A>(_:from:)(a1, v9, a3, a4);
        if (result)
        {
          break;
        }

        if (++v9 >= v14)
        {
          return 0;
        }

        ++v11;
        result = 0;
        v10 = v12-- < v8;
        if (v10)
        {
          return result;
        }
      }

      if (v11 < v9)
      {
        __break(1u);
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}

{
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v7 = dispatch thunk of Collection.count.getter();
  if (v7)
  {
    v8 = v7;
    if (specialized RandomAccessCollection<>.distance(from:to:)(v14, v15, a3, a4) >= v7 && v14 < v15)
    {
      if (a3)
      {
        v10 = a4 - a3;
      }

      else
      {
        v10 = 0;
      }

      v11 = v14;
      while (1)
      {
        if (specialized RandomAccessCollection<>.distance(from:to:)(v11, v15, a3, a4) < v8)
        {
          return 0;
        }

        result = specialized DataProtocol.matches<A>(_:from:)(a1, v11, a3, a4);
        if (result)
        {
          break;
        }

        if (v14 < 0 || v11 >= v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (v15 == ++v11)
        {
          return 0;
        }
      }

      v13 = v11 + v8;
      if (__OFADD__(v11, v8))
      {
        goto LABEL_24;
      }

      if (v13 < 0 || v10 < v13)
      {
LABEL_25:
        __break(1u);
      }

      else if (v13 >= v11)
      {
        return v11;
      }

      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t DataProtocol.firstRange<A, B>(of:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v53 = a4;
  v54 = a6;
  v45 = a7;
  v46 = a2;
  v49 = a5;
  v51 = *(a5 + 8);
  v52 = a1;
  v8 = *(*(v51 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v39 - v12;
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for Range();
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v48 = v8;
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v22 = dispatch thunk of Collection.count.getter();
  if (v22 && (v23 = v22, dispatch thunk of RandomAccessCollection.distance(from:to:)() >= v22))
  {
    v46 = v19;
    (*(v44 + 16))(v18, v21, AssociatedTypeWitness);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v26 = (v44 + 40);
      while (dispatch thunk of RandomAccessCollection.distance(from:to:)() >= v23)
      {
        if (DataProtocol.matches<A>(_:from:)(v52, v18, a3, v53, v49, v54))
        {
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v29 = dispatch thunk of static Comparable.<= infix(_:_:)();
          result = (*(v47 + 8))(v21, v46);
          if (v29)
          {
            v30 = v44;
            v31 = *(v44 + 32);
            v32 = v40;
            v31(v40, v18, AssociatedTypeWitness);
            v33 = TupleTypeMetadata2;
            v31(&v32[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
            v35 = v41;
            v34 = v42;
            (*(v41 + 16))(v42, v32, v33);
            v54 = *(v33 + 48);
            v36 = v45;
            v31(v45, v34, AssociatedTypeWitness);
            v37 = *(v30 + 8);
            v37(&v34[v54], AssociatedTypeWitness);
            (*(v35 + 32))(v34, v32, v33);
            v38 = v46;
            v31(&v36[*(v46 + 36)], &v34[*(v33 + 48)], AssociatedTypeWitness);
            v37(v34, AssociatedTypeWitness);
            return (*(v47 + 56))(v36, 0, 1, v38);
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        dispatch thunk of Collection.index(after:)();
        (*v26)(v18, v15, AssociatedTypeWitness);
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }
    }

    (*(v44 + 8))(v18, AssociatedTypeWitness);
    v27 = v46;
    v28 = v47;
    (*(v47 + 8))(v21, v46);
    return (*(v28 + 56))(v45, 1, 1, v27);
  }

  else
  {
    v24 = v47;
    (*(v47 + 8))(v21, v19);
    return (*(v24 + 56))(v45, 1, 1, v19);
  }
}

uint64_t specialized DataProtocol.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchData();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v5 = dispatch thunk of Collection.count.getter();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  if (result < v6)
  {
    return 0;
  }

  if (__OFSUB__(0, v6))
  {
    __break(1u);
    goto LABEL_12;
  }

  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v8 = v10;
  if (v10 < v11)
  {
    return 0;
  }

  while ((specialized DataProtocol.matches<A>(_:from:)(a1, v8, a3) & 1) == 0)
  {
    lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v8 = v9;
    if (v9 < v11)
    {
      return 0;
    }
  }

  result = dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  if (v9 >= v8)
  {
    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  lazy protocol witness table accessor for type DispatchData.Region and conformance DispatchData.Region();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (result)
  {
    v14 = a5 + a4;
    if (__OFADD__(a5, a4))
    {
LABEL_32:
      __break(1u);
    }

    else if (v14 >= v21 && v20 >= a5 && v14 >= v20 && v21 >= a5)
    {
      if (!__OFSUB__(v21, v20))
      {
        v15 = result;
        if (v21 - v20 < result)
        {
          return 0;
        }

        if (!__OFSUB__(0, result))
        {
          v16 = v21 - result;
          if (!__OFADD__(v21, -result))
          {
            if (v16 >= a5 && v14 >= v16)
            {
              while (v16 >= v20)
              {
                result = specialized DataProtocol.matches<A>(_:from:)(a1, v16, a3, a4, a5, a6, a8);
                if (result)
                {
                  goto LABEL_24;
                }

                if (__OFSUB__(v16--, 1))
                {
                  __break(1u);
LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

                if (__OFADD__(a5, a4))
                {
                  goto LABEL_31;
                }

                if (v16 < a5 || v16 >= a5 + a4)
                {
                  __break(1u);
LABEL_24:
                  v19 = v16 + v15;
                  if (__OFADD__(v16, v15))
                  {
                    goto LABEL_38;
                  }

                  if (__OFADD__(a5, a4))
                  {
                    goto LABEL_39;
                  }

                  if (v19 < a5 || a5 + a4 < v19)
                  {
                    goto LABEL_40;
                  }

                  if (v19 < v16)
                  {
                    goto LABEL_41;
                  }

                  return v16;
                }
              }

              return 0;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            return result;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_34;
  }

  return 0;
}

uint64_t specialized DataProtocol.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (result)
  {
    if (__OFSUB__(v15, v14))
    {
      __break(1u);
    }

    else
    {
      if (v15 - v14 < result)
      {
        return 0;
      }

      if (!__OFSUB__(0, result))
      {
        v11 = v15 - result;
        if (!__OFADD__(v15, -result))
        {
          v12 = result;
          while (v11 >= v14)
          {
            result = specialized DataProtocol.matches<A>(_:from:)(a1, v11, a3, a4, a6);
            if (result)
            {
              goto LABEL_14;
            }

            if (__OFSUB__(v11--, 1))
            {
              __break(1u);
LABEL_14:
              if (__OFADD__(v11, v12))
              {
                goto LABEL_20;
              }

              if (v11 + v12 < v11)
              {
                goto LABEL_21;
              }

              return v11;
            }
          }

          return 0;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return 0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>, &_ss15ContiguousArrayVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (result)
  {
    if (__OFSUB__(v15, v14))
    {
      __break(1u);
    }

    else
    {
      if (v15 - v14 < result)
      {
        return 0;
      }

      if (!__OFSUB__(0, result))
      {
        v11 = v15 - result;
        if (!__OFADD__(v15, -result))
        {
          v12 = result;
          while (v11 >= v14)
          {
            result = specialized DataProtocol.matches<A>(_:from:)(a1, v11, a3, a4, a6);
            if (result)
            {
              goto LABEL_14;
            }

            if (__OFSUB__(v11--, 1))
            {
              __break(1u);
LABEL_14:
              if (__OFADD__(v11, v12))
              {
                goto LABEL_20;
              }

              if (v11 + v12 < v11)
              {
                goto LABEL_21;
              }

              return v11;
            }
          }

          return 0;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return 0;
}

uint64_t specialized DataProtocol.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (**a10)(char *, uint64_t))
{
  v46 = a2;
  v47 = a8;
  v41 = a10;
  v16 = *(*(*(a9 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v37 - v20;
  v52 = a3;
  v53 = a4;
  v44 = a4;
  v45 = a5;
  v54 = a5;
  v55 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (!result)
  {
    return 0;
  }

  v23 = v50;
  if (__OFSUB__(v51, v50))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v51 - v50 < result)
  {
    return 0;
  }

  if (__OFSUB__(0, result))
  {
    goto LABEL_25;
  }

  v37[0] = result;
  v24 = v51 - result;
  if (__OFADD__(v51, -result))
  {
    goto LABEL_26;
  }

  v46 = v16;
  v47 = a7;
  v25 = a6 >> 1;
  v39 = (v17 + 32);
  v41 = (v17 + 8);
  v37[1] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43 = a1;
  v38 = v50;
  v40 = v25;
  v26 = v42;
  while (2)
  {
    if (v24 < v23)
    {
      return 0;
    }

    result = dispatch thunk of Collection.startIndex.getter();
    v27 = v24;
    while (1)
    {
      if (v24 < v45 || v27 >= v25)
      {
        __break(1u);
        goto LABEL_24;
      }

      v28 = v24;
      v29 = *(v44 + v27);
      v30 = dispatch thunk of Collection.subscript.read();
      v32 = *v31;
      v30(v49, 0);
      if (v29 != v32)
      {
        break;
      }

      dispatch thunk of Collection.index(after:)();
      v33 = *v41;
      v34 = AssociatedTypeWitness;
      (*v41)(v21, AssociatedTypeWitness);
      (*v39)(v21, v26, v34);
      dispatch thunk of Collection.endIndex.getter();
      swift_getAssociatedConformanceWitness();
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      result = (v33)(v26, v34);
      v24 = v28;
      if (v35)
      {
        goto LABEL_20;
      }

      ++v27;
      v25 = v40;
      if (v40 == v27)
      {
        goto LABEL_17;
      }
    }

    v33 = *v41;
    v24 = v28;
    v25 = v40;
LABEL_17:
    v33(v21, AssociatedTypeWitness);
    v36 = __OFSUB__(v24--, 1);
    v23 = v38;
    if (!v36)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_20:
  result = (v33)(v21, AssociatedTypeWitness);
  if (__OFADD__(v24, v37[0]))
  {
    goto LABEL_27;
  }

  if (v24 + v37[0] >= v24)
  {
    return v24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.lastRange<A, B>(of:in:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15EmptyCollectionVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type EmptyCollection<UInt8> and conformance EmptyCollection<A>, &_ss15EmptyCollectionVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  if ((dispatch thunk of Collection.count.getter() & 0x8000000000000000) == 0 || v3 < v2)
  {
    return 0;
  }

  result = dispatch thunk of Collection.startIndex.getter();
  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RepeatedVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Repeated<UInt8> and conformance Repeated<A>, &_ss8RepeatedVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (result)
  {
    if (v14 > a3 || v13 > a3 || (v14 | v13) < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = result;
      if (v14 - v13 < result)
      {
        return 0;
      }

      if (!__OFSUB__(0, result))
      {
        v9 = v14 - result;
        if (!__OFADD__(v14, -result))
        {
          if ((v9 & 0x8000000000000000) == 0 && v9 <= a3)
          {
            v10 = v14 + ~result;
            while (v9 >= v13)
            {
              result = specialized DataProtocol.matches<A>(_:from:)(a1, v9, a3, a4);
              if (result)
              {
                goto LABEL_18;
              }

              v11 = v9-- < 1;
              if (v11 || v10 >= a3)
              {
                __break(1u);
LABEL_18:
                v12 = v9 + v8;
                if (__OFADD__(v9, v8))
                {
                  goto LABEL_27;
                }

                if (v12 < 0 || v12 > a3)
                {
                  goto LABEL_28;
                }

                if (v12 < v9)
                {
                  goto LABEL_29;
                }

                return v9;
              }
            }

            return 0;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  return 0;
}

uint64_t specialized DataProtocol.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v10 = dispatch thunk of Collection.count.getter();
  if (v10)
  {
    v11 = v10;
    result = specialized RandomAccessCollection<>.distance(from:to:)(v15, v16, a3, a4);
    if (result >= v11)
    {
      if (__OFSUB__(0, v11))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }

      v13 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v16, -v11, a3);
      while (v13 >= v15)
      {
        if (specialized DataProtocol.matches<A>(_:from:)(a1, v13, a3, a4, a5, a7))
        {
          goto LABEL_12;
        }

        if (__OFSUB__(v13--, 1))
        {
          __break(1u);
LABEL_12:
          result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v13, v11, a3);
          if (result < v13)
          {
            goto LABEL_15;
          }

          return v13;
        }
      }
    }
  }

  return 0;
}

uint64_t specialized DataProtocol.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of Collection.count.getter();
  if (!result)
  {
    return 0;
  }

  v8 = v11;
  if (v11 - v10 < result)
  {
    return 0;
  }

  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    v9 = v11 - result;
    if (v11 - result < v10)
    {
      return 0;
    }

    while (1)
    {
      result = specialized DataProtocol.matches<A>(_:from:)(a1, v9, a3, a4);
      if (result)
      {
        break;
      }

      --v9;
      --v8;
      if (v9 < v10)
      {
        return 0;
      }
    }

    if (v8 >= v9)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

{
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v7 = dispatch thunk of Collection.count.getter();
  if (v7)
  {
    v8 = v7;
    result = specialized RandomAccessCollection<>.distance(from:to:)(v14, v15, a3, a4);
    if (result >= v8)
    {
      if (__OFSUB__(0, v8))
      {
        __break(1u);
      }

      else
      {
        v10 = v15 - v8;
        if (!__OFADD__(v15, -v8))
        {
          if (a3)
          {
            v11 = a4 - a3;
          }

          else
          {
            v11 = 0;
          }

          if ((v10 & 0x8000000000000000) == 0 && v11 >= v10)
          {
            while (v10 >= v14)
            {
              result = specialized DataProtocol.matches<A>(_:from:)(a1, v10, a3, a4);
              if (result)
              {
                goto LABEL_17;
              }

              v12 = v10-- < 1;
              if (v12 || v15 + ~v8 >= v11)
              {
                __break(1u);
LABEL_17:
                v13 = v10 + v8;
                if (__OFADD__(v10, v8))
                {
                  goto LABEL_25;
                }

                if ((v13 & 0x8000000000000000) != 0 || v11 < v13)
                {
                  goto LABEL_26;
                }

                if (v13 < v10)
                {
                  goto LABEL_27;
                }

                return v10;
              }
            }

            return 0;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  return 0;
}

uint64_t DataProtocol.lastRange<A, B>(of:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v56 = a4;
  v57 = a6;
  v49 = a7;
  v50 = a2;
  v55 = a1;
  v8 = *(a5 + 8);
  v52 = *(v8 + 8);
  v53 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v42 - v12;
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for Range();
  v51 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v23 = v22;
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v24 = dispatch thunk of Collection.count.getter();
  if (!v24 || (v50 = v24, result = dispatch thunk of RandomAccessCollection.distance(from:to:)(), result < v50))
  {
    v26 = v51;
    (*(v51 + 8))(v21, v23);
    return (*(v26 + 56))(v49, 1, 1, v23);
  }

  if (__OFSUB__(0, v50))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v43 = v23;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v27 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v28 = v48 + 8;
  if (v27)
  {
    v42 = v8;
    v29 = (v48 + 32);
    v48 = v28 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while ((DataProtocol.matches<A>(_:from:)(v55, v18, a3, v56, v53, v57) & 1) == 0)
    {
      dispatch thunk of BidirectionalCollection.index(before:)();
      v30 = *v28;
      (*v28)(v18, AssociatedTypeWitness);
      (*v29)(v18, v15, AssociatedTypeWitness);
      if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v33 = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = (*(v51 + 8))(v21, v43);
    if (v33)
    {
      v34 = *v29;
      v35 = v44;
      (*v29)(v44, v18, AssociatedTypeWitness);
      v36 = TupleTypeMetadata2;
      v34(&v35[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
      v37 = v45;
      v38 = v46;
      (*(v45 + 16))(v46, v35, v36);
      v57 = *(v36 + 48);
      v39 = v49;
      v34(v49, v38, AssociatedTypeWitness);
      v40 = *v28;
      (*v28)(&v38[v57], AssociatedTypeWitness);
      (*(v37 + 32))(v38, v35, v36);
      v41 = v43;
      v34(&v39[*(v43 + 36)], &v38[*(v36 + 48)], AssociatedTypeWitness);
      v40(v38, AssociatedTypeWitness);
      return (*(v51 + 56))(v39, 0, 1, v41);
    }

    goto LABEL_15;
  }

  v30 = *v28;
LABEL_11:
  v30(v18, AssociatedTypeWitness);
  v31 = v51;
  v32 = v43;
  (*(v51 + 8))(v21, v43);
  return (*(v31 + 56))(v49, 1, 1, v32);
}

void specialized DataProtocol.copyBytes<A>(to:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (a6 + a3);
  if (__OFADD__(a6, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(a6, a5))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 < a6 || a6 + a5 < v10)
  {
    goto LABEL_12;
  }

  if (!a1)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v11 = *(*(a7 - 8) + 72);
  if ((a2 * v11) >> 64 == (a2 * v11) >> 63)
  {
    v12 = a2 * v11 + a1;
LABEL_9:
    specialized DataProtocol.copyBytes<A>(to:from:)(a1, v12, a6, v10, a4, a5, a6);
    return;
  }

LABEL_13:
  __break(1u);
}

void specialized DataProtocol.copyBytes<A>(to:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DispatchData();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  if (v9 < v10)
  {
    __break(1u);
  }

  else
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = *(*(a4 - 8) + 72);
    if ((a2 * v7) >> 64 == (a2 * v7) >> 63)
    {
      v8 = a2 * v7 + a1;
LABEL_6:
      specialized DataProtocol.copyBytes<A>(to:from:)(a1, v8, v10, v9);
      return;
    }
  }

  __break(1u);
}

uint64_t specialized DataProtocol.copyBytes<A>(to:count:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v12 = a6 + a3;
  if (__OFADD__(a6, a3))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < a6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!result)
  {
    v14 = 0;
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, v14, a6, v12, a4, a5, a6, a7);
  }

  v13 = *(*(a8 - 8) + 72);
  if ((a2 * v13) >> 64 == (a2 * v13) >> 63)
  {
    v14 = a2 * v13 + result;
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, v14, a6, v12, a4, a5, a6, a7);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:count:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!result)
    {
      v6 = 0;
      return specialized DataProtocol.copyBytes<A>(to:from:)(result, v6, 0, a3, a4);
    }

    v5 = *(*(a5 - 8) + 72);
    if ((a2 * v5) >> 64 == (a2 * v5) >> 63)
    {
      v6 = a2 * v5 + result;
      return specialized DataProtocol.copyBytes<A>(to:from:)(result, v6, 0, a3, a4);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:count:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a3 < 0 || a4 < a3)
  {
    __break(1u);
  }

  else
  {
    if (!result)
    {
      v7 = 0;
      return specialized DataProtocol.copyBytes<A>(to:from:)(result, v7, 0, a3, a4, a5);
    }

    v6 = *(*(a6 - 8) + 72);
    if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
    {
      v7 = a2 * v6 + result;
      return specialized DataProtocol.copyBytes<A>(to:from:)(result, v7, 0, a3, a4, a5);
    }
  }

  __break(1u);
  return result;
}

int64_t specialized DataProtocol.copyBytes<A>(to:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    v12 = 0;
    if (v11 == 2)
    {
      v12 = *(a4 + 16);
    }
  }

  else if (v11)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v12, a3, a4);
  if (result < v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (!a1)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v14 = *(*(a6 - 8) + 72);
  if ((a2 * v14) >> 64 != (a2 * v14) >> 63)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v15 = a2 * v14 + a1;
LABEL_12:

  return specialized DataProtocol.copyBytes<A>(to:from:)(a1, v15, v12, result, a4, a5);
}

char *specialized DataProtocol.copyBytes<A>(to:count:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if (a3 < 0 || v6 < a3)
  {
    __break(1u);
  }

  else
  {
    if (!result)
    {
      v8 = 0;
      return specialized DataProtocol.copyBytes<A>(to:from:)(result, v8, 0, a3, a4, a5);
    }

    v7 = *(*(a6 - 8) + 72);
    if ((a2 * v7) >> 64 == (a2 * v7) >> 63)
    {
      v8 = &result[a2 * v7];
      return specialized DataProtocol.copyBytes<A>(to:from:)(result, v8, 0, a3, a4, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:count:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!result)
    {
      v7 = 0;
      return specialized DataProtocol.copyBytes<A>(to:from:)(result, v7, 0, a3, a4, a5);
    }

    v6 = *(*(a6 - 8) + 72);
    if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
    {
      v7 = a2 * v6 + result;
      return specialized DataProtocol.copyBytes<A>(to:from:)(result, v7, 0, a3, a4, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t DataProtocol.copyBytes<A>(to:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a2;
  v50 = a5;
  v48 = a1;
  v52 = a6;
  v53 = *(a6 + 8);
  v54 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v47 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v41 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for Range();
  v43 = *(v23 - 8);
  v44 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  v54 = v6;
  v51 = a4;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v26 = *(v13 + 8);
  v26(v16, AssociatedTypeWitness);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v28 = *(v13 + 32);
    v53 = v26;
    v29 = v45;
    v28(v45, v22, AssociatedTypeWitness);
    v30 = v47;
    v28(&v29[*(v47 + 48)], v19, AssociatedTypeWitness);
    v31 = v46;
    v32 = v42;
    (*(v46 + 16))(v42, v29, v30);
    v33 = *(v30 + 48);
    v28(v25, v32, AssociatedTypeWitness);
    v34 = &v32[v33];
    v35 = v53;
    v53(v34, AssociatedTypeWitness);
    (*(v31 + 32))(v32, v29, v30);
    v36 = v44;
    v28(&v25[*(v44 + 36)], &v32[*(v30 + 48)], AssociatedTypeWitness);
    v35(v32, AssociatedTypeWitness);
    v37 = v52;
    v38 = *(v52 + 112);
    WitnessTable = swift_getWitnessTable();
    v40 = v38(v48, v49, v25, v50, v36, WitnessTable, v51, v37);
    (*(v43 + 8))(v25, v36);
    return v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy8Dispatch0B4DataVGMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  if (a1)
  {
    v37[1] = a3;
    v37[2] = a4;
    type metadata accessor for DispatchData();
    lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
    dispatch thunk of Collection.subscript.getter();
    lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
    v11 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v12 = a2 - a1;
    if (v11 >= a2 - a1)
    {
      v13 = a2 - a1;
    }

    else
    {
      v13 = v11;
    }

    v14 = *v10;
    v36 = v10[1];
    v37[0] = v14;
    v15 = dispatch thunk of Collection.startIndex.getter();
    v34 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v15);
    *&v33[-16] = &v34;
    v16 = DispatchData.enumerateBytes(_:)();
    v17 = v34;
    MEMORY[0x1EEE9AC00](v16);
    *&v33[-32] = &v35;
    *&v33[-24] = v10;
    *&v33[-16] = v37;
    *&v33[-8] = &v36;
    v18 = specialized Sequence.compactMap<A>(_:)(closure #1 in Slice<>.regions.getterspecialized partial apply, &v33[-48], v17);
    v19 = v18 + 64;

    v20 = 0;
    v21 = -*(v18 + 2);
    v22 = -1;
    while (1)
    {
      if (v21 + v22 == -1)
      {
LABEL_34:
        outlined destroy of TermOfAddress?(v10, &_ss5SliceVy8Dispatch0B4DataVGMd);

        return;
      }

      if (++v22 >= *(v18 + 2))
      {
        break;
      }

      if (v13 <= 0)
      {
        goto LABEL_34;
      }

      v24 = *(v19 - 1);
      v25 = *v19;
      v23 = __OFADD__(*v19, v24);
      v26 = *v19 + v24;
      if (v23)
      {
        goto LABEL_36;
      }

      v27 = *(v19 - 4);
      if (v26 < v27 || v27 < v25 || v26 < v25)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v27, v25))
      {
        goto LABEL_38;
      }

      v31 = *(v19 - 3);
      v30 = *(v19 - 2);
      if (v30)
      {
        if (v31 < v25 || v26 < v31)
        {
          goto LABEL_41;
        }

        if (__OFSUB__(v31, v27))
        {
          goto LABEL_42;
        }

        if (v12 < v20)
        {
          goto LABEL_39;
        }

        if (v13 >= v31 - v27)
        {
          v32 = v31 - v27;
        }

        else
        {
          v32 = v13;
        }

        memmove((v20 + a1), (v30 + v27 - v25), v32);
        v23 = __OFADD__(v20, v32);
        v20 += v32;
        if (v23)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v31 < v25 || v26 < v31)
        {
          goto LABEL_44;
        }

        if (v12 < v20)
        {
          goto LABEL_39;
        }

        v32 = 0;
      }

      v19 += 5;
      v23 = __OFSUB__(v13, v32);
      v13 -= v32;
      if (v23)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
}

void specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v7 = a7 + a6;
  if (__OFADD__(a7, a6))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v7 < a7)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (a3 < a7)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v7 < a4)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (a4 < a7 || v7 < a3)
  {
    goto LABEL_57;
  }

  v8 = &a4[-a3];
  if (!__OFSUB__(a4, a3))
  {
    v10 = a2 - a1;
    if (v8 >= a2 - a1)
    {
      v11 = a2 - a1;
    }

    else
    {
      v11 = &a4[-a3];
    }

    specialized Slice<>.regions.getter(a4, v8);
    v13 = v12;
    v14 = 0;
    v15 = (v12 + 64);
    v16 = -*(v12 + 16);
    v17 = -1;
    while (1)
    {
      if (v16 + v17 == -1)
      {
LABEL_41:

        return;
      }

      if (++v17 >= *(v13 + 16))
      {
        break;
      }

      if (v11 <= 0)
      {
        goto LABEL_41;
      }

      v19 = *(v15 - 1);
      v20 = *v15;
      v18 = __OFADD__(*v15, v19);
      v21 = *v15 + v19;
      if (v18)
      {
        goto LABEL_43;
      }

      v22 = *(v15 - 4);
      if (v21 < v22 || v22 < v20 || v21 < v20)
      {
        goto LABEL_44;
      }

      if (__OFSUB__(v22, v20))
      {
        goto LABEL_45;
      }

      v26 = *(v15 - 3);
      v25 = *(v15 - 2);
      if (v25)
      {
        if (v26 < v20 || v21 < v26)
        {
          goto LABEL_48;
        }

        if (__OFSUB__(v26, v22))
        {
          goto LABEL_49;
        }

        if (v10 < v14)
        {
          goto LABEL_46;
        }

        if (v11 >= v26 - v22)
        {
          v27 = v26 - v22;
        }

        else
        {
          v27 = v11;
        }

        memmove((v14 + a1), (v25 + v22 - v20), v27);
        v18 = __OFADD__(v14, v27);
        v14 += v27;
        if (v18)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v26 < v20 || v21 < v26)
        {
          goto LABEL_51;
        }

        if (v10 < v14)
        {
          goto LABEL_46;
        }

        v27 = 0;
      }

      v15 += 5;
      v18 = __OFSUB__(v11, v27);
      v11 -= v27;
      if (v18)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
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
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_58:
  __break(1u);
}

void specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  if (!a1)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  lazy protocol witness table accessor for type DispatchData.Region and conformance DispatchData.Region();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v9 = a6 + a5;
  if (__OFADD__(a6, a5))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v9 < a6)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v29 < a6)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v9 < v30)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v30 < a6 || v9 < v29)
  {
    goto LABEL_59;
  }

  if (!__OFSUB__(v30, v29))
  {
    v11 = a2 - a1;
    if (v30 - v29 >= a2 - a1)
    {
      v12 = a2 - a1;
    }

    else
    {
      v12 = v30 - v29;
    }

    specialized Slice<>.regions.getter(v8, a6);
    v14 = v13;
    v15 = 0;
    v16 = (v13 + 64);
    v17 = -*(v13 + 16);
    v18 = -1;
    while (1)
    {
      if (v17 + v18 == -1)
      {
LABEL_43:

        return;
      }

      if (++v18 >= *(v14 + 16))
      {
        break;
      }

      if (v12 < 1)
      {
        goto LABEL_43;
      }

      v20 = *(v16 - 1);
      v21 = *v16;
      v19 = __OFADD__(*v16, v20);
      v22 = *v16 + v20;
      if (v19)
      {
        goto LABEL_45;
      }

      v23 = *(v16 - 4);
      if (v22 < v23 || v23 < v21 || v22 < v21)
      {
        goto LABEL_46;
      }

      if (__OFSUB__(v23, v21))
      {
        goto LABEL_47;
      }

      v27 = *(v16 - 3);
      v26 = *(v16 - 2);
      if (v26)
      {
        if (v27 < v21 || v22 < v27)
        {
          goto LABEL_50;
        }

        if (__OFSUB__(v27, v23))
        {
          goto LABEL_51;
        }

        if (v11 < v15)
        {
          goto LABEL_48;
        }

        if (v12 >= v27 - v23)
        {
          v28 = v27 - v23;
        }

        else
        {
          v28 = v12;
        }

        memmove((v15 + a1), (v26 + v23 - v21), v28);
        v19 = __OFADD__(v15, v28);
        v15 += v28;
        if (v19)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v27 < v21 || v22 < v27)
        {
          goto LABEL_53;
        }

        if (v11 < v15)
        {
          goto LABEL_48;
        }

        v28 = 0;
      }

      v16 += 5;
      v19 = __OFSUB__(v12, v28);
      v12 -= v28;
      if (v19)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_60:
  __break(1u);
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(void *a1, uint64_t a2, uint64_t a3, int64_t __n, uint64_t a5, unint64_t a6)
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = Data._Representation.subscript.getter(a3, __n, a5, a6);
  v14 = v13;
  v35[0] = 0;
  v15 = specialized RandomAccessCollection<>.distance(from:to:)(a3, __n, a5, a6);
  v16 = a2 - a1;
  if (v15 < a2 - a1)
  {
    v16 = v15;
  }

  v34 = v16;
  if (v16 < 1)
  {
    goto LABEL_28;
  }

  v17 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(__src, 0, 14);
      v18 = __src;
      goto LABEL_27;
    }

    v19 = *(v12 + 16);
    v20 = *(v12 + 24);
    v21 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v21)
    {
      v22 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v23 = __OFSUB__(v19, v22);
      v24 = v19 - v22;
      if (v23)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v23 = __OFSUB__(v20, v19);
      v25 = v20 - v19;
      if (!v23)
      {
        v26 = (v24 + v21);
        if (v24 + v21)
        {
          v27 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (v27 >= v25)
          {
            v27 = v25;
          }

          goto LABEL_22;
        }

LABEL_31:
        outlined consume of Data._Representation(v12, v14);
        v35[0] = 0;
        return v35[0];
      }
    }

    else if (!__OFSUB__(v20, v19))
    {
      goto LABEL_31;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v17)
  {
    v27 = (v12 >> 32) - v12;
    if (v12 >> 32 >= v12)
    {
      v28 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v28)
      {
        goto LABEL_31;
      }

      v29 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v30 = v12 - v29;
      if (!__OFSUB__(v12, v29))
      {
        v26 = (v30 + v28);
        if (v30 + v28)
        {
          if (*((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v27)
          {
            v27 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }

LABEL_22:
          if (v16 >= v27)
          {
            v31 = v27;
          }

          else
          {
            v31 = v16;
          }

          memmove(a1, v26, v31);
          v35[0] = v31;
          goto LABEL_28;
        }

        goto LABEL_31;
      }

LABEL_36:
      __break(1u);
    }

    goto LABEL_33;
  }

  __src[0] = v12;
  LOWORD(__src[1]) = v14;
  BYTE2(__src[1]) = BYTE2(v14);
  BYTE3(__src[1]) = BYTE3(v14);
  BYTE4(__src[1]) = BYTE4(v14);
  BYTE5(__src[1]) = BYTE5(v14);
  v18 = __src + BYTE6(v14);
LABEL_27:
  closure #1 in DataProtocol.copyBytes<A>(to:from:)(__src, v18, a1, a2, v35, &v34);
LABEL_28:
  outlined consume of Data._Representation(v12, v14);
  return v35[0];
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, int64_t __n, uint64_t a5, unint64_t a6)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_31;
  }

  v12 = Data._Representation.subscript.getter(a3, __n, a5, a6);
  v14 = v13;
  v36[0] = 0;
  v15 = specialized RandomAccessCollection<>.distance(from:to:)(a3, __n, a5, a6);
  v16 = a2 - a1;
  if (v15 < a2 - a1)
  {
    v16 = v15;
  }

  v35 = v16;
  if (v16 >= 1)
  {
    v17 = v14 >> 62;
    if ((v14 >> 62) <= 1)
    {
      if (!v17)
      {
        v34[0] = v12;
        LOWORD(v34[1]) = v14;
        BYTE2(v34[1]) = BYTE2(v14);
        BYTE3(v34[1]) = BYTE3(v14);
        BYTE4(v34[1]) = BYTE4(v14);
        BYTE5(v34[1]) = BYTE5(v14);
        v18 = v34 + BYTE6(v14);
        v19 = v34;
LABEL_26:
        closure #1 in DataProtocol.copyBytes<A>(to:from:)(v19, v18, a1, a2, v36, &v35);
        goto LABEL_27;
      }

      v29 = (v12 >> 32) - v12;
      if (v12 >> 32 >= v12)
      {
        v30 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (!v30)
        {
          goto LABEL_25;
        }

        v31 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v32 = v12 - v31;
        if (!__OFSUB__(v12, v31))
        {
          if (*((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v29)
          {
            v29 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }

          v19 = (v32 + v30);
          if (v32 + v30)
          {
            v18 = &v19[v29];
            goto LABEL_26;
          }

LABEL_25:
          v19 = 0;
          v18 = 0;
          goto LABEL_26;
        }

LABEL_34:
        __break(1u);
      }

      goto LABEL_32;
    }

    if (v17 != 2)
    {
      memset(v34, 0, 14);
      v19 = v34;
      v18 = v34;
      goto LABEL_26;
    }

    v20 = *(v12 + 16);
    v21 = *(v12 + 24);
    v22 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v22)
    {
      v23 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v24 = __OFSUB__(v20, v23);
      v25 = v20 - v23;
      if (v24)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v19 = (v25 + v22);
      v24 = __OFSUB__(v21, v20);
      v26 = v21 - v20;
      if (!v24)
      {
LABEL_12:
        v27 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v27 >= v26)
        {
          v27 = v26;
        }

        v28 = &v19[v27];
        if (v19)
        {
          v18 = v28;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v19 = 0;
      v24 = __OFSUB__(v21, v20);
      v26 = v21 - v20;
      if (!v24)
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
  outlined consume of Data._Representation(v12, v14);
  return v36[0];
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = result;
    v7 = a2 - result;
    if (a4 - a3 >= a2 - result)
    {
      v8 = a2 - result;
    }

    else
    {
      v8 = a4 - a3;
    }

    result = specialized Slice<>.regions.getter(a3, a4, a5, a6);
    v9 = result;
    v10 = 0;
    v11 = (result + 48);
    v12 = -1;
    while (1)
    {
      ++v12;
      v15 = *(v9 + 16);
      if (v12 == v15)
      {
        goto LABEL_25;
      }

      if (v12 >= v15)
      {
        break;
      }

      if (v8 <= 0)
      {
        goto LABEL_25;
      }

      v16 = *v11;
      if (*v11)
      {
        v17 = (*v11 + *(v11 - 2));
      }

      else
      {
        v17 = 0;
      }

      if (v7 < v10)
      {
        goto LABEL_27;
      }

      if (v17)
      {
        if (v16)
        {
          v18 = v16 + *(v11 - 1);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 - v17;
        if (v8 >= v19)
        {
          v13 = v19;
        }

        else
        {
          v13 = v8;
        }

        result = memmove((v10 + v6), v17, v13);
        v14 = __OFADD__(v10, v13);
        v10 += v13;
        if (v14)
        {
          __break(1u);
LABEL_25:

          return v10;
        }
      }

      else
      {
        v13 = 0;
      }

      v11 += 4;
      v14 = __OFSUB__(v8, v13);
      v8 -= v13;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd);
    dispatch thunk of RangeExpression.relative<A>(to:)();
    v9 = a2 - v8;
    if (v23 - v22 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v23 - v22;
    }

    result = specialized Slice<>.regions.getter(v22, v23, a4, a5);
    v11 = result;
    v12 = 0;
    v13 = (result + 48);
    v14 = -1;
    while (1)
    {
      ++v14;
      v17 = *(v11 + 16);
      if (v14 == v17)
      {
        goto LABEL_25;
      }

      if (v14 >= v17)
      {
        break;
      }

      if (v10 < 1)
      {
        goto LABEL_25;
      }

      v18 = *v13;
      if (*v13)
      {
        v19 = (*v13 + *(v13 - 2));
      }

      else
      {
        v19 = 0;
      }

      if (v9 < v12)
      {
        goto LABEL_27;
      }

      if (v19)
      {
        if (v18)
        {
          v20 = v18 + *(v13 - 1);
        }

        else
        {
          v20 = 0;
        }

        v21 = v20 - v19;
        if (v10 >= v21)
        {
          v15 = v21;
        }

        else
        {
          v15 = v10;
        }

        result = memmove((v12 + v8), v19, v15);
        v16 = __OFADD__(v12, v15);
        v12 += v15;
        if (v16)
        {
          __break(1u);
LABEL_25:

          return v12;
        }
      }

      else
      {
        v15 = 0;
      }

      v13 += 4;
      v16 = __OFSUB__(v10, v15);
      v10 -= v15;
      if (v16)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *specialized DataProtocol.copyBytes<A>(to:from:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v11 = result;
    v12 = specialized RandomAccessCollection<>.distance(from:to:)(a3, a4, a5, a6);
    v13 = a2 - v11;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    result = specialized Slice<>.regions.getter(a3, a4, a5, a6);
    v15 = result;
    v16 = 0;
    v17 = result + 56;
    v18 = -1;
    while (1)
    {
      ++v18;
      v20 = *(v15 + 2);
      if (v18 == v20)
      {
LABEL_29:

        return v16;
      }

      if (v18 >= v20)
      {
        break;
      }

      if (v14 <= 0)
      {
        goto LABEL_29;
      }

      v21 = *(v17 - 3);
      v22 = *(v17 - 1);
      v23 = *v17 - v22;
      if (v22)
      {
        v24 = *v17 - v22;
      }

      else
      {
        v24 = 0;
      }

      if (v21 < 0 || v24 < v21)
      {
        goto LABEL_31;
      }

      v25 = *(v17 - 2);
      if (v22)
      {
        if (v23 < v25 || v25 < 0 || v23 < v21)
        {
          goto LABEL_34;
        }

        if (v13 < v16)
        {
          goto LABEL_32;
        }

        if (v14 >= v25 - v21)
        {
          v26 = v25 - v21;
        }

        else
        {
          v26 = v14;
        }

        result = memmove(&v11[v16], (v22 + v21), v26);
        v19 = __OFADD__(v16, v26);
        v16 += v26;
        if (v19)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v25 | v21)
        {
          goto LABEL_36;
        }

        if (v13 < v16)
        {
          goto LABEL_32;
        }

        v26 = 0;
      }

      v17 += 4;
      v19 = __OFSUB__(v14, v26);
      v14 -= v26;
      if (v19)
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

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((a8 >> 1) < a3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a3 < a7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a8 >> 1) < a4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4 < a7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a4 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = 0;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v8 = a2 - result;
  if (a4 - a3 < a2 - result)
  {
    v8 = a4 - a3;
  }

  v9 = v8;
  if (v8 < 1)
  {
    return 0;
  }

  closure #1 in DataProtocol.copyBytes<A>(to:from:)((a6 + a3), a6 + a4, result, a2, &v10, &v9);
  return v10;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd);
  result = dispatch thunk of RangeExpression.relative<A>(to:)();
  if (v15 < a6)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a7 >> 1) < v15 || (a7 >> 1) < v16)
  {
    goto LABEL_16;
  }

  if (v16 < a6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 0;
  if (__OFSUB__(v16, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v11 = a2 - v10;
  if (v16 - v15 < a2 - v10)
  {
    v11 = v16 - v15;
  }

  v13 = v11;
  if (v11 < 1)
  {
    return 0;
  }

  closure #1 in DataProtocol.copyBytes<A>(to:from:)((a5 + v15), a5 + v16, v10, a2, &v14, &v13);
  return v14;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(a5 + 16);
  if (v7 < a3 || v7 < a4)
  {
    goto LABEL_16;
  }

  if (a4 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11[3] = v5;
  v11[4] = v6;
  v9 = a2 - result;
  if ((a4 - a3) < a2 - result)
  {
    v9 = a4 - a3;
  }

  v10 = v9;
  v11[0] = 0;
  if (v9 < 1)
  {
    return 0;
  }

  closure #1 in DataProtocol.copyBytes<A>(to:from:)((a5 + a3 + 32), a5 + 32 + a4, result, a2, v11, &v10);
  return v11[0];
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t result)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15EmptyCollectionVys5UInt8VGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type EmptyCollection<UInt8> and conformance EmptyCollection<A>, &_ss15EmptyCollectionVys5UInt8VGMd);
    dispatch thunk of RangeExpression.relative<A>(to:)();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (a5 < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (a5 < a4)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (a5 < a3)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (a4 < 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
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
    goto LABEL_84;
  }

  v6 = result;
  v7 = a2 - result;
  if ((a4 - a3) >= a2 - result)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = a4 - a3;
  }

  result = specialized Slice<>.regions.getter(a3, a4, a5, a6);
  v9 = result;
  v10 = 0;
  v11 = 0;
  v12 = result + 32;
  while (2)
  {
    v13 = *(v9 + 16);
    v14 = v13 - v10;
    if (v13 >= v10)
    {
      v15 = v13 - v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 + 1;
    v17 = ~v10;
    v18 = (v12 + 16 * v10);
    while (1)
    {
      if (!v14)
      {
LABEL_65:

        return v11;
      }

      if (!--v16)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v8 <= 0)
      {
        goto LABEL_65;
      }

      v19 = v18[1];
      v20 = v19 >> 62;
      if (v19 >> 62 != 3)
      {
        break;
      }

      --v17;
      v18 += 2;
      --v14;
      if (v7 < v11)
      {
        goto LABEL_67;
      }
    }

    if (!v20)
    {
      __src = *v18;
      v46 = v19;
      v47 = BYTE2(v19);
      v48 = BYTE3(v19);
      v49 = BYTE4(v19);
      v50 = BYTE5(v19);
      if (v7 < v11)
      {
        goto LABEL_75;
      }

      v32 = BYTE6(v19);
      if (v8 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v8;
      }

      result = memcpy((v11 + v6), &__src, v33);
      v28 = __OFADD__(v11, v33);
      v11 += v33;
      if (!v28)
      {
        v8 -= v33;
        goto LABEL_64;
      }

      goto LABEL_77;
    }

    if (v20 != 1)
    {
      v34 = *v18;
      v35 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
      v36 = *(*v18 + 16);
      v37 = *(v34 + 24);
      v38 = v35[2];
      if (!v38)
      {
        v41 = 0;
        v28 = __OFSUB__(v37, v36);
        v42 = v37 - v36;
        if (v28)
        {
          goto LABEL_76;
        }

        goto LABEL_48;
      }

      v39 = v35[5];
      v28 = __OFSUB__(v36, v39);
      v40 = v36 - v39;
      if (v28)
      {
        goto LABEL_82;
      }

      v41 = (v40 + v38);
      v28 = __OFSUB__(v37, v36);
      v42 = v37 - v36;
      if (!v28)
      {
LABEL_48:
        if (v7 < v11)
        {
          goto LABEL_79;
        }

        if (!v41)
        {
          goto LABEL_64;
        }

        v43 = v35[3];
        if (v43 >= v42)
        {
          v43 = v42;
        }

        if (v8 >= v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = v8;
        }

        result = memmove((v11 + v6), v41, v44);
        v28 = __OFADD__(v11, v44);
        v11 += v44;
        if (!v28)
        {
          v28 = __OFSUB__(v8, v44);
          v8 -= v44;
          if (v28)
          {
            goto LABEL_81;
          }

          goto LABEL_64;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      goto LABEL_76;
    }

    v21 = *v18;
    v22 = v21;
    v21 >>= 32;
    v23 = v21 < v22;
    v24 = v21 - v22;
    if (v23)
    {
      goto LABEL_74;
    }

    v25 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
    v26 = v25[2];
    if (!v26)
    {
      if (v7 < v11)
      {
        goto LABEL_78;
      }

      v31 = 0;
      goto LABEL_61;
    }

    v27 = v25[5];
    v28 = __OFSUB__(v22, v27);
    v29 = v22 - v27;
    if (v28)
    {
      goto LABEL_83;
    }

    if (v7 < v11)
    {
      goto LABEL_78;
    }

    if (!(v29 + v26))
    {
LABEL_64:
      v10 = -v17;
      continue;
    }

    break;
  }

  v30 = v25[3];
  if (v30 >= v24)
  {
    v30 = v24;
  }

  if (v8 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v8;
  }

  result = memmove((v11 + v6), (v29 + v26), v31);
  v28 = __OFADD__(v11, v31);
  v11 += v31;
  if (!v28)
  {
LABEL_61:
    v28 = __OFSUB__(v8, v31);
    v8 -= v31;
    if (v28)
    {
      goto LABEL_80;
    }

    goto LABEL_64;
  }

LABEL_85:
  __break(1u);
  return result;
}

unint64_t specialized DataProtocol.copyBytes<A>(to:from:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v55 = a4;
  v56 = a5;
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v8 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RepeatedVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Repeated<UInt8> and conformance Repeated<A>, &_ss8RepeatedVys5UInt8VGMd);
  result = dispatch thunk of RangeExpression.relative<A>(to:)();
  if (a4 < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  result = v53;
  if ((v53 & 0x8000000000000000) != 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v54 > a4)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v53 > a4)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v54 < 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
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
    goto LABEL_84;
  }

  v9 = a2 - v8;
  if ((v54 - v53) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v54 - v53;
  }

  result = specialized Slice<>.regions.getter(v53, v54, a4, a5);
  v11 = result;
  v12 = 0;
  v13 = 0;
  v14 = result + 32;
  while (2)
  {
    v15 = *(v11 + 16);
    v16 = v15 - v12;
    if (v15 >= v12)
    {
      v17 = v15 - v12;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 + 1;
    v19 = ~v12;
    v20 = (v14 + 16 * v12);
    while (1)
    {
      if (!v16)
      {
LABEL_65:

        return v13;
      }

      if (!--v18)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v10 < 1)
      {
        goto LABEL_65;
      }

      v21 = v20[1];
      v22 = v21 >> 62;
      if (v21 >> 62 != 3)
      {
        break;
      }

      --v19;
      v20 += 2;
      --v16;
      if (v9 < v13)
      {
        goto LABEL_67;
      }
    }

    if (!v22)
    {
      __src = *v20;
      v48 = v21;
      v49 = BYTE2(v21);
      v50 = BYTE3(v21);
      v51 = BYTE4(v21);
      v52 = BYTE5(v21);
      if (v9 < v13)
      {
        goto LABEL_75;
      }

      v34 = BYTE6(v21);
      if (v10 >= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v10;
      }

      result = memcpy((v13 + v8), &__src, v35);
      v30 = __OFADD__(v13, v35);
      v13 += v35;
      if (!v30)
      {
        v10 -= v35;
        goto LABEL_64;
      }

      goto LABEL_77;
    }

    if (v22 != 1)
    {
      v36 = *v20;
      v37 = (v21 & 0x3FFFFFFFFFFFFFFFLL);
      v38 = *(*v20 + 16);
      v39 = *(v36 + 24);
      v40 = v37[2];
      if (!v40)
      {
        v43 = 0;
        v30 = __OFSUB__(v39, v38);
        v44 = v39 - v38;
        if (v30)
        {
          goto LABEL_76;
        }

        goto LABEL_48;
      }

      v41 = v37[5];
      v30 = __OFSUB__(v38, v41);
      v42 = v38 - v41;
      if (v30)
      {
        goto LABEL_82;
      }

      v43 = (v42 + v40);
      v30 = __OFSUB__(v39, v38);
      v44 = v39 - v38;
      if (!v30)
      {
LABEL_48:
        if (v9 < v13)
        {
          goto LABEL_79;
        }

        if (!v43)
        {
          goto LABEL_64;
        }

        v45 = v37[3];
        if (v45 >= v44)
        {
          v45 = v44;
        }

        if (v10 >= v45)
        {
          v46 = v45;
        }

        else
        {
          v46 = v10;
        }

        result = memmove((v13 + v8), v43, v46);
        v30 = __OFADD__(v13, v46);
        v13 += v46;
        if (!v30)
        {
          v30 = __OFSUB__(v10, v46);
          v10 -= v46;
          if (v30)
          {
            goto LABEL_81;
          }

          goto LABEL_64;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      goto LABEL_76;
    }

    v23 = *v20;
    v24 = v23;
    v23 >>= 32;
    v25 = v23 < v24;
    v26 = v23 - v24;
    if (v25)
    {
      goto LABEL_74;
    }

    v27 = (v21 & 0x3FFFFFFFFFFFFFFFLL);
    v28 = v27[2];
    if (!v28)
    {
      if (v9 < v13)
      {
        goto LABEL_78;
      }

      v33 = 0;
      goto LABEL_61;
    }

    v29 = v27[5];
    v30 = __OFSUB__(v24, v29);
    v31 = v24 - v29;
    if (v30)
    {
      goto LABEL_83;
    }

    if (v9 < v13)
    {
      goto LABEL_78;
    }

    if (!(v31 + v28))
    {
LABEL_64:
      v12 = -v19;
      continue;
    }

    break;
  }

  v32 = v27[3];
  if (v32 >= v26)
  {
    v32 = v26;
  }

  if (v10 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v10;
  }

  result = memmove((v13 + v8), (v31 + v28), v33);
  v30 = __OFADD__(v13, v33);
  v13 += v33;
  if (!v30)
  {
LABEL_61:
    v30 = __OFSUB__(v10, v33);
    v10 -= v33;
    if (v30)
    {
      goto LABEL_80;
    }

    goto LABEL_64;
  }

LABEL_85:
  __break(1u);
  return result;
}

void specialized DataProtocol.copyBytes<A, B>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v4 = *(*(a4 - 8) + 72);
  if ((a2 * v4) >> 64 == (a2 * v4) >> 63)
  {
    v5 = a2 * v4 + a1;
LABEL_5:
    specialized DataProtocol.copyBytes<A>(to:from:)(a1, v5);
    return;
  }

  __break(1u);
}

void specialized DataProtocol.copyBytes<A, B>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v7 = *(*(a7 - 8) + 72);
  if ((a2 * v7) >> 64 == (a2 * v7) >> 63)
  {
    v8 = a2 * v7 + a1;
LABEL_5:
    specialized DataProtocol.copyBytes<A>(to:from:)(a1, v8, a3, a4, a5, a6);
    return;
  }

  __break(1u);
}

uint64_t specialized DataProtocol.copyBytes<A, B>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!result)
  {
    v10 = 0;
    return a9(result, v10, a3, a4, a5, a7, a8);
  }

  v9 = *(*(a6 - 8) + 72);
  if ((a2 * v9) >> 64 == (a2 * v9) >> 63)
  {
    v10 = a2 * v9 + result;
    return a9(result, v10, a3, a4, a5, a7, a8);
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.copyBytes<A, B>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (!result)
  {
    v9 = 0;
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, v9, a3, a4, a5, a6, a7);
  }

  v8 = *(*(a8 - 8) + 72);
  if ((a2 * v8) >> 64 == (a2 * v8) >> 63)
  {
    v9 = a2 * v8 + result;
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, v9, a3, a4, a5, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.copyBytes<A, B>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!result)
  {
    v9 = 0;
    return a8(result, v9, a3, a4, a6, a7);
  }

  v8 = *(*(a5 - 8) + 72);
  if ((a2 * v8) >> 64 == (a2 * v8) >> 63)
  {
    v9 = a2 * v8 + result;
    return a8(result, v9, a3, a4, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.copyBytes<A, B>(to:from:)(uint64_t result)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15EmptyCollectionVys5UInt8VGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type EmptyCollection<UInt8> and conformance EmptyCollection<A>, &_ss15EmptyCollectionVys5UInt8VGMd);
    dispatch thunk of RangeExpression.relative<A>(to:)();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized DataProtocol.copyBytes<A, B>(to:from:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (!result)
  {
    v7 = 0;
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, v7, a3, a4, a5);
  }

  v6 = *(*(a6 - 8) + 72);
  if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
  {
    v7 = a2 * v6 + result;
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, v7, a3, a4, a5);
  }

  __break(1u);
  return result;
}

uint64_t DataProtocol.copyBytes<A, B>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!result)
  {
    v9 = 0;
    return (*(a7 + 104))(result, v9, a3, a6, a8, a4);
  }

  v8 = *(*(a5 - 8) + 72);
  if ((a2 * v8) >> 64 == (a2 * v8) >> 63)
  {
    v9 = a2 * v8 + result;
    return (*(a7 + 104))(result, v9, a3, a6, a8, a4);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DataProtocol.firstRange<A, B>(of:in:) in conformance <A> ArraySlice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t (*a8)(uint64_t, uint64_t, void, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a8(a1, a2, *v8, v8[1], v8[2], v8[3], a3, a4, a5, a6);
  *a7 = result;
  *(a7 + 8) = v11;
  *(a7 + 16) = v12 & 1;
  return result;
}

uint64_t protocol witness for DataProtocol.copyBytes(to:count:) in conformance <A> ArraySlice<A>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = v5 + a3;
  if (__OFADD__(v5, a3))
  {
    __break(1u);
  }

  else if (v6 >= v5)
  {
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, a2, v5, v6, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DataProtocol.firstRange<A, B>(of:in:) in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t (*a8)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a8(a1, a2, *v8, a3, a4, a5, a6);
  *a7 = result;
  *(a7 + 8) = v11;
  *(a7 + 16) = v12 & 1;
  return result;
}

uint64_t protocol witness for DataProtocol.copyBytes(to:count:) in conformance <A> [A](uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, a2, 0, a3, *v3);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DataProtocol.firstRange<A, B>(of:in:) in conformance <A> EmptyCollection<A>@<X0>(uint64_t a1@<X8>, uint64_t (*a2)(void))
{
  result = a2();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t protocol witness for DataProtocol.copyBytes(to:count:) in conformance <A> EmptyCollection<A>(uint64_t result)
{
  if (result)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DataProtocol.firstRange<A, B>(of:in:) in conformance <A> Repeated<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t (*a8)(uint64_t, uint64_t, void, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a8(a1, a2, *v8, *(v8 + 8), a3, a4, a5, a6);
  *a7 = result;
  *(a7 + 8) = v11;
  *(a7 + 16) = v12 & 1;
  return result;
}

uint64_t protocol witness for DataProtocol.copyBytes(to:count:) in conformance <A> Repeated<A>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0 && *v3 >= a3)
  {
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, a2, 0, a3, *v3, *(v3 + 8));
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableDataProtocol.resetBytes<A>(in:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = v2;
  v1 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else if ((v1 & 0x8000000000000000) == 0)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(v2, v3, v1, 0);
  }

  __break(1u);
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>, &_ss15ContiguousArrayVys5UInt8VGMd);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = v2;
  v1 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else if ((v1 & 0x8000000000000000) == 0)
  {
    return specialized ContiguousArray.replaceSubrange<A>(_:with:)(v2, v3, v1, 0);
  }

  __break(1u);
  return result;
}

{
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = specialized RandomAccessCollection<>.distance(from:to:)(v2, v3, *v0, *(v0 + 8));
  if ((result & 0x8000000000000000) == 0)
  {
    return specialized Data.replaceSubrange<A>(_:with:)(v2, v3, result, 0);
  }

  __break(1u);
  return result;
}

uint64_t MutableDataProtocol.resetBytes<A>(in:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = type metadata accessor for Range();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RepeatedVys5UInt8VGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Repeated<UInt8> and conformance Repeated<A>, &_ss8RepeatedVys5UInt8VGMd);
    dispatch thunk of RangeReplaceableCollection.replaceSubrange<A>(_:with:)();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

{
  return MutableDataProtocol.resetBytes<A>(in:)();
}

uint64_t specialized Data.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v14[5] = a3;
  v15 = a4;
  v12 = a3;
  v13 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RepeatedVys5UInt8VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(v10, v14);
    v5 = v14[4];
    v6 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(v5 + 8))(_s10Foundation4DataV15replaceSubrange_4withySnySiG_xtSlRzs5UInt8V7ElementRtzlFySWXEfU_TA_0, v7);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v9 = outlined destroy of TermOfAddress?(v10, &_s10Foundation15ContiguousBytes_pSgMd);
    MEMORY[0x1EEE9AC00](v9);
    return _withStackOrHeapBuffer(capacity:_:)(a3, partial apply for specialized closure #3 in Data.replaceSubrange<A>(_:with:));
  }
}

void specialized closure #3 in Data.replaceSubrange<A>(_:with:)(char *__src, uint64_t a2, uint64_t a3, char a4, int a5, int64_t __n, uint64_t a7, int64_t a8)
{
  if (__src && a2)
  {
    if (a2 < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a3)
    {
      v10 = a3 & ~(a3 >> 63);
      v11 = a2 - 1;
      v12 = a3 - 1;
      if (v10 < a3 - 1)
      {
        v12 = a3 & ~(a3 >> 63);
      }

      if (v11 >= v12)
      {
        v11 = v12;
      }

      if (v11 > 0xF)
      {
        v16 = v11 + 1;
        v17 = v16 & 0xF;
        if ((v16 & 0xF) == 0)
        {
          v17 = 16;
        }

        v13 = v16 - v17;
        v14 = v13 + 1;
        v15 = &__src[v13];
        v18 = vdupq_n_s8(a4);
        v19 = v13;
        v20 = __src;
        do
        {
          *v20 = v18;
          v20 += 16;
          v19 -= 16;
        }

        while (v19);
      }

      else
      {
        v13 = 0;
        v14 = 1;
        v15 = __src;
      }

      v21 = a3 + 1;
      do
      {
        v9 = __OFSUB__(v13, v10);
        v8 = (v13 - v10) < 0;
        if (v13 == v10)
        {
          goto LABEL_23;
        }

        v13 = v14;
        *v15 = a4;
        if (a2 == v14)
        {
          goto LABEL_12;
        }

        ++v15;
        ++v14;
        v9 = __OFSUB__(v21, v13 + 1);
        v8 = a3 - v13 < 0;
      }

      while (v21 != v13 + 1);
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a2)
  {
    goto LABEL_22;
  }

LABEL_12:
  v9 = __OFSUB__(a2, a3);
  v8 = a2 - a3 < 0;
  if (a2 == a3)
  {
    Data._Representation.replaceSubrange(_:with:count:)(__n, a7, __src, a8);
    return;
  }

LABEL_25:
  if (v8 != v9)
  {
    __break(1u);
  }

  __break(1u);
}

void DataProtocol<>.copyBytes<A, B>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a3;
  v27 = a5;
  v28 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Range();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  if (a1)
  {
    v25 = v16;
    v19 = dispatch thunk of RangeExpression.relative<A>(to:)();
    v20 = MEMORY[0x1EEE9AC00](v19);
    v22 = v27;
    v21 = v28;
    *(&v24 - 10) = a4;
    *(&v24 - 9) = v22;
    *(&v24 - 8) = a6;
    *(&v24 - 7) = a7;
    *(&v24 - 6) = v23;
    *(&v24 - 5) = a9;
    *(&v24 - 4) = v9;
    *(&v24 - 3) = v18;
    *(&v24 - 2) = a1;
    *(&v24 - 1) = v21;
    (*(a7 + 8))(partial apply for closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:), v20);
    (*(v15 + 8))(v18, v25);
  }

  else
  {
    __break(1u);
  }
}

int64_t protocol witness for DataProtocol.copyBytes(to:count:) in conformance Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(v6 + 16);
    }
  }

  else if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v9, a3, v6);
  if (result < v9)
  {
    __break(1u);
  }

  else
  {

    return specialized DataProtocol.copyBytes<A>(to:from:)(a1, a2, v9, result, v6, v7);
  }

  return result;
}

uint64_t DataProtocol.firstRange<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a3;
  v43 = a5;
  v40 = a6;
  v41 = a1;
  v46 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for Range();
  v37 = *(v20 - 8);
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  dispatch thunk of Collection.startIndex.getter();
  v44 = a2;
  v45 = v6;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = *(v13 + 32);
    v24(v12, v19, AssociatedTypeWitness);
    v25 = TupleTypeMetadata2;
    v24(&v12[*(TupleTypeMetadata2 + 48)], v16, AssociatedTypeWitness);
    v26 = v39;
    v27 = v36;
    (*(v39 + 16))(v36, v12, v25);
    v34 = *(v25 + 48);
    v24(v22, v27, AssociatedTypeWitness);
    v28 = *(v13 + 8);
    v28(&v27[v34], AssociatedTypeWitness);
    (*(v26 + 32))(v27, v12, v25);
    v29 = v38;
    v24(&v22[*(v38 + 36)], &v27[*(v25 + 48)], AssociatedTypeWitness);
    v28(v27, AssociatedTypeWitness);
    v30 = v46;
    v31 = *(v46 + 72);
    WitnessTable = swift_getWitnessTable();
    v31(v41, v22, v42, v29, v43, WitnessTable, v44, v30);
    return (*(v37 + 8))(v22, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DataProtocol.lastRange<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a3;
  v43 = a5;
  v40 = a6;
  v41 = a1;
  v46 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for Range();
  v37 = *(v20 - 8);
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  dispatch thunk of Collection.startIndex.getter();
  v44 = a2;
  v45 = v6;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = *(v13 + 32);
    v24(v12, v19, AssociatedTypeWitness);
    v25 = TupleTypeMetadata2;
    v24(&v12[*(TupleTypeMetadata2 + 48)], v16, AssociatedTypeWitness);
    v26 = v39;
    v27 = v36;
    (*(v39 + 16))(v36, v12, v25);
    v34 = *(v25 + 48);
    v24(v22, v27, AssociatedTypeWitness);
    v28 = *(v13 + 8);
    v28(&v27[v34], AssociatedTypeWitness);
    (*(v26 + 32))(v27, v12, v25);
    v29 = v38;
    v24(&v22[*(v38 + 36)], &v27[*(v25 + 48)], AssociatedTypeWitness);
    v28(v27, AssociatedTypeWitness);
    v30 = v46;
    v31 = *(v46 + 80);
    WitnessTable = swift_getWitnessTable();
    v31(v41, v22, v42, v29, v43, WitnessTable, v44, v30);
    return (*(v37 + 8))(v22, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DataProtocol.copyBytes<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a2;
  v41 = a4;
  v39 = a1;
  v44 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for Range();
  v36 = *(v19 - 8);
  v37 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  dispatch thunk of Collection.startIndex.getter();
  v42 = a3;
  v43 = v5;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v23 = *(v12 + 32);
    v23(v11, v18, AssociatedTypeWitness);
    v24 = TupleTypeMetadata2;
    v23(&v11[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
    v25 = v38;
    v26 = v35;
    (*(v38 + 16))(v35, v11, v24);
    v33 = *(v24 + 48);
    v23(v21, v26, AssociatedTypeWitness);
    v27 = *(v12 + 8);
    v27(&v26[v33], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v11, v24);
    v28 = v37;
    v23(&v21[*(v37 + 36)], &v26[*(v24 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v44;
    v30 = *(v44 + 112);
    WitnessTable = swift_getWitnessTable();
    v32 = v30(v39, v40, v21, v41, v28, WitnessTable, v42, v29);
    (*(v36 + 8))(v21, v28);
    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DataProtocol.matches<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v30 = a2;
  v26 = a1;
  v27 = a3;
  dispatch thunk of Collection.startIndex.getter();
  v28 = type metadata accessor for DispatchData();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  v24 = (v7 + 32);
  v25 = (v7 + 8);
  v23 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v13 = dispatch thunk of Collection.subscript.read();
    v15 = *v14;
    v13(v29, 0);
    v16 = dispatch thunk of Collection.subscript.read();
    v18 = *v17;
    v16(v29, 0);
    if (v15 != v18)
    {
      break;
    }

    dispatch thunk of Collection.index(after:)();
    v19 = v29[0];
    v30 = v29[0];
    dispatch thunk of Collection.index(after:)();
    v20 = *v25;
    (*v25)(v12, AssociatedTypeWitness);
    (*v24)(v12, v9, AssociatedTypeWitness);
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20(v9, AssociatedTypeWitness);
    if ((v21 & 1) == 0)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (v19 != v29[0])
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v21 = 0;
  v20 = *v25;
LABEL_7:
  v20(v12, AssociatedTypeWitness);
  return v21 & 1;
}

uint64_t specialized DataProtocol.matches<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a3;
  v12 = *(*(*(a7 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v42 = a6;
  v43 = a1;
  v41 = v12;
  result = dispatch thunk of Collection.startIndex.getter();
  v19 = a5 + a4;
  if (!__OFADD__(a5, a4))
  {
    if (a2 <= v19)
    {
      v20 = a5 + a4;
    }

    else
    {
      v20 = a2;
    }

    v36 = v20;
    v37 = (v13 + 8);
    v33 = a5 + a4 - 1;
    v34 = (v13 + 32);
    v31[1] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a5 + a4;
    v39 = a2;
    v21 = a2;
    v22 = AssociatedTypeWitness;
    while (v39 >= a5 && v19 >= v21)
    {
      if (__OFSUB__(v21, a5))
      {
        goto LABEL_18;
      }

      v23 = *(v38 + v21 - a5);
      v24 = dispatch thunk of Collection.subscript.read();
      v26 = *v25;
      result = v24(v44, 0);
      if (v23 != v26)
      {
        v29 = 0;
        v28 = *v37;
LABEL_16:
        v28(v17, AssociatedTypeWitness);
        return v29 & 1;
      }

      if (v36 == v21)
      {
        goto LABEL_19;
      }

      v27 = v35;
      dispatch thunk of Collection.index(after:)();
      v28 = *v37;
      (*v37)(v17, v22);
      (*v34)(v17, v27, v22);
      dispatch thunk of Collection.endIndex.getter();
      swift_getAssociatedConformanceWitness();
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      result = (v28)(v27, v22);
      if ((v29 & 1) == 0)
      {
        v19 = v32;
        if (v33 != v21++)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.matches<A>(_:from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(*(a5 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v34 = a4;
  v35 = a1;
  v33 = v9;
  result = dispatch thunk of Collection.startIndex.getter();
  v16 = *(a3 + 16);
  v29 = (v10 + 8);
  v30 = a3 + 32;
  v26 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27 = (v10 + 32);
  v17 = (v10 + 8);
  v18 = AssociatedTypeWitness;
  while (a2 < v16)
  {
    v19 = *(v30 + a2);
    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    result = v20(v36, 0);
    if (v19 != v22)
    {
      v25 = 0;
      v24 = *v29;
LABEL_9:
      v24(v14, AssociatedTypeWitness);
      return v25 & 1;
    }

    if (__OFADD__(a2, 1))
    {
      goto LABEL_11;
    }

    v32 = a2 + 1;
    v23 = v28;
    dispatch thunk of Collection.index(after:)();
    v24 = *v17;
    (*v17)(v14, v18);
    (*v27)(v14, v23, v18);
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    result = (v24)(v23, v18);
    if ((v25 & 1) == 0)
    {
      ++a2;
      if (v32 != v16)
      {
        continue;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.matches<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  result = dispatch thunk of Collection.startIndex.getter();
  v14 = v7;
  v15 = (v7 + 8);
  v26 = a3;
  v27 = a2;
  v23 = a3 - 1;
  v24 = (v14 + 32);
  v22 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while ((v27 & 0x8000000000000000) == 0 && a2 < v26)
  {
    v16 = dispatch thunk of Collection.subscript.read();
    v18 = *v17;
    v16(v28, 0);
    if (v18 != v25)
    {
      v20 = 0;
      v19 = *v15;
LABEL_10:
      v19(v12, AssociatedTypeWitness);
      return v20 & 1;
    }

    dispatch thunk of Collection.index(after:)();
    v19 = *v15;
    (*v15)(v12, AssociatedTypeWitness);
    (*v24)(v12, v9, AssociatedTypeWitness);
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    result = (v19)(v9, AssociatedTypeWitness);
    if ((v20 & 1) == 0 && v23 != a2++)
    {
      continue;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t specialized DataProtocol.matches<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = *(*(*(a6 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v45 = v11;
  v46 = a1;
  dispatch thunk of Collection.startIndex.getter();
  v19 = a4 >> 62;
  if (a4 >> 62 == 3)
  {
    goto LABEL_34;
  }

  v37 = a4 & 0x3FFFFFFFFFFFFFFFLL;
  v38 = a3;
  v43 = (v13 + 8);
  v44 = a5;
  v47 = BYTE6(a4);
  v41 = a3 >> 32;
  v42 = (v13 + 32);
  v35 = a3 >> 8;
  v36 = a4;
  v34 = a3 >> 16;
  v20 = a3;
  v39 = a4 >> 62;
  v40 = a3;
  while (1)
  {
    if (!v19)
    {
      if (a2 < v47)
      {
        v48[0] = v38;
        v48[1] = v35;
        v48[2] = v34;
        v48[3] = BYTE3(v20);
        v48[4] = BYTE4(v20);
        v48[5] = BYTE5(v20);
        v48[6] = BYTE6(v20);
        v48[7] = HIBYTE(v20);
        v49 = v36;
        v50 = WORD2(v36);
        v25 = v48[a2];
        goto LABEL_19;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    if (v19 == 1)
    {
      if (a2 < v38 || a2 >= v41)
      {
        goto LABEL_28;
      }

      v21 = *(v37 + 16);
      if (!v21)
      {
        goto LABEL_32;
      }

      v22 = *(v37 + 40);
      v23 = __OFSUB__(a2, v22);
      v24 = a2 - v22;
      if (v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (a2 < *(v20 + 16))
      {
        goto LABEL_27;
      }

      if (a2 >= *(v20 + 24))
      {
        goto LABEL_29;
      }

      v21 = *(v37 + 16);
      if (!v21)
      {
        goto LABEL_33;
      }

      v26 = *(v37 + 40);
      v23 = __OFSUB__(a2, v26);
      v24 = a2 - v26;
      if (v23)
      {
        goto LABEL_31;
      }
    }

    v25 = *(v21 + v24);
LABEL_19:
    v27 = dispatch thunk of Collection.subscript.read();
    v29 = *v28;
    v27(v48, 0);
    if (v25 != v29)
    {
      break;
    }

    dispatch thunk of Collection.index(after:)();
    v30 = *v43;
    (*v43)(v18, AssociatedTypeWitness);
    (*v42)(v18, v15, AssociatedTypeWitness);
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30(v15, AssociatedTypeWitness);
    if ((v31 & 1) == 0)
    {
      v32 = v47;
      LODWORD(v19) = v39;
      v20 = v40;
      if (v39)
      {
        v32 = v41;
        if (v39 == 2)
        {
          v32 = *(v40 + 24);
        }
      }

      if (++a2 != v32)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  v31 = 0;
  v30 = *v43;
LABEL_25:
  v30(v18, AssociatedTypeWitness);
  return v31 & 1;
}

uint64_t specialized DataProtocol.matches<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v29 = a1;
  dispatch thunk of Collection.startIndex.getter();
  v15 = v9 + 8;
  v27 = (v9 + 32);
  v28 = (v9 + 8);
  v16 = ~a2 + a4;
  v17 = (a3 + a2);
  v26 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v18 = v16;
    v19 = *v17++;
    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    v20(v30, 0);
    if (v19 != v22)
    {
      break;
    }

    dispatch thunk of Collection.index(after:)();
    v23 = *v28;
    (*v28)(v14, AssociatedTypeWitness);
    (*v27)(v14, v11, AssociatedTypeWitness);
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23(v11, AssociatedTypeWitness);
    if ((v24 & 1) == 0)
    {
      v16 = v18 - 1;
      if (v18)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v24 = 0;
  v23 = *v28;
LABEL_7:
  v23(v14, AssociatedTypeWitness);
  return v24 & 1;
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v34 = a1;
  dispatch thunk of Collection.startIndex.getter();
  v15 = a3;
  if (a3)
  {
    v16 = a4 - a3;
  }

  else
  {
    v16 = 0;
  }

  v17 = v9;
  v18 = (v9 + 8);
  v31 = (v17 + 32);
  v32 = v16;
  v29 = v18 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30 = a4 - a3 - 1;
  v33 = a2;
  v19 = a2;
  while (1)
  {
    v20 = v19;
    v21 = v15;
    v22 = *(v15 + v19);
    v23 = dispatch thunk of Collection.subscript.read();
    v25 = *v24;
    result = v23(v35, 0);
    if (v22 != v25)
    {
      v28 = 0;
      v27 = *v18;
LABEL_13:
      v27(v14, AssociatedTypeWitness);
      return v28 & 1;
    }

    if (v33 < 0 || v20 >= v32)
    {
      break;
    }

    dispatch thunk of Collection.index(after:)();
    v27 = *v18;
    (*v18)(v14, AssociatedTypeWitness);
    (*v31)(v14, v11, AssociatedTypeWitness);
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27(v11, AssociatedTypeWitness);
    if ((v28 & 1) == 0)
    {
      v19 = v20 + 1;
      v15 = v21;
      if (!v21 || v30 != v20)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t DataProtocol.matches<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(*(a6 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v15 = *(*(*(a5 + 8) + 8) + 8);
  v54 = a3;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v51 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = *(v17 + 16);
  v17 += 16;
  v23 = v41 - v22;
  v48 = v24;
  v21(v20);
  v25 = v14;
  v47 = a4;
  dispatch thunk of Collection.startIndex.getter();
  v53 = (v17 - 8);
  v46 = (v52 + 8);
  v42 = (v52 + 32);
  v43 = (v17 + 16);
  v41[1] = a1;
  v41[2] = v15;
  v41[0] = v10;
  do
  {
    v26 = dispatch thunk of Collection.subscript.read();
    v28 = *v27;
    v26(v55, 0);
    v29 = dispatch thunk of Collection.subscript.read();
    v31 = *v30;
    v29(v55, 0);
    if (v28 != v31)
    {
      v45 = 0;
      v52 = *v46;
      (v52)(v25, AssociatedTypeWitness);
      goto LABEL_8;
    }

    v32 = v51;
    dispatch thunk of Collection.index(after:)();
    v33 = v48;
    v50 = *v53;
    v50(v23, v48);
    (*v43)(v23, v32, v33);
    v34 = v44;
    dispatch thunk of Collection.index(after:)();
    v52 = *v46;
    v35 = AssociatedTypeWitness;
    (v52)(v25, AssociatedTypeWitness);
    (*v42)(v25, v34, v35);
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    (v52)(v34, v35);
    v45 = v36;
    if (v36)
    {
      break;
    }

    v37 = v23;
    v38 = v51;
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v50(v38, v33);
    v23 = v37;
  }

  while ((v39 & 1) == 0);
  (v52)(v25, AssociatedTypeWitness);
LABEL_8:
  (*v53)(v23, v48);
  return v45 & 1;
}

void *closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = a5;
  v16[3] = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v16 - v12;
  dispatch thunk of Collection.startIndex.getter();
  v14 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Range();
  result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  if (v17)
  {
    if (a1)
    {
      return memcpy(v17, (a1 + v14), result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Slice<>.regions.getter(char *a1@<X3>, unint64_t a2@<X8>)
{
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v8 = &v7[v6];
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_37;
  }

  a2 = *(v3 + 3);
  if (__OFSUB__(v8, v7))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (__OFADD__(v7, v6))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v8 < v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = *(v3 + 1);
  v4 = *(v3 + 2);
  v10 = *v3;
  if (*v3 >= v7 && v8 >= v9)
  {
    if (__OFSUB__(v10, v7))
    {
      __break(1u);
    }

    else
    {
      v3 = *v3;
      if (!__OFADD__(v7, v10 - v7))
      {
        if (!__OFSUB__(v9, v7))
        {
          if (!__OFADD__(v7, v9 - v7))
          {
            if (v8 >= v9 && v9 >= v7 && v8 >= v10 && v10 >= v7)
            {
              if (v9 >= v10)
              {
                v8 = v9;
                goto LABEL_33;
              }

              goto LABEL_46;
            }

LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if (v7 >= v10 && v9 >= v8)
  {
    v3 = *(v3 + 4);
    goto LABEL_33;
  }

  if (v10 >= v7 && v8 >= v10)
  {
    v9 = v10 - v7;
    if (__OFSUB__(v10, v7))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v3 = *v3;
    if (__OFADD__(v7, v9))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v8 >= v10 && v10 >= v7)
    {
LABEL_33:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(a1 + 2);
      a2 = *(a1 + 3);
      v2 = v5 + 1;
      if (v5 < a2 >> 1)
      {
LABEL_34:
        *(a1 + 2) = v2;
        v11 = &a1[40 * v5];
        *(v11 + 4) = v3;
        *(v11 + 5) = v8;
        *(v11 + 6) = v4;
        *(v11 + 7) = v6;
        *(v11 + 8) = v7;
        return;
      }

LABEL_40:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a2 > 1), v2, 1, a1);
      goto LABEL_34;
    }

    __break(1u);
  }

  if (v7 >= v10 && v9 >= v7)
  {
    if (__OFSUB__(v9, v7))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (__OFADD__(v7, v9 - v7))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    if (v8 < v9)
    {
      goto LABEL_51;
    }

    v8 = v9;
    v3 = v7;
    if (v9 < v7)
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }
}

uint64_t specialized Slice<>.regions.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = result;
  if ((result & 0x8000000000000000) == 0 && a4 >= a2)
  {
    if (a2 >= result)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (result > 0 || a2 < a4)
  {
    if (result < 0 || a4 < result)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (result > 0 || a2 < 0)
      {
        return v8;
      }

      v7 = 0;
    }

    else
    {
      v6 = a4;
    }

LABEL_15:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[32 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = v6;
    *(v11 + 6) = a3;
    *(v11 + 7) = a4;
    return v8;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v6 = a4;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t specialized Slice<>.regions.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = Repeated<A>.regions.getter(a3, a4);
  v8 = v7;
  v10 = v9;
  result = outlined copy of Data._Representation(v7, v9);
  v12 = __OFSUB__(HIDWORD(v8), v8);
  v47 = v12;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = v10 >> 62;
    v48 = -v6;
    v45 = v6;
    v46 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v6 <= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v6;
      }

      v17 = v16 - v14++;
      v18 = v13;
      while (1)
      {
        if (!v17)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
          __break(1u);
          return result;
        }

        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v21 = *(v8 + 16);
            v20 = *(v8 + 24);
            v19 = v20 - v21;
            if (__OFSUB__(v20, v21))
            {
              goto LABEL_136;
            }

            result = outlined copy of Data._Representation(v8, v10);
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = BYTE6(v10);
          if (v15)
          {
            if (v47)
            {
              goto LABEL_135;
            }

            result = outlined copy of Data._Representation(v8, v10);
            v19 = HIDWORD(v8) - v8;
          }
        }

        v13 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_126;
        }

        if (v13 < 0 || v13 > a3)
        {
          goto LABEL_127;
        }

        v22 = a1 - v18;
        if (a1 >= v18 && v13 >= a2)
        {
          v23 = 0;
          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v23 = *(v8 + 16);
            }
          }

          else if (v15)
          {
            v23 = v8;
          }

          if (a3 < a1)
          {
            goto LABEL_128;
          }

          result = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            goto LABEL_129;
          }

          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v28 = *(v8 + 16);
              v27 = *(v8 + 24);
            }

            else
            {
              v27 = 0;
              v28 = 0;
            }
          }

          else
          {
            v27 = v8 >> 32;
            v28 = v8;
            if (!v15)
            {
              v28 = 0;
              v27 = BYTE6(v10);
            }
          }

          if (v27 < result || result < v28)
          {
            goto LABEL_130;
          }

          v31 = 0;
          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v31 = *(v8 + 16);
            }
          }

          else if (v15)
          {
            v31 = v8;
          }

          if (a2 < 0)
          {
            goto LABEL_131;
          }

          v24 = v31 + a2 - v18;
          if (__OFADD__(v31, a2 - v18))
          {
            goto LABEL_132;
          }

          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v33 = *(v8 + 16);
              v32 = *(v8 + 24);
            }

            else
            {
              v32 = 0;
              v33 = 0;
            }
          }

          else
          {
            v32 = v8 >> 32;
            v33 = v8;
            if (!v15)
            {
              v33 = 0;
              v32 = BYTE6(v10);
            }
          }

          if (v32 < v24 || v24 < v33)
          {
            goto LABEL_133;
          }

          if (v24 < result)
          {
            goto LABEL_134;
          }

          goto LABEL_114;
        }

        if (a1 <= v18 && v13 <= a2)
        {
          break;
        }

        v25 = a1 - v18;
        if (a1 >= v18 && v13 >= a1)
        {
          v26 = 0;
          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v26 = *(v8 + 16);
            }
          }

          else if (v15)
          {
            v26 = v8;
          }

          result = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_138;
          }

          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v37 = *(v8 + 16);
              v36 = *(v8 + 24);
            }

            else
            {
              v36 = 0;
              v37 = 0;
            }
          }

          else
          {
            v36 = v8 >> 32;
            v37 = v8;
            if (!v15)
            {
              v37 = 0;
              v36 = BYTE6(v10);
            }
          }

          if (v36 < result || result < v37)
          {
            goto LABEL_139;
          }

          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v24 = *(v8 + 24);
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = BYTE6(v10);
            if (v15)
            {
              v24 = v8 >> 32;
            }
          }

          if (v24 < result)
          {
            goto LABEL_140;
          }

          goto LABEL_114;
        }

        if (a1 <= v18)
        {
          v29 = a2 - v18;
          if (a2 >= v18)
          {
            v30 = 0;
            if (v15 > 1)
            {
              if (v15 == 2)
              {
                v30 = *(v8 + 16);
              }
            }

            else if (v15)
            {
              v30 = v8;
            }

            if (a3 < a2)
            {
              goto LABEL_141;
            }

            v24 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_142;
            }

            if (v15 > 1)
            {
              if (v15 == 2)
              {
                v39 = *(v8 + 16);
                v38 = *(v8 + 24);
              }

              else
              {
                v38 = 0;
                v39 = 0;
              }
            }

            else
            {
              v38 = v8 >> 32;
              v39 = v8;
              if (!v15)
              {
                v39 = 0;
                v38 = BYTE6(v10);
              }
            }

            if (v38 < v24 || v24 < v39)
            {
              goto LABEL_143;
            }

            result = 0;
            if (v15 > 1)
            {
              if (v15 == 2)
              {
                result = *(v8 + 16);
              }
            }

            else if (v15)
            {
              result = v8;
            }

            if (v24 < result)
            {
              goto LABEL_144;
            }

            goto LABEL_114;
          }
        }

        outlined consume of Data._Representation(v8, v10);
        v34 = 0;
        v35 = 0xF000000000000000;
LABEL_115:
        result = outlined consume of Data?(v34, v35);
        --v17;
        ++v14;
        v18 = v13;
        if (v48 + v14 == 1)
        {
          goto LABEL_124;
        }
      }

      if (v15 > 1)
      {
        if (v15 == 2)
        {
          result = *(v8 + 16);
          v24 = *(v8 + 24);
          goto LABEL_53;
        }

        result = 0;
        v24 = 0;
      }

      else
      {
        v24 = v8 >> 32;
        result = v8;
        if (!v15)
        {
          result = 0;
          v24 = BYTE6(v10);
          goto LABEL_114;
        }

LABEL_53:
        if (v24 < result)
        {
          goto LABEL_137;
        }
      }

LABEL_114:
      v34 = Data._Representation.subscript.getter(result, v24, v8, v10);
      v35 = v40;
      outlined consume of Data._Representation(v8, v10);
      if (v35 >> 60 == 15)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46);
        v46 = result;
      }

      v42 = *(v46 + 16);
      v41 = *(v46 + 24);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v46);
        v43 = v42 + 1;
        v46 = result;
      }

      *(v46 + 16) = v43;
      v44 = v46 + 16 * v42;
      *(v44 + 32) = v34;
      *(v44 + 40) = v35;
      v6 = v45;
      if (!(v48 + v14))
      {
        goto LABEL_124;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_124:
  outlined consume of Data._Representation(v8, v10);
  outlined consume of Data._Representation(v8, v10);
  return v46;
}

uint64_t Slice<>.regions.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  v29 = v7;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = v27 - v8;
  v27[1] = *(*(*(a2 + 8) + 8) + 8);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v27[0] = v27 - v17;
  v18 = *(v10 + 16);
  v18(v16);
  (v18)(v14, v2 + *(a1 + 36), v9);
  v19 = v30;
  dispatch thunk of Collection.startIndex.getter();
  (*(a2 + 64))(v5, a2);
  v32 = v5;
  v33 = a2;
  v34 = v19;
  v35 = v2;
  v20 = v27[0];
  v36 = v27[0];
  v37 = v14;
  v21 = v14;
  v22 = v28;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v23 = v31;
  v24 = Sequence.compactMap<A>(_:)();
  (*(v29 + 8))(v23, v22);
  v25 = *(v10 + 8);
  v25(v30, v9);
  v25(v21, v9);
  v25(v20, v9);
  return v24;
}

uint64_t closure #1 in Slice<>.regions.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v123 = a4;
  v131 = a3;
  v132 = a5;
  v134 = a2;
  v136 = a1;
  v122 = a8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = *(swift_getAssociatedConformanceWitness() + 8);
  v137 = *(*(v118 + 8) + 8);
  v135 = AssociatedTypeWitness;
  v11 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v110 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v107 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114 = type metadata accessor for Range();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v120 = &v107 - v15;
  v116 = v11;
  v126 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v107 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v107 - v21;
  v129 = *(a7 + 8);
  v130 = a6;
  v133 = *(*(v129 + 8) + 8);
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v107 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v107 - v31;
  v33 = *(v23 + 16);
  v124 = v33;
  v125 = v23 + 16;
  v34 = v134;
  (v33)(&v107 - v31, v134, v22, v30);
  v35 = *(type metadata accessor for Slice() + 40);
  v33(v25, v34, v22);
  v128 = swift_checkMetadataState();
  dispatch thunk of Collection.count.getter();
  v117 = v35;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v135 = *(v23 + 8);
  v135(v25, v22);
  v36 = v134;
  (*(v23 + 40))(v134, v28, v22);
  swift_getAssociatedConformanceWitness();
  v37 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v121 = v23 + 8;
  if (v37)
  {
    v124(v28, v36, v22);
    v38 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v135(v28, v22);
    if (v38)
    {
      v125 = v22;
      v39 = v119;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of RandomAccessCollection.distance(from:to:)();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v40 = (v126 + 1);
      v133 = v126[1];
      v41 = v32;
      v42 = v116;
      v133(v39, v116);
      v43 = v108;
      v44 = v127;
      dispatch thunk of Collection.startIndex.getter();
      v134 = v41;
      dispatch thunk of RandomAccessCollection.distance(from:to:)();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v132 = v40;
      v133(v43, v42);
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v46 = v126;
        v47 = v126[2];
        v48 = v109;
        v47(v109, v44, v42);
        v49 = v39;
        v50 = TupleTypeMetadata2;
        v47(&v48[*(TupleTypeMetadata2 + 48)], v49, v42);
        v51 = v46;
        v52 = v110;
        v53 = v112;
        (*(v110 + 16))(v112, v48, v50);
        v54 = *(v50 + 48);
        v131 = v51[4];
        v55 = v120;
        v131(v120, v53, v42);
        v56 = v133;
        v133(&v53[v54], v42);
        (*(v52 + 32))(v53, v48, v50);
        v57 = *(v50 + 48);
        v58 = v114;
        v131(&v55[*(v114 + 36)], &v53[v57], v42);
        v56(v53, v42);
        v59 = v122;
        dispatch thunk of Collection.subscript.getter();
        (*(v113 + 8))(v55, v58);
        v56(v119, v42);
        v56(v127, v42);
        v60 = 0;
        v32 = v134;
        v22 = v125;
LABEL_20:
        v135(v32, v22);
        v106 = swift_getAssociatedTypeWitness();
        return (*(*(v106 - 8) + 56))(v59, v60, 1, v106);
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v124(v28, v36, v22);
    v61 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v135(v28, v22);
    if (v61)
    {
      v134 = v32;
      v62 = v127;
      dispatch thunk of Collection.startIndex.getter();
      v63 = v119;
      dispatch thunk of Collection.endIndex.getter();
      v64 = v116;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v65 = v126;
        v66 = v126[4];
        v133 = v66;
        v67 = v109;
        (v66)(v109, v62, v64);
        v68 = TupleTypeMetadata2;
        (v66)(&v67[*(TupleTypeMetadata2 + 48)], v63, v64);
        v69 = v110;
        v70 = v112;
        (*(v110 + 16))(v112, v67, v68);
        v132 = *(v68 + 48);
        (v133)(v120, v70, v64);
        v71 = v65[1];
        v71(&v132[v70], v64);
        (*(v69 + 32))(v70, v67, v68);
        v72 = *(v68 + 48);
        v73 = v114;
        v74 = v120;
        (v133)(&v120[*(v114 + 36)], &v70[v72], v64);
        v71(v70, v64);
        v59 = v122;
        dispatch thunk of Collection.subscript.getter();
        (*(v113 + 8))(v74, v73);
        v60 = 0;
        v32 = v134;
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v124(v28, v36, v22);
    v75 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v135(v28, v22);
    if (v75)
    {
      v76 = v119;
      dispatch thunk of Collection.startIndex.getter();
      v134 = v32;
      dispatch thunk of RandomAccessCollection.distance(from:to:)();
      v77 = v127;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v78 = v126;
      v79 = v116;
      v132 = v126[1];
      v133 = (v126 + 1);
      (v132)(v76, v116);
      v80 = v77;
      dispatch thunk of Collection.endIndex.getter();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v81 = v109;
      (v78[2])(v109, v80, v79);
      v82 = TupleTypeMetadata2;
      v83 = v78[4];
      v83(&v81[*(TupleTypeMetadata2 + 48)], v76, v79);
      v131 = v83;
      v126 = v78 + 4;
      v84 = v110;
      v85 = v112;
      (*(v110 + 16))(v112, v81, v82);
      v130 = *(v82 + 48);
      v86 = v120;
      v83(v120, v85, v79);
      v87 = v132;
      (v132)(&v85[v130], v79);
      (*(v84 + 32))(v85, v81, v82);
      v88 = *(v82 + 48);
      v89 = v114;
      v131(&v86[*(v114 + 36)], &v85[v88], v79);
      v87(v85, v79);
      v59 = v122;
      dispatch thunk of Collection.subscript.getter();
      (*(v113 + 8))(v86, v89);
      v87(v127, v79);
LABEL_17:
      v60 = 0;
      v32 = v134;
      goto LABEL_20;
    }
  }

  if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
  {
    v60 = 1;
    v59 = v122;
    goto LABEL_20;
  }

  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    v60 = 1;
    v59 = v122;
    goto LABEL_20;
  }

  v90 = v119;
  dispatch thunk of Collection.startIndex.getter();
  v134 = v32;
  dispatch thunk of RandomAccessCollection.distance(from:to:)();
  v91 = v127;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v92 = v126;
  v93 = v126[1];
  v94 = v116;
  v131 = (v126 + 1);
  v133 = v93;
  v93(v90, v116);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v132 = v92[4];
    v95 = v109;
    (v132)(v109, v90, v94);
    v96 = v92;
    v97 = TupleTypeMetadata2;
    (v96[2])(&v95[*(TupleTypeMetadata2 + 48)], v91, v94);
    v98 = v110;
    v99 = v112;
    (*(v110 + 16))(v112, v95, v97);
    v100 = *(v97 + 48);
    (v132)(v120, v99, v94);
    v101 = &v99[v100];
    v102 = v133;
    v133(v101, v94);
    (*(v98 + 32))(v99, v95, v97);
    v103 = *(v97 + 48);
    v104 = v114;
    v105 = v120;
    (v132)(&v120[*(v114 + 36)], &v99[v103], v94);
    v102(v99, v94);
    v59 = v122;
    dispatch thunk of Collection.subscript.getter();
    (*(v113 + 8))(v105, v104);
    v133(v127, v94);
    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t associated type witness table accessor for DataProtocol.Regions.Sequence.Element : DataProtocol in <> Slice<A>()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t protocol witness for DataProtocol.regions.getter in conformance <> Slice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Slice<>.regions.getter(a1, *(a2 - 8));
  *a3 = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> Slice<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *protocol witness for DataProtocol.copyBytes(to:count:) in conformance UnsafeRawBufferPointer(char *result, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v5 = v4 - *v3;
  if (!*v3)
  {
    v5 = 0;
  }

  if ((a3 & 0x8000000000000000) == 0 && v5 >= a3)
  {
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, a2, 0, a3, *v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DataProtocol.firstRange<A, B>(of:in:) in conformance Data@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t (*a8)(uint64_t, uint64_t, void, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a8(a1, a2, *v8, v8[1], a3, a4, a5, a6);
  *a7 = result;
  *(a7 + 8) = v11;
  *(a7 + 16) = v12 & 1;
  return result;
}

uint64_t protocol witness for DataProtocol.copyBytes(to:count:) in conformance <A> UnsafeBufferPointer<A>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return specialized DataProtocol.copyBytes<A>(to:from:)(result, a2, 0, a3, *v3, v3[1]);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DataProtocol.firstRange<A, B>(of:in:) in conformance DispatchData.Region@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t (*a8)(uint64_t, uint64_t, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a8(a1, a2, *v8, v8[1], v8[2], a3, a4, a5, a6);
  *a7 = result;
  *(a7 + 8) = v11;
  *(a7 + 16) = v12 & 1;
  return result;
}

void protocol witness for DataProtocol.copyBytes(to:count:) in conformance DispatchData.Region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v6 = (v5 + a3);
  if (__OFADD__(v5, a3))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v3[1];
  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v6 >= v5)
  {
    v10 = __OFSUB__(v8, v6);
    v9 = v8 - v6 < 0;
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  if (v9 == v10)
  {
    specialized DataProtocol.copyBytes<A>(to:from:)(a1, a2, v5, v6, *v3, v7, v3[2]);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for DataProtocol.firstRange<A, B>(of:in:) in conformance DispatchData@<X0>(uint64_t a1@<X8>, uint64_t (*a2)(void))
{
  result = a2();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

void protocol witness for DataProtocol.copyBytes(to:count:) in conformance DispatchData(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  if (v4 < v5)
  {
    __break(1u);
  }

  else
  {
    specialized DataProtocol.copyBytes<A>(to:from:)(a1, a2, v5, v4);
  }
}

unint64_t lazy protocol witness table accessor for type DispatchData.Region and conformance DispatchData.Region()
{
  result = lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region;
  if (!lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region;
  if (!lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region;
  if (!lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region;
  if (!lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region;
  if (!lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData.Region and conformance DispatchData.Region);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd);
    lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeBufferPointer<UInt8>> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeBufferPointer<UInt8>> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeBufferPointer<UInt8>> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySRys5UInt8VGGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance <A> UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeBufferPointer<UInt8>> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> UnsafeBufferPointer<A>(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd);
  *(a1 + 8) = result;
  return result;
}

Swift::Void __swiftcall NSDecimal.multiply(by:)(NSDecimal *by)
{
  NSDecimal._multiply(by:roundingMode:)(v2, by, v1);
  if (v7)
  {
    *&v8[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v8);
    _So9NSDecimala__length_setter(0, v8);
    _So9NSDecimala__isNegative_setter(1, v8);
    _So9NSDecimala__isCompact_setter(v8);
    _So9NSDecimala__reserved_setter(v8);

    *v3 = *v8;
    *(v3 + 16) = *&v8[16];
  }

  else
  {
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = v6;
  }
}

Swift::Void __swiftcall NSDecimal.divide(by:)(NSDecimal *by)
{
  *v3 = specialized NSDecimal._divide(by:roundingMode:)(by, v1, v2, *v3, *(v3 + 8), *(v3 + 16));
  *(v3 + 8) = v4;
  *(v3 + 10) = v5;
  *(v3 + 12) = v6;
  *(v3 + 14) = v7;
  *(v3 + 16) = v8;
  *(v3 + 18) = v9;
}

void __swiftcall NSDecimal._bridgeToObjectiveC()(NSDecimalNumber *__return_ptr retstr)
{
  v4 = v1;
  v5 = v2;
  v6 = v3;
  [objc_allocWithZone(NSDecimalNumber) initWithDecimal_];
}

double static NSDecimal._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  [a1 decimalValue];
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0;
  return result;
}

uint64_t static NSDecimal._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  [a1 decimalValue];
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0;
  return 1;
}

uint64_t static NSDecimal._unconditionallyBridgeFromObjectiveC(_:)(void *a1)
{
  if (a1)
  {
    [a1 decimalValue];
  }

  else
  {
    *(&v2[1] + 4) = 0;
    *(v2 + 4) = 0;
    _So9NSDecimala__exponent_setter(0, v2);
    _So9NSDecimala__length_setter(0, v2);
    _So9NSDecimala__isNegative_setter(0, v2);
    _So9NSDecimala__isCompact_setter(v2);
    _So9NSDecimala__reserved_setter(v2);
  }

  return v2[0];
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance NSDecimal()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  return [objc_allocWithZone(NSDecimalNumber) initWithDecimal_];
}

double protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSDecimal(void *a1, uint64_t a2)
{
  [a1 decimalValue];
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSDecimal(void *a1, uint64_t a2)
{
  [a1 decimalValue];
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0;
  return 1;
}

double protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSDecimal@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    [a1 decimalValue];
  }

  else
  {
    *&v4[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v4);
    _So9NSDecimala__length_setter(0, v4);
    _So9NSDecimala__isNegative_setter(0, v4);
    _So9NSDecimala__isCompact_setter(v4);
    _So9NSDecimala__reserved_setter(v4);
  }

  result = *v4;
  *a2 = *v4;
  *(a2 + 16) = *&v4[16];
  return result;
}

void __swiftcall pow(_:_:)(NSDecimal *__return_ptr retstr, NSDecimal *a2, Swift::Int a3)
{
  v5 = v4;
  v6 = v3;
  v7 = a3;
  v8 = a2;
  v59 = *MEMORY[0x1E69E9840];
  *v58 = a2;
  v9 = a2 >> 32;
  v10 = a2 >> 48;
  v11 = a3 >> 16;
  v12 = HIDWORD(a3);
  *&v58[8] = a3;
  v13 = HIWORD(a3);
  v14 = HIWORD(v3);
  *&v58[16] = v3;
  if (!_So9NSDecimala__length_getter(v58))
  {
    *v58 = v8;
    *&v58[4] = v9;
    *&v58[6] = v10;
    *&v58[8] = v7;
    *&v58[10] = v11;
    *&v58[12] = v12;
    *&v58[14] = v13;
    *&v58[16] = v6;
    *&v58[18] = v14;
    if (_So9NSDecimala__isNegative_getter(v58))
    {
      goto LABEL_61;
    }
  }

  if (!v5)
  {
    specialized NSDecimal.init(_:)(1uLL);
    return;
  }

  v51 = v5;
  *v58 = v8;
  *&v58[4] = v9;
  *&v58[6] = v10;
  *&v58[8] = v7;
  *&v58[10] = v11;
  *&v58[12] = v12;
  *&v58[14] = v13;
  *&v58[16] = v6;
  *&v58[18] = v14;
  v15 = _So9NSDecimala__exponent_getter(v58);
  memset(v58, 0, sizeof(v58));
  if (v15 == _So9NSDecimala__exponent_getter(v58))
  {
    *v58 = v8;
    *&v58[4] = v9;
    *&v58[6] = v10;
    *&v58[8] = v7;
    *&v58[10] = v11;
    *&v58[12] = v12;
    *&v58[14] = v13;
    *&v58[16] = v6;
    *&v58[18] = v14;
    v16 = _So9NSDecimala__length_getter(v58);
    memset(v58, 0, sizeof(v58));
    if (v16 == _So9NSDecimala__length_getter(v58))
    {
      *v58 = v8;
      *&v58[4] = v9;
      *&v58[6] = v10;
      *&v58[8] = v7;
      *&v58[10] = v11;
      *&v58[12] = v12;
      *&v58[14] = v13;
      *&v58[16] = v6;
      *&v58[18] = v14;
      isNegative_getter = _So9NSDecimala__isNegative_getter(v58);
      memset(v58, 0, sizeof(v58));
      if (isNegative_getter == _So9NSDecimala__isNegative_getter(v58))
      {
        *v58 = v8;
        *&v58[4] = v9;
        *&v58[6] = v10;
        *&v58[8] = v7;
        *&v58[10] = v11;
        *&v58[12] = v12;
        *&v58[14] = v13;
        *&v58[16] = v6;
        *&v58[18] = v14;
        isCompact_getter = _So9NSDecimala__isCompact_getter(v58);
        memset(v58, 0, sizeof(v58));
        if (isCompact_getter == _So9NSDecimala__isCompact_getter(v58))
        {
          *v58 = v8;
          *&v58[4] = v9;
          *&v58[6] = v10;
          *&v58[8] = v7;
          *&v58[10] = v11;
          *&v58[12] = v12;
          *&v58[14] = v13;
          *&v58[16] = v6;
          *&v58[18] = v14;
          v19 = _So9NSDecimala__reserved_getter(v58);
          memset(v58, 0, sizeof(v58));
          if (v19 == _So9NSDecimala__reserved_getter(v58) && !v9 && !v10 && !v7 && !v11 && !v12 && !v13 && !v14 && !v6)
          {
            goto LABEL_47;
          }
        }
      }
    }
  }

  *v58 = v8;
  *&v58[4] = v9;
  *&v58[6] = v10;
  *&v58[8] = v7;
  *&v58[10] = v11;
  *&v58[12] = v12;
  *&v58[14] = v13;
  *&v58[16] = v6;
  *&v58[18] = v14;
  if (!_So9NSDecimala__length_getter(v58))
  {
    *v58 = v8;
    *&v58[4] = v9;
    *&v58[6] = v10;
    *&v58[8] = v7;
    *&v58[10] = v11;
    *&v58[12] = v12;
    *&v58[14] = v13;
    *&v58[16] = v6;
    *&v58[18] = v14;
    if (_So9NSDecimala__isNegative_getter(v58))
    {
      memset(v58, 0, sizeof(v58));
      if (_So9NSDecimala__length_getter(v58))
      {
        goto LABEL_51;
      }

      memset(v58, 0, sizeof(v58));
      if (!_So9NSDecimala__isNegative_getter(v58))
      {
        goto LABEL_51;
      }

LABEL_47:
      if (v51 > 0)
      {
        return;
      }

LABEL_61:
      *&v58[4] = 0uLL;
      _So9NSDecimala__exponent_setter(0, v58);
      _So9NSDecimala__length_setter(0, v58);
      _So9NSDecimala__isNegative_setter(1, v58);
      _So9NSDecimala__isCompact_setter(v58);
      _So9NSDecimala__reserved_setter(v58);
      return;
    }
  }

  memset(v58, 0, sizeof(v58));
  if (_So9NSDecimala__length_getter(v58) || (memset(v58, 0, sizeof(v58)), !_So9NSDecimala__isNegative_getter(v58)))
  {
    *v58 = v8;
    *&v58[4] = v9;
    *&v58[6] = v10;
    *&v58[8] = v7;
    *&v58[10] = v11;
    *&v58[12] = v12;
    *&v58[14] = v13;
    *&v58[16] = v6;
    *&v58[18] = v14;
    v53 = _So9NSDecimala__isNegative_getter(v58);
    memset(v58, 0, sizeof(v58));
    if (_So9NSDecimala__isNegative_getter(v58) >= v53)
    {
      *v58 = v8;
      *&v58[4] = v9;
      *&v58[6] = v10;
      *&v58[8] = v7;
      *&v58[10] = v11;
      *&v58[12] = v12;
      *&v58[14] = v13;
      *&v58[16] = v6;
      *&v58[18] = v14;
      v54 = _So9NSDecimala__isNegative_getter(v58);
      memset(v58, 0, sizeof(v58));
      if (v54 >= _So9NSDecimala__isNegative_getter(v58))
      {
        *v58 = v8;
        *&v58[4] = v9;
        *&v58[6] = v10;
        *&v58[8] = v7;
        *&v58[10] = v11;
        *&v58[12] = v12;
        *&v58[14] = v13;
        *&v58[16] = v6;
        *&v58[18] = v14;
        if (!_So9NSDecimala__length_getter(v58))
        {
          memset(v58, 0, sizeof(v58));
          if (_So9NSDecimala__length_getter(v58))
          {
            v29 = -1;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_50;
        }

        memset(v58, 0, sizeof(v58));
        if (!_So9NSDecimala__length_getter(v58))
        {
          *v58 = v8;
          *&v58[4] = v9;
          *&v58[6] = v10;
          *&v58[8] = v7;
          *&v58[10] = v11;
          *&v58[12] = v12;
          *&v58[14] = v13;
          *&v58[16] = v6;
          *&v58[18] = v14;
          v29 = _So9NSDecimala__length_getter(v58) != 0;
          goto LABEL_50;
        }

        LODWORD(v56) = v8;
        WORD2(v56) = v9;
        WORD3(v56) = v10;
        WORD4(v56) = v7;
        WORD5(v56) = v11;
        WORD6(v56) = v12;
        HIWORD(v56) = v13;
        LOWORD(v57) = v6;
        HIWORD(v57) = v14;
        memset(v58, 0, sizeof(v58));
        specialized static NSDecimal._normalize(a:b:roundingMode:)(&v56, v58);
        NSDecimal.asVariableLengthInteger()(v56, *(&v56 + 1), v57);
        v21 = v20;
        NSDecimal.asVariableLengthInteger()(*v58, *&v58[8], *&v58[16]);
        v23 = v22;
        v24 = v21;
        v25 = *(v21 + 16);
        v26 = *(v23 + 16);
        if (v26 >= v25)
        {
          if (v25 < v26)
          {
            LOBYTE(v27) = 0;
LABEL_43:
            v28 = -1;
LABEL_44:
            v52 = v28;
            goto LABEL_45;
          }

          while (1)
          {
            LOBYTE(v27) = v25 == 0;
            if (!v25)
            {
              goto LABEL_65;
            }

            v30 = *(v24 + 30 + 2 * v25);
            v31 = *(v23 + 30 + 2 * v25);
            if (v31 < v30)
            {
              break;
            }

            --v25;
            if (v30 < v31)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          LOBYTE(v27) = 0;
        }

        v28 = 1;
        goto LABEL_44;
      }
    }
  }

LABEL_51:
  while (1)
  {
    v27 = v51;
    if ((v51 & 0x8000000000000000) == 0)
    {
      break;
    }

    v27 = -v51;
    if (!__OFSUB__(0, v51))
    {
      break;
    }

    __break(1u);
LABEL_65:
    v52 = 0;
LABEL_45:

    if (_So9NSDecimala__isNegative_getter(&v56))
    {
      if (v27)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v29 = v52;
LABEL_50:
      if (!v29)
      {
        goto LABEL_47;
      }
    }
  }

  specialized NSDecimal.init(_:)(1uLL);
  v55 = HIWORD(v32);
  if (v27 >= 2)
  {
    do
    {
      v33 = (v8 | (v9 << 32) | (v10 << 48));
      v34 = v7 | (v11 << 16) | (v12 << 32);
      v35 = v34 | (v13 << 48);
      if (v27)
      {
        NSDecimal._multiply(by:roundingMode:)(v55, v33, v35);
        if (v38)
        {
          goto LABEL_60;
        }

        v55 = HIWORD(v37);
        --v27;
        v34 = v36;
      }

      NSDecimal._multiply(by:roundingMode:)(v34, v33, v35);
      if (v38)
      {
        goto LABEL_60;
      }

      v8 = v39;
      v7 = v40;
      v13 = HIWORD(v40);
      v12 = HIDWORD(v40);
      v11 = v40 >> 16;
      v10 = HIWORD(v39);
      v9 = HIDWORD(v39);
      v41 = v27 > 3;
      v27 = v27 >> 1;
    }

    while (v41);
  }

  NSDecimal._multiply(by:roundingMode:)(v55, (v8 | (v9 << 32) | (v10 << 48)), (v7 | (v11 << 16) | (v12 << 32) | (v13 << 48)));
  if (v38)
  {
LABEL_60:

    goto LABEL_61;
  }

  if (v51 < 0)
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
    v48 = specialized NSDecimal.init(_:)(1uLL);
    specialized NSDecimal._divide(by:roundingMode:)(v45, v46, v47, v48, v49, v50);
  }
}

void _NSDecimalRound(uint64_t a1, int a2, Swift::Int scale, NSDecimal *retstr)
{
  NSDecimal._round(scale:roundingMode:)(retstr, scale, retstr);
  if (v8)
  {
  }

  else
  {
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }
}

uint64_t __NSDecimalString(_:_:)(Swift::OpaquePointer a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any?(a2, &v62);
  if (!v64)
  {
    outlined destroy of Any?(&v62);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v10 = 0xE100000000000000;
    v9 = 46;
    goto LABEL_11;
  }

  v4 = *(&v65 + 1);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 224))(ObjectType, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 46;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

LABEL_11:
  outlined init with copy of Any?(a2, &v62);
  if (!v64)
  {
    outlined destroy of Any?(&v62);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_46;
  }

  v11 = v65;
  *&v65 = 0xD000000000000012;
  *(&v65 + 1) = 0x8000000181481470;
  AnyHashable.init<A>(_:)();
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(&v62), (v13 & 1) != 0))
  {
    outlined init with copy of Any(*(v11 + 56) + 32 * v12, &v65);
    outlined destroy of AnyHashable(&v62);
    if (swift_dynamicCast())
    {

      v10 = *(&v60 + 1);
      v9 = v60;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v62);
  }

  v15 = *MEMORY[0x1E695D990];
  isTaggedPointer = _objc_isTaggedPointer(*MEMORY[0x1E695D990]);
  v17 = v15;
  v18 = v17;
  if (!isTaggedPointer)
  {
LABEL_25:
    LOBYTE(v60) = 0;
    *&v62 = 0;
    if (__CFStringIsCF())
    {
      v14 = v62;
      if (!v62)
      {

        v20 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_41;
      }
    }

    else
    {
      v23 = v18;
      v24 = String.init(_nativeStorage:)();
      if (v25)
      {
        v20 = v24;
        v22 = v25;

        v14 = 0;
        goto LABEL_41;
      }

      *&v62 = [v23 length];
      if (!v62)
      {

        v20 = 0;
        v14 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_41;
      }
    }

    v14 = 0;
    goto LABEL_38;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v17);
  if (!TaggedPointerTag)
  {
    goto LABEL_34;
  }

  if (TaggedPointerTag == 22)
  {
    v26 = [v18 UTF8String];
    if (!v26)
    {
      __break(1u);
LABEL_88:

      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v27 = String.init(utf8String:)(v26);
    if (v28)
    {
LABEL_35:
      v20 = v27;
      v22 = v28;

      v14 = 0;
      goto LABEL_41;
    }

    __break(1u);
LABEL_34:
    _CFIndirectTaggedPointerStringGetContents();
    v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v28)
    {
      [v18 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v14 = 0;
      v22 = *(&v60 + 1);
      v20 = v60;
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v14 = 0;
  v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v22 = v21;

  while (1)
  {
LABEL_41:
    *&v60 = v20;
    *(&v60 + 1) = v22;
    AnyHashable.init<A>(_:)();
    if (*(v11 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(&v62), (v31 & 1) != 0))
    {
      outlined init with copy of Any(*(v11 + 56) + 32 * v30, &v65);
      outlined destroy of AnyHashable(&v62);

      if (swift_dynamicCast())
      {

        v10 = *(&v60 + 1);
        v9 = v60;
      }
    }

    else
    {

      outlined destroy of AnyHashable(&v62);
    }

LABEL_46:
    v62 = *a1._rawValue;
    v63 = *(a1._rawValue + 4);
    if (!_So9NSDecimala__length_getter(&v62))
    {
      v62 = *a1._rawValue;
      v63 = *(a1._rawValue + 4);
      if (_So9NSDecimala__isNegative_getter(&v62))
      {

        return 5136718;
      }
    }

    v62 = *a1._rawValue;
    v63 = *(a1._rawValue + 4);
    if (!_So9NSDecimala__length_getter(&v62))
    {

      return 48;
    }

    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    v62 = *a1._rawValue;
    v63 = *(a1._rawValue + 4);
    v65 = *a1._rawValue;
    v66 = *(a1._rawValue + 4);
    if (_So9NSDecimala__exponent_getter(&v65) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v65 = v62;
        v66 = v63;
        v32 = _So9NSDecimala__exponent_getter(&v65);
        _So9NSDecimala__exponent_setter((v32 - 1), &v62);
        v65 = v62;
        v66 = v63;
      }

      while (_So9NSDecimala__exponent_getter(&v65) > 0);
    }

    v65 = v62;
    v66 = v63;
    if (!_So9NSDecimala__exponent_getter(&v65))
    {
      _So9NSDecimala__exponent_setter(1, &v62);
    }

    v65 = v62;
    v66 = v63;
    if (!_So9NSDecimala__length_getter(&v65))
    {
      break;
    }

    v50 = v10;
    v49 = v9;
    while (1)
    {
      v65 = v62;
      v66 = v63;
      if (!_So9NSDecimala__exponent_getter(&v65))
      {
        MEMORY[0x1865CB0E0](v9, v10);
      }

      v65 = v62;
      v66 = v63;
      v33 = _So9NSDecimala__exponent_getter(&v65);
      _So9NSDecimala__exponent_setter((v33 + 1), &v62);
      v10 = v62;
      v34 = WORD2(v62);
      v35 = WORD4(v62);
      v36 = WORD5(v62);
      v54 = WORD3(v62);
      v58 = WORD6(v62);
      v56 = HIWORD(v62);
      v57 = v63;
      v55 = HIWORD(v63);
      NSDecimal.asVariableLengthInteger()(v62 | (WORD2(v62) << 32) | (WORD3(v62) << 48), WORD4(v62) | (WORD5(v62) << 16) | (WORD6(v62) << 32) | (HIWORD(v62) << 48), v63 | (HIWORD(v63) << 16));
      v11 = v37;
      v38 = *(v37 + 16);
      a1._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v38);
      *&v65 = a1;
      if (v38)
      {
        break;
      }

      v43 = 48;
LABEL_66:
      while (1)
      {
        v44 = *(a1._rawValue + 2);
        if (!v44 || *(a1._rawValue + v44 + 15))
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v65 + 16) - 1);
        }

        a1._rawValue = v65;
      }

      LODWORD(v65) = v10;
      WORD2(v65) = v34;
      WORD3(v65) = v54;
      WORD4(v65) = v35;
      WORD5(v65) = v36;
      WORD6(v65) = v58;
      HIWORD(v65) = v56;
      LOWORD(v66) = v57;
      HIWORD(v66) = v55;
      NSDecimal.copyVariableLengthInteger(_:)(a1);
      if (v14)
      {
        goto LABEL_88;
      }

      v45 = *(a1._rawValue + 2);

      v10 = v50;
      v9 = v49;
      if (HIDWORD(v45))
      {
        __break(1u);
      }

      _So9NSDecimala__length_setter(v45, &v65);
      v62 = v65;
      v63 = v66;
      *&v60 = v43;
      v46 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v46);

      v60 = v62;
      v61 = v63;
      if (!_So9NSDecimala__length_getter(&v60))
      {
        goto LABEL_73;
      }
    }

    v51 = v36;
    v52 = v35;
    v53 = v34;
    v39 = v10;
    v9 = v14;
    v40 = 0;
    v41 = v38 + 15;
    while (1)
    {
      v14 = v41 - 15;
      if ((v41 - 15) > *(v11 + 16))
      {
        break;
      }

      v10 = *(v11 + 2 * v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(a1._rawValue);
      }

      if (v14 > *(a1._rawValue + 2))
      {
        goto LABEL_85;
      }

      v42 = v10 | (v40 << 16);
      *(a1._rawValue + v41) = v42 / 0xA;
      v40 = v42 % 0xA;
      if (--v41 == 15)
      {

        *&v65 = a1;
        v43 = v40 | 0x30;
        LODWORD(v10) = v39;
        v34 = v53;
        v35 = v52;
        v36 = v51;
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);

LABEL_38:
    v20 = String.init(_cocoaString:)();
    v22 = v29;
  }

LABEL_73:
  v65 = v62;
  v66 = v63;
  if (_So9NSDecimala__exponent_getter(&v65) < 1)
  {
    while (1)
    {
      v65 = v62;
      v66 = v63;
      if (!_So9NSDecimala__exponent_getter(&v65))
      {
        break;
      }

      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v65 = v62;
      v66 = v63;
      v47 = _So9NSDecimala__exponent_getter(&v65);
      _So9NSDecimala__exponent_setter((v47 + 1), &v62);
    }

    MEMORY[0x1865CB0E0](v9, v10);

    MEMORY[0x1865CB0E0](48, 0xE100000000000000);
  }

  else
  {
  }

  v65 = v62;
  v66 = v63;
  if (_So9NSDecimala__isNegative_getter(&v65))
  {
    MEMORY[0x1865CB0E0](45, 0xE100000000000000);
  }

  v65 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
  lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
  return String.init<A>(_:)();
}