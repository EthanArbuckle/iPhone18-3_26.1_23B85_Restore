uint64_t Notification.description.getter()
{

  return Notification.description.getter();
}

{
  v1 = v0;
  v25[4] = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v2 = *v0;
  isTaggedPointer = _objc_isTaggedPointer(v2);
  v4 = v2;
  v5 = v4;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v19)
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v23;
      v9 = v24;
      goto LABEL_21;
    }

    v9 = v19;
    v17 = v18;
LABEL_19:

    v10 = v17;
    goto LABEL_21;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v9 = v8;

      v10 = v7;
LABEL_21:
      MEMORY[0x1865CB0E0](v10, v9);

      MEMORY[0x1865CB0E0](0x7463656A626F202CLL, 0xEB00000000203D20);
      outlined init with copy of Any?((v1 + 1), v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
      v21 = String.init<A>(describing:)();
      MEMORY[0x1865CB0E0](v21);

      MEMORY[0x1865CB0E0](0x6E4972657375202CLL, 0xED0000203D206F66);
      v25[0] = v1[5];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd);
      v22 = String.init<A>(describing:)();
      MEMORY[0x1865CB0E0](v22);

      return 0x203D20656D616ELL;
    }

LABEL_6:
    v25[0] = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v11 = v5;
      v12 = String.init(_nativeStorage:)();
      if (v13)
      {
        v9 = v13;
        v14 = v12;

        v10 = v14;
        goto LABEL_21;
      }

      v25[0] = [v11 length];
      if (v25[0])
      {
        v10 = String.init(_cocoaString:)();
        v9 = v20;
        goto LABEL_21;
      }
    }

    v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_21;
  }

  result = [v5 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v16)
    {
      v17 = result;
      v9 = v16;
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _NSFileManagerBridge.createFile(atPath:contents:attributes:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v178 = a1;
  v8 = 0;
  v185 = *MEMORY[0x1E69E9840];
  v177 = OBJC_IVAR____NSFileManagerBridge__impl;
  v184 = a5;
  if (!a5 || (v10 = *(a5 + 16), , !v10) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileProtectionKey"), (v12 & 1) == 0) || (outlined init with copy of Any(*(a5 + 56) + 32 * v11, v183), (swift_dynamicCast() & 1) == 0))
  {
    i = 1;
    goto LABEL_11;
  }

  v13 = String._bridgeToObjectiveCImpl()();

  isTaggedPointer = _objc_isTaggedPointer(@"NSFileProtectionNone");
  swift_unknownObjectRetain_n();
  v15 = @"NSFileProtectionNone";
  v16 = v15;
  if (!isTaggedPointer)
  {
    goto LABEL_46;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v15);
  switch(TaggedPointerTag)
  {
    case 0:
      v181 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v52)
      {
        [(__CFString *)v16 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v19 = v180;
        v176 = v179;
        goto LABEL_134;
      }

      v19 = v52;
      v176 = v51;
      goto LABEL_131;
    case 0x16:
      v49 = [(__CFString *)v16 UTF8String];
      if (!v49)
      {
        goto LABEL_266;
      }

      v176 = String.init(utf8String:)(v49);
      if (!v50)
      {
        goto LABEL_268;
      }

      v19 = v50;
LABEL_131:

      goto LABEL_134;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v172 = v16;
      v176 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v19 = v18;

      goto LABEL_134;
  }

LABEL_46:
  LOBYTE(v179) = 0;
  *&v183[0] = 0;
  LOBYTE(v181) = 0;
  v182 = 0;
  if (!__CFStringIsCF())
  {
    v46 = v16;
    v47 = String.init(_nativeStorage:)();
    if (v48)
    {
      v19 = v48;
      v176 = v47;

      goto LABEL_134;
    }

    *&v183[0] = [(__CFString *)v46 length];
    if (*&v183[0])
    {
      goto LABEL_132;
    }

LABEL_63:
    v176 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_134;
  }

  if (!*&v183[0])
  {

    goto LABEL_63;
  }

  if (v182 != 1)
  {
LABEL_132:
    v85 = String.init(_cocoaString:)();
    goto LABEL_133;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v85 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_133:
  v176 = v85;
  v19 = v86;
LABEL_134:
  v87 = _objc_isTaggedPointer(v13);
  v88 = v13;
  v89 = v88;
  v175 = @"NSFileProtectionKey";
  if (!v87)
  {
    goto LABEL_139;
  }

  v90 = _objc_getTaggedPointerTag(v88);
  if (!v90)
  {
    goto LABEL_150;
  }

  if (v90 == 22)
  {
    v100 = [v89 UTF8String];
    if (!v100)
    {
      goto LABEL_267;
    }

    v101 = String.init(utf8String:)(v100);
    if (v102)
    {
LABEL_151:
      v91 = v101;
      v93 = v102;
      swift_unknownObjectRelease();
      goto LABEL_159;
    }

    __break(1u);
LABEL_150:
    v181 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v101 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v102)
    {
      [v89 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v91 = v179;
      v93 = v180;
      goto LABEL_159;
    }

    goto LABEL_151;
  }

  if (v90 != 2)
  {
LABEL_139:
    LOBYTE(v179) = 0;
    *&v183[0] = 0;
    LOBYTE(v181) = 0;
    v182 = 0;
    if (__CFStringIsCF())
    {
      v91 = *&v183[0];
      if (!*&v183[0])
      {
        swift_unknownObjectRelease();
        v93 = 0xE000000000000000;
        goto LABEL_159;
      }

      if (v182 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        v103 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_158:
        v91 = v103;
        v93 = v104;
        goto LABEL_159;
      }

LABEL_157:
      v103 = String.init(_cocoaString:)();
      goto LABEL_158;
    }

    v174 = 0;
    v94 = v19;
    v95 = v87;
    v96 = v13;
    v97 = v89;
    v98 = String.init(_nativeStorage:)();
    if (v99)
    {
      v91 = v98;
      v93 = v99;
      swift_unknownObjectRelease();
    }

    else
    {
      *&v183[0] = [v97 length];
      if (*&v183[0])
      {
        v13 = v96;
        v87 = v95;
        v19 = v94;
        v8 = v174;
        goto LABEL_157;
      }

      swift_unknownObjectRelease();
      v91 = 0;
      v93 = 0xE000000000000000;
    }

    v13 = v96;
    v87 = v95;
    v19 = v94;
    v8 = v174;
    goto LABEL_159;
  }

  LODWORD(v174) = v87;
  MEMORY[0x1EEE9AC00](v90);
  v172 = v89;
  v91 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v93 = v92;
  swift_unknownObjectRelease();
LABEL_159:
  if (v176 == v91 && v19 == v93)
  {
    swift_unknownObjectRelease_n();

LABEL_164:
    i = 268435457;
    goto LABEL_165;
  }

  v105 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v105)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_164;
  }

  v176 = v13;
  v106 = _objc_isTaggedPointer(@"NSFileProtectionComplete");
  swift_unknownObjectRetain();
  v107 = @"NSFileProtectionComplete";
  v108 = v107;
  if (!v106)
  {
    goto LABEL_171;
  }

  v109 = _objc_getTaggedPointerTag(v107);
  switch(v109)
  {
    case 0:
      goto LABEL_182;
    case 0x16:
      v118 = [(__CFString *)v108 UTF8String];
      if (!v118)
      {
        goto LABEL_269;
      }

      v119 = String.init(utf8String:)(v118);
      if (v120)
      {
        goto LABEL_183;
      }

      __break(1u);
LABEL_182:
      v181 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v119 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v120)
      {
        [(__CFString *)v108 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v113 = v179;
        v112 = v180;
        goto LABEL_190;
      }

LABEL_183:
      v121 = v119;
      v112 = v120;

      v113 = v121;
      goto LABEL_190;
    case 2:
      MEMORY[0x1EEE9AC00](v109);
      v172 = v108;
      v110 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v112 = v111;

      v113 = v110;
      goto LABEL_190;
  }

LABEL_171:
  LOBYTE(v179) = 0;
  *&v183[0] = 0;
  LOBYTE(v181) = 0;
  v182 = 0;
  if (!__CFStringIsCF())
  {
    v114 = v108;
    v115 = String.init(_nativeStorage:)();
    if (v116)
    {
      v117 = v115;
      v112 = v116;

      v113 = v117;
      goto LABEL_190;
    }

    *&v183[0] = [(__CFString *)v114 length];
    if (*&v183[0])
    {
      goto LABEL_188;
    }

LABEL_178:
    v113 = 0;
    v112 = 0xE000000000000000;
    goto LABEL_190;
  }

  if (!*&v183[0])
  {

    goto LABEL_178;
  }

  if (v182 != 1)
  {
LABEL_188:
    v122 = String.init(_cocoaString:)();
    goto LABEL_189;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v122 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_189:
  v113 = v122;
  v112 = v123;
LABEL_190:
  v124 = v89;
  v125 = v124;
  if (!v87)
  {
    goto LABEL_195;
  }

  v126 = _objc_getTaggedPointerTag(v124);
  if (!v126)
  {
    goto LABEL_205;
  }

  if (v126 == 22)
  {
    v134 = [v125 UTF8String];
    if (!v134)
    {
      goto LABEL_270;
    }

    v135 = String.init(utf8String:)(v134);
    if (v136)
    {
LABEL_206:
      v127 = v135;
      v129 = v136;
      swift_unknownObjectRelease();
      goto LABEL_214;
    }

    __break(1u);
LABEL_205:
    v181 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v135 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v136)
    {
      [v125 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v127 = v179;
      v129 = v180;
      goto LABEL_214;
    }

    goto LABEL_206;
  }

  if (v126 != 2)
  {
LABEL_195:
    LOBYTE(v179) = 0;
    *&v183[0] = 0;
    LOBYTE(v181) = 0;
    v182 = 0;
    if (__CFStringIsCF())
    {
      v127 = *&v183[0];
      if (!*&v183[0])
      {
        swift_unknownObjectRelease();
        v129 = 0xE000000000000000;
        goto LABEL_214;
      }

      if (v182 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        v137 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_213:
        v127 = v137;
        v129 = v138;
        goto LABEL_214;
      }
    }

    else
    {
      v130 = v113;
      v131 = v125;
      v132 = String.init(_nativeStorage:)();
      if (v133)
      {
        v127 = v132;
        v129 = v133;
        swift_unknownObjectRelease();
        v113 = v130;
        goto LABEL_214;
      }

      *&v183[0] = [v131 length];
      if (!*&v183[0])
      {
        swift_unknownObjectRelease();
        v127 = 0;
        v129 = 0xE000000000000000;
        v113 = v130;
        goto LABEL_214;
      }

      v113 = v130;
    }

    v137 = String.init(_cocoaString:)();
    goto LABEL_213;
  }

  MEMORY[0x1EEE9AC00](v126);
  v172 = v125;
  v127 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v129 = v128;
  swift_unknownObjectRelease();
LABEL_214:
  if (v113 == v127 && v112 == v129)
  {
    swift_unknownObjectRelease_n();

LABEL_219:
    i = 536870913;
    goto LABEL_165;
  }

  v139 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v139)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_219;
  }

  v140 = _objc_isTaggedPointer(@"NSFileProtectionCompleteUnlessOpen");
  swift_unknownObjectRetain();
  v141 = @"NSFileProtectionCompleteUnlessOpen";
  v142 = v141;
  if (!v140)
  {
    goto LABEL_225;
  }

  v143 = _objc_getTaggedPointerTag(v141);
  switch(v143)
  {
    case 0:
      goto LABEL_236;
    case 0x16:
      v150 = [(__CFString *)v142 UTF8String];
      if (!v150)
      {
        goto LABEL_271;
      }

      v151 = String.init(utf8String:)(v150);
      if (v152)
      {
        goto LABEL_237;
      }

      __break(1u);
LABEL_236:
      v181 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v151 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v152)
      {
        [(__CFString *)v142 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v144 = v179;
        v146 = v180;
        goto LABEL_244;
      }

LABEL_237:
      v144 = v151;
      v146 = v152;

      goto LABEL_244;
    case 2:
      MEMORY[0x1EEE9AC00](v143);
      v172 = v142;
      v144 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v146 = v145;

      goto LABEL_244;
  }

LABEL_225:
  LOBYTE(v179) = 0;
  *&v183[0] = 0;
  LOBYTE(v181) = 0;
  v182 = 0;
  if (!__CFStringIsCF())
  {
    v147 = v142;
    v148 = String.init(_nativeStorage:)();
    if (v149)
    {
      v144 = v148;
      v146 = v149;

      goto LABEL_244;
    }

    *&v183[0] = [(__CFString *)v147 length];
    if (*&v183[0])
    {
      goto LABEL_242;
    }

LABEL_232:
    v144 = 0;
    v146 = 0xE000000000000000;
    goto LABEL_244;
  }

  if (!*&v183[0])
  {

    goto LABEL_232;
  }

  if (v182 != 1)
  {
LABEL_242:
    v153 = String.init(_cocoaString:)();
    goto LABEL_243;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v153 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_243:
  v144 = v153;
  v146 = v154;
LABEL_244:
  if (v144 == static String._unconditionallyBridgeFromObjectiveC(_:)(v176) && v146 == v155)
  {
    swift_unknownObjectRelease_n();

LABEL_249:
    i = 805306369;
    goto LABEL_165;
  }

  v156 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v156)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_249;
  }

  v157 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSFileProtectionCompleteUntilFirstUserAuthentication");
  v159 = v158;
  if (v157 == static String._unconditionallyBridgeFromObjectiveC(_:)(v176) && v159 == v160)
  {
    swift_unknownObjectRelease_n();

LABEL_255:
    i = 1073741825;
    goto LABEL_165;
  }

  v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v161)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_255;
  }

  v162 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSFileProtectionCompleteWhenUserInactive");
  v164 = v163;
  v165 = static String._unconditionallyBridgeFromObjectiveC(_:)(v176);
  v167 = v166;
  swift_unknownObjectRelease();
  if (v162 == v165 && v164 == v167)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v168 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_unknownObjectRelease();

    if ((v168 & 1) == 0)
    {
      goto LABEL_262;
    }
  }

  for (i = 1342177281; ; i = 1)
  {
LABEL_165:
    memset(v183, 0, sizeof(v183));
    specialized Dictionary.subscript.setter(v183, v175);
LABEL_11:
    if (a4 >> 60 == 15)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    if (a4 >> 60 == 15)
    {
      a4 = 0xC000000000000000;
    }

    if (one-time initialization token for compatibility2 != -1)
    {
      swift_once();
    }

    if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
    {
      v22 = type metadata accessor for _BridgedURL();
      v23 = &protocol witness table for _BridgedURL;
    }

    else
    {
      v22 = type metadata accessor for _SwiftURL();
      v23 = &protocol witness table for _SwiftURL;
    }

    v24 = v23[8];

    v24(v178, a2, v22, v23);
    v25 = (v23[56])(v22, v23);
    v27 = v26;
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v29 = (*(v27 + 144))(ObjectType, v27);
    if (v29)
    {
      MEMORY[0x1EEE9AC00](v29);
      v169[2] = v25;
      v169[3] = v27;
      v170 = 1;
      v171 = i;
      v172 = MEMORY[0x1E69E7CC8];
      LOBYTE(v173) = 1;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(partial apply for closure #1 in writeToFile(path:data:options:attributes:reportProgress:), v169, v21, a4);
      if (v8)
      {
        swift_unknownObjectRelease();

        goto LABEL_128;
      }

      swift_unknownObjectRelease();
      if (v184)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          goto LABEL_272;
        }

        v35 = Strong;
        type metadata accessor for NSFileAttributeKey(0);
        lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();

        v36 = _NativeDictionary.bridged()();
        v37 = String._bridgeToObjectiveCImpl()();
        *&v183[0] = 0;
        v38 = [v35 setAttributes:v36 ofItemAtPath:v37 error:v183];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v38)
        {
          v39 = *&v183[0];
        }

        else
        {
          if (!*&v183[0] && one-time initialization token for _nilObjCError != -1)
          {
            swift_once();
          }

          swift_willThrow();
        }
      }

      v45 = 1;
LABEL_129:

      return v45;
    }

    v30 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v31 = @"NSCocoaErrorDomain";
    v32 = v31;
    if (!v30)
    {
      goto LABEL_30;
    }

    v33 = _objc_getTaggedPointerTag(v31);
    if (!v33)
    {
      goto LABEL_44;
    }

    if (v33 == 22)
    {
      break;
    }

    if (v33 == 2)
    {
      MEMORY[0x1EEE9AC00](v33);
      v172 = v32;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_71;
    }

LABEL_30:
    LOBYTE(v179) = 0;
    *&v183[0] = 0;
    LOBYTE(v181) = 0;
    v182 = 0;
    if (__CFStringIsCF())
    {
      if (!*&v183[0])
      {
        goto LABEL_61;
      }

      if (v182 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_71;
      }
    }

    else
    {
      v40 = v32;
      String.init(_nativeStorage:)();
      if (v41 || (*&v183[0] = [(__CFString *)v40 length]) == 0)
      {

        goto LABEL_71;
      }
    }

    String.init(_cocoaString:)();
LABEL_71:
    v53 = objc_allocWithZone(NSError);
    v54 = String._bridgeToObjectiveCImpl()();

    v55 = [v53 initWithDomain:v54 code:518 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v56 = [v55 domain];
    if (!v56)
    {
      goto LABEL_84;
    }

    v57 = v56;
    v58 = _objc_isTaggedPointer(v56);
    v59 = v57;
    v60 = v59;
    if ((v58 & 1) == 0)
    {
      goto LABEL_77;
    }

    v61 = _objc_getTaggedPointerTag(v59);
    switch(v61)
    {
      case 0:
        goto LABEL_88;
      case 0x16:
        v66 = [v60 UTF8String];
        if (!v66)
        {
          goto LABEL_265;
        }

        v67 = String.init(utf8String:)(v66);
        if (v68)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_88:
        v181 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v67 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v68)
        {
LABEL_89:
          a3 = v67;
          a4 = v68;
        }

        else
        {
          [v60 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          a3 = v179;
          a4 = v180;
        }

        goto LABEL_98;
      case 2:
        MEMORY[0x1EEE9AC00](v61);
        v172 = v60;
        a3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        a4 = v62;

        break;
      default:
LABEL_77:
        LOBYTE(v179) = 0;
        *&v183[0] = 0;
        LOBYTE(v181) = 0;
        v182 = 0;
        if (__CFStringIsCF())
        {
          if (*&v183[0])
          {
            if (v182 == 1)
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              v69 = String.init<A>(_immortalCocoaString:count:encoding:)();
            }

            else
            {
LABEL_96:
              v69 = String.init(_cocoaString:)();
            }

            a3 = v69;
            a4 = v70;
LABEL_98:

            break;
          }

          goto LABEL_84;
        }

        v63 = v60;
        v64 = String.init(_nativeStorage:)();
        if (!v65)
        {
          *&v183[0] = [v63 length];
          if (*&v183[0])
          {
            goto LABEL_96;
          }

LABEL_84:
          a3 = 0;
          a4 = 0xE000000000000000;
          break;
        }

        a3 = v64;
        a4 = v65;

        break;
    }

    v71 = v32;
    v72 = v71;
    if (!v30)
    {
      goto LABEL_104;
    }

    v73 = _objc_getTaggedPointerTag(v71);
    switch(v73)
    {
      case 0:
        goto LABEL_115;
      case 0x16:
        v79 = [(__CFString *)v72 UTF8String];
        if (!v79)
        {
          goto LABEL_264;
        }

        v80 = String.init(utf8String:)(v79);
        if (!v81)
        {
          __break(1u);
LABEL_115:
          v181 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v80 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v81)
          {
            [(__CFString *)v72 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v74 = v179;
            a2 = v180;
            break;
          }
        }

        v74 = v80;
        a2 = v81;

        break;
      case 2:
        MEMORY[0x1EEE9AC00](v73);
        v172 = v72;
        v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        a2 = v75;

        break;
      default:
LABEL_104:
        LOBYTE(v179) = 0;
        *&v183[0] = 0;
        LOBYTE(v181) = 0;
        v182 = 0;
        if (__CFStringIsCF())
        {
          if (*&v183[0])
          {
            if (v182 == 1)
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              v82 = String.init<A>(_immortalCocoaString:count:encoding:)();
            }

            else
            {
LABEL_121:
              v82 = String.init(_cocoaString:)();
            }

            v74 = v82;
            a2 = v83;
            break;
          }

          goto LABEL_111;
        }

        v76 = v72;
        v77 = String.init(_nativeStorage:)();
        if (!v78)
        {
          *&v183[0] = [(__CFString *)v76 length];
          if (*&v183[0])
          {
            goto LABEL_121;
          }

LABEL_111:
          v74 = 0;
          a2 = 0xE000000000000000;
          break;
        }

        v74 = v77;
        a2 = v78;

        break;
    }

    if (a3 == v74 && a4 == a2)
    {

LABEL_127:
      swift_willThrow();

      swift_unknownObjectRelease();
LABEL_128:
      v45 = 0;
      goto LABEL_129;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_127;
    }

    __break(1u);
LABEL_262:
    ;
  }

  v42 = [(__CFString *)v32 UTF8String];
  if (v42)
  {
    String.init(utf8String:)(v42);
    if (!v43)
    {
      __break(1u);
LABEL_44:
      v181 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v44)
      {
        [(__CFString *)v32 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_71;
      }
    }

LABEL_61:

    goto LABEL_71;
  }

  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  LODWORD(v173) = 0;
  v172 = 55;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t parseJSONUnicodePointAtLocation(void *a1, unint64_t a2, unint64_t a3, _WORD *a4, void *a5)
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (a2 + 3 > a3)
  {
    a1[3] = a2;
    if (a5)
    {
      v7 = a1[6];
      v8 = a2 >= v7;
      v9 = a2 - v7;
      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Early end of unicode escape sequence", a1[5], v10];
      goto LABEL_7;
    }

    return 0;
  }

  v15 = 0;
  v16 = 0;
  for (i = a2; ; ++i)
  {
    v18 = *(*a1 + a2 + v15);
    v19 = v18 - 48;
    if ((v18 - 48) >= 0xA)
    {
      break;
    }

LABEL_15:
    v16 += v19 << ((12 - 4 * v15++) & 0xFC);
    if (v15 == 4)
    {
      *a4 = v16;
      return 1;
    }
  }

  if ((v18 - 65) <= 5)
  {
    v19 = v18 - 55;
    goto LABEL_15;
  }

  if ((v18 - 97) <= 5)
  {
    v19 = v18 - 87;
    goto LABEL_15;
  }

  a1[3] = a2 + v15;
  if (a5)
  {
    v20 = a1[6];
    if (v20 >= i)
    {
      v20 = i;
    }

    v11 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Invalid hex digit in unicode escape sequence", a1[5], a2 - v20 + v15];
LABEL_7:
    v12 = v11;
    v13 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
    v21[0] = @"NSDebugDescription";
    v21[1] = @"NSJSONSerializationErrorIndex";
    v22[0] = v12;
    v22[1] = v13;
    *a5 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2]);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher()
{
  result = lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher;
  if (!lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator()
{
  result = lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator;
  if (!lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimeZone.CodingKeys()
{
  if (*v0)
  {
    return 0x616470756F747561;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t TimeZone.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8TimeZoneV10CodingKeys33_FCA19904DF8ABA4A431CA6B8207AE9D9LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  ObjectType = swift_getObjectType();
  (*(v7 + 32))(ObjectType, v7);
  v13 = 0;
  v9 = v11[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v9)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    if ((*(v7 + 112))(ObjectType, v7))
    {
      v12 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(unint64_t a1, uint64_t a2, double a3)
{
  v156 = a3;
  v7 = *(a2 + 16);
  v158 = type metadata accessor for Optional();
  v8 = *(v158 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v158);
  v11 = &v144 - v10;
  v153 = v3;
  v12 = *v3;
  v13 = *(v7 - 8);
  v14 = *(v13 + 16);
  v155 = a1;
  v154 = v14;
  v14(v11, a1, v7, v9);
  v151 = v13;
  (*(v13 + 56))(v11, 0, 1, v7);
  v170[0] = *(v12 + 104);
  v15 = *(v12 + 136);
  v170[1] = *(v12 + 120);
  v170[2] = v15;
  if ((*&v156 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v150 = v7;
    v22 = a2;
    v166 = Double.description.getter();
    v167 = v23;

    v24._countAndFlagsBits = 12334;
    v24._object = 0xE200000000000000;
    v25 = String.hasSuffix(_:)(v24);

    if (v25)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    }

    (*(v8 + 8))(v11, v158);
    v26 = v166;
    v156 = v167;
    v152 = 1;
    v16 = *(v22 + 24);
    v7 = v150;
  }

  else
  {
    v16 = *(a2 + 24);
    v17 = v157;
    v18 = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v170, v12, v11, v7, v16, a3);
    v157 = v17;
    if (v17)
    {
      return (*(v8 + 8))(v11, v158);
    }

    v156 = v19;
    v26 = v18;
    v152 = v20;
    (*(v8 + 8))(v11, v158);
  }

  v27 = *(v153 + 16);
  v155 = *(v153 + 8);
  v168 = v7;
  v169 = v16;
  __swift_allocate_boxed_opaque_existential_0(&v166);
  (v154)();
  v28 = *(v12 + 152);
  if (!v28)
  {
    v31 = dispatch thunk of CodingKey.stringValue.getter();
    v32 = v41;
    goto LABEL_20;
  }

  if (v28 != 1)
  {
    v45 = *(v12 + 160);

    v46 = __JSONEncoder.codingPath.getter();
    v47 = _CodingPathNode.path.getter(v27);
    v162 = v46;
    specialized Array.append<A>(contentsOf:)(v47);
    v48 = v162;
    outlined init with copy of Hashable & Sendable(&v166, &v162);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150 = v26;
    v158 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
    }

    v51 = v48[2];
    v50 = v48[3];
    if (v51 >= v50 >> 1)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v48);
    }

    v52 = __swift_mutable_project_boxed_opaque_existential_1(&v162, v164);
    v53 = MEMORY[0x1EEE9AC00](v52);
    v55 = &v144 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v55, v53);
    v160 = v7;
    v161 = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v159);
    (*(v151 + 4))(boxed_opaque_existential_0, v55, v7);
    v48[2] = v51 + 1;
    outlined init with take of Equatable(&v159, &v48[5 * v51 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    (v28)(&v162, v48);

    LOBYTE(v7) = v165;
    __swift_project_boxed_opaque_existential_1(&v162, v164);
    v31 = dispatch thunk of CodingKey.stringValue.getter();
    v32 = v58;
    sub_1807A5C7C(v28);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    goto LABEL_91;
  }

  v29 = dispatch thunk of CodingKey.stringValue.getter();
  v31 = v29;
  v32 = v30;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v33 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_20:
    v42 = v155;
    v43 = v26;
    *&v44 = v156;
    goto LABEL_92;
  }

  v34 = String.index(after:)();
  v35 = 7;
  if (((v32 >> 60) & ((v31 & 0x800000000000000) == 0)) != 0)
  {
    v35 = 11;
  }

  v148 = 4 * v33;
  if (4 * v33 < v34 >> 14)
  {
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v147 = v35 | (v33 << 16);
  v158 = v31;
  v149 = v32;
  v36 = String.subscript.getter();
  v40 = v39;
  v150 = v26;
  if ((v36 ^ v37) >= 0x4000)
  {
    v42 = v36;
    v28 = v37;
    v59 = v38;
    v151 = MEMORY[0x1E69E7CC0];
    v32 = 0x700030001;
    v154 = 15;
    while (1)
    {
      v43 = Substring.UnicodeScalarView.index(before:)();
      v60 = Substring.UnicodeScalarView.subscript.getter();
      v61 = v60;
      v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v60), 1u);
      if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v61, v62, 0x700030001))
      {
        break;
      }

      v7 = v42;
LABEL_29:
      v63 = Substring.UnicodeScalarView.index(after:)();

      v11 = (v7 >> 14);
      v64 = v154;
      if (v7 >> 14 < v154 >> 14 || v63 >> 14 < v11)
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
        goto LABEL_130;
      }

      v28 = v151;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        v28 = result;
      }

      v66 = *(v28 + 2);
      v65 = *(v28 + 3);
      if (v66 >= v65 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 2) = v66 + 1;
      v151 = v28;
      v67 = &v28[16 * v66];
      *(v67 + 4) = v64;
      *(v67 + 5) = v7;
      if (v148 < v11)
      {
        goto LABEL_126;
      }

      v68 = String.subscript.getter();
      v72 = v71;
      if ((v68 ^ v69) < 0x4000)
      {
        goto LABEL_81;
      }

      v43 = v68;
      v28 = v69;
      v42 = v70;
      v144 = v7 >> 14;
      v154 = Substring.UnicodeScalarView.index(before:)();
      v73 = Substring.UnicodeScalarView.subscript.getter();
      v74 = v73;
      v44 = 0x700030000;
      v75 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v73), 0);
      if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v74, v75, 0x700030000))
      {
        v91 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v91 = v42 & 0xFFFFFFFFFFFFLL;
        }

        v153 = v91;
        v146 = v72 & 0xFFFFFFFFFFFFFFLL;
        v145 = (v72 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v76 = v43;
        v32 = v149;
        while ((v76 ^ v154) >= 0x4000)
        {
          v86 = _StringGuts.validateInclusiveScalarIndex(_:)(v76, v42, v72);
          v59 = v86 >> 16;
          if (v86 >> 16 >= v153)
          {
            goto LABEL_101;
          }

          if ((v72 & 0x1000000000000000) != 0)
          {
            v76 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v72 & 0x2000000000000000) != 0)
            {
              v162 = v42;
              v163 = v146;
              v94 = *(&v162 + v59);
            }

            else
            {
              v93 = v145;
              if ((v42 & 0x1000000000000000) == 0)
              {
                v93 = _StringObject.sharedUTF8.getter();
              }

              v94 = *(v93 + v59);
            }

            v95 = v94;
            v96 = __clz(v94 ^ 0xFF) - 24;
            if (v95 >= 0)
            {
              LOBYTE(v96) = 1;
            }

            v76 = ((v59 + v96) << 16) | 5;
          }

          v11 = Substring.UnicodeScalarView.subscript.getter();
          v92 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v11), 0);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v11, v92, 0x700030000))
          {
            goto LABEL_39;
          }
        }

LABEL_81:
        v154 = v7;
        goto LABEL_82;
      }

      v76 = v43;
LABEL_39:
      v77 = Substring.UnicodeScalarView.index(after:)();

      if (v77 >> 14 < v76 >> 14)
      {
        goto LABEL_127;
      }

      v11 = v158;
      result = String.index(after:)();
      if (v76 >> 14 != result >> 14)
      {
        result = String.index(before:)();
        if (v144 > result >> 14)
        {
          goto LABEL_129;
        }

        v11 = result;
        v79 = *(v151 + 2);
        v78 = *(v151 + 3);
        if (v79 >= v78 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v151);
          v151 = result;
        }

        v80 = v151;
        *(v151 + 2) = v79 + 1;
        v81 = &v80[16 * v79];
        *(v81 + 4) = v7;
        *(v81 + 5) = v11;
        v7 = v11;
      }

      v154 = v7;
      if (v148 < v77 >> 14)
      {
        goto LABEL_128;
      }

      v42 = String.subscript.getter();
      v28 = v82;
      v59 = v83;
      v40 = v84;
      v32 = 0x700030001;
      if ((v42 ^ v82) < 0x4000)
      {
        goto LABEL_82;
      }
    }

    if ((v40 & 0x2000000000000000) != 0)
    {
      v44 = HIBYTE(v40) & 0xF;
    }

    else
    {
      v44 = v59 & 0xFFFFFFFFFFFFLL;
    }

    v153 = v40 & 0xFFFFFFFFFFFFFFLL;
    v146 = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = v42;
    while ((v7 ^ v43) >= 0x4000)
    {
      v86 = _StringGuts.validateInclusiveScalarIndex(_:)(v7, v59, v40);
      v7 = v86 >> 16;
      if (v86 >> 16 >= v44)
      {
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if ((v40 & 0x1000000000000000) != 0)
      {
        v7 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((v40 & 0x2000000000000000) != 0)
        {
          v162 = v59;
          v163 = v153;
          v88 = *(&v162 + v7);
        }

        else
        {
          v87 = v146;
          if ((v59 & 0x1000000000000000) == 0)
          {
            v87 = _StringObject.sharedUTF8.getter();
          }

          v88 = *(v87 + v7);
        }

        v89 = v88;
        v90 = __clz(v88 ^ 0xFF) - 24;
        if (v89 >= 0)
        {
          LOBYTE(v90) = 1;
        }

        v7 = ((v7 + v90) << 16) | 5;
      }

      v11 = Substring.UnicodeScalarView.subscript.getter();
      v32 = 0x700030001;
      v85 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v11), 1u);
      if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v11, v85, 0x700030001))
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v154 = 15;
    v151 = MEMORY[0x1E69E7CC0];
  }

LABEL_82:

  v7 = v154;
  if (v148 < v154 >> 14)
  {
    goto LABEL_123;
  }

  v28 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
  }

  v98 = *(v28 + 2);
  v97 = *(v28 + 3);
  v99 = v98 + 1;
  if (v98 >= v97 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v28);
  }

  *(v28 + 2) = v99;
  v100 = &v28[16 * v98];
  v101 = v147;
  *(v100 + 4) = v7;
  *(v100 + 5) = v101;
  v162 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
  v7 = v162;
  v151 = v28;
  v102 = v28 + 40;
  do
  {
    String.subscript.getter();
    v103 = Substring.lowercased()();

    v162 = v7;
    v105 = *(v7 + 16);
    v104 = *(v7 + 24);
    if (v105 >= v104 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
      v7 = v162;
    }

    v102 += 16;
    *(v7 + 16) = v105 + 1;
    *(v7 + 16 * v105 + 32) = v103;
    --v99;
  }

  while (v99);

  v162 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v31 = BidirectionalCollection<>.joined(separator:)();
  v107 = v106;

  v32 = v107;
LABEL_91:
  v43 = v150;
  *&v44 = v156;
  v42 = v155;
LABEL_92:
  __swift_destroy_boxed_opaque_existential_1(&v166);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *(v42 + 16);
  v59 = v166;
  *(v42 + 16) = 0x8000000000000000;
  v11 = v31;
  v86 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v110 = *(v59 + 16);
  v111 = (v109 & 1) == 0;
  v112 = __OFADD__(v110, v111);
  v113 = v110 + v111;
  if (v112)
  {
LABEL_102:
    __break(1u);
  }

  else
  {
    LOBYTE(v7) = v109;
    if (*(v59 + 24) < v113)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v113, v108);
      v114 = v166;
      v86 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v32);
      if ((v7 & 1) == (v115 & 1))
      {
        goto LABEL_98;
      }

      v86 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (v108)
    {
      v114 = v59;
LABEL_98:
      if (v7)
      {
LABEL_99:
        v116 = v86;

        v117 = *(v114 + 56) + 24 * v116;
        v118 = *v117;
        v119 = *(v117 + 8);
        *v117 = v43;
        *(v117 + 8) = *&v44;
        v120 = *(v117 + 16);
        *(v117 + 16) = v152;
        result = outlined consume of JSONFuture(v118, v119, v120);
LABEL_121:
        *(v42 + 16) = v114;
        return result;
      }

LABEL_120:
      result = specialized _NativeDictionary._insert(at:key:value:)(v86, v11, v32, v43, v44, v152, v114);
      goto LABEL_121;
    }
  }

  v158 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
  v121 = static _DictionaryStorage.copy(original:)();
  v114 = v121;
  if (!*(v59 + 16))
  {
LABEL_119:

    v86 = v158;
    if (v7)
    {
      goto LABEL_99;
    }

    goto LABEL_120;
  }

  v149 = v32;
  v156 = *&v44;
  v150 = v43;
  result = v121 + 64;
  v122 = (v59 + 64);
  v123 = ((1 << *(v114 + 32)) + 63) >> 6;
  v154 = v59 + 64;
  if (v114 != v59 || result >= v122 + 8 * v123)
  {
    result = memmove(result, v122, 8 * v123);
  }

  v124 = 0;
  *(v114 + 16) = *(v59 + 16);
  v125 = 1 << *(v59 + 32);
  v126 = *(v59 + 64);
  v127 = -1;
  if (v125 < 64)
  {
    v127 = ~(-1 << v125);
  }

  v128 = v127 & v126;
  v129 = (v125 + 63) >> 6;
  if ((v127 & v126) != 0)
  {
    do
    {
      v130 = __clz(__rbit64(v128));
      v128 &= v128 - 1;
LABEL_116:
      v133 = v130 | (v124 << 6);
      v134 = 16 * v133;
      v135 = (*(v59 + 48) + 16 * v133);
      v137 = *v135;
      v136 = v135[1];
      v133 *= 24;
      v138 = *(v59 + 56) + v133;
      v139 = *v138;
      v140 = *(v138 + 8);
      v141 = (*(v114 + 48) + v134);
      v142 = *(v138 + 16);
      *v141 = v137;
      v141[1] = v136;
      v143 = *(v114 + 56) + v133;
      *v143 = v139;
      *(v143 + 8) = v140;
      *(v143 + 16) = v142;

      result = outlined copy of JSONFuture(v139, v140, v142);
    }

    while (v128);
  }

  v131 = v124;
  while (1)
  {
    v124 = v131 + 1;
    if (__OFADD__(v131, 1))
    {
      break;
    }

    if (v124 >= v129)
    {
      v43 = v150;
      *&v44 = v156;
      v42 = v155;
      v32 = v149;
      goto LABEL_119;
    }

    v132 = *(v154 + 8 * v124);
    ++v131;
    if (v132)
    {
      v130 = __clz(__rbit64(v132));
      v128 = (v132 - 1) & v132;
      goto LABEL_116;
    }
  }

LABEL_130:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for URLComponents(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 154))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t JSONEncoder.dateEncodingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 136);

  os_unfair_lock_lock(v5 + 4);

  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  v8 = *(v1 + 40);
  *(v1 + 40) = v4;
  outlined consume of JSONDecoder.DateDecodingStrategy(v6, v7, v8);
  v9 = *(v1 + 136);

  os_unfair_lock_unlock(v9 + 4);
}

uint64_t static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = RangeExpression.clampedLowerAndUpperBounds(_:)(0, 999, a1);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = result;
  *(a2 + 40) = v4 & 1;
  *(a2 + 48) = v6;
  *(a2 + 56) = v5 & 1 | 0x80;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FloatingPointFormatStyle<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for FloatingPointFormatStyle<A>(a1);
}

uint64_t _compatDecodeValueOfObjCType(uint64_t a1, int a2, BOOL *a3, const char *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a2 <= 80)
  {
    if (a2 > 63)
    {
      if (a2 > 66)
      {
        if (a2 != 67)
        {
          if (a2 != 73 && a2 != 76)
          {
            goto LABEL_72;
          }

          goto LABEL_37;
        }

        goto LABEL_43;
      }

      if (a2 != 64)
      {
        if (a2 == 66)
        {
          v15 = *(a1 + 64);
          *(a1 + 64) = v15 + 1;
          if (v15 > 0x27)
          {
            v16 = [NSString stringWithFormat:@"$%ld", v15];
          }

          else
          {
            v16 = generic_keys[v15];
          }

          return _decodeBool(a1, v16, a3);
        }

LABEL_72:
        v42 = *MEMORY[0x1E695D940];
        v49 = _NSMethodExceptionProem(a1, a4);
        v50 = a2;
        v33 = @"%@: unknown type encoding ('%c')";
LABEL_107:
        v47 = a1;
        v32 = v42;
        goto LABEL_108;
      }

      v38 = *(a1 + 64);
      *(a1 + 64) = v38 + 1;
      if (v38 > 0x27)
      {
        v39 = [NSString stringWithFormat:@"$%ld", v38];
      }

      else
      {
        v39 = generic_keys[v38];
      }

      result = _decodeObject(a1, v39, a3);
      if (!result)
      {
        return result;
      }

      v48 = *a3;
      return 1;
    }

    if (a2 > 41)
    {
      if (a2 != 42)
      {
        if (a2 != 58)
        {
          goto LABEL_72;
        }

        v10 = [@"$" mutableCopy];
        v11 = *(a1 + 64);
        *(a1 + 64) = v11 + 1;
        if (v11 > 0x27)
        {
          v12 = [NSString stringWithFormat:@"$%ld", v11];
        }

        else
        {
          v12 = generic_keys[v11];
        }

        [v10 appendString:v12];
        v46 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v10];

        if (_NSIsNSString())
        {
          v31 = NSSelectorFromString(v46);
          goto LABEL_82;
        }

        *a3 = 0;
        if (v46)
        {
          v49 = _NSMethodExceptionProem(a1, sel_decodeObject);
          v50 = v46;
          v32 = @"NSInvalidUnarchiveOperationException";
          v33 = @"%@: Found non-string object (%@) where expecting SEL name";
          goto LABEL_89;
        }

        return 0;
      }
    }

    else
    {
      if (a2 == 35)
      {
        v27 = [@"$" mutableCopy];
        v28 = *(a1 + 64);
        *(a1 + 64) = v28 + 1;
        if (v28 > 0x27)
        {
          v29 = [NSString stringWithFormat:@"$%ld", v28];
        }

        else
        {
          v29 = generic_keys[v28];
        }

        [v27 appendString:v29];
        v43 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v27];

        if (_NSIsNSString())
        {
          v44 = *(a1 + 120);
          v45 = NSClassFromString(v43);
          if (![v44 classNameAllowed:v45])
          {
            v42 = *MEMORY[0x1E695D940];
            v49 = _NSMethodExceptionProem(a1, sel_decodeObject);
            v50 = v43;
            v33 = @"%@: data to unarchive contains class (%@) which has not been allowed";
            goto LABEL_107;
          }

          _NSCoderCheckPotentiallyMangledClassNameAndWarn(v45, 0);
          *a3 = v45;
          return 1;
        }

        *a3 = 0;
        if (v43)
        {
          v49 = _NSMethodExceptionProem(a1, sel_decodeObject);
          v50 = v43;
          v32 = @"NSInvalidUnarchiveOperationException";
          v33 = @"%@: Found non-string object (%@) where expecting class name";
          goto LABEL_89;
        }

        return 0;
      }

      if (a2 != 37)
      {
        goto LABEL_72;
      }

      v7 = _NSMethodExceptionProem(a1, a4);
      NSLog(@"%@: warning: NXAtom being decoded -- will not be uniqued", v7);
    }

    v19 = [@"$" mutableCopy];
    v20 = *(a1 + 64);
    *(a1 + 64) = v20 + 1;
    if (v20 > 0x27)
    {
      v21 = [NSString stringWithFormat:@"$%ld", v20];
    }

    else
    {
      v21 = generic_keys[v20];
    }

    [v19 appendString:v21];
    v30 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v19];

    if (_NSIsNSString())
    {
      v31 = strdup([(NSString *)v30 cString]);
LABEL_82:
      *a3 = v31;
      return 1;
    }

    *a3 = 0;
    if (v30)
    {
      v49 = _NSMethodExceptionProem(a1, sel_decodeObject);
      v50 = v30;
      v32 = @"NSInvalidUnarchiveOperationException";
      v33 = @"%@: Found non-string object (%@) where expecting C string";
LABEL_89:
      v47 = a1;
LABEL_108:
      [v47 __failWithExceptionName:v32 errorCode:4864 format:{v33, v49, v50}];
      return 0;
    }

    return 0;
  }

  if (a2 <= 101)
  {
    if (a2 <= 98)
    {
      if (a2 != 81)
      {
        if (a2 != 83)
        {
          goto LABEL_72;
        }

        goto LABEL_21;
      }

      goto LABEL_41;
    }

    if (a2 == 99)
    {
LABEL_43:
      v24 = *(a1 + 64);
      *(a1 + 64) = v24 + 1;
      if (v24 > 0x27)
      {
        v25 = [NSString stringWithFormat:@"$%ld", v24];
      }

      else
      {
        v25 = generic_keys[v24];
      }

      v51 = 0;
      v34 = _decodeInt32(a1, v25, &v51);
      result = 0;
      v35 = v51;
      if (v34)
      {
        if (v51 == v51)
        {
          result = 1;
        }

        else
        {
          [a1 __failWithExceptionName:*MEMORY[0x1E695DA20] errorCode:4864 format:{@"%@: value (%d) for key (%@) too large to fit in a char", _NSMethodExceptionProem(a1, sel_decodeInt32ForKey_), v51, v25}];
          result = 0;
        }
      }

      *a3 = v35;
      return result;
    }

    if (a2 != 100)
    {
      goto LABEL_72;
    }

    v13 = *(a1 + 64);
    *(a1 + 64) = v13 + 1;
    if (v13 > 0x27)
    {
      v14 = [NSString stringWithFormat:@"$%ld", v13];
    }

    else
    {
      v14 = generic_keys[v13];
    }

    return _decodeDouble(a1, v14, a3);
  }

  else
  {
    if (a2 > 107)
    {
      if (a2 != 108)
      {
        if (a2 != 113)
        {
          if (a2 != 115)
          {
            goto LABEL_72;
          }

LABEL_21:
          v8 = *(a1 + 64);
          *(a1 + 64) = v8 + 1;
          if (v8 > 0x27)
          {
            v9 = [NSString stringWithFormat:@"$%ld", v8];
          }

          else
          {
            v9 = generic_keys[v8];
          }

          v51 = 0;
          v36 = _decodeInt32(a1, v9, &v51);
          result = 0;
          v37 = v51;
          if (v36)
          {
            if (v51 == v51)
            {
              result = 1;
            }

            else
            {
              [a1 __failWithExceptionName:*MEMORY[0x1E695DA20] errorCode:4864 format:{@"%@: value (%d) for key (%@) too large to fit in a short", _NSMethodExceptionProem(a1, sel_decodeInt32ForKey_), v51, v9}];
              result = 0;
            }
          }

          *a3 = v37;
          return result;
        }

LABEL_41:
        v22 = *(a1 + 64);
        *(a1 + 64) = v22 + 1;
        if (v22 > 0x27)
        {
          v23 = [NSString stringWithFormat:@"$%ld", v22];
        }

        else
        {
          v23 = generic_keys[v22];
        }

        return _decodeInt64(a1, v23, a3);
      }

LABEL_37:
      v17 = *(a1 + 64);
      *(a1 + 64) = v17 + 1;
      if (v17 > 0x27)
      {
        v18 = [NSString stringWithFormat:@"$%ld", v17];
      }

      else
      {
        v18 = generic_keys[v17];
      }

      return _decodeInt32(a1, v18, a3);
    }

    if (a2 != 102)
    {
      if (a2 != 105)
      {
        goto LABEL_72;
      }

      goto LABEL_37;
    }

    v40 = *(a1 + 64);
    *(a1 + 64) = v40 + 1;
    if (v40 > 0x27)
    {
      v41 = [NSString stringWithFormat:@"$%ld", v40];
    }

    else
    {
      v41 = generic_keys[v40];
    }

    return _decodeFloat(a1, v41, a3);
  }
}

uint64_t closure #1 in URLRequest.setValue(_:forHTTPHeaderField:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v4 = 0;
  }

  [a1 setValue:v4 forHTTPHeaderField:String._bridgeToObjectiveCImpl()()];

  return swift_unknownObjectRelease();
}

uint64_t TimeZone.init(abbreviation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static TimeZone.identifierForAbbreviation(_:)(a1, a2);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for cache != -1)
  {
    v9 = result;
    swift_once();
    result = v9;
  }

  v6 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](result);
  os_unfair_lock_lock(v6 + 30);
  closure #1 in TimeZoneCache.fixed(_:)partial apply(v10);
  os_unfair_lock_unlock(v6 + 30);
  v7 = v10[0];
  v8 = v10[1];

  if (v7)
  {
    *a3 = v7;
    a3[1] = v8;
  }

  else
  {
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

__n128 __swift_memcpy154_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

void URLRequest.setValue(_:forHTTPHeaderField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(*v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
    v9 = swift_allocObject();
    v10 = v8;
    [v10 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
    swift_dynamicCast();
    v8 = v12;
    *(v9 + 16) = v12;

    *v5 = v9;
  }

  v11 = v8;
  a5();
}

uint64_t protocol witness for _LocaleProtocol.language.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 352))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t RangeExpression.clampedLowerAndUpperBounds(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v9, v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  if (swift_dynamicCast())
  {
    v11 = 0;
    if (v19 >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = v19;
    }

    if (v19 >= a1)
    {
      v13 = v12;
    }

    else
    {
      v13 = a1;
    }

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd);
  result = swift_dynamicCast();
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeFromVySiGMd);
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVySiGMd);
      if (!swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeUpToVySiGMd);
        if (!swift_dynamicCast())
        {
          (*(v6 + 8))(v9, a3);
          result = 0;
          v17 = 1;
          v16 = 1;
          goto LABEL_31;
        }
      }

      (*(v6 + 8))(v9, a3);
      result = 0;
      v16 = 1;
      goto LABEL_30;
    }

    if (v19 <= a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = v19;
    }

    v11 = 1;
LABEL_22:
    (*(v6 + 8))(v9, a3);
    v16 = 0;
    if (v13 >= a2)
    {
      result = a2;
    }

    else
    {
      result = v13;
    }

    if (v11)
    {
      v17 = 1;
LABEL_31:
      LOBYTE(v19) = v16;
      v18[8] = v17;
      return result;
    }

LABEL_30:
    v17 = 0;
    goto LABEL_31;
  }

  if (a1 == a2)
  {
    __break(1u);
  }

  else if (!__OFSUB__(a2, 1))
  {
    v11 = 0;
    if (a2 - 1 >= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = a2 - 1;
    }

    if (v19 >= a1)
    {
      v13 = v15;
    }

    else
    {
      v13 = a1;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t FloatingPointFormatStyle.format(_:)(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v78[5] = *MEMORY[0x1E69E9840];
  v75 = *(a2 + 16);
  v3 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v5;
  v6 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v8 = v7;
  v9 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 472))(ObjectType, v9);
  v12 = v11;
  v14 = v13;
  if (one-time initialization token for cache != -1)
  {
    v11 = swift_once();
  }

  v15 = *algn_1EA7B1D98;
  v72 = static ICUNumberFormatter.cache;
  v77[0] = v6;
  v77[1] = v8;
  v77[2] = v12;
  v77[3] = v14;
  MEMORY[0x1EEE9AC00](v11);
  *(&v64 - 2) = v77;
  os_unfair_lock_lock((v15 + 24));
  v16 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v15 + 16, v78);
  os_unfair_lock_unlock((v15 + 24));
  v17 = v78[0];
  if (v78[0] != 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for ICUNumberFormatter();
  v17 = swift_allocObject();
  v17[3] = v6;
  v17[4] = v8;
  swift_bridgeObjectRetain_n();
  v18 = MEMORY[0x1865CB200](v6, v8);
  if (v18)
  {
    v69 = v14;
    v70 = v3;
    v3 = v12;
    v19 = v18;
    v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v18, 0);

    v14 = v6;
    v16 = specialized Sequence._copySequenceContents(initializing:)(v78, (v20 + 4), v19, v6, v8);

    if (v16 != v19)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    LOBYTE(v16) = 0;
    v3 = v70;
    v14 = v69;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v78[0]) = 0;
  if (v20[2] >> 31)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v70 = 0;
  LOBYTE(v16) = String.utf8CString.getter();
  v22 = unumf_openForSkeletonAndLocale();

  if (!v22)
  {
    goto LABEL_12;
  }

  if (SLODWORD(v78[0]) >= 1)
  {
    unumf_close();
LABEL_12:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v17 = 0;
    goto LABEL_14;
  }

  v17[2] = v22;
LABEL_14:
  os_unfair_lock_lock((v15 + 24));
  v23 = *(v15 + 16);
  v24 = *(v23 + 16);
  v71 = v12;
  v69 = v23;
  if (v72 < v24)
  {
    *(v15 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = *(v15 + 16);
  v20 = v78[0];
  *(v15 + 16) = 0x8000000000000000;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8, v71, v14);
  v27 = v20[2];
  v28 = (v26 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    goto LABEL_26;
  }

  LOBYTE(v16) = v26;
  if (v20[3] >= v29)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v20;
      v31 = v71;
      if (v26)
      {
        goto LABEL_24;
      }

LABEL_44:
      specialized _NativeDictionary._insert(at:key:value:)(v21, v6, v8, v31, v14, v17, v30);
      goto LABEL_45;
    }

LABEL_28:
    v64 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v35 = static _DictionaryStorage.copy(original:)();
    v30 = v35;
    if (v20[2])
    {
      v36 = (v35 + 64);
      v37 = 1 << *(v30 + 32);
      v65 = (v20 + 8);
      v38 = (v37 + 63) >> 6;
      if (v30 != v20 || v36 >= &v65[8 * v38])
      {
        memmove(v36, v65, 8 * v38);
      }

      v39 = 0;
      *(v30 + 16) = v20[2];
      v40 = 1 << *(v20 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v42 = v41 & v20[8];
      v43 = (v40 + 63) >> 6;
      v66 = v43;
      if (v42)
      {
        do
        {
          v44 = __clz(__rbit64(v42));
          v72 = (v42 - 1) & v42;
LABEL_41:
          v47 = v44 | (v39 << 6);
          v48 = v20[7];
          v49 = (v20[6] + 32 * v47);
          v50 = *v49;
          v67 = v49[1];
          v51 = v67;
          v52 = v49[2];
          v68 = v49[3];
          v53 = v68;
          v54 = *(v48 + 8 * v47);
          v55 = (*(v30 + 48) + 32 * v47);
          *v55 = v50;
          v55[1] = v51;
          v55[2] = v52;
          v55[3] = v53;
          *(*(v30 + 56) + 8 * v47) = v54;

          v43 = v66;
          v42 = v72;
        }

        while (v72);
      }

      v45 = v39;
      while (1)
      {
        v39 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
        }

        if (v39 >= v43)
        {
          break;
        }

        v46 = *&v65[8 * v39];
        ++v45;
        if (v46)
        {
          v44 = __clz(__rbit64(v46));
          v72 = (v46 - 1) & v46;
          goto LABEL_41;
        }
      }
    }

    v31 = v71;
    v21 = v64;
    if (v16)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
  v30 = v78[0];
  v31 = v71;
  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8, v71, v14);
  if ((v16 & 1) != (v33 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v21 = v32;
  if ((v16 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  v34 = v21;

  *(*(v30 + 56) + 8 * v34) = v17;

LABEL_45:
  *(v15 + 16) = v30;

  os_unfair_lock_unlock((v15 + 24));

  outlined consume of ICUNumberFormatter??(1);
  v16 = v70;
LABEL_46:

  if (!v17)
  {
    v56 = *(v3 + 16);
    v59 = v75;
    v58 = v73;
    v57 = v74;
    goto LABEL_50;
  }

  v56 = *(v3 + 16);
  v58 = v73;
  v57 = v74;
  v59 = v75;
  v56(v73, v74, v75);
  specialized BinaryFloatingPoint.init<A>(_:)(v58, v59);
  type metadata accessor for ICUNumberFormatterBase.FormatResult();
  swift_initStackObject();
  ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
  if (v16)
  {

LABEL_50:
    v56(v58, v57, v59);
    specialized BinaryFloatingPoint.init<A>(_:)(v58, v59);
    return Double.description.getter();
  }

  v61 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
  v63 = v62;

  if (!v63)
  {
    goto LABEL_50;
  }

  return v61;
}

void NSDeallocateMemoryPages(void *ptr, NSUInteger bytes)
{
  if (mach_vm_deallocate(*MEMORY[0x1E69E9A60], ptr, bytes))
  {
    v4 = [NSString stringWithFormat:@"*** NSDeallocateMemoryPages(%p, %lu) failed", ptr, bytes];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }
}

uint64_t specialized Data.InlineData.init(_:count:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a3 > 0xFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __dst = 0;
  v11 = a3;
  v10 = 0;
  v9 = 0;
  if (a1 > a1 >> 32)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 40);
    v5 = __OFSUB__(a1, v4);
    v6 = a1 - v4;
    if (!v5)
    {
      memcpy(&__dst, (v3 + v6), a3);
      return __dst;
    }

LABEL_12:
    __break(1u);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

void __DataStorage.resetBytes(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  v4 = a1 - v3;
  if (__OFSUB__(a1, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 < v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 == v4)
  {
    return;
  }

  if (v2[3] >= v5)
  {
    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  }

  else
  {
    if (v5 >= (v2[4] & 0x7FFFFFFFFFFFFFFFLL))
    {
      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v5, 0);
    }

    v2[3] = v5;
  }

  v6 = v2[2];
  if (!v6)
  {
LABEL_20:
    __break(1u);
    return;
  }

  bzero((v6 + v4), v5 - v4);
}

uint64_t URL.host.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 192))(ObjectType, v1);
}

uint64_t closure #1 in _NSSwiftCalendar.minimumDaysInFirstWeek.setter(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v4 + 72))(ObjectType, v4);
  if (result != a2)
  {
    v11[0] = 0;
    v11[1] = 0;
    v10[0] = 0;
    v10[1] = 0;
    v7 = (*(v4 + 112))(v11, v10, 0, 1, a2, 0, ObjectType, v4);
    v9 = v8;
    result = swift_unknownObjectRelease();
    *a1 = v7;
    a1[1] = v9;
  }

  return result;
}

uint64_t specialized _TimeZoneAutoupdating.identifier.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v5);
    v1 = v5[1];
    *(v0 + 16) = v5[0];
    *(v0 + 24) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 120));
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 32))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

unint64_t closure #1 in _NSSwiftProcessInfo.thermalState.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v5 = setupThermalStateNotificationAndFetchState #1 @Sendable () in _NSSwiftProcessInfo.thermalState.getter(a2);
    if (v6)
    {
      result = 0;
    }

    else
    {
      result = specialized static _NSSwiftProcessInfo._mapOSThermalToThermalState(_:)(v5);
      *a1 = result;
      *(a1 + 8) = 0;
    }
  }

  else
  {
    result = *a1;
  }

  *a3 = result;
  return result;
}

uint64_t setupThermalStateNotificationAndFetchState #1 @Sendable () in _NSSwiftProcessInfo.thermalState.getter(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  out_token = 0;
  v2 = _platform_shims_kOSThermalNotificationPressureLevelName();
  v3 = __NSDispatchQueueGetGenericMatchingMain();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = partial apply for closure #1 in setupThermalStateNotificationAndFetchState #1 @Sendable () in _NSSwiftProcessInfo.thermalState.getter;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v7[3] = &block_descriptor_7;
  v5 = _Block_copy(v7);

  LODWORD(v2) = notify_register_dispatch(v2, &out_token, v3, v5);
  _Block_release(v5);

  if (v2)
  {
    return 0;
  }

  v7[0] = 0;
  if (notify_get_state(out_token, v7))
  {
    return 0;
  }

  else
  {
    return v7[0];
  }
}

unint64_t specialized static _NSSwiftProcessInfo._mapOSThermalToThermalState(_:)(unint64_t result)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else if (result <= 29)
  {
    v1 = 2;
    if (result != 20)
    {
      v1 = 0;
    }

    if (result == 10)
    {
      return 1;
    }

    else
    {
      return v1;
    }
  }

  else if (result == 30 || result == 40 || result == 50)
  {
    return 3;
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t _NSProcessInfoGetThermalState()
{
  if (_NSProcessInfoGetThermalState_once != -1)
  {
    dispatch_once(&_NSProcessInfoGetThermalState_once, &__block_literal_global_160);
  }

  return atomic_load(&_NSProcessInfoGetThermalState_currentState);
}

uint64_t NSProcessInfoNotifyThermalState(int a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  result = notify_get_state(a1, v4);
  if (result)
  {
    atomic_exchange(&_NSProcessInfoGetThermalState_currentState, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (v4[0] <= 29)
    {
      v3 = 2;
      if (v4[0] != 20)
      {
        v3 = 0;
      }

      if (v4[0] == 10)
      {
        v2 = 1;
      }

      else
      {
        v2 = v3;
      }
    }

    else if (v4[0] == 30 || v4[0] == 40 || v4[0] == 50)
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    result = [_NSSwiftProcessInfo updateThermalState:?];
    if (atomic_exchange(&_NSProcessInfoGetThermalState_currentState, v2) != v2)
    {
      return [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"NSProcessInfoThermalStateDidChangeNotification", +[NSProcessInfo processInfo]];
    }
  }

  return result;
}

void static _NSSwiftProcessInfo.updateThermalState(_:)(unint64_t a1)
{
  if (one-time initialization token for _globalState != -1)
  {
    swift_once();
  }

  v2 = static _NSSwiftProcessInfo._globalState;
  os_unfair_lock_lock((static _NSSwiftProcessInfo._globalState + 44));
  if (HIDWORD(a1))
  {
    __break(1u);
  }

  else
  {
    if (a1 <= 29)
    {
      v3 = 1;
      v4 = 2;
      if (a1 != 20)
      {
        v4 = 0;
      }

      if (a1 != 10)
      {
        v3 = v4;
      }
    }

    else if (a1 == 30 || a1 == 40 || a1 == 50)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    *(v2 + 16) = v3;
    *(v2 + 24) = 0;

    os_unfair_lock_unlock((v2 + 44));
  }
}

NSData *encodeURLForDefaults(NSData *result)
{
  if (result)
  {
    v1 = result;
    if ([(NSData *)result isFileURL]&& ![(NSData *)v1 isFileReferenceURL])
    {
      v2 = [(NSData *)v1 path];

      return [v2 stringByAbbreviatingWithTildeInPath];
    }

    else
    {

      return [NSKeyedArchiver archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0];
    }
  }

  return result;
}

uint64_t Locale.description.getter()
{
  v1 = *(v0 + 8);
  swift_getObjectType();
  v4 = (*(v1 + 64))();
  MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
  v2 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  MEMORY[0x1865CB0E0](v2);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v4;
}

unint64_t instantiation function for generic protocol witness table for UnsafeRawBufferPointer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  *(a1 + 8) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for NSObject.KeyValueObservingPublisher(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NSObject.KeyValueObservingPublisher(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

double static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1 / 1000.0;
  *a2 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    goto LABEL_14;
  }

  if (4 * v3 < result >> 14)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  return String.removeSubrange(_:)();
}

{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

void __JSONEncoder.encode(_:)(double a1)
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
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v7 = Double.description.getter();
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

uint64_t AttributedString.init(stringLiteral:)@<X0>(void *a1@<X8>)
{
  BigString.init(_:)();
  result = AttributedString.init(_:attributes:)(v4, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v3);
  *a1 = v3;
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = *(v3 + 16);
  if (!v5)
  {
    result = 0;
    if (!__OFSUB__(a2, v4))
    {
      return a3();
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v3 + 40);
  v7 = __OFSUB__(result, v6);
  v8 = result - v6;
  if (!v7)
  {
    result = v8 + v5;
    if (!__OFSUB__(a2, v4))
    {
      return a3();
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

char *__JSONEncoder.wrap<A>(_:for:)(double *a1, uint64_t a2, void *countAndFlagsBits, uint64_t a4)
{
  v5 = v4;
  *&v120 = a4;
  v139 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  isUniquelyReferenced_nonNull_native = &v116 - v14;
  v17 = *a1;
  v18 = *(v5 + 64);
  v19 = *(v5 + 72);
  if (!*(v5 + 80))
  {
    v24 = *(v5 + 64);
    v25 = objc_allocWithZone(MEMORY[0x1E695DF00]);
    v26 = v24;
    v27 = [v25 initWithTimeIntervalSinceReferenceDate_];
    countAndFlagsBits = [v26 stringFromDate_];

    if (!countAndFlagsBits)
    {
      outlined consume of JSONDecoder.DateDecodingStrategy(v24, v19, 0);
      return countAndFlagsBits;
    }

    isTaggedPointer = _objc_isTaggedPointer(countAndFlagsBits);
    v29 = countAndFlagsBits;
    v30 = v29;
    if ((isTaggedPointer & 1) == 0)
    {
LABEL_22:
      LOBYTE(v126[0]) = 0;
      *&v128 = 0;
      LOBYTE(v123) = 0;
      LOBYTE(v136[0]) = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        countAndFlagsBits = v128;
        if (!v128)
        {

          outlined consume of JSONDecoder.DateDecodingStrategy(v24, v19, 0);
          return countAndFlagsBits;
        }

        if (LOBYTE(v136[0]) == 1)
        {
          if (v126[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v96 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_98;
        }

        if (v123)
        {
          if (LOBYTE(v126[0]) == 1)
          {
            MEMORY[0x1EEE9AC00](IsCF);
            *(&v116 - 4) = v30;
            *(&v116 - 3) = &v128;
            LODWORD(v114) = 1536;
            v115 = countAndFlagsBits;
          }

          else
          {
            v97 = [v30 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v97);
            *(&v116 - 4) = v30;
            *(&v116 - 3) = &v128;
            LODWORD(v114) = 134217984;
            v115 = v98;
          }

          v99 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v101 = HIBYTE(v100) & 0xF;
          if ((v100 & 0x2000000000000000) == 0)
          {
            v101 = v99 & 0xFFFFFFFFFFFFLL;
          }

          if (v101)
          {
            countAndFlagsBits = v99;

            goto LABEL_99;
          }
        }
      }

      else
      {
        v68 = v30;
        v69 = String.init(_nativeStorage:)();
        if (v70)
        {
          countAndFlagsBits = v69;

LABEL_100:
          outlined consume of JSONDecoder.DateDecodingStrategy(v24, v19, 0);
          return countAndFlagsBits;
        }

        *&v128 = [v68 length];
        if (!v128)
        {

          outlined consume of JSONDecoder.DateDecodingStrategy(v24, v19, 0);
          return 0;
        }
      }

      v96 = String.init(_cocoaString:)();
LABEL_98:
      countAndFlagsBits = v96;
      goto LABEL_99;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v29);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v114 = v30;
          countAndFlagsBits = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          outlined consume of JSONDecoder.DateDecodingStrategy(v24, v19, 0);
          return countAndFlagsBits;
        }

        goto LABEL_22;
      }

      result = [v30 UTF8String];
      if (!result)
      {
        goto LABEL_124;
      }

      v83 = String.init(utf8String:)(result);
      if (v84)
      {
        goto LABEL_74;
      }

      __break(1u);
    }

    LOWORD(v123) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v83 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v85)
    {
      [v30 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      countAndFlagsBits = *&v126[0];
      goto LABEL_99;
    }

LABEL_74:
    countAndFlagsBits = v83;

LABEL_99:
    goto LABEL_100;
  }

  if (*(v5 + 80) == 1)
  {
    v119 = *(v5 + 64);
    (*(v10 + 16))(v12, a2, v9, v15);
    v20 = *(countAndFlagsBits - 1);
    if ((*(v20 + 48))(v12, 1, countAndFlagsBits) == 1)
    {
      v21 = *(v10 + 8);

      v22 = v12;
      v23 = v19;
      v21(v22, v9);
      *&v125 = 0;
      v123 = 0u;
      v124 = 0u;
    }

    else
    {
      *(&v124 + 1) = countAndFlagsBits;
      *&v125 = v120;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v123);
      (*(v20 + 32))(boxed_opaque_existential_0, v12, countAndFlagsBits);
      v23 = v19;
    }

    v34 = v121;
    outlined init with copy of FloatingPointRoundingRule?(&v123, &v128, &_ss9CodingKey_pSgMd);
    if (*(&v129 + 1))
    {
      outlined init with take of Equatable(&v128, v136);
      v35 = *(v5 + 184);
      if (v35)
      {
        *(v5 + 184) = 0;
        outlined destroy of TermOfAddress?(v35 + 192, &_ss9CodingKey_pSgMd);
        outlined init with take of Equatable(v136, v35 + 192);
        *(v35 + 176) = v5;
      }

      else
      {
        v52 = *(v5 + 136);
        v132 = *(v5 + 120);
        v133 = v52;
        v134 = *(v5 + 152);
        v135 = *(v5 + 168);
        v53 = *(v5 + 72);
        v128 = *(v5 + 56);
        v129 = v53;
        v54 = *(v5 + 104);
        v130 = *(v5 + 88);
        v131 = v54;
        outlined init with take of Equatable(v136, v127);
        type metadata accessor for __JSONEncoder();
        v35 = swift_allocObject();
        *(v35 + 184) = 0u;
        *(v35 + 200) = 0u;
        *(v35 + 216) = 0u;
        v55 = v133;
        *(v35 + 120) = v132;
        *(v35 + 136) = v55;
        *(v35 + 152) = v134;
        v56 = v129;
        *(v35 + 56) = v128;
        *(v35 + 72) = v56;
        v57 = v131;
        *(v35 + 88) = v130;
        *(v35 + 16) = 0;
        *(v35 + 24) = 0;
        *(v35 + 32) = -1;
        *(v35 + 40) = 0;
        *(v35 + 48) = 0;
        v58 = v135;
        *(v35 + 104) = v57;
        *(v35 + 168) = v58;
        *(v35 + 176) = v5;

        outlined init with copy of JSONEncoder._Options(&v128, v126);
        outlined assign with take of CodingKey?(v127, v35 + 192);
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(&v128, &_ss9CodingKey_pSgMd);

      v35 = v5;
    }

    outlined destroy of TermOfAddress?(&v123, &_ss9CodingKey_pSgMd);
    v122 = v35;
    *v126 = v17;
    *(&v129 + 1) = type metadata accessor for __JSONEncoder();
    *&v130 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
    *&v128 = v35;

    countAndFlagsBits = v23;
    v59 = v119;
    v119(v126, &v128);
    if (v34)
    {
      __swift_destroy_boxed_opaque_existential_1(&v128);
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v5, &v122);
      outlined consume of JSONDecoder.DateDecodingStrategy(v59, v23, 1);
LABEL_47:

      return countAndFlagsBits;
    }

    __swift_destroy_boxed_opaque_existential_1(&v128);
    v60 = __JSONEncoder.takeValue()();
    if (v61 == 255)
    {
      countAndFlagsBits = MEMORY[0x1E69E7CC8];
    }

    else
    {
      countAndFlagsBits = v60;
    }

    $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v5, &v122);
    outlined consume of JSONDecoder.DateDecodingStrategy(v59, v23, 1);
LABEL_53:

    return countAndFlagsBits;
  }

  if (v18 <= 1)
  {
    if (!(v18 | v19))
    {
      (*(v10 + 16))(&v116 - v14, a2, v9, v15);
      v32 = *(countAndFlagsBits - 1);
      if ((*(v32 + 48))(isUniquelyReferenced_nonNull_native, 1, countAndFlagsBits) == 1)
      {
        (*(v10 + 8))(isUniquelyReferenced_nonNull_native, v9);
        *&v125 = 0;
        v123 = 0u;
        v124 = 0u;
LABEL_65:
        v80 = v121;
        outlined init with copy of FloatingPointRoundingRule?(&v123, &v128, &_ss9CodingKey_pSgMd);
        if (*(&v129 + 1))
        {
          outlined init with take of Equatable(&v128, v136);
          v81 = *(v5 + 184);
          if (v81)
          {
            *(v5 + 184) = 0;
            outlined destroy of TermOfAddress?(v81 + 192, &_ss9CodingKey_pSgMd);
            outlined init with take of Equatable(v136, v81 + 192);
            *(v81 + 176) = v5;
          }

          else
          {
            v88 = *(v5 + 136);
            v132 = *(v5 + 120);
            v133 = v88;
            v134 = *(v5 + 152);
            v135 = *(v5 + 168);
            v89 = *(v5 + 72);
            v128 = *(v5 + 56);
            v129 = v89;
            v90 = *(v5 + 104);
            v130 = *(v5 + 88);
            v131 = v90;
            outlined init with take of Equatable(v136, v127);
            type metadata accessor for __JSONEncoder();
            v81 = swift_allocObject();
            *(v81 + 184) = 0u;
            *(v81 + 200) = 0u;
            *(v81 + 216) = 0u;
            v91 = v133;
            *(v81 + 120) = v132;
            *(v81 + 136) = v91;
            *(v81 + 152) = v134;
            v92 = v129;
            *(v81 + 56) = v128;
            *(v81 + 72) = v92;
            v93 = v131;
            *(v81 + 88) = v130;
            *(v81 + 16) = 0;
            *(v81 + 24) = 0;
            *(v81 + 32) = -1;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            v94 = v135;
            *(v81 + 104) = v93;
            *(v81 + 168) = v94;
            *(v81 + 176) = v5;

            outlined init with copy of JSONEncoder._Options(&v128, v126);
            outlined assign with take of CodingKey?(v127, v81 + 192);
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v128, &_ss9CodingKey_pSgMd);

          v81 = v5;
        }

        outlined destroy of TermOfAddress?(&v123, &_ss9CodingKey_pSgMd);
        v122 = v81;
        v95 = type metadata accessor for __JSONEncoder();
        *(&v129 + 1) = v95;
        *&v130 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
        *&v128 = v81;
        countAndFlagsBits = *__swift_mutable_project_boxed_opaque_existential_1(&v128, v95);

        __JSONEncoder.encode(_:)(v17);
        if (v80)
        {
          __swift_destroy_boxed_opaque_existential_1(&v128);
          $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v5, &v122);
          goto LABEL_47;
        }

        __swift_destroy_boxed_opaque_existential_1(&v128);
        countAndFlagsBits = __JSONEncoder.takeValue()();
        $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v5, &v122);
        goto LABEL_53;
      }

LABEL_64:
      *(&v124 + 1) = countAndFlagsBits;
      *&v125 = v120;
      v79 = __swift_allocate_boxed_opaque_existential_0(&v123);
      (*(v32 + 32))(v79, isUniquelyReferenced_nonNull_native, countAndFlagsBits);
      goto LABEL_65;
    }

    v36 = v17 + 978307200.0;
    memset(v137, 0, sizeof(v137));
    if (COERCE__INT64(fabs(v17 + 978307200.0)) >= 0x7FF0000000000000)
    {
      v37 = v137;
LABEL_31:
      v39 = v121;
      v40 = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v37, v5, a2, countAndFlagsBits, v120, v36);
      if (!v39)
      {
        return v40;
      }

      return countAndFlagsBits;
    }

    goto LABEL_41;
  }

  if (!(v18 ^ 2 | v19))
  {
    v36 = (v17 + 978307200.0) * 1000.0;
    memset(v138, 0, 48);
    if (COERCE__INT64(fabs(v36)) >= 0x7FF0000000000000)
    {
      v37 = v138;
      goto LABEL_31;
    }

LABEL_41:
    countAndFlagsBits = Double.description.getter();
    *&v128 = countAndFlagsBits;
    *(&v128 + 1) = v49;

    v50._countAndFlagsBits = 12334;
    v50._object = 0xE200000000000000;
    v51 = String.hasSuffix(_:)(v50);

    if (v51)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      return v128;
    }

    return countAndFlagsBits;
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v41 = *(&xmmword_1ED440468 + 1);
  v32 = xmmword_1ED440468;
  BYTE4(v128) = 1;
  *(&v128 + 1) = 0;
  v130 = xmmword_1ED440468;
  LODWORD(v128) = 0x10000;
  v42 = one-time initialization token for cache;
  swift_unknownObjectRetain_n();
  v43 = v121;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v45 = *(v44 + 16);
  if (*(v45 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v47 & 1) != 0))
  {
    v120 = *(*(v45 + 56) + 16 * v46);
    v48 = v120;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v44 + 24));
    if (v48)
    {
LABEL_121:
      v129 = v120;
      *&v126[0] = v32;
      *(&v126[0] + 1) = v41;
      Calendar.timeZone.setter(v126);
      v126[0] = v128;
      v126[1] = v129;
      v126[2] = v130;
      v123 = v128;
      v124 = v129;
      v125 = v130;
      *v136 = v17;
      countAndFlagsBits = Date.ISO8601FormatStyle.format(_:)(v128)._countAndFlagsBits;
      outlined destroy of DateComponents.ISO8601FormatStyle(v126);
      return countAndFlagsBits;
    }
  }

  else
  {
    os_unfair_lock_unlock((v44 + 24));
  }

  v5 = type metadata accessor for _CalendarGregorian();
  v62 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, type metadata accessor for _CalendarGregorian);
  v127[0] = 7;
  v126[0] = 0uLL;
  v123 = 0uLL;
  *&v136[0] = 0;
  BYTE8(v136[0]) = 1;
  v114 = v5;
  v115 = v62;
  v63 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(v127, v126, &v123, 0, 1, 0, 1, v136);
  os_unfair_lock_lock((v44 + 24));
  v64 = *(v44 + 16);
  if (*(v64 + 16))
  {
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v66)
    {
      v67 = *(*(v64 + 56) + 16 * v65);
LABEL_120:
      v120 = v67;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v44 + 24));

      goto LABEL_121;
    }
  }

  v119 = v62;
  *&v120 = v41;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v126[0] = *(v44 + 16);
  v71 = *&v126[0];
  v72 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v74 = *(v71 + 16);
  v75 = (v73 & 1) == 0;
  v76 = __OFADD__(v74, v75);
  v77 = v74 + v75;
  if (v76)
  {
    __break(1u);
  }

  else
  {
    v43 = v73;
    if (*(v71 + 24) < v77)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, isUniquelyReferenced_nonNull_native);
      countAndFlagsBits = *&v126[0];
      v72 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v43 & 1) != (v78 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_64;
      }

LABEL_80:
      v86 = v119;
      v41 = v120;
      if (v43)
      {
LABEL_81:
        v87 = (countAndFlagsBits[7] + 16 * v72);
        *v87 = v63;
        v87[1] = v86;
        swift_unknownObjectRelease();
LABEL_119:
        *(v44 + 16) = countAndFlagsBits;
        *&v67 = v63;
        *(&v67 + 1) = v86;
        goto LABEL_120;
      }

LABEL_118:
      specialized _NativeDictionary._insert(at:key:value:)(v72, 7, v63, countAndFlagsBits, v5, v86);
      goto LABEL_119;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      countAndFlagsBits = v71;
      goto LABEL_80;
    }
  }

  v116 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v102 = static _DictionaryStorage.copy(original:)();
  countAndFlagsBits = v102;
  if (!*(v71 + 16))
  {
LABEL_117:

    v72 = v116;
    v86 = v119;
    v41 = v120;
    if (v43)
    {
      goto LABEL_81;
    }

    goto LABEL_118;
  }

  result = (v102 + 64);
  v103 = 1 << *(countAndFlagsBits + 32);
  v117 = (v71 + 64);
  v104 = (v103 + 63) >> 6;
  if (countAndFlagsBits != v71 || result >= &v117[8 * v104])
  {
    result = memmove(result, v117, 8 * v104);
  }

  v105 = 0;
  countAndFlagsBits[2] = *(v71 + 16);
  v106 = 1 << *(v71 + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v118 = v107 & *(v71 + 64);
  for (i = (v106 + 63) >> 6; v118; result = swift_unknownObjectRetain())
  {
    v109 = __clz(__rbit64(v118));
    v118 &= v118 - 1;
LABEL_115:
    v112 = v109 | (v105 << 6);
    v113 = *(*(v71 + 56) + 16 * v112);
    *(countAndFlagsBits[6] + v112) = *(*(v71 + 48) + v112);
    *(countAndFlagsBits[7] + 16 * v112) = v113;
  }

  v110 = v105;
  while (1)
  {
    v105 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      break;
    }

    if (v105 >= i)
    {
      goto LABEL_117;
    }

    v111 = *&v117[8 * v105];
    ++v110;
    if (v111)
    {
      v109 = __clz(__rbit64(v111));
      v118 = (v111 - 1) & v111;
      goto LABEL_115;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for FloatingPointFormatStyle()
{
  result = type metadata accessor for NumberFormatStyleConfiguration.Collection(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for NumberFormatStyleConfiguration.Collection()
{
  type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Precision?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Grouping?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.SignDisplayStrategy?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FloatingPointRoundingRule?();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.RoundingIncrement?);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Notation?);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for FloatingPointRoundingRule?()
{
  if (!lazy cache variable for type metadata for FloatingPointRoundingRule?)
  {
    type metadata accessor for FloatingPointRoundingRule();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FloatingPointRoundingRule?);
    }
  }
}

uint64_t _NSOSLog()
{
  if (qword_1ED43F960 != -1)
  {
    dispatch_once(&qword_1ED43F960, &__block_literal_global_34);
  }

  return _MergedGlobals_110;
}

uint64_t closure #1 in closure #1 in NSNotificationCenter.Notifications.init(center:name:object:)(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of Notification(a1, v3);
    NSNotificationCenter.Notifications.send(_:)();

    return outlined destroy of NSNotificationCenter.Notifications.NotificationWrapper(v3);
  }

  return result;
}

uint64_t NSNotificationCenter.Notifications.send(_:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 64));
  partial apply for closure #1 in NSNotificationCenter.Notifications.send(_:)((v1 + 16), v11);
  os_unfair_lock_unlock((v1 + 64));
  outlined init with copy of FloatingPointRoundingRule?(v11, v8, &_sSccySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgs5NeverOG_AHtSgMd);
  if (*v8)
  {
    v9[0] = *v8;
    v9[1] = *&v8[16];
    v9[2] = *&v8[32];
    v2 = *v8;
    v10 = *&v8[48];
    outlined init with copy of FloatingPointRoundingRule?(v9, v8, &_sSccySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgs5NeverOG_AHtMd);
    v3 = *(*(v2 + 64) + 40);
    v5 = *&v8[24];
    v4 = *&v8[40];
    *v3 = *&v8[8];
    v3[1] = v5;
    v3[2] = v4;
    swift_continuation_resume();
    outlined destroy of TermOfAddress?(v9, &_sSccySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgs5NeverOG_AHtMd);
    v6 = v11;
  }

  else
  {
    outlined destroy of TermOfAddress?(v11, &_sSccySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgs5NeverOG_AHtSgMd);
    v6 = v8;
  }

  return outlined destroy of TermOfAddress?(v6, &_sSccySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgs5NeverOG_AHtSgMd);
}

double closure #1 in NSNotificationCenter.Notifications.send(_:)@<D0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of FloatingPointRoundingRule?((a1 + 1), &v25, &_ss8Sendable_pSgMd);
  v6 = *(&v26 + 1);
  outlined destroy of TermOfAddress?(&v25, &_ss8Sendable_pSgMd);
  if (v6)
  {
    v7 = *a1;
    v8 = *(*a1 + 2);
    if (v8)
    {
      if (v8 >= 7)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      }

      outlined init with copy of NSNotificationCenter.Notifications.NotificationWrapper(a2, &v25);
      v9 = *a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
      }

      *(v9 + 2) = v11 + 1;
      v7 = v9 + 32;
      v12 = &v9[48 * v11 + 32];
      v13 = v25;
      v14 = v27;
      *(v12 + 1) = v26;
      *(v12 + 2) = v14;
      *v12 = v13;
      *a1 = v9;
      v15 = a1[5];
      if (!*(v15 + 2))
      {
        goto LABEL_18;
      }

      v16 = *(v15 + 4);
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      *a3 = v16;
      if (*(v9 + 2))
      {
        outlined init with copy of NSNotificationCenter.Notifications.NotificationWrapper((v9 + 32), a3 + 8);
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        return result;
      }

      __break(1u);
    }

    else
    {
      v18 = a1[5];
      if (*(v18 + 2))
      {
        v19 = *(v18 + 4);
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        *a3 = v19;
        outlined init with copy of NSNotificationCenter.Notifications.NotificationWrapper(a2, a3 + 8);
        return result;
      }

      outlined init with copy of NSNotificationCenter.Notifications.NotificationWrapper(a2, &v25);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_15;
      }
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v7);
LABEL_15:
    v21 = *(v7 + 2);
    v20 = *(v7 + 3);
    if (v21 >= v20 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v7);
    }

    *(v7 + 2) = v21 + 1;
    v22 = &v7[48 * v21];
    v23 = v25;
    v24 = v27;
    *(v22 + 3) = v26;
    *(v22 + 4) = v24;
    *(v22 + 2) = v23;
    *a1 = v7;
  }

LABEL_18:
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.AsyncMessageSequenceIterator<A>()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void NSNotificationCenter.Notifications.Iterator.next()()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t __DataStorage.init(capacity:)(uint64_t result)
{
  *(v2 + 16) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  if (result > 0x3FFFFFFFFFFFFFFELL)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (one-time initialization token for vmOpsThreshold == -1)
    {
      goto LABEL_3;
    }
  }

  result = swift_once();
LABEL_3:
  if (static __DataStorage.vmOpsThreshold > v1)
  {
    goto LABEL_10;
  }

  if (one-time initialization token for _pageSize != -1)
  {
    result = swift_once();
  }

  v3 = _pageSize + v1;
  if (__OFADD__(_pageSize, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFSUB__(_pageSize, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v5 & ~(_pageSize - 1);
LABEL_10:
  *(v2 + 24) = 0;
  v6 = 0;
  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v6 + 1);
  result = malloc_type_malloc(v1, v6 << 32);
  if (result)
  {
    *(v2 + 16) = result;
    *(v2 + 64) = 1;
    *(v2 + 32) = v1;
    *(v2 + 40) = 0;
    return v2;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static String.localizedStringWithFormat(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = LocaleCache._currentAndCache.getter();
  MEMORY[0x1EEE9AC00](v4);
  v5 = specialized withVaList<A>(_:_:)(a3, partial apply for closure #1 in String.init(format:locale:arguments:));
  swift_unknownObjectRelease();
  return v5;
}

uint64_t specialized withVaList<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = __VaListBuilder.va_list()();
    a2(&v25, v23);

    return v25;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v9 = *v4;
    v10 = *(result + 16);
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v15 = result;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = *(result + 16);
    if (v19)
    {
      v20 = (result + 32);
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t protocol witness for _CalendarProtocol.identifier.getter in conformance _CalendarAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  CalendarCache.current.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in ICUDateFormatter.DateFormatInfo.init(_:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v13 = *a1;
  if (*(*a1 + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v15)
    {
      v16 = (*(v13 + 56) + 16 * v14);
      v17 = v16[1];
      *a6 = *v16;
      a6[1] = v17;
    }
  }

  v154 = a4;
  v168 = a2;
  v169 = a1;
  v167 = a6;
  v19 = *(a3 + 80);
  v188 = *(a3 + 64);
  v189 = v19;
  v190[0] = *(a3 + 96);
  *(v190 + 10) = *(a3 + 106);
  v20 = *(a3 + 16);
  v184 = *a3;
  v185 = v20;
  v21 = *(a3 + 48);
  v186 = *(a3 + 32);
  v187 = v21;
  Date.FormatStyle.symbols.getter(&v193);
  v22 = *(a3 + 72);
  v23 = *(a3 + 80);
  v201 = *(a3 + 104);
  v24 = *(&v201 + 1);
  v180 = v22;
  v181 = v23;
  swift_unknownObjectRetain_n();
  outlined init with copy of Calendar(&v201, v202);
  swift_unknownObjectRetain();
  outlined init with copy of Calendar(&v201, v202);
  v25 = Date.FormatStyle.DateFieldCollection.formatterTemplate(overridingDayPeriodWithLocale:)(&v180);
  v170 = v26;
  v172 = v25;
  swift_unknownObjectRelease();
  v175 = v22;
  ObjectType = swift_getObjectType();
  v161 = v23;
  v157 = *(v23 + 472);
  v27 = v157(ObjectType, v23);
  v29 = v28;
  v164 = v24;
  v156 = swift_getObjectType();
  v155 = *(v24 + 24);
  v155(v194, v156, v24);
  v30 = v29;
  v31 = v194[0];
  v32 = one-time initialization token for _patternGeneratorCache;

  if (v32 != -1)
  {
    v33 = swift_once();
  }

  v34 = qword_1EA8221B0;
  v165 = static ICUPatternGenerator._patternGeneratorCache;
  v180 = v27;
  v181 = v30;
  v182 = v31;
  MEMORY[0x1EEE9AC00](v33);
  os_unfair_lock_lock((v34 + 24));
  _s10Foundation14FormatterCacheV9formatter3for7creatorq_x_q_yKXEtKFq_SgSDyxq_GzYbXEfU_AA19ICUPatternGeneratorC07PatternH4InfoV_AJSgTG5TA_0(v34 + 16, v202);
  v213 = v7;
  if (v7)
  {
    goto LABEL_114;
  }

  os_unfair_lock_unlock((v34 + 24));
  v35 = v202[0];
  countAndFlagsBits = v172;
  if (v202[0] != 1)
  {
    goto LABEL_20;
  }

  LOBYTE(v202[0]) = v31;
  type metadata accessor for ICUPatternGenerator();
  swift_allocObject();

  v35 = ICUPatternGenerator.init(localeIdentifier:calendarIdentifier:)(v27, v30, v202);
  os_unfair_lock_lock((v34 + 24));
  v37 = *(v34 + 16);
  v38 = v181;
  v153 = v180;
  v152 = v182;
  if (v165 >= *(v37 + 16))
  {
  }

  else
  {
    *(v34 + 16) = MEMORY[0x1E69E7CC8];
  }

  LOBYTE(object) = swift_isUniquelyReferenced_nonNull_native();
  v202[0] = *(v34 + 16);
  v40 = v202[0];
  *(v34 + 16) = 0x8000000000000000;
  v151 = v38;
  v42 = specialized __RawDictionaryStorage.find<A>(_:)(v153, v38, v152);
  v43 = *(v40 + 16);
  v44 = (v41 & 1) == 0;
  v45 = v43 + v44;
  if (__OFADD__(v43, v44))
  {
    goto LABEL_55;
  }

  if (*(v40 + 24) < v45)
  {
    v46 = v41;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, object);
    v47 = v202[0];
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(v153, v151, v152);
    if ((v46 & 1) != (v49 & 1))
    {
      goto LABEL_115;
    }

    v42 = v48;
    if (v46)
    {
      goto LABEL_15;
    }

LABEL_18:
    specialized _NativeDictionary._insert(at:key:value:)(v42, v153, v151, v152, v35, v47);
    goto LABEL_19;
  }

  if (object)
  {
    v47 = v40;
    if ((v41 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v148 = v42;
    v149 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation19ICUPatternGeneratorC07PatternE4InfoVAESgGMd);
    v114 = static _DictionaryStorage.copy(original:)();
    v47 = v114;
    if (*(v40 + 16))
    {
      v115 = (v114 + 64);
      v116 = ((1 << *(v47 + 32)) + 63) >> 6;
      v150 = (v40 + 64);
      if (v47 != v40 || v115 >= v40 + 64 + 8 * v116)
      {
        memmove(v115, v150, 8 * v116);
      }

      v117 = 0;
      *(v47 + 16) = *(v40 + 16);
      v118 = 1 << *(v40 + 32);
      v119 = *(v40 + 64);
      v120 = -1;
      if (v118 < 64)
      {
        v120 = ~(-1 << v118);
      }

      v121 = v120 & v119;
      v147 = (v118 + 63) >> 6;
      if ((v120 & v119) != 0)
      {
        do
        {
          v122 = __clz(__rbit64(v121));
          v121 &= v121 - 1;
LABEL_86:
          v125 = v122 | (v117 << 6);
          v126 = *(v40 + 48) + 24 * v125;
          v127 = *v126;
          v128 = *(v126 + 8);
          LOBYTE(v126) = *(v126 + 16);
          v129 = *(*(v40 + 56) + 8 * v125);
          v130 = *(v47 + 48) + 24 * v125;
          *v130 = v127;
          *(v130 + 8) = v128;
          *(v130 + 16) = v126;
          *(*(v47 + 56) + 8 * v125) = v129;
        }

        while (v121);
      }

      v123 = v117;
      countAndFlagsBits = v172;
      while (1)
      {
        v117 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          goto LABEL_112;
        }

        if (v117 >= v147)
        {
          break;
        }

        v124 = *(v150 + v117);
        ++v123;
        if (v124)
        {
          v122 = __clz(__rbit64(v124));
          v121 = (v124 - 1) & v124;
          goto LABEL_86;
        }
      }
    }

    v42 = v148;
    if ((v149 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v50 = v42;

  *(*(v47 + 56) + 8 * v50) = v35;

LABEL_19:
  *(v34 + 16) = v47;
  os_unfair_lock_unlock((v34 + 24));

  outlined consume of ICUNumberFormatter??(1);
LABEL_20:
  swift_bridgeObjectRelease_n();
  if (v35)
  {
    v51._countAndFlagsBits = countAndFlagsBits;
    object = v170;
    v51._object = v170;
    v52 = ICUPatternGenerator._patternForSkeleton(_:)(v51);

    v53 = v175;
    if (v52.value._object)
    {

      countAndFlagsBits = v52.value._countAndFlagsBits;
      object = v52.value._object;
    }
  }

  else
  {
    v53 = v175;
    object = v170;
  }

  outlined destroy of Calendar(&v201);
  swift_unknownObjectRelease();
  v191 = countAndFlagsBits;
  v192 = object;
  if (!a5)
  {
    outlined destroy of Calendar(&v201);
    swift_unknownObjectRelease();
    v34 = v168;
    countAndFlagsBits = v169;
LABEL_46:
    v37 = v191;
    v40 = v192;
    outlined init with copy of ICUDateFormatter.PatternCacheKey(v34, &v184);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = *countAndFlagsBits;
    a3 = v183;
    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
    v84 = *(a3 + 16);
    v85 = (v83 & 1) == 0;
    v86 = __OFADD__(v84, v85);
    v87 = v84 + v85;
    if (!v86)
    {
      LOBYTE(object) = v83;
      if (*(a3 + 24) < v87)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v87, isUniquelyReferenced_nonNull_native);
        v68 = v183;
        v45 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
        if ((object & 1) == (v88 & 1))
        {
          goto LABEL_52;
        }

        v45 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v68 = a3;
LABEL_52:
        v89 = v167;
        if (object)
        {
LABEL_53:
          v90 = v45;
          outlined destroy of ICUDateFormatter.PatternCacheKey(v34);
          v91 = (*(v68 + 56) + 16 * v90);
          *v91 = v37;
          v91[1] = v40;

LABEL_93:
          *countAndFlagsBits = v68;
          *v89 = v37;
          v89[1] = v40;
          return result;
        }

LABEL_92:
        result = specialized _NativeDictionary._insert(at:key:value:)(v45, v34, v37, v40, v68);
        goto LABEL_93;
      }

      goto LABEL_56;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v172 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUDateFormatterC15PatternCacheKeyVSSGMd);
    v92 = static _DictionaryStorage.copy(original:)();
    v68 = v92;
    if (*(a3 + 16))
    {
      v93 = (v92 + 64);
      v94 = (a3 + 64);
      v95 = ((1 << *(v68 + 32)) + 63) >> 6;
      if (v68 != a3 || v93 >= &v94[8 * v95])
      {
        memmove(v93, v94, 8 * v95);
      }

      v34 = 0;
      *(v68 + 16) = *(a3 + 16);
      v96 = 1 << *(a3 + 32);
      v97 = -1;
      if (v96 < 64)
      {
        v97 = ~(-1 << v96);
      }

      v98 = v97 & *(a3 + 64);
      v99 = (v96 + 63) >> 6;
      v174 = v99;
      if (v98)
      {
        do
        {
          v100 = __clz(__rbit64(v98));
          v178 = (v98 - 1) & v98;
LABEL_69:
          v103 = v100 | (v34 << 6);
          v104 = 96 * v103;
          v105 = (*(a3 + 48) + 96 * v103);
          v106 = v105[2];
          v107 = v105[3];
          v108 = v105[5];
          v188 = v105[4];
          v189 = v108;
          v187 = v107;
          v109 = v105[1];
          v184 = *v105;
          v185 = v109;
          v186 = v106;
          v110 = 16 * v103;
          v111 = (*(a3 + 56) + 16 * v103);
          v112 = v111[1];
          v176 = *v111;
          memmove((*(v68 + 48) + v104), v105, 0x60uLL);
          v113 = (*(v68 + 56) + v110);
          *v113 = v176;
          v113[1] = v112;
          outlined init with copy of ICUDateFormatter.PatternCacheKey(&v184, &v180);

          v99 = v174;
          v98 = v178;
        }

        while (v178);
      }

      v101 = v34;
      while (1)
      {
        v34 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          break;
        }

        if (v34 >= v99)
        {
          goto LABEL_72;
        }

        v102 = *(a3 + 64 + 8 * v34);
        ++v101;
        if (v102)
        {
          v100 = __clz(__rbit64(v102));
          v178 = (v102 - 1) & v102;
          goto LABEL_69;
        }
      }

      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v89 = v167;
LABEL_91:

    v45 = v172;
    if (object)
    {
      goto LABEL_53;
    }

    goto LABEL_92;
  }

  v54 = *(a3 + 80);
  v188 = *(a3 + 64);
  v189 = v54;
  v190[0] = *(a3 + 96);
  *(v190 + 10) = *(a3 + 106);
  v55 = *(a3 + 16);
  v184 = *a3;
  v185 = v55;
  v56 = *(a3 + 48);
  v186 = *(a3 + 32);
  v187 = v56;
  Date.FormatStyle.symbols.getter(v194);
  v179[1] = v198;
  LOBYTE(v202[0]) = v194[0];
  v202[1] = v194[1];
  v203 = v195;
  v204 = v196;
  v205 = v197;
  v206 = v198;
  v207 = v199;
  v208 = v200;
  v209 = 526;
  v210 = 2;
  v211 = 0;
  v212 = 3327;
  v180 = v53;
  v181 = v161;
  swift_unknownObjectRetain();
  v173 = Date.FormatStyle.DateFieldCollection.formatterTemplate(overridingDayPeriodWithLocale:)(&v180);
  v58 = v57;
  swift_unknownObjectRelease();
  v59 = v157(ObjectType, v161);
  v37 = v60;
  v61 = (v155)(v179, v156, v164);
  v62 = v179[0];
  v180 = v59;
  v181 = v37;
  v182 = v179[0];
  MEMORY[0x1EEE9AC00](v61);

  os_unfair_lock_lock((v34 + 24));
  v63 = v213;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v34 + 16, &v183);
  v213 = v63;
  if (v63)
  {
LABEL_114:
    os_unfair_lock_unlock((v34 + 24));
    __break(1u);
    goto LABEL_115;
  }

  os_unfair_lock_unlock((v34 + 24));
  object = v183;
  if (v183 != 1)
  {
LABEL_41:
    swift_bridgeObjectRelease_n();
    if (object)
    {
      v79 = v173;
      v80._countAndFlagsBits = v173;
      v80._object = v58;
      v81 = ICUPatternGenerator._patternForSkeleton(_:)(v80);

      v34 = v168;
      countAndFlagsBits = v169;
      if (v81.value._object)
      {

        v79 = v81.value._countAndFlagsBits;
        v58 = v81.value._object;
      }
    }

    else
    {
      v34 = v168;
      countAndFlagsBits = v169;
      v79 = v173;
    }

    outlined destroy of Calendar(&v201);
    swift_unknownObjectRelease();
    *&v184 = v79;
    *(&v184 + 1) = v58;
    v180 = v154;
    v181 = a5;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();

    goto LABEL_46;
  }

  LOBYTE(v183) = v62;
  type metadata accessor for ICUPatternGenerator();
  swift_allocObject();

  object = ICUPatternGenerator.init(localeIdentifier:calendarIdentifier:)(v59, v37, &v183);
  os_unfair_lock_lock((v34 + 24));
  v64 = v180;
  v65 = v181;
  LODWORD(v172) = v182;
  if (v165 >= *(*(v34 + 16) + 16))
  {
  }

  else
  {
    *(v34 + 16) = MEMORY[0x1E69E7CC8];
  }

  v40 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *(v34 + 16);
  v66 = v183;
  *(v34 + 16) = 0x8000000000000000;
  v171 = v64;
  v67 = v64;
  v68 = v66;
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v65, v172);
  v71 = *(v66 + 16);
  v72 = (v69 & 1) == 0;
  v73 = v71 + v72;
  if (__OFADD__(v71, v72))
  {
    __break(1u);
LABEL_72:
    v89 = v167;
    v34 = v168;
    countAndFlagsBits = v169;
    goto LABEL_91;
  }

  if (*(v66 + 24) >= v73)
  {
    if (v40)
    {
      v75 = v66;
      if (v69)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v160 = v70;
      v162 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation19ICUPatternGeneratorC07PatternE4InfoVAESgGMd);
      v131 = static _DictionaryStorage.copy(original:)();
      v75 = v131;
      if (*(v66 + 16))
      {
        v132 = (v131 + 64);
        v163 = (v66 + 64);
        v133 = ((1 << *(v75 + 32)) + 63) >> 6;
        if (v75 != v66 || v132 >= &v163[8 * v133])
        {
          memmove(v132, v163, 8 * v133);
        }

        v134 = 0;
        *(v75 + 16) = *(v66 + 16);
        v135 = 1 << *(v66 + 32);
        v136 = -1;
        if (v135 < 64)
        {
          v136 = ~(-1 << v135);
        }

        v159 = (v135 + 63) >> 6;
        v137 = v136 & *(v66 + 64);
        if (v137)
        {
          do
          {
            v138 = __clz(__rbit64(v137));
            v166 = (v137 - 1) & v137;
LABEL_107:
            v141 = v138 | (v134 << 6);
            v142 = *(v66 + 48) + 24 * v141;
            v143 = *v142;
            v144 = *(v142 + 8);
            LOBYTE(v142) = *(v142 + 16);
            v145 = *(*(v66 + 56) + 8 * v141);
            v146 = *(v75 + 48) + 24 * v141;
            *v146 = v143;
            *(v146 + 8) = v144;
            *(v146 + 16) = v142;
            *(*(v75 + 56) + 8 * v141) = v145;

            v137 = v166;
          }

          while (v166);
        }

        v139 = v134;
        while (1)
        {
          v134 = v139 + 1;
          if (__OFADD__(v139, 1))
          {
            goto LABEL_113;
          }

          if (v134 >= v159)
          {
            break;
          }

          v140 = *&v163[8 * v134];
          ++v139;
          if (v140)
          {
            v138 = __clz(__rbit64(v140));
            v166 = (v140 - 1) & v140;
            goto LABEL_107;
          }
        }
      }

      v70 = v160;
      if (v162)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_39;
  }

  v74 = v69;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, v40);
  v75 = v183;
  v76 = specialized __RawDictionaryStorage.find<A>(_:)(v171, v65, v172);
  if ((v74 & 1) == (v77 & 1))
  {
    v70 = v76;
    if (v74)
    {
LABEL_36:
      v78 = v70;

      *(*(v75 + 56) + 8 * v78) = object;

LABEL_40:
      *(v34 + 16) = v75;
      os_unfair_lock_unlock((v34 + 24));

      outlined consume of ICUNumberFormatter??(1);
      goto LABEL_41;
    }

LABEL_39:
    specialized _NativeDictionary._insert(at:key:value:)(v70, v171, v65, v172, object, v75);
    goto LABEL_40;
  }

LABEL_115:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined consume of ICUNumberFormatter??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t Date.FormatStyle.symbols.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if ((v2 & 0xFF000000000000) == 0x3000000000000)
  {
    v3 = 0;
    LOBYTE(v4) = 0;
    v5 = 0;
    LOBYTE(v6) = 0;
    LOBYTE(v7) = 0;
    v8 = 0;
    LOBYTE(v9) = 12;
    LOBYTE(v10) = -1;
    LOBYTE(v11) = 2;
    LOBYTE(v12) = 9;
    LOBYTE(v13) = 6;
    LOBYTE(v2) = 1;
    result = 5;
    v15 = 3;
    LOBYTE(v16) = 3;
    LOBYTE(v17) = 3;
    LOBYTE(v18) = 3;
    LOBYTE(v19) = 1;
  }

  else
  {
    v3 = *(v1 + 8);
    v16 = *(v1 + 16);
    result = v16 >> 8;
    v8 = *(v1 + 40);
    v5 = *(v1 + 24);
    v15 = *v1;
    v4 = v16 >> 16;
    v17 = v16 >> 24;
    v18 = v2 >> 16;
    v13 = v2 >> 24;
    v12 = HIDWORD(v2);
    v7 = v2 >> 40;
    v19 = HIWORD(v2);
    v11 = HIBYTE(v2);
    v10 = *(v1 + 48);
    v9 = v10 >> 8;
    v6 = (v2 >> 8) & 1;
  }

  *a1 = v15;
  *(a1 + 8) = v3;
  *(a1 + 16) = v16;
  *(a1 + 17) = result;
  *(a1 + 18) = v4;
  *(a1 + 19) = v17;
  *(a1 + 24) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v6;
  *(a1 + 34) = v18;
  *(a1 + 35) = v13;
  *(a1 + 36) = v12;
  *(a1 + 37) = v7;
  *(a1 + 38) = v19;
  *(a1 + 39) = v11;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10;
  *(a1 + 49) = v9;
  return result;
}

uint64_t ICUDateFormatter.DateFormatInfo.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  *v59 = a1[6];
  *&v59[10] = *(a1 + 106);
  *v58 = a1[4];
  *&v58[16] = v3;
  v4 = a1[1];
  v54 = *a1;
  v55 = v4;
  v5 = a1[3];
  v56 = a1[2];
  v57 = v5;
  v45 = *&v59[16];
  ObjectType = swift_getObjectType();
  v41 = *(*&v59[16] + 24);
  v41(&v46, ObjectType, *&v59[16]);
  v6 = 0;
  v7 = 0;
  v43 = v46;
  if ((v58[0] & 1) == 0)
  {
    v8 = *(&v57 + 1);
    v60 = *&v58[8];
    v9 = *&v58[16];
    v10 = swift_getObjectType();
    *v51 = v8;
    v11 = *(v9 + 496);
    outlined init with copy of Locale(&v60, &v46);
    v6 = v11(v51, v10, v9);
    v7 = v12;
    outlined destroy of Locale(&v60);
  }

  v61[0] = *&v58[8];
  v13 = *&v58[16];
  v42 = swift_getObjectType();
  v14 = (*(v13 + 472))(v42, v13);
  v16 = v15;
  v41(&v50, ObjectType, v45);
  v17 = v50;
  v47[3] = *v58;
  v48 = *&v58[16];
  v49[0] = *v59;
  *(v49 + 10) = *&v59[10];
  v46 = v54;
  v47[0] = v55;
  v47[1] = v56;
  v47[2] = v57;
  Date.FormatStyle.symbols.getter(v52);
  *&v51[55] = v53;
  *&v51[39] = v52[2];
  *&v51[23] = v52[1];
  *&v51[7] = v52[0];
  *&v46 = v14;
  *(&v46 + 1) = v16;
  LOBYTE(v47[0]) = v17;
  *(&v47[2] + 10) = *&v51[41];
  *(&v47[2] + 1) = *&v51[32];
  *(&v47[1] + 1) = *&v51[16];
  *(v47 + 1) = *v51;
  *&v48 = v6;
  *(&v48 + 1) = v7;
  v18 = one-time initialization token for patternCache;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  v20 = static ICUDateFormatter.patternCache;
  MEMORY[0x1EEE9AC00](v19);
  os_unfair_lock_lock((v20 + 24));
  partial apply for closure #1 in ICUDateFormatter.DateFormatInfo.init(_:)((v20 + 16), v51);
  os_unfair_lock_unlock((v20 + 24));

  outlined destroy of ICUDateFormatter.PatternCacheKey(&v46);
  v21 = *v51;
  v22 = *&v51[8];
  v50 = v43;
  v23 = *(v13 + 432);
  outlined init with copy of Locale(v61, v51);
  v23(v51, &v50, v42, v13);
  outlined destroy of Locale(v61);
  v40 = v22;
  if (v51[0] == 7)
  {
    v24 = v45;
    v25 = ObjectType;
    v39 = (*(v45 + 56))(ObjectType, v45);
LABEL_10:
    v28 = (*(v13 + 64))(v42, v13);
    v30 = v29;
    v31 = *v59;
    v32 = swift_getObjectType();
    v33 = (*(v31 + 32))(v32, v31);
    v35 = v34;
    v36 = (*(v24 + 72))(v25, v24);
    result = outlined destroy of Date.FormatStyle(&v54);
    v37 = v59[24];
    v38 = v59[25];
    *a2 = v28;
    *(a2 + 8) = v30;
    *(a2 + 16) = v33;
    *(a2 + 24) = v35;
    *(a2 + 32) = v43;
    *(a2 + 40) = v39;
    *(a2 + 48) = v36;
    *(a2 + 56) = v37;
    *(a2 + 64) = v21;
    *(a2 + 72) = v40;
    *(a2 + 80) = v38;
    *(a2 + 88) = 0xC1CD27E440000000;
    return result;
  }

  result = specialized Collection<>.firstIndex(of:)(v51[0], outlined read-only object #0 of one-time initialization function for weekdays);
  if ((v27 & 1) == 0)
  {
    if (!__OFADD__(result, 1))
    {
      v24 = v45;
      v25 = ObjectType;
      v39 = result + 1;
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 10;
      if (a1 < 10)
      {
        v6 = a1;
      }

      if (v6 <= 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = v6;
      }

      v4 = 114;
    }

    else
    {
      v2 = 10;
      if (a1 < 10)
      {
        v2 = a1;
      }

      if (v2 <= 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = v2;
      }

      v4 = 121;
    }

LABEL_22:
    v7 = 0xE100000000000000;
    return String.init(repeating:count:)(*&v4, v3)._countAndFlagsBits;
  }

  if (a2 == 2)
  {
    v5 = 10;
    if (a1 < 10)
    {
      v5 = a1;
    }

    if (v5 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v5;
    }

    v4 = 117;
    goto LABEL_22;
  }

  if (a1)
  {
    return 31097;
  }

  else
  {
    return 121;
  }
}

uint64_t protocol witness for _LocaleProtocol.identifierCapturingPreferences.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 472))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t *a1)
{
  v2 = *(a1 + 3);
  v10 = *(a1 + 2);
  v11 = v2;
  v3 = *(a1 + 5);
  v12 = *(a1 + 4);
  v13 = v3;
  v4 = *(a1 + 1);
  v8 = *a1;
  v9 = v4;
  Hasher.init(_seed:)();
  ICUDateFormatter.PatternCacheKey.hash(into:)(v7);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

uint64_t specialized static ICUDateFormatter.cachedFormatter(for:)(uint64_t *a1)
{
  v91[44] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v7 = a1[5];
  v6 = a1[6];
  v8 = *(a1 + 56);
  v10 = a1[8];
  v9 = a1[9];
  v11 = *(a1 + 80);
  v12 = a1[11];
  v76 = v3;
  v78 = v9;
  if (one-time initialization token for formatterCache != -1)
  {
    v74 = a1;
    v45 = a1[6];
    v46 = a1[5];
    v68 = *(a1 + 80);
    v47 = a1[8];
    swift_once();
    v10 = v47;
    v3 = v76;
    v9 = v78;
    v11 = v68;
    v7 = v46;
    v6 = v45;
    a1 = v74;
  }

  *(&v84 + 1) = *(a1 + 33);
  DWORD1(v84) = *(a1 + 9);
  v13 = qword_1EA822190;
  v71 = static ICUDateFormatter.formatterCache;
  *&v82 = v1;
  *(&v82 + 1) = v2;
  *&v83 = v3;
  *(&v83 + 1) = v4;
  LOBYTE(v84) = v5;
  v69 = v6;
  v70 = v7;
  *(&v84 + 1) = v7;
  *&v85 = v6;
  BYTE8(v85) = v8;
  *(&v85 + 9) = *(a1 + 57);
  HIDWORD(v85) = *(a1 + 15);
  v73 = v10;
  *&v86 = v10;
  *(&v86 + 1) = v9;
  LOBYTE(v87) = v11;
  DWORD1(v87) = *(a1 + 21);
  *(&v87 + 1) = *(a1 + 81);
  *(&v87 + 1) = v12;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v13 + 6);
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v13[4], v91);
  v72 = v13;
  os_unfair_lock_unlock(v13 + 6);
  v14 = v91[0];
  if (v91[0] == 1)
  {
    type metadata accessor for ICUDateFormatter();
    v14 = swift_allocObject();
    v67 = v11;
    *(v14 + 24) = v11 & 1;
    swift_bridgeObjectRetain_n();
    Locale.Components.init(identifier:)(v89);
    LOBYTE(v89[6]) = v5;
    memcpy(v90, v89, sizeof(v90));
    memcpy(v88, v89, sizeof(v88));
    outlined init with copy of Locale.Components(v90, v91);
    LODWORD(v15) = Locale.Components.icuIdentifier.getter();
    memcpy(v91, v89, 0x160uLL);
    outlined destroy of Locale.Components(v91);
    outlined destroy of Locale.Components(v90);

    v16 = MEMORY[0x1865CB200](v76, v4);
    if (v16)
    {
      v17 = v16;
      v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v16, 0);

      v19 = specialized Sequence._copySequenceContents(initializing:)(v89, (v18 + 4), v17, v76, v4);

      isUniquelyReferenced_nonNull_native = v78;
      if (v19 != v17)
      {
        goto LABEL_47;
      }
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = v78;
    }

    v21 = MEMORY[0x1865CB200](v73, isUniquelyReferenced_nonNull_native);
    if (v21)
    {
      v22 = v21;
      v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v21, 0);

      v24 = specialized Sequence._copySequenceContents(initializing:)(v89, (v23 + 4), v22, v73, isUniquelyReferenced_nonNull_native);

      if (v24 != v22)
      {
        goto LABEL_48;
      }
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v88[0]) = 0;
    isUniquelyReferenced_nonNull_native = v18[2];
    if (isUniquelyReferenced_nonNull_native >> 31)
    {
      __break(1u);
    }

    else if (!(v23[2] >> 31))
    {
      String.utf8CString.getter();

      isUniquelyReferenced_nonNull_native = udat_open();

      LODWORD(v15) = v88[0];
      if (SLODWORD(v88[0]) >= 1)
      {
        if (one-time initialization token for logger != -1)
        {
          goto LABEL_49;
        }

        while (1)
        {
          v25 = type metadata accessor for Logger();
          __swift_project_value_buffer(v25, static ICUError.logger);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v89[0] = v29;
            *v28 = 136315394;
            *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018147EB40, v89);
            *(v28 + 12) = 2080;
            v30 = ICUError.debugDescription.getter(v15);
            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v89);

            *(v28 + 14) = v32;
            _os_log_impl(&dword_18075C000, v26, v27, "%s. Error: %s", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1865D2690](v29, -1, -1);
            MEMORY[0x1865D2690](v28, -1, -1);
          }

          v33 = v72;
          if (isUniquelyReferenced_nonNull_native)
          {
            udat_close();
          }

LABEL_23:
          swift_deallocPartialClassInstance();
          v14 = 0;
LABEL_33:
          os_unfair_lock_lock(v33 + 6);
          v15 = *&v33[4]._os_unfair_lock_opaque;
          v89[4] = v86;
          v89[5] = v87;
          v89[2] = v84;
          v89[3] = v85;
          v89[0] = v82;
          v89[1] = v83;
          if (v71 >= *(v15 + 16))
          {
          }

          else
          {
            *&v33[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
          }

          outlined init with copy of ICUDateFormatter.DateFormatInfo(v89, v88);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = *&v33[4]._os_unfair_lock_opaque;
          *&v33[4]._os_unfair_lock_opaque = 0x8000000000000000;
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v89);
          v37 = *(v80 + 16);
          v38 = (v36 & 1) == 0;
          v39 = __OFADD__(v37, v38);
          v40 = v37 + v38;
          if (!v39)
          {
            break;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          swift_once();
        }

        v41 = v36;
        if (*(v80 + 24) < v40)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
          v42 = v80;
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v89);
          if ((v41 & 1) == (v43 & 1))
          {
            goto LABEL_42;
          }

          v35 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUDateFormatterC14DateFormatInfoVAESgGMd);
          v48 = static _DictionaryStorage.copy(original:)();
          v42 = v48;
          if (*(v80 + 16))
          {
            v49 = (v48 + 64);
            v77 = (v80 + 64);
            v50 = ((1 << *(v42 + 32)) + 63) >> 6;
            if (v42 != v80 || v49 >= &v77[8 * v50])
            {
              memmove(v49, v77, 8 * v50);
            }

            v51 = 0;
            *(v42 + 16) = *(v80 + 16);
            v52 = 1 << *(v80 + 32);
            v53 = -1;
            if (v52 < 64)
            {
              v53 = ~(-1 << v52);
            }

            v54 = v53 & *(v80 + 64);
            v55 = (v52 + 63) >> 6;
            if (!v54)
            {
              goto LABEL_58;
            }

            while (1)
            {
              v56 = __clz(__rbit64(v54));
              for (i = (v54 - 1) & v54; ; i = (v58 - 1) & v58)
              {
                v59 = v56 | (v51 << 6);
                v60 = (*(v80 + 48) + 96 * v59);
                v61 = v60[2];
                v62 = v60[3];
                v63 = v60[5];
                v88[4] = v60[4];
                v88[5] = v63;
                v88[3] = v62;
                v64 = v60[1];
                v88[0] = *v60;
                v88[1] = v64;
                v88[2] = v61;
                v65 = *(*(v80 + 56) + 8 * v59);
                memmove((*(v42 + 48) + 96 * v59), v60, 0x60uLL);
                *(*(v42 + 56) + 8 * v59) = v65;
                outlined init with copy of ICUDateFormatter.DateFormatInfo(v88, &v81);

                v54 = i;
                if (i)
                {
                  break;
                }

LABEL_58:
                v57 = v51;
                do
                {
                  v51 = v57 + 1;
                  if (__OFADD__(v57, 1))
                  {
                    goto LABEL_73;
                  }

                  if (v51 >= v55)
                  {
                    goto LABEL_65;
                  }

                  v58 = *&v77[8 * v51];
                  ++v57;
                }

                while (!v58);
                v56 = __clz(__rbit64(v58));
              }
            }
          }

LABEL_65:

          v33 = v72;
          v35 = v75;
          if (v41)
          {
            goto LABEL_43;
          }

          goto LABEL_66;
        }

        v42 = v80;
LABEL_42:
        if (v41)
        {
LABEL_43:
          v44 = v35;
          outlined destroy of ICUDateFormatter.DateFormatInfo(v89);
          *(*(v42 + 56) + 8 * v44) = v14;

LABEL_67:
          *&v33[4]._os_unfair_lock_opaque = v42;

          os_unfair_lock_unlock(v33 + 6);

          outlined consume of ICUNumberFormatter??(1);
          return v14;
        }

LABEL_66:
        specialized _NativeDictionary._insert(at:key:value:)(v35, v89, v14, v42);
        goto LABEL_67;
      }

      v33 = v72;
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      *(v14 + 16) = isUniquelyReferenced_nonNull_native;
      udat_setContext();
      specialized UErrorCode.checkSuccessAndLogError(_:)(v88[0]);
      udat_setLenient();
      if ((v67 & 1) == 0)
      {
        udat_setBooleanAttribute();
        specialized UErrorCode.checkSuccessAndLogError(_:)(v88[0]);
        udat_setBooleanAttribute();
        specialized UErrorCode.checkSuccessAndLogError(_:)(v88[0]);
        udat_setBooleanAttribute();
        specialized UErrorCode.checkSuccessAndLogError(_:)(v88[0]);
        udat_setBooleanAttribute();
        specialized UErrorCode.checkSuccessAndLogError(_:)(v88[0]);
      }

      udat_getCalendar();
      v34 = ucal_clone();
      if (!specialized UErrorCode.checkSuccessAndLogError(_:)(v88[0]) || !v34)
      {
LABEL_32:
        ucal_close();
        goto LABEL_33;
      }

      MEMORY[0x1865D2A80](v34);
      if (v70 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v70 <= 0x7FFFFFFF)
      {
        ucal_setAttribute();
        if (v69 >= 0xFFFFFFFF80000000)
        {
          if (v69 <= 0x7FFFFFFF)
          {
            ucal_setAttribute();
            ucal_setMillis();
            ucal_get();
            ucal_setDateTime();
            ucal_getMillis();
            udat_set2DigitYearStart();
            udat_setCalendar();
            goto LABEL_32;
          }

LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_46;
  }

  return v14;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, double *a2)
{
  if (!*(*a1 + 16))
  {
    return 1;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v2)
  {
  }

  else
  {
    return 1;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double *a1)
{
  Hasher.init(_seed:)();
  ICUDateFormatter.DateFormatInfo.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(double *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v35 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v33 = ~v3;
    v30 = *(a1 + 32);
    v28 = *(a1 + 6);
    v29 = *(a1 + 5);
    v27 = *(a1 + 56);
    v24 = *(a1 + 80);
    v5 = a1[11];
    v36 = *(a1 + 1);
    v37 = *a1;
    v31 = *(a1 + 3);
    v32 = *(a1 + 2);
    v25 = *(a1 + 9);
    v26 = *(a1 + 8);
    v34 = *(v2 + 48);
    do
    {
      v6 = v34 + 96 * v4;
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      v9 = *(v6 + 32);
      v11 = *(v6 + 40);
      v10 = *(v6 + 48);
      v12 = *(v6 + 56);
      v13 = *(v6 + 64);
      v14 = *(v6 + 72);
      v15 = *(v6 + 80);
      v16 = *(v6 + 88);
      v17 = *v6 == *&v37 && *(v6 + 8) == v36;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v18 = v8 == v32 && v7 == v31;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v19 = v9 == v30 && v11 == v29;
          v20 = v19 && v10 == v28;
          if (v20 && v12 == v27)
          {
            v22 = v13 == v26 && v14 == v25;
            if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v15 ^ v24) & 1) == 0 && v16 == v5)
            {
              break;
            }
          }
        }
      }

      v4 = (v4 + 1) & v33;
    }

    while (((*(v35 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t specialized _CalendarAutoupdating.firstWeekday.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 32));
  if (!v1)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v27 = *(&static LocaleCache.cache + 8);
    v3 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v3 + 32));
    if (!v5)
    {
      LocaleCache.preferences()(&v38);
      v7 = v6;
      type metadata accessor for _LocaleICU();
      v4 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v36 = v44;
      v37[0] = v45[0];
      *(v37 + 12) = *(v45 + 12);
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v31[0] = v38;
      v31[1] = v39;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v38, v30);
      v8 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v31, 0);
      if (v7)
      {
        MEMORY[0x1EEE9AC00](v8);
        os_unfair_lock_lock((v3 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v3 + 16), v31);
        os_unfair_lock_unlock((v3 + 32));
        outlined destroy of LocalePreferences(&v38);

        v4 = *(&v31[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v38);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v4 + 200))(&v38, ObjectType, v4);
    swift_unknownObjectRelease();
    v10 = v38;
    if (v38 && v38 != 7)
    {
      *&v27 = type metadata accessor for _CalendarICU();
      v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v12 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v27 = type metadata accessor for _CalendarGregorian();
      v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v12 = type metadata accessor for _CalendarGregorian;
    }

    v13 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v11, 255, v12);
    v29 = v10;
    v28[0] = 0;
    v28[1] = 0;
    v14 = static LocaleCache.cache;
    v26 = *(&static LocaleCache.cache + 8);
    v15 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v15 + 32));
    if (!v17)
    {
      v25[1] = 0;
      *&v31[0] = v14;
      *(v31 + 8) = v26;
      LocaleCache.preferences()(&v38);
      v19 = v18;
      type metadata accessor for _LocaleICU();
      v16 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v36 = v44;
      v37[0] = v45[0];
      *(v37 + 12) = *(v45 + 12);
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v31[0] = v38;
      v31[1] = v39;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v38, v30);
      v20 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v31, 0);
      v17 = v20;
      if (v19)
      {
        *&v26 = v25;
        MEMORY[0x1EEE9AC00](v20);
        os_unfair_lock_lock((v15 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v15 + 16), v31);
        os_unfair_lock_unlock((v15 + 32));
        outlined destroy of LocalePreferences(&v38);

        v16 = *(&v31[0] + 1);
        v17 = *&v31[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v38);
      }
    }

    *&v38 = v17;
    *(&v38 + 1) = v16;
    *&v31[0] = 0;
    BYTE8(v31[0]) = 1;
    v21 = (*(v13 + 16))(&v29, v28, &v38, 0, 1, 0, 1, v31, v27, v13);
    MEMORY[0x1EEE9AC00](v21);
    os_unfair_lock_lock((v0 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v0 + 16), &v38);
    os_unfair_lock_unlock((v0 + 32));
    swift_unknownObjectRelease();
    v2 = *(&v38 + 1);
  }

  v22 = swift_getObjectType();
  v23 = (*(v2 + 56))(v22, v2);
  swift_unknownObjectRelease();
  return v23;
}

uint64_t specialized _CalendarAutoupdating.minimumDaysInFirstWeek.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 32));
  if (!v1)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v27 = *(&static LocaleCache.cache + 8);
    v3 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v3 + 32));
    if (!v5)
    {
      LocaleCache.preferences()(&v38);
      v7 = v6;
      type metadata accessor for _LocaleICU();
      v4 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v36 = v44;
      v37[0] = v45[0];
      *(v37 + 12) = *(v45 + 12);
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v31[0] = v38;
      v31[1] = v39;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v38, v30);
      v8 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v31, 0);
      if (v7)
      {
        MEMORY[0x1EEE9AC00](v8);
        os_unfair_lock_lock((v3 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v3 + 16), v31);
        os_unfair_lock_unlock((v3 + 32));
        outlined destroy of LocalePreferences(&v38);

        v4 = *(&v31[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v38);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v4 + 200))(&v38, ObjectType, v4);
    swift_unknownObjectRelease();
    v10 = v38;
    if (v38 && v38 != 7)
    {
      *&v27 = type metadata accessor for _CalendarICU();
      v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v12 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v27 = type metadata accessor for _CalendarGregorian();
      v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v12 = type metadata accessor for _CalendarGregorian;
    }

    v13 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v11, 255, v12);
    v29 = v10;
    v28[0] = 0;
    v28[1] = 0;
    v14 = static LocaleCache.cache;
    v26 = *(&static LocaleCache.cache + 8);
    v15 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v15 + 32));
    if (!v17)
    {
      v25[1] = 0;
      *&v31[0] = v14;
      *(v31 + 8) = v26;
      LocaleCache.preferences()(&v38);
      v19 = v18;
      type metadata accessor for _LocaleICU();
      v16 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v36 = v44;
      v37[0] = v45[0];
      *(v37 + 12) = *(v45 + 12);
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v31[0] = v38;
      v31[1] = v39;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v38, v30);
      v20 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v31, 0);
      v17 = v20;
      if (v19)
      {
        *&v26 = v25;
        MEMORY[0x1EEE9AC00](v20);
        os_unfair_lock_lock((v15 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v15 + 16), v31);
        os_unfair_lock_unlock((v15 + 32));
        outlined destroy of LocalePreferences(&v38);

        v16 = *(&v31[0] + 1);
        v17 = *&v31[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v38);
      }
    }

    *&v38 = v17;
    *(&v38 + 1) = v16;
    *&v31[0] = 0;
    BYTE8(v31[0]) = 1;
    v21 = (*(v13 + 16))(&v29, v28, &v38, 0, 1, 0, 1, v31, v27, v13);
    MEMORY[0x1EEE9AC00](v21);
    os_unfair_lock_lock((v0 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v0 + 16), &v38);
    os_unfair_lock_unlock((v0 + 32));
    swift_unknownObjectRelease();
    v2 = *(&v38 + 1);
  }

  v22 = swift_getObjectType();
  v23 = (*(v2 + 72))(v22, v2);
  swift_unknownObjectRelease();
  return v23;
}

void ICUDateFormatter.PatternCacheKey.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 41);
  v9 = *(v2 + 42);
  v10 = *(v2 + 43);
  v18 = *(v2 + 56);
  v22 = *(v2 + 57);
  v23 = *(v2 + 58);
  v11 = *(v2 + 59);
  v12 = *(v2 + 61);
  v26 = *(v2 + 62);
  v21 = *(v2 + 63);
  v19 = *(v2 + 48);
  v20 = *(v2 + 64);
  v24 = *(v2 + 60);
  v25 = *(v2 + 72);
  v28 = *(v2 + 73);
  v27 = *(v2 + 88);
  String.hash(into:)();
  MEMORY[0x1865CD060](v4);
  if (v5 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v13 = v12;
  if (v7 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v6, v7);
    String.hash(into:)();
  }

  if (v8 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (v9 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (v10 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (v22)
  {
    Hasher._combine(_:)(0);
    if (v23 != 3)
    {
LABEL_18:
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      goto LABEL_28;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v18 & 1) == 0)
    {
      v14 = 10;
      if (v19 < 10)
      {
        v14 = v19;
      }

      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16._countAndFlagsBits = 103;
      v16._object = 0xE100000000000000;
      String.init(repeating:count:)(v16, v15);
    }

    String.hash(into:)();

    if (v23 != 3)
    {
      goto LABEL_18;
    }
  }

  Hasher._combine(_:)(0);
LABEL_28:
  if (v11 == 6)
  {
    Hasher._combine(_:)(0);
    v17 = v28;
    if (v24 != 9)
    {
      goto LABEL_30;
    }

LABEL_33:
    Hasher._combine(_:)(0);
    if (v13 != 14)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  Hasher._combine(_:)(1u);
  v17 = v28;
  String.hash(into:)();

  if (v24 == 9)
  {
    goto LABEL_33;
  }

LABEL_30:
  Hasher._combine(_:)(1u);
  specialized RawRepresentable<>.hash(into:)();
  if (v13 != 14)
  {
LABEL_31:
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v13);
    String.hash(into:)();

    goto LABEL_35;
  }

LABEL_34:
  Hasher._combine(_:)(0);
LABEL_35:
  if (v26 == 2)
  {
    Hasher._combine(_:)(0);
    if (v21 != 2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v21 != 2)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      if (v25 != 255)
      {
        goto LABEL_38;
      }

      goto LABEL_43;
    }
  }

  Hasher._combine(_:)(0);
  if (v25 != 255)
  {
LABEL_38:
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)(a1, v20, v25 & 1);
    if (v17 == 12)
    {
      goto LABEL_39;
    }

LABEL_44:
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v17);
    String.hash(into:)();

    if (!v27)
    {
      goto LABEL_40;
    }

    goto LABEL_45;
  }

LABEL_43:
  Hasher._combine(_:)(0);
  if (v17 != 12)
  {
    goto LABEL_44;
  }

LABEL_39:
  Hasher._combine(_:)(0);
  if (!v27)
  {
LABEL_40:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_45:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

BOOL specialized static Date.FormatStyle.DateFieldCollection.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 3)
    {
      return 0;
    }

    v6 = 0xE400000000000000;
    v7 = 1195853639;
    if (v4 != 1)
    {
      v7 = 0x4747474747;
      v6 = 0xE500000000000000;
    }

    if (*a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 71;
    }

    if (v4)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE100000000000000;
    }

    v10 = 0xE400000000000000;
    v11 = 1195853639;
    if (v5 != 1)
    {
      v11 = 0x4747474747;
      v10 = 0xE500000000000000;
    }

    if (*a2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 71;
    }

    if (*a2)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE100000000000000;
    }

    if (v8 == v12 && v9 == v13)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v15 = a1[16];
  v16 = a2[16];
  if (v15 == 255)
  {
    if (v16 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == 255)
    {
      return 0;
    }

    v17 = *(a2 + 1);
    v18 = Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(*(a1 + 1), v15);
    v20 = v19;
    if (v18 == Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v17, v16) && v20 == v21)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v23 = a1[17];
  v24 = a2[17];
  if (v23 == 5)
  {
    if (v24 != 5)
    {
      return 0;
    }
  }

  else if (v24 == 5 || (specialized == infix<A>(_:_:)(v23, v24) & 1) == 0)
  {
    return 0;
  }

  v25 = a1[18];
  v26 = a2[18];
  if (v25 == 5)
  {
    if (v26 != 5)
    {
      return 0;
    }
  }

  else if (v26 == 5 || (specialized == infix<A>(_:_:)(v25, v26) & 1) == 0)
  {
    return 0;
  }

  v27 = a1[19];
  v28 = a2[19];
  if (v27 == 3)
  {
    if (v28 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v28 == 3)
    {
      return 0;
    }

    if (a1[19])
    {
      if (v27 == 1)
      {
        v29 = 0xE200000000000000;
        v30 = 30583;
      }

      else
      {
        v29 = 0xE100000000000000;
        v30 = 87;
      }
    }

    else
    {
      v29 = 0xE100000000000000;
      v30 = 119;
    }

    if (a2[19])
    {
      if (v28 == 1)
      {
        v31 = 0xE200000000000000;
        v32 = 30583;
      }

      else
      {
        v31 = 0xE100000000000000;
        v32 = 87;
      }
    }

    else
    {
      v31 = 0xE100000000000000;
      v32 = 119;
    }

    if (v30 == v32 && v29 == v31)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (a1[33])
  {
    if ((a2[33] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[33] & 1) != 0 || (specialized == infix<A>(_:_:)(*(a1 + 3), a1[32] & 1, *(a2 + 3), a2[32] & 1) & 1) == 0)
  {
    return 0;
  }

  v34 = a1[34];
  v35 = a2[34];
  if (v34 == 3)
  {
    if (v35 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v35 == 3)
    {
      return 0;
    }

    if (a1[34])
    {
      if (v34 == 1)
      {
        v36 = 0xE200000000000000;
        v37 = 17476;
      }

      else
      {
        v36 = 0xE300000000000000;
        v37 = 4473924;
      }
    }

    else
    {
      v36 = 0xE100000000000000;
      v37 = 68;
    }

    if (a2[34])
    {
      if (v35 == 1)
      {
        v38 = 0xE200000000000000;
        v39 = 17476;
      }

      else
      {
        v38 = 0xE300000000000000;
        v39 = 4473924;
      }
    }

    else
    {
      v38 = 0xE100000000000000;
      v39 = 68;
    }

    if (v37 == v39 && v36 == v38)
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v41 = a1[35];
  v42 = a2[35];
  if (v41 == 6)
  {
    if (v42 != 6)
    {
      return 0;
    }
  }

  else if (v42 == 6 || (specialized == infix<A>(_:_:)(v41, v42) & 1) == 0)
  {
    return 0;
  }

  v43 = a1[36];
  v44 = a2[36];
  if (v43 == 9)
  {
    if (v44 != 9)
    {
      return 0;
    }
  }

  else if (v44 == 9 || (specialized == infix<A>(_:_:)(v43, v44) & 1) == 0)
  {
    return 0;
  }

  v45 = a1[37];
  v46 = a2[37];
  if (v45 == 14)
  {
    if (v46 != 14)
    {
      return 0;
    }
  }

  else
  {
    if (v46 == 14)
    {
      return 0;
    }

    v47 = Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v45);
    v49 = v48;
    if (v47 == Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v46) && v49 == v50)
    {
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v52 = a1[38];
  v53 = a2[38];
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v53 == 2)
    {
      return 0;
    }

    if (v52)
    {
      v54 = 28013;
    }

    else
    {
      v54 = 109;
    }

    if (v52)
    {
      v55 = 0xE200000000000000;
    }

    else
    {
      v55 = 0xE100000000000000;
    }

    if (v53)
    {
      v56 = 28013;
    }

    else
    {
      v56 = 109;
    }

    if (v53)
    {
      v57 = 0xE200000000000000;
    }

    else
    {
      v57 = 0xE100000000000000;
    }

    if (v54 == v56 && v55 == v57)
    {
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v59 = a1[39];
  v60 = a2[39];
  if (v59 == 2)
  {
    if (v60 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v60 == 2)
    {
      return 0;
    }

    if (v59)
    {
      v61 = 29555;
    }

    else
    {
      v61 = 115;
    }

    if (v59)
    {
      v62 = 0xE200000000000000;
    }

    else
    {
      v62 = 0xE100000000000000;
    }

    if (v60)
    {
      v63 = 29555;
    }

    else
    {
      v63 = 115;
    }

    if (v60)
    {
      v64 = 0xE200000000000000;
    }

    else
    {
      v64 = 0xE100000000000000;
    }

    if (v61 == v63 && v62 == v64)
    {
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v66 = a1[48];
  v67 = a2[48];
  if (v66 == 255)
  {
    if (v67 != 255)
    {
      return 0;
    }
  }

  else if (v67 == 255 || (specialized == infix<A>(_:_:)(*(a1 + 5), v66 & 1, *(a2 + 5), v67 & 1) & 1) == 0)
  {
    return 0;
  }

  v68 = a1[49];
  v69 = a2[49];
  if (v68 == 12)
  {
    return v69 == 12;
  }

  if (v69 == 12)
  {
    return 0;
  }

  v71 = Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v68);
  v73 = v72;
  if (v71 == Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v69) && v73 == v74)
  {
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v75 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 19789;
    }

    else
    {
      v3 = 77;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 5066061;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1296911693;
    }

    else
    {
      v3 = 0x4D4D4D4D4DLL;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 19789;
    }

    else
    {
      v6 = 77;
    }

    if (a2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE300000000000000;
    if (v3 != 5066061)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1296911693)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x4D4D4D4D4DLL)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x454545454545;
  v6 = 0xE100000000000000;
  v7 = 101;
  if (a1 != 4)
  {
    v7 = 25957;
    v6 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1162167621;
  if (a1 != 1)
  {
    v9 = 0x4545454545;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 4539717;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x454545454545)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE100000000000000;
      if (v10 != 101)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v10 != 25957)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1162167621)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x4545454545)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 4539717)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x61746E6573657270;
  v4 = a1;
  v5 = 0x656C61636F6CLL;
  v6 = 0xE800000000000000;
  v7 = 0x7261646E656C6163;
  if (a1 != 4)
  {
    v7 = 0x466465776F6C6C61;
    v6 = 0xED000073646C6569;
  }

  if (a1 == 3)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x7974537374696E75;
  v9 = 0xEA0000000000656CLL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000015;
    v9 = 0x800000018147CDF0;
  }

  if (!a1)
  {
    v8 = 0x61746E6573657270;
    v9 = 0xEC0000006E6F6974;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v10 != 0x656C61636F6CLL)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x7261646E656C6163)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xED000073646C6569;
      if (v10 != 0x466465776F6C6C61)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000656CLL;
        if (v10 != 0x7974537374696E75)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000015;
      v2 = 0x800000018147CDF0;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 20817;
    }

    else
    {
      v3 = 81;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 5329233;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1364283729;
    }

    else
    {
      v3 = 0x5151515151;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 20817;
    }

    else
    {
      v6 = 81;
    }

    if (a2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE300000000000000;
    if (v3 != 5329233)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1364283729)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x5151515151)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 29041;
    }

    else
    {
      v3 = 113;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 7434609;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1903260017;
    }

    else
    {
      v3 = 0x7171717171;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 29041;
    }

    else
    {
      v6 = 113;
    }

    if (a2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE300000000000000;
    if (v3 != 7434609)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1903260017)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7171717171)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 19532;
    }

    else
    {
      v3 = 76;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 5000268;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1280068684;
    }

    else
    {
      v3 = 0x4C4C4C4C4CLL;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 19532;
    }

    else
    {
      v6 = 76;
    }

    if (a2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE300000000000000;
    if (v3 != 5000268)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1280068684)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x4C4C4C4C4CLL)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 6513507;
    }

    else
    {
      v3 = 99;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1667457891;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6363636363;
    }

    else
    {
      v3 = 0x636363636363;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 6513507;
    }

    else
    {
      v6 = 99;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1667457891)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x6363636363)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x636363636363)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

{
  v2 = a1;
  v3 = 0xE100000000000000;
  if (a1 <= 3u)
  {
    v11 = 97;
    v12 = 0xE500000000000000;
    v13 = 0x6161616161;
    if (a1 != 2)
    {
      v13 = 98;
      v12 = 0xE100000000000000;
    }

    if (a1)
    {
      v11 = 1633771873;
      v3 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 66;
    v5 = 0xE400000000000000;
    v6 = 1111638594;
    if (a1 != 7)
    {
      v6 = 0x4242424242;
      v5 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE400000000000000;
    v8 = 1650614882;
    if (a1 != 4)
    {
      v8 = 0x6262626262;
      v7 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE500000000000000;
        if (v9 != 0x6161616161)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v14 = 0xE100000000000000;
        if (v9 != 98)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE400000000000000;
      if (v9 != 1633771873)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v14 = 0xE100000000000000;
      if (v9 != 97)
      {
        goto LABEL_51;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE400000000000000;
      if (v9 != 1650614882)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v9 != 0x6262626262)
      {
LABEL_51:
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_52;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE100000000000000;
    if (v9 != 66)
    {
      goto LABEL_51;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE400000000000000;
    if (v9 != 1111638594)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    if (v9 != 0x4242424242)
    {
      goto LABEL_51;
    }
  }

  if (v10 != v14)
  {
    goto LABEL_51;
  }

  v15 = 1;
LABEL_52:

  return v15 & 1;
}

{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 104;
  v5 = 0xE100000000000000;
  v6 = 107;
  if (a1 != 6)
  {
    v6 = 27499;
    v5 = 0xE200000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 75;
  if (a1 != 4)
  {
    v8 = 19275;
    v7 = 0xE200000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE100000000000000;
  v10 = 72;
  if (a1 != 2)
  {
    v10 = 18504;
    v9 = 0xE200000000000000;
  }

  if (a1)
  {
    v4 = 26728;
    v3 = 0xE200000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE100000000000000;
        if (v11 != 107)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xE200000000000000;
        if (v11 != 27499)
        {
LABEL_43:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE100000000000000;
      if (v11 != 75)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 19275)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE100000000000000;
      if (v11 != 72)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 18504)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE200000000000000;
    if (v11 != 26728)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v13 = 0xE100000000000000;
    if (v11 != 104)
    {
      goto LABEL_43;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E6E65766967;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x656D616E6B63696ELL;
  if (a1 != 5)
  {
    v6 = 0x6574696D696C6564;
    v5 = 0xE900000000000072;
  }

  v7 = 0x66657250656D616ELL;
  if (a1 != 3)
  {
    v7 = 0x66667553656D616ELL;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = 0xEA00000000007869;
  }

  v8 = 0x614E796C696D6166;
  v9 = 0xEA0000000000656DLL;
  if (a1 != 1)
  {
    v8 = 0x614E656C6464696DLL;
    v9 = 0xEA0000000000656DLL;
  }

  if (!a1)
  {
    v8 = 0x6D614E6E65766967;
    v9 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = 0x796C696D6166;
      }

      else
      {
        v14 = 0x656C6464696DLL;
      }

      v12 = v14 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      v13 = 25965;
LABEL_29:
      v2 = v13 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v10 != v12)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x656D616E6B63696ELL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE900000000000072;
        if (v10 != 0x6574696D696C6564)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v12 = 0x66657250656D616ELL;
      v13 = 30825;
      goto LABEL_29;
    }

    v3 = 0x66667553656D616ELL;
    v2 = 0xEA00000000007869;
  }

  if (v10 != v3)
  {
LABEL_36:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v11 != v2)
  {
    goto LABEL_36;
  }

  v15 = 1;
LABEL_37:

  return v15 & 1;
}

{
  v2 = 0x656E6F5A656D6974;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x61706553656D6974;
  v6 = 0xED0000726F746172;
  if (a1 == 5)
  {
    v5 = 0x6170655365746164;
    v6 = 0xED0000726F746172;
  }

  v7 = 0xD000000000000011;
  v8 = 0x800000018147D320;
  if (a1 != 3)
  {
    v7 = 0xD00000000000001ALL;
    v8 = 0x800000018147D340;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0xD000000000000011;
  v10 = 0x73646C656966;
  if (v3 == 1)
  {
    v10 = 0x656E6F5A656D6974;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (v3)
  {
    v9 = v10;
  }

  else
  {
    v4 = 0x800000018147D2F0;
  }

  if (v3 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
        v2 = 0x73646C656966;
      }
    }

    else
    {
      v2 = 0xD000000000000011;
      v13 = 0x800000018147D2F0;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v14 = 1702125924;
    }

    else
    {
      v14 = 1701669236;
    }

    v2 = v14 | 0x6170655300000000;
    v13 = 0xED0000726F746172;
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000011;
    v13 = 0x800000018147D320;
  }

  else
  {
    v13 = 0x800000018147D340;
    v2 = 0xD00000000000001ALL;
  }

  if (v11 == v2 && v12 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

{
  v2 = 0xED00007373657264;
  v3 = 0x6441664F6D726574;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736E756F6E6F7270;
    }

    else
    {
      v5 = 1919251317;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x65676175676E616CLL;
    }

    else
    {
      v5 = 0x6441664F6D726574;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xED00007373657264;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x736E756F6E6F7270;
  if (a2 != 2)
  {
    v8 = 1919251317;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x65676175676E616CLL;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
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

{
  v2 = a1;
  if (a1 <= 3u)
  {
    v5 = 0x7053664F74726170;
    v6 = 0xEC00000068636565;
    if (a1 != 2)
    {
      v5 = 0x7265626D756ELL;
      v6 = 0xE600000000000000;
    }

    v7 = 0xD000000000000011;
    v8 = 0x800000018147D260;
    if (a1)
    {
      v7 = 0x6974616D6D617267;
      v8 = 0xEF657361436C6163;
    }

    if (a1 <= 1u)
    {
      v3 = v7;
    }

    else
    {
      v3 = v5;
    }

    if (v2 <= 1)
    {
      v4 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v3 = 0x72506D6F74737563;
      v4 = 0xEE00736E756F6E6FLL;
    }

    else
    {
      v3 = 0xD000000000000011;
      v4 = 0x800000018147D2B0;
    }
  }

  else if (a1 == 6)
  {
    v3 = 0x546E756F6E6F7270;
    v4 = 0xEB00000000657079;
  }

  else if (a1 == 7)
  {
    v3 = 0x6E696D7265746564;
    v4 = 0xED00006E6F697461;
  }

  else
  {
    v3 = 0x6574696E69666564;
    v4 = 0xEC0000007373656ELL;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v10 = 0x6974616D6D617267;
      }

      else
      {
        v10 = 0xD000000000000011;
      }

      if (a2)
      {
        v9 = 0xEF657361436C6163;
      }

      else
      {
        v9 = 0x800000018147D260;
      }

      if (v3 != v10)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 != 2)
    {
      v9 = 0xE600000000000000;
      if (v3 != 0x7265626D756ELL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v11 = 0x7053664F74726170;
    v12 = 1751344485;
    goto LABEL_45;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v9 = 0xEB00000000657079;
      if (v3 != 0x546E756F6E6F7270)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 == 7)
    {
      v9 = 0xED00006E6F697461;
      if (v3 != 0x6E696D7265746564)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v11 = 0x6574696E69666564;
    v12 = 1936942446;
LABEL_45:
    v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v3 != v11)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 == 4)
  {
    v9 = 0xEE00736E756F6E6FLL;
    if (v3 != 0x72506D6F74737563)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v9 = 0x800000018147D2B0;
    if (v3 != 0xD000000000000011)
    {
LABEL_51:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v4 != v9)
  {
    goto LABEL_51;
  }

  v13 = 1;
LABEL_52:

  return v13 & 1;
}