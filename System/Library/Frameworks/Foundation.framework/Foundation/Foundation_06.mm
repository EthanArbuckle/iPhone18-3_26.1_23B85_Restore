uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneICU and conformance _TimeZoneICU, type metadata accessor for _TimeZoneICU);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5[7] + 16 * a1);
  *v12 = a4;
  v12[1] = result;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

{
  result = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5[7] + 16 * a1);
  *v12 = a4;
  v12[1] = result;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for CombineIdentifier();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *LocaleCache.preferredLanguages(forCurrentUser:)(char a1)
{
  v2 = String._bridgeToObjectiveCImpl()();
  if (a1)
  {
    v3 = CFPreferencesCopyValue(v2, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(v2, *MEMORY[0x1E695E8A8]);
  }

  v4 = v3;
  swift_unknownObjectRelease();
  if (v4 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v31;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v5 + 16);
  if (v30)
  {
    v6 = 0;
    v29 = *MEMORY[0x1E695E4A8];
    v7 = v5 + 40;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v9 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v29, v9);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        break;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v12 = CanonicalLanguageIdentifierFromString;
      v13 = v12;
      if (!isTaggedPointer)
      {
        goto LABEL_17;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v12);
      if (!TaggedPointerTag)
      {
        _CFIndirectTaggedPointerStringGetContents();
        v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v23)
        {
          [(__CFString *)v13 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v15 = v31;
          v17 = v32;
LABEL_32:

          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (TaggedPointerTag == 22)
      {
        v21 = [(__CFString *)v13 UTF8String];
        if (!v21)
        {
          goto LABEL_43;
        }

        v22 = String.init(utf8String:)(v21);
        if (!v23)
        {
          goto LABEL_42;
        }

LABEL_27:
        v15 = v22;
        v17 = v23;

        goto LABEL_33;
      }

      if (TaggedPointerTag != 2)
      {
LABEL_17:
        LOBYTE(v31) = 0;
        if (__CFStringIsCF())
        {
        }

        else
        {
          v18 = v13;
          v19 = String.init(_nativeStorage:)();
          if (v20)
          {
            v15 = v19;
            v17 = v20;

            goto LABEL_33;
          }

          if ([(__CFString *)v18 length])
          {
            v15 = String.init(_cocoaString:)();
            v17 = v24;
            goto LABEL_32;
          }
        }

        goto LABEL_20;
      }

      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v17 = v16;

LABEL_33:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      if (v26 >= v25 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v8);
      }

      ++v6;
      *(v8 + 2) = v26 + 1;
      v27 = &v8[16 * v26];
      *(v27 + 4) = v15;
      *(v27 + 5) = v17;
      v7 += 16;
      if (v30 == v6)
      {
        goto LABEL_40;
      }
    }

LABEL_20:
    v15 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_33;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_40:

  return v8;
}

uint64_t specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(_BYTE *), uint64_t a4)
{
  v6 = v4;
  v19 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  if (ObjectType == type metadata accessor for NSFileManager())
  {
    return specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a1, a2);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    v12 = [v6 getFileSystemRepresentation:v18 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v12)
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    result = a3(v13);
    if (v5)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v15 = swift_slowAlloc();
    v16 = [v6 getFileSystemRepresentation:v15 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    a3(v17);
    if (v5)
    {
      return MEMORY[0x1865D2690](v15, -1, -1);
    }

    else
    {
      return MEMORY[0x1865D2690](v15, -1, -1);
    }
  }

  return result;
}

uint64_t closure #1 in _FileManagerImpl.createDirectory(atPath:withIntermediateDirectories:attributes:)(const char *a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v182 = *MEMORY[0x1E69E9840];
  if (!a1)
  {

    URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v180);

    v10 = v180;
    v11 = v181;
    v12 = String._bridgeToObjectiveCImpl()();
    if (v10)
    {
      ObjectType = swift_getObjectType();
      v14 = (*(v11 + 432))(ObjectType, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    return swift_willThrow();
  }

  if (a4)
  {
    S_IRWXU.getter();
    S_IRWXG.getter();
    S_IRWXO.getter();
    v8 = _mkpath_np();
    if (v8 == 20)
    {
      swift_bridgeObjectRetain_n();
      v24 = String.count.getter();

      if (v24 < 2)
      {
        goto LABEL_123;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_258;
      }

      v26 = Strong;
      v27 = [Strong fileExistsAtPath_];

      swift_unknownObjectRelease();
      if (v27)
      {
        v28 = 516;
        goto LABEL_127;
      }

      Path = String._deletingLastPathComponent()(a2, a3);
      v33 = v32;

      v34 = String.count.getter();

      if (v34 < 2)
      {
LABEL_123:
      }

      else
      {
        while (1)
        {
          v35 = swift_unknownObjectWeakLoadStrong();
          if (!v35)
          {
            goto LABEL_258;
          }

          v36 = v35;
          v37 = [v35 fileExistsAtPath_];

          swift_unknownObjectRelease();
          if (v37)
          {
            break;
          }

          Path = String._deletingLastPathComponent()(Path, v33);
          v39 = v38;

          v40 = String.count.getter();

          v33 = v39;
          if (v40 <= 1)
          {
            goto LABEL_123;
          }
        }

        a3 = v33;
        a2 = Path;
      }

      goto LABEL_124;
    }

    v9 = v8;
    if (v8 == 17)
    {
      return 0;
    }

    if (!v8)
    {
      if (a5)
      {

        v50 = a3;
        v51 = a2;
        v52 = a3;

        v53 = swift_unknownObjectWeakLoadStrong();
        if (v53)
        {
          v54 = v53;
          type metadata accessor for NSFileAttributeKey(0);
          lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();

          v55 = _NativeDictionary.bridged()();
          v180 = 0;
          v56 = [v54 setAttributes:v55 ofItemAtPath:String._bridgeToObjectiveCImpl()() error:&v180];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v56)
          {
            v57 = v180;
          }

          else
          {
            if (!v180 && one-time initialization token for _nilObjCError != -1)
            {
              swift_once();
            }

            swift_willThrow();
          }

          v58 = String._pathComponents.getter(a2, v52);
          v59 = String._pathComponents.getter(a2, v50);

          v60 = *(v59 + 16);

          v62 = *(v58 + 16);
          if (v62 < v60)
          {
            goto LABEL_247;
          }

          if (v60 == v62)
          {
LABEL_88:

            return 0;
          }

          v63 = (v58 + 16 * v60 + 40);
          v172 = v62;
          while (1)
          {
            if (v60 >= v62)
            {
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              swift_once();
              return swift_willThrow();
            }

            v65 = *(v63 - 1);
            v64 = *v63;
            v66 = HIBYTE(v50) & 0xF;
            if ((v50 & 0x2000000000000000) == 0)
            {
              v66 = v51 & 0xFFFFFFFFFFFFLL;
            }

            if (!v66)
            {
              break;
            }

            if (specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #0 of closure #1 in _FileManagerImpl.createDirectory(atPath:withIntermediateDirectories:attributes:), v51, v50))
            {

              v67 = String._compressingSlashes()();

              v68 = String._droppingTrailingSlashes.getter(v67._countAndFlagsBits, v67._object);
              v70 = v69;

              v180 = v51;
              v181 = v50;

              MEMORY[0x1865CB0E0](v68, v70);

              v51 = v180;
              v50 = v181;
            }

            else
            {
              v180 = v51;
              v181 = v50;

              MEMORY[0x1865CB0E0](47, 0xE100000000000000);

              MEMORY[0x1865CB0E0](v65, v64);

              v74 = String._compressingSlashes()();

              v51 = String._droppingTrailingSlashes.getter(v74._countAndFlagsBits, v74._object);
              v76 = v75;

              v50 = v76;
            }

LABEL_114:
            v82 = swift_unknownObjectWeakLoadStrong();
            if (!v82)
            {
              goto LABEL_258;
            }

            v83 = v82;

            v84 = _NativeDictionary.bridged()();
            v85 = String._bridgeToObjectiveCImpl()();
            v180 = 0;
            v86 = [v83 setAttributes:v84 ofItemAtPath:v85 error:&v180];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v86)
            {
              v61 = v180;
            }

            else
            {
              if (!v180 && one-time initialization token for _nilObjCError != -1)
              {
                swift_once();
              }

              v61 = swift_willThrow();
            }

            ++v60;
            v63 += 2;
            v62 = v172;
            if (v172 == v60)
            {
              goto LABEL_88;
            }
          }

          if ((v64 & 0x1000000000000000) != 0)
          {
            if (String.UTF8View._foreignCount()() > 1)
            {
              v61 = String.UTF8View._foreignCount()();
LABEL_102:
              MEMORY[0x1EEE9AC00](v61);

              v65 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v73 = v72;

              v64 = v73;
LABEL_107:
              v77 = HIBYTE(v64) & 0xF;
              if ((v64 & 0x2000000000000000) == 0)
              {
                v77 = v65 & 0xFFFFFFFFFFFFLL;
              }

              if (v77)
              {
                specialized BidirectionalCollection.lastIndex(where:)(v65, v64);
                if (v78)
                {

                  v50 = 0xE100000000000000;
                  v51 = 47;
                }

                else
                {
                  String.index(after:)();
                  v79 = String.subscript.getter();
                  v51 = MEMORY[0x1865CAE80](v79);
                  v81 = v80;

                  v50 = v81;
                }
              }

              else
              {

                v51 = v65;
                v50 = v64;
              }

              goto LABEL_114;
            }
          }

          else
          {
            v71 = HIBYTE(v64) & 0xE;
            if ((v64 & 0x2000000000000000) == 0)
            {
              v71 = v65 & 0xFFFFFFFFFFFELL;
            }

            if (v71)
            {
              goto LABEL_102;
            }
          }

          goto LABEL_107;
        }

LABEL_258:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      return 0;
    }

    if (v9 > 29)
    {
      if (v9 <= 68)
      {
        if (v9 != 30)
        {
          if (v9 == 63)
          {
            v28 = 514;
            goto LABEL_127;
          }

          goto LABEL_124;
        }

        v28 = 642;
LABEL_127:
        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
        {
          isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v88 = @"NSPOSIXErrorDomain";
          v89 = v88;
          v175 = v28;
          if (!isTaggedPointer)
          {
LABEL_133:
            LOBYTE(v176) = 0;
            v180 = 0;
            if (__CFStringIsCF())
            {
              v91 = a2;
            }

            else
            {
              v91 = a2;
              v92 = v89;
              String.init(_nativeStorage:)();
              if (!v93 && (v180 = [(__CFString *)v92 length]) != 0)
              {
                String.init(_cocoaString:)();
              }

              else
              {
              }
            }

LABEL_168:
            v115 = POSIXErrorCode.rawValue.getter();
            v116 = objc_allocWithZone(NSError);
            v117 = String._bridgeToObjectiveCImpl()();

            v29 = [v116 initWithDomain:v117 code:v115 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v118 = [v29 domain];
            if (!v118)
            {
              v124 = 0;
              v126 = 0xE000000000000000;
              goto LABEL_177;
            }

            v119 = v118;
            v120 = _objc_isTaggedPointer(v118);
            v121 = v119;
            v122 = v121;
            if (!v120)
            {
LABEL_174:
              v180 = 0;
              if (__CFStringIsCF())
              {
                a2 = v91;

                v124 = 0;
                v126 = 0xE000000000000000;
              }

              else
              {
                v137 = v122;
                v138 = String.init(_nativeStorage:)();
                a2 = v91;
                if (!v139)
                {
                  v180 = [v137 length];
                  v30 = v28;
                  if (v180)
                  {
                    v124 = String.init(_cocoaString:)();
                    v126 = v145;
                  }

                  else
                  {

                    v124 = 0;
                    v126 = 0xE000000000000000;
                  }

LABEL_179:
                  if (v124 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v126 == v127)
                  {
                  }

                  else
                  {
                    v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v128 & 1) == 0)
                    {
                      goto LABEL_246;
                    }
                  }

LABEL_183:

                  URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v180);

                  v129 = v180;
                  v130 = v181;
                  v131 = String._bridgeToObjectiveCImpl()();

                  if (v129)
                  {
                    v132 = swift_getObjectType();
                    v133 = (*(v130 + 432))(v132, v130);
                    swift_unknownObjectRelease();
                    if (v29)
                    {
LABEL_185:
                      v177 = v29;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v29 = v29;
                      v134 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v134)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v136 = v29;
                      }

                      v135 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_191;
                    }
                  }

                  else
                  {
                    v133 = 0;
                    if (v29)
                    {
                      goto LABEL_185;
                    }
                  }

                  v135 = 0;
LABEL_191:
                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  swift_willThrow();
                  return 0;
                }

                v124 = v138;
                v126 = v139;
              }

LABEL_178:
              v30 = v175;
              goto LABEL_179;
            }

            TaggedPointerTag = _objc_getTaggedPointerTag(v121);
            if (!TaggedPointerTag)
            {
              _CFIndirectTaggedPointerStringGetContents();
              v143 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (v144)
              {
                v124 = v143;
                v126 = v144;
              }

              else
              {
                [v122 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v124 = v176;
                v126 = v179;
              }

              goto LABEL_177;
            }

            if (TaggedPointerTag != 22)
            {
              if (TaggedPointerTag == 2)
              {
                MEMORY[0x1EEE9AC00](TaggedPointerTag);
                v124 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v126 = v125;

LABEL_177:
                a2 = v91;
                goto LABEL_178;
              }

              goto LABEL_174;
            }

            v140 = [v122 UTF8String];
            if (v140)
            {
              v141 = String.init(utf8String:)(v140);
              if (v142)
              {
                v124 = v141;
                v126 = v142;
                a2 = v91;

                goto LABEL_178;
              }

LABEL_255:
              __break(1u);
              goto LABEL_258;
            }

LABEL_254:
            __break(1u);
            goto LABEL_255;
          }

          v90 = _objc_getTaggedPointerTag(v88);
          if (!v90)
          {
            goto LABEL_140;
          }

          if (v90 != 22)
          {
            if (v90 == 2)
            {
              v91 = a2;
              MEMORY[0x1EEE9AC00](v90);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_168;
            }

            goto LABEL_133;
          }

          v94 = [(__CFString *)v89 UTF8String];
          if (v94)
          {
            v91 = a2;
            String.init(utf8String:)(v94);
            if (v95)
            {
              goto LABEL_141;
            }

            __break(1u);
LABEL_140:
            v91 = a2;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v96)
            {
              [(__CFString *)v89 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_168;
            }

LABEL_141:

            goto LABEL_168;
          }

          goto LABEL_252;
        }

LABEL_257:
        _StringGuts.grow(_:)(22);

        v180 = 0xD000000000000014;
        v181 = 0x80000001814813E0;
        v171 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v171);

        goto LABEL_258;
      }

      if (v9 != 69)
      {
        if (v9 == 102)
        {
          v29 = 0;
          v30 = 512;
          goto LABEL_183;
        }

        goto LABEL_124;
      }
    }

    else
    {
      if (v9 <= 12)
      {
        if (v9 != 1)
        {
          if (v9 == 2)
          {
            v28 = 4;
            goto LABEL_127;
          }

          goto LABEL_124;
        }

LABEL_120:
        v28 = 513;
        goto LABEL_127;
      }

      if (v9 == 13)
      {
        goto LABEL_120;
      }

      if (v9 != 28)
      {
LABEL_124:
        v28 = 512;
        goto LABEL_127;
      }
    }

    v28 = 640;
    goto LABEL_127;
  }

  result = mkdir(a1, 0x1FFu);
  if (result)
  {
    v16 = MEMORY[0x1865CA7A0]();
    if (v16 > 27)
    {
      if (v16 <= 62)
      {
        if (v16 != 28)
        {
          if (v16 == 30)
          {
            v23 = 642;
            goto LABEL_64;
          }

          goto LABEL_63;
        }
      }

      else
      {
        if (v16 == 63)
        {
          v23 = 514;
          goto LABEL_64;
        }

        if (v16 != 69)
        {
          if (v16 == 102)
          {
            v17 = 0;
            v18 = 512;
            goto LABEL_233;
          }

LABEL_63:
          v23 = 512;
LABEL_64:
          v174 = v23;
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_257;
          }

          v41 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v42 = @"NSPOSIXErrorDomain";
          v43 = v42;
          if (v41)
          {
            v44 = _objc_getTaggedPointerTag(v42);
            if (v44)
            {
              if (v44 != 22)
              {
                if (v44 == 2)
                {
                  MEMORY[0x1EEE9AC00](v44);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_148;
                }

                goto LABEL_70;
              }

              v47 = [(__CFString *)v43 UTF8String];
              if (!v47)
              {
                __break(1u);
                goto LABEL_250;
              }

              String.init(utf8String:)(v47);
              if (v48)
              {
                goto LABEL_71;
              }

              __break(1u);
            }

            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v49)
            {
              goto LABEL_71;
            }

            [(__CFString *)v43 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_148;
          }

LABEL_70:
          LOBYTE(v176) = 0;
          v180 = 0;
          if (__CFStringIsCF())
          {
LABEL_71:

            goto LABEL_148;
          }

          v45 = v43;
          String.init(_nativeStorage:)();
          if (!v46 && (v180 = [(__CFString *)v45 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_148:
          v97 = POSIXErrorCode.rawValue.getter();
          v98 = objc_allocWithZone(NSError);
          v99 = String._bridgeToObjectiveCImpl()();

          v17 = [v98 initWithDomain:v99 code:v97 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v100 = [v17 domain];
          v173 = a2;
          if (!v100)
          {
LABEL_158:
            v106 = 0;
            v108 = 0xE000000000000000;
            goto LABEL_208;
          }

          v101 = v100;
          v102 = _objc_isTaggedPointer(v100);
          v103 = v101;
          v104 = v103;
          if ((v102 & 1) == 0)
          {
            goto LABEL_154;
          }

          v105 = _objc_getTaggedPointerTag(v103);
          if (v105)
          {
            if (v105 != 22)
            {
              if (v105 == 2)
              {
                MEMORY[0x1EEE9AC00](v105);
                v106 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v108 = v107;

                goto LABEL_208;
              }

LABEL_154:
              LOBYTE(v176) = 0;
              v180 = 0;
              if (__CFStringIsCF())
              {

                goto LABEL_158;
              }

              v109 = v104;
              v110 = String.init(_nativeStorage:)();
              if (v111)
              {
                v106 = v110;
                v108 = v111;

                goto LABEL_208;
              }

              v180 = [v109 length];
              if (!v180)
              {

                goto LABEL_158;
              }

              v106 = String.init(_cocoaString:)();
              v108 = v146;
LABEL_207:

LABEL_208:
              v147 = v43;
              v148 = v147;
              if (!v41)
              {
                goto LABEL_213;
              }

              v149 = _objc_getTaggedPointerTag(v147);
              if (!v149)
              {
                _CFIndirectTaggedPointerStringGetContents();
                v159 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (v160)
                {
                  v150 = v159;
                  v152 = v160;
                }

                else
                {
                  [(__CFString *)v148 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v150 = v176;
                  v152 = v179;
                }

                goto LABEL_227;
              }

              if (v149 != 22)
              {
                if (v149 == 2)
                {
                  MEMORY[0x1EEE9AC00](v149);
                  v150 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v152 = v151;

LABEL_227:
                  v18 = v174;
LABEL_228:
                  if (v106 == v150 && v108 == v152)
                  {
                  }

                  else
                  {
                    v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v162 & 1) == 0)
                    {
                      goto LABEL_245;
                    }
                  }

                  a2 = v173;
LABEL_233:

                  URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v180);

                  v163 = v180;
                  v164 = v181;
                  v165 = String._bridgeToObjectiveCImpl()();
                  if (v163)
                  {
                    v166 = swift_getObjectType();
                    v167 = (*(v164 + 432))(v166, v164);
                    swift_unknownObjectRelease();
                    if (v17)
                    {
LABEL_235:
                      v178 = v17;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v17 = v17;
                      v168 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v168)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v170 = v17;
                      }

                      v169 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_241;
                    }
                  }

                  else
                  {
                    v167 = 0;
                    if (v17)
                    {
                      goto LABEL_235;
                    }
                  }

                  v169 = 0;
LABEL_241:
                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  return swift_willThrow();
                }

LABEL_213:
                v180 = 0;
                if (__CFStringIsCF())
                {
                }

                else
                {
                  v153 = v148;
                  v154 = String.init(_nativeStorage:)();
                  if (v155)
                  {
                    v150 = v154;
                    v152 = v155;

                    goto LABEL_227;
                  }

                  v180 = [(__CFString *)v153 length];
                  if (v180)
                  {
                    v150 = String.init(_cocoaString:)();
                    v152 = v161;
                    goto LABEL_227;
                  }
                }

                v150 = 0;
                v152 = 0xE000000000000000;
                goto LABEL_227;
              }

              v156 = [(__CFString *)v148 UTF8String];
              if (v156)
              {
                v157 = String.init(utf8String:)(v156);
                v18 = v174;
                if (v158)
                {
                  v150 = v157;
                  v152 = v158;

                  goto LABEL_228;
                }

LABEL_251:
                __break(1u);
LABEL_252:
                __break(1u);
                goto LABEL_253;
              }

LABEL_250:
              __break(1u);
              goto LABEL_251;
            }

            v112 = [v104 UTF8String];
            if (!v112)
            {
LABEL_253:
              __break(1u);
              goto LABEL_254;
            }

            v113 = String.init(utf8String:)(v112);
            if (v114)
            {
LABEL_163:
              v106 = v113;
              v108 = v114;

              goto LABEL_207;
            }

            __break(1u);
          }

          _CFIndirectTaggedPointerStringGetContents();
          v113 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v114)
          {
            [v104 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v106 = v176;
            v108 = v179;
            goto LABEL_207;
          }

          goto LABEL_163;
        }
      }

      v23 = 640;
      goto LABEL_64;
    }

    if (v16 > 12)
    {
      if (v16 != 13)
      {
        if (v16 == 17)
        {
          v23 = 516;
          goto LABEL_64;
        }

        goto LABEL_63;
      }
    }

    else if (v16 != 1)
    {
      if (v16 == 2)
      {
        v23 = 4;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v23 = 513;
    goto LABEL_64;
  }

  if (!a5)
  {
    return result;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_258;
  }

  v20 = v19;
  type metadata accessor for NSFileAttributeKey(0);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();

  v21 = _NativeDictionary.bridged()();
  v180 = 0;
  v22 = [v20 setAttributes:v21 ofItemAtPath:String._bridgeToObjectiveCImpl()() error:&v180];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v22 & 1) == 0)
  {
    if (!v180 && one-time initialization token for _nilObjCError != -1)
    {
      goto LABEL_248;
    }

    return swift_willThrow();
  }

  return v180;
}

uint64_t closure #2 in LocaleCache._currentAndCache.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  if (v6)
  {
    v7 = a1[1];
    v8 = v6;
  }

  else
  {
    v7 = a3;
    v8 = a2;
    *a1 = a2;
    a1[1] = a3;
    swift_unknownObjectRetain_n();
  }

  *a4 = v8;
  *(a4 + 8) = v7;
  *(a4 + 16) = 1;
  return swift_unknownObjectRetain();
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Bool()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithBool_];
}

void URL.init(_fileManagerFailableFileURLWithPath:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (_foundation_swift_url_feature_enabled())
  {

    v6 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a1, a2);
    v8 = v7;

    v17[0] = 3;
    type metadata accessor for _SwiftURL();
    v16[0] = 0;
    v16[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v6, v8, 0, v17, v16);
    v9 = _SwiftURL.convertingFileReference()();
    v11 = v10;
  }

  else
  {
    v12 = (specialized BidirectionalCollection.last.getter(a1, a2) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v13 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a1, a2, v12);
    if (!v13)
    {
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    v14 = v13;
    v9 = _BridgedURL.convertingFileReference()();
    v11 = v15;
  }

  *a3 = v9;
  a3[1] = v11;
}

NSMapTable *__cdecl NSCreateMapTable(NSMapTableKeyCallBacks *keyCallBacks, NSMapTableValueCallBacks *valueCallBacks, NSUInteger capacity)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *&keyCallBacks->retain;
  *&keyCallBacksa.hash = *&keyCallBacks->hash;
  *&keyCallBacksa.retain = v4;
  *&keyCallBacksa.describe = *&keyCallBacks->describe;
  v6 = *valueCallBacks;
  return NSCreateMapTableWithZone(&keyCallBacksa, &v6, capacity, v3);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v6 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v35 = *(*(v6 + 56) + v22);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v6 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v35 = *(*(v6 + 56) + v22);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 56);
      v23 = (*(v6 + 48) + 32 * v21);
      v24 = v23[1];
      v38 = *v23;
      v25 = v23[3];
      v37 = v23[2];
      v26 = *(v22 + 8 * v21);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v38;
      v17[1] = v24;
      v17[2] = v37;
      v17[3] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v6 + 48) + 8 * v21);
      v23 = (*(v6 + 56) + 16 * v21);
      v24 = v23[1];
      v34 = *v23;
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v34;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v32 = 1 << *(v6 + 32);
    v4 = v3;
    if (v32 >= 64)
    {
      bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_SpySvSgGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSpySvSgGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

__n128 LocaleCache.preferences()(_OWORD *a1)
{
  v2 = __CFXPreferencesCopyCurrentApplicationStateWithDeadlockAvoidance();
  v4[0] = 2;
  memset(&v4[8], 0, 128);
  *&v4[136] = 33686018;
  LocalePreferences.apply(_:)(v2);

  a1[6] = *&v4[96];
  a1[7] = *&v4[112];
  *(a1 + 124) = *&v4[124];
  a1[2] = *&v4[32];
  a1[3] = *&v4[48];
  a1[4] = *&v4[64];
  a1[5] = *&v4[80];
  result = *&v4[16];
  *a1 = *v4;
  a1[1] = *&v4[16];
  return result;
}

Swift::Void __swiftcall LocalePreferences.apply(_:)(CFDictionaryRef a1)
{
  v2 = a1;
  v291[4] = *MEMORY[0x1E69E9840];
  v290 = 0;
  if (CFDictionaryGetCount(a1) < 1)
  {
    return;
  }

  v3 = __CFLocalePrefsCopyAppleLanguages(v2);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 copy];
      v6 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

      if (v7)
      {

        *(v1 + 8) = v7;
      }
    }

    else
    {
    }
  }

  v8 = __CFLocalePrefsCopyAppleLocale(v2);
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      goto LABEL_31;
    }

    v11 = v10;
    isTaggedPointer = _objc_isTaggedPointer(v10);
    v13 = v9;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v11);
      switch(TaggedPointerTag)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v24)
          {
            [v11 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();

            *(v1 + 16) = v288;
            *(v1 + 24) = v289;
            goto LABEL_31;
          }

          v15 = v23;
          v17 = v24;

          goto LABEL_29;
        case 0x16:
          v18 = v13;
          v21 = [v11 UTF8String];
          v22 = v11;
          if (!v21)
          {
            goto LABEL_293;
          }

          v19 = String.init(utf8String:)(v21);
          if (!v20)
          {
            goto LABEL_296;
          }

          goto LABEL_24;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v17 = v16;

LABEL_30:

          *(v1 + 16) = v15;
          *(v1 + 24) = v17;
          goto LABEL_31;
      }
    }

    LOBYTE(v288) = 0;
    v291[0] = 0;
    if (__CFStringIsCF())
    {

LABEL_21:
      v15 = 0;
      v17 = 0xE000000000000000;
      goto LABEL_30;
    }

    v18 = v13;
    v19 = String.init(_nativeStorage:)();
    if (!v20)
    {
      v291[0] = [v11 length];
      if (!v291[0])
      {

        goto LABEL_21;
      }

      v15 = String.init(_cocoaString:)();
      v17 = v25;
LABEL_29:

      goto LABEL_30;
    }

LABEL_24:
    v15 = v19;
    v17 = v20;

    goto LABEL_30;
  }

LABEL_31:
  IsMetric = __CFLocalePrefsAppleMetricUnitsIsMetric(v2, &v290);
  if (v290)
  {
    *v1 = IsMetric;
  }

  IsCm = __CFLocalePrefsAppleMeasurementUnitsIsCm(v2, &v290);
  if (v290)
  {
    *(v1 + 136) = IsCm == 0;
  }

  IsC = __CFLocalePrefsAppleTemperatureUnitIsC(v2, &v290);
  if (v290)
  {
    *(v1 + 137) = IsC != 0;
  }

  v29 = __CFLocalePrefsAppleForce24HourTime(v2, &v290);
  if (v290)
  {
    *(v1 + 138) = v29;
  }

  v30 = __CFLocalePrefsAppleForce12HourTime(v2, &v290);
  if (v290)
  {
    *(v1 + 139) = v30;
  }

  v31 = __CFLocalePrefsCopyAppleCollationOrder(v2);
  if (v31)
  {
    v32 = v31;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (!v33)
    {

      goto LABEL_67;
    }

    v34 = v33;
    v35 = _objc_isTaggedPointer(v33);
    v36 = v32;
    if (!v35)
    {
      goto LABEL_48;
    }

    v37 = _objc_getTaggedPointerTag(v34);
    if (v37)
    {
      if (v37 != 22)
      {
        if (v37 == 2)
        {
          MEMORY[0x1EEE9AC00](v37);
          v38 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v40 = v39;

LABEL_66:

          *(v1 + 32) = v38;
          *(v1 + 40) = v40;
          goto LABEL_67;
        }

LABEL_48:
        LOBYTE(v288) = 0;
        v291[0] = 0;
        if (__CFStringIsCF())
        {
          if (v291[0])
          {
LABEL_64:
            v38 = String.init(_cocoaString:)();
            v40 = v48;
            goto LABEL_65;
          }
        }

        else
        {
          v41 = v36;
          v42 = String.init(_nativeStorage:)();
          if (v43)
          {
            v38 = v42;
            v40 = v43;

            goto LABEL_66;
          }

          v291[0] = [v34 length];
          if (v291[0])
          {
            goto LABEL_64;
          }
        }

        v38 = 0;
        v40 = 0xE000000000000000;
        goto LABEL_66;
      }

      v36 = v36;
      v44 = [v34 UTF8String];
      v45 = v34;
      if (!v44)
      {
        goto LABEL_294;
      }

      v46 = String.init(utf8String:)(v44);
      if (v47)
      {
LABEL_60:
        v38 = v46;
        v40 = v47;

LABEL_65:
        goto LABEL_66;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v46 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v47)
    {
      [v34 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();

      *(v1 + 32) = v288;
      *(v1 + 40) = v289;
      goto LABEL_67;
    }

    goto LABEL_60;
  }

LABEL_67:
  v49 = __CFLocalePrefsCopyCountry(v2);
  if (v49)
  {
    v50 = v49;
    objc_opt_self();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v51;
      v53 = _objc_isTaggedPointer(v51);
      v54 = v50;
      if (!v53)
      {
        goto LABEL_74;
      }

      v55 = _objc_getTaggedPointerTag(v52);
      if (v55)
      {
        if (v55 != 22)
        {
          if (v55 == 2)
          {
            MEMORY[0x1EEE9AC00](v55);
            v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v58 = v57;

LABEL_92:

            *(v1 + 120) = v56;
            *(v1 + 128) = v58;
            goto LABEL_93;
          }

LABEL_74:
          v291[0] = 0;
          if (__CFStringIsCF())
          {
            if (v291[0])
            {
LABEL_90:
              v56 = String.init(_cocoaString:)();
              v58 = v66;
              goto LABEL_91;
            }
          }

          else
          {
            v59 = v54;
            v60 = String.init(_nativeStorage:)();
            if (v61)
            {
              v56 = v60;
              v58 = v61;

              goto LABEL_92;
            }

            v291[0] = [v52 length];
            if (v291[0])
            {
              goto LABEL_90;
            }
          }

          v56 = 0;
          v58 = 0xE000000000000000;
          goto LABEL_92;
        }

        v54 = v54;
        v62 = [v52 UTF8String];
        v63 = v52;
        if (!v62)
        {
          goto LABEL_295;
        }

        v64 = String.init(utf8String:)(v62);
        if (v65)
        {
LABEL_86:
          v56 = v64;
          v58 = v65;

LABEL_91:
          goto LABEL_92;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v65)
      {
        goto LABEL_86;
      }

      [v52 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();

      *(v1 + 120) = v288;
      *(v1 + 128) = v289;
    }

    else
    {
    }
  }

LABEL_93:
  v67 = __CFLocalePrefsCopyAppleICUDateTimeSymbols(v2);
  if (v67)
  {
    v68 = v67;

    *(v1 + 64) = v68;
  }

  v69 = __CFLocalePrefsCopyAppleICUDateFormatStrings(v2);
  if (v69)
  {
    v70 = *(v1 + 72);
    v71 = v69;
    v72 = v69;

    *(v1 + 72) = v71;
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    if (v73)
    {
      v284 = v2;
      v291[0] = 0;
      _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(v73, v291);

      v74 = v291[0];
      if (v291[0])
      {
        v75 = 0;
        v76 = 1 << *(v291[0] + 32);
        if (v76 < 64)
        {
          v77 = ~(-1 << v76);
        }

        else
        {
          v77 = -1;
        }

        v78 = v77 & *(v291[0] + 64);
        v79 = (v76 + 63) >> 6;
        for (i = MEMORY[0x1E69E7CC8]; ; i = v100)
        {
          while (1)
          {
            while (1)
            {
              v80 = v75;
              if (!v78)
              {
                while (1)
                {
                  v75 = v80 + 1;
                  if (__OFADD__(v80, 1))
                  {
                    break;
                  }

                  if (v75 >= v79)
                  {

                    *(v1 + 104) = i;
                    v2 = v284;
                    goto LABEL_138;
                  }

                  v78 = *(v74 + 64 + 8 * v75);
                  ++v80;
                  if (v78)
                  {
                    goto LABEL_106;
                  }
                }

                __break(1u);
LABEL_278:
                __break(1u);
LABEL_279:
                __break(1u);
LABEL_280:
                __break(1u);
LABEL_281:
                __break(1u);
LABEL_282:
                __break(1u);
LABEL_283:
                __break(1u);
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
              }

LABEL_106:
              v81 = __clz(__rbit64(v78));
              v78 &= v78 - 1;
              v82 = (v75 << 10) | (16 * v81);
              v83 = (*(v74 + 48) + v82);
              v84 = *v83;
              v85 = v83[1];
              v86 = (*(v74 + 56) + v82);
              v87 = *v86;
              v88 = v86[1];

              v89 = _ss17FixedWidthIntegerPsEyxSgSScfCSu_Tt1g5(v84, v85);
              if ((v90 & 1) == 0)
              {
                break;
              }
            }

            v276 = v1;
            v91 = v89;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v291[0] = i;
            v273 = v91;
            v93 = specialized __RawDictionaryStorage.find<A>(_:)(v91);
            v95 = *(i + 16);
            v96 = (v94 & 1) == 0;
            v97 = __OFADD__(v95, v96);
            v98 = v95 + v96;
            if (v97)
            {
              goto LABEL_281;
            }

            v99 = v94;
            if (*(i + 24) >= v98)
            {
              break;
            }

            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v98, isUniquelyReferenced_nonNull_native);
            v100 = v291[0];
            v93 = specialized __RawDictionaryStorage.find<A>(_:)(v91);
            if ((v99 & 1) != (v101 & 1))
            {
              goto LABEL_298;
            }

            v102 = v91;
            v1 = v276;
            if (v99)
            {
              goto LABEL_112;
            }

LABEL_115:
            *(v100 + 8 * (v93 >> 6) + 64) |= 1 << v93;
            *(*(v100 + 48) + 8 * v93) = v102;
            v104 = (*(v100 + 56) + 16 * v93);
            *v104 = v87;
            v104[1] = v88;
            v105 = *(v100 + 16);
            v97 = __OFADD__(v105, 1);
            v106 = v105 + 1;
            if (v97)
            {
              goto LABEL_285;
            }

            *(v100 + 16) = v106;
            i = v100;
          }

          v102 = v91;
          v1 = v276;
          if (isUniquelyReferenced_nonNull_native)
          {
            v100 = i;
            if (v94)
            {
              goto LABEL_112;
            }

            goto LABEL_115;
          }

          v265 = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV11FormatStyleV0dF0VSSGMd);
          v107 = static _DictionaryStorage.copy(original:)();
          v100 = v107;
          if (*(i + 16))
          {
            v108 = (v107 + 64);
            v271 = (i + 64);
            v109 = ((1 << *(v100 + 32)) + 63) >> 6;
            if (v100 != i || v108 >= &v271[8 * v109])
            {
              memmove(v108, v271, 8 * v109);
            }

            v110 = 0;
            *(v100 + 16) = *(i + 16);
            v111 = 1 << *(i + 32);
            v112 = *(i + 64);
            if (v111 < 64)
            {
              v113 = ~(-1 << v111);
            }

            else
            {
              v113 = -1;
            }

            v267 = v113 & v112;
            v269 = (v111 + 63) >> 6;
            if ((v113 & v112) != 0)
            {
              do
              {
                v114 = __clz(__rbit64(v267));
                v267 &= v267 - 1;
LABEL_131:
                v117 = v114 | (v110 << 6);
                v118 = (*(i + 56) + 16 * v117);
                v120 = *v118;
                v119 = v118[1];
                *(*(v100 + 48) + 8 * v117) = *(*(i + 48) + 8 * v117);
                v121 = (*(v100 + 56) + 16 * v117);
                *v121 = v120;
                v121[1] = v119;
              }

              while (v267);
            }

            v115 = v110;
            while (1)
            {
              v110 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                break;
              }

              if (v110 >= v269)
              {
                goto LABEL_133;
              }

              v116 = *&v271[8 * v110];
              ++v115;
              if (v116)
              {
                v114 = __clz(__rbit64(v116));
                v267 = (v116 - 1) & v116;
                goto LABEL_131;
              }
            }

            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
            goto LABEL_292;
          }

LABEL_133:

          v102 = v273;
          v1 = v276;
          v93 = v265;
          if ((v99 & 1) == 0)
          {
            goto LABEL_115;
          }

LABEL_112:
          v103 = (*(v100 + 56) + 16 * v93);
          *v103 = v87;
          v103[1] = v88;
        }
      }

      v2 = v284;
    }

    else
    {
    }
  }

LABEL_138:
  v122 = __CFLocalePrefsCopyAppleICUTimeFormatStrings(v2);
  if (v122)
  {
    v123 = v122;

    *(v1 + 80) = v123;
  }

  v124 = __CFLocalePrefsCopyAppleICUNumberFormatStrings(v2);
  if (v124)
  {
    v125 = v124;

    *(v1 + 88) = v125;
  }

  v126 = __CFLocalePrefsCopyAppleICUNumberSymbols(v2);
  if (!v126)
  {
    goto LABEL_187;
  }

  v127 = *(v1 + 96);
  v128 = v126;
  v129 = v126;

  *(v1 + 96) = v128;
  objc_opt_self();
  v130 = swift_dynamicCastObjCClass();
  if (!v130)
  {

    goto LABEL_187;
  }

  v291[0] = 0;
  _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(v130, v291);

  v131 = v291[0];
  if (!v291[0])
  {
    goto LABEL_187;
  }

  v285 = v2;
  v132 = 0;
  v133 = 1 << *(v291[0] + 32);
  if (v133 < 64)
  {
    v134 = ~(-1 << v133);
  }

  else
  {
    v134 = -1;
  }

  v135 = v134 & *(v291[0] + 64);
  v136 = (v133 + 63) >> 6;
  v281 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v137 = v132;
    if (!v135)
    {
      break;
    }

LABEL_153:
    v138 = __clz(__rbit64(v135));
    v135 &= v135 - 1;
    v139 = (v132 << 10) | (16 * v138);
    v140 = (*(v131 + 48) + v139);
    v141 = *v140;
    v142 = v140[1];
    v143 = (*(v131 + 56) + v139);
    v144 = *v143;
    v145 = v143[1];

    v146 = _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(v141, v142);
    if ((v146 & 0x100000000) != 0)
    {
    }

    else
    {
      v277 = v1;
      v147 = v146;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v291[0] = v281;
      v274 = v147;
      v149 = specialized __RawDictionaryStorage.find<A>(_:)(v147);
      v151 = *(v281 + 16);
      v152 = (v150 & 1) == 0;
      v97 = __OFADD__(v151, v152);
      v153 = v151 + v152;
      if (v97)
      {
        goto LABEL_282;
      }

      v154 = v150;
      if (*(v281 + 24) >= v153)
      {
        v157 = v274;
        if (v148)
        {
          v155 = v281;
          if (v150)
          {
            goto LABEL_159;
          }

          goto LABEL_162;
        }

        v266 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSSGMd);
        v162 = static _DictionaryStorage.copy(original:)();
        v155 = v162;
        if (*(v281 + 16))
        {
          v163 = (v162 + 64);
          v272 = (v281 + 64);
          v164 = ((1 << *(v155 + 32)) + 63) >> 6;
          if (v155 != v281 || v163 >= &v272[8 * v164])
          {
            memmove(v163, v272, 8 * v164);
          }

          v165 = 0;
          *(v155 + 16) = *(v281 + 16);
          v166 = 1 << *(v281 + 32);
          v167 = *(v281 + 64);
          if (v166 < 64)
          {
            v168 = ~(-1 << v166);
          }

          else
          {
            v168 = -1;
          }

          v268 = v168 & v167;
          v270 = (v166 + 63) >> 6;
          if ((v168 & v167) != 0)
          {
            do
            {
              v169 = __clz(__rbit64(v268));
              v268 &= v268 - 1;
LABEL_178:
              v172 = v169 | (v165 << 6);
              v173 = (*(v281 + 56) + 16 * v172);
              v175 = *v173;
              v174 = v173[1];
              *(*(v155 + 48) + 4 * v172) = *(*(v281 + 48) + 4 * v172);
              v176 = (*(v155 + 56) + 16 * v172);
              *v176 = v175;
              v176[1] = v174;
            }

            while (v268);
          }

          v170 = v165;
          while (1)
          {
            v165 = v170 + 1;
            if (__OFADD__(v170, 1))
            {
              goto LABEL_290;
            }

            if (v165 >= v270)
            {
              break;
            }

            v171 = *&v272[8 * v165];
            ++v170;
            if (v171)
            {
              v169 = __clz(__rbit64(v171));
              v268 = (v171 - 1) & v171;
              goto LABEL_178;
            }
          }
        }

        v157 = v274;
        v1 = v277;
        v149 = v266;
        if ((v154 & 1) == 0)
        {
          goto LABEL_162;
        }

LABEL_159:
        v158 = (*(v155 + 56) + 16 * v149);
        *v158 = v144;
        v158[1] = v145;

        v281 = v155;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v153, v148);
        v155 = v291[0];
        v149 = specialized __RawDictionaryStorage.find<A>(_:)(v274);
        if ((v154 & 1) != (v156 & 1))
        {
          goto LABEL_299;
        }

        v157 = v274;
        if (v154)
        {
          goto LABEL_159;
        }

LABEL_162:
        *(v155 + 8 * (v149 >> 6) + 64) |= 1 << v149;
        *(*(v155 + 48) + 4 * v149) = v157;
        v159 = (*(v155 + 56) + 16 * v149);
        *v159 = v144;
        v159[1] = v145;
        v160 = *(v155 + 16);
        v97 = __OFADD__(v160, 1);
        v161 = v160 + 1;
        if (v97)
        {
          goto LABEL_286;
        }

        *(v155 + 16) = v161;
        v281 = v155;
      }
    }
  }

  while (1)
  {
    v132 = v137 + 1;
    if (__OFADD__(v137, 1))
    {
      goto LABEL_278;
    }

    if (v132 >= v136)
    {
      break;
    }

    v135 = *(v131 + 64 + 8 * v132);
    ++v137;
    if (v135)
    {
      goto LABEL_153;
    }
  }

  if (*(v281 + 16))
  {

    *(v1 + 112) = v281;
  }

  else
  {
  }

  v2 = v285;
LABEL_187:
  Weekday = __CFLocalePrefsCopyAppleFirstWeekday(v2);
  if (Weekday)
  {
    v178 = Weekday;
    objc_opt_self();
    v179 = swift_dynamicCastObjCClass();
    if (v179)
    {
      v291[0] = 0;
      _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SiTt1g5(v179, v291);

      v180 = v291[0];
      if (v291[0])
      {
        v286 = v2;
        v181 = 0;
        v182 = 1 << *(v291[0] + 32);
        if (v182 < 64)
        {
          v183 = ~(-1 << v182);
        }

        else
        {
          v183 = -1;
        }

        v184 = v183 & *(v291[0] + 64);
        v185 = (v182 + 63) >> 6;
        for (j = MEMORY[0x1E69E7CC8]; ; j = v203)
        {
          do
          {
LABEL_195:
            if (v184)
            {
              goto LABEL_194;
            }

            do
            {
              v195 = v181 + 1;
              if (__OFADD__(v181, 1))
              {
                goto LABEL_279;
              }

              if (v195 >= v185)
              {

                if (*(j + 16))
                {

                  *(v1 + 48) = j;
                }

                else
                {
                }

                v2 = v286;
                goto LABEL_232;
              }

              v184 = *(v180 + 64 + 8 * v195);
              ++v181;
            }

            while (!v184);
            v181 = v195;
LABEL_194:
            v187 = __clz(__rbit64(v184));
            v184 &= v184 - 1;
            v188 = v187 | (v181 << 6);
            v189 = (*(v180 + 48) + 16 * v188);
            v190 = *v189;
            v191 = v189[1];
            v192 = *(*(v180 + 56) + 8 * v188);

            v193._countAndFlagsBits = v190;
            v193._object = v191;
            Calendar.Identifier.init(identifierString:)(v193);
            v194 = LOBYTE(v291[0]);
          }

          while (LOBYTE(v291[0]) == 27);
          v278 = v1;
          v196 = swift_isUniquelyReferenced_nonNull_native();
          v291[0] = j;
          v197 = specialized __RawDictionaryStorage.find<A>(_:)(v194);
          v199 = *(j + 16);
          v200 = (v198 & 1) == 0;
          v97 = __OFADD__(v199, v200);
          v201 = v199 + v200;
          if (v97)
          {
            goto LABEL_283;
          }

          if (*(j + 24) >= v201)
          {
            if (v196)
            {
              v203 = j;
              if ((v198 & 1) == 0)
              {
                goto LABEL_207;
              }
            }

            else
            {
              v275 = v198;
              v282 = v197;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSiGMd);
              v207 = static _DictionaryStorage.copy(original:)();
              v203 = v207;
              if (*(j + 16))
              {
                v208 = (v207 + 64);
                v209 = j + 64;
                v210 = ((1 << *(v203 + 32)) + 63) >> 6;
                if (v203 != j || v208 >= v209 + 8 * v210)
                {
                  memmove(v208, (j + 64), 8 * v210);
                }

                v211 = 0;
                *(v203 + 16) = *(j + 16);
                v212 = 1 << *(j + 32);
                if (v212 < 64)
                {
                  v213 = ~(-1 << v212);
                }

                else
                {
                  v213 = -1;
                }

                v214 = v213 & *(j + 64);
                for (k = (v212 + 63) >> 6; v214; *(*(v203 + 56) + 8 * v217) = v220)
                {
                  v216 = __clz(__rbit64(v214));
                  v214 &= v214 - 1;
                  v217 = v216 | (v211 << 6);
LABEL_223:
                  v220 = *(*(j + 56) + 8 * v217);
                  *(*(v203 + 48) + v217) = *(*(j + 48) + v217);
                }

                v218 = v211;
                while (1)
                {
                  v211 = v218 + 1;
                  if (__OFADD__(v218, 1))
                  {
                    goto LABEL_291;
                  }

                  if (v211 >= k)
                  {
                    break;
                  }

                  v219 = *(v209 + 8 * v211);
                  ++v218;
                  if (v219)
                  {
                    v214 = (v219 - 1) & v219;
                    v217 = __clz(__rbit64(v219)) | (v211 << 6);
                    goto LABEL_223;
                  }
                }
              }

              v1 = v278;
              v197 = v282;
              if ((v275 & 1) == 0)
              {
LABEL_207:
                *(v203 + 8 * (v197 >> 6) + 64) |= 1 << v197;
                *(*(v203 + 48) + v197) = v194;
                *(*(v203 + 56) + 8 * v197) = v192;
                v205 = *(v203 + 16);
                v97 = __OFADD__(v205, 1);
                v206 = v205 + 1;
                if (v97)
                {
                  goto LABEL_287;
                }

                *(v203 + 16) = v206;
                j = v203;
                goto LABEL_195;
              }
            }
          }

          else
          {
            v202 = v198;
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v201, v196);
            v203 = v291[0];
            v197 = specialized __RawDictionaryStorage.find<A>(_:)(v194);
            if ((v202 & 1) != (v204 & 1))
            {
              goto LABEL_297;
            }

            if ((v202 & 1) == 0)
            {
              goto LABEL_207;
            }
          }

          *(*(v203 + 56) + 8 * v197) = v192;
        }
      }
    }

    else
    {
    }
  }

LABEL_232:
  Week = __CFLocalePrefsCopyAppleMinDaysInFirstWeek(v2);
  if (Week)
  {
    v222 = Week;
    objc_opt_self();
    v223 = swift_dynamicCastObjCClass();
    if (!v223)
    {

      return;
    }

    v291[0] = 0;
    _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SiTt1g5(v223, v291);

    v224 = v291[0];
    if (v291[0])
    {
      v225 = 0;
      v226 = 1 << *(v291[0] + 32);
      if (v226 < 64)
      {
        v227 = ~(-1 << v226);
      }

      else
      {
        v227 = -1;
      }

      v228 = v227 & *(v291[0] + 64);
      v229 = (v226 + 63) >> 6;
      for (m = MEMORY[0x1E69E7CC8]; ; m = v247)
      {
        do
        {
LABEL_240:
          if (v228)
          {
            goto LABEL_239;
          }

          do
          {
            v239 = v225 + 1;
            if (__OFADD__(v225, 1))
            {
              goto LABEL_280;
            }

            if (v239 >= v229)
            {

              if (*(m + 16))
              {

                *(v1 + 56) = m;
              }

              else
              {
              }

              return;
            }

            v228 = *(v224 + 64 + 8 * v239);
            ++v225;
          }

          while (!v228);
          v225 = v239;
LABEL_239:
          v231 = __clz(__rbit64(v228));
          v228 &= v228 - 1;
          v232 = v231 | (v225 << 6);
          v233 = (*(v224 + 48) + 16 * v232);
          v234 = *v233;
          v235 = v233[1];
          v236 = *(*(v224 + 56) + 8 * v232);

          v237._countAndFlagsBits = v234;
          v237._object = v235;
          Calendar.Identifier.init(identifierString:)(v237);
          v238 = LOBYTE(v291[0]);
        }

        while (LOBYTE(v291[0]) == 27);
        v279 = v1;
        v240 = swift_isUniquelyReferenced_nonNull_native();
        v291[0] = m;
        v241 = specialized __RawDictionaryStorage.find<A>(_:)(v238);
        v243 = *(m + 16);
        v244 = (v242 & 1) == 0;
        v97 = __OFADD__(v243, v244);
        v245 = v243 + v244;
        if (v97)
        {
          goto LABEL_284;
        }

        if (*(m + 24) >= v245)
        {
          if (v240)
          {
            v247 = m;
            if (v242)
            {
              goto LABEL_249;
            }
          }

          else
          {
            v283 = v242;
            v287 = v241;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSiGMd);
            v251 = static _DictionaryStorage.copy(original:)();
            v247 = v251;
            if (*(m + 16))
            {
              v252 = (v251 + 64);
              v253 = m + 64;
              v254 = ((1 << *(v247 + 32)) + 63) >> 6;
              if (v247 != m || v252 >= v253 + 8 * v254)
              {
                memmove(v252, (m + 64), 8 * v254);
              }

              v255 = 0;
              *(v247 + 16) = *(m + 16);
              v256 = 1 << *(m + 32);
              if (v256 < 64)
              {
                v257 = ~(-1 << v256);
              }

              else
              {
                v257 = -1;
              }

              v258 = v257 & *(m + 64);
              for (n = (v256 + 63) >> 6; v258; *(*(v247 + 56) + 8 * v261) = v264)
              {
                v260 = __clz(__rbit64(v258));
                v258 &= v258 - 1;
                v261 = v260 | (v255 << 6);
LABEL_268:
                v264 = *(*(m + 56) + 8 * v261);
                *(*(v247 + 48) + v261) = *(*(m + 48) + v261);
              }

              v262 = v255;
              while (1)
              {
                v255 = v262 + 1;
                if (__OFADD__(v262, 1))
                {
                  break;
                }

                if (v255 >= n)
                {
                  goto LABEL_270;
                }

                v263 = *(v253 + 8 * v255);
                ++v262;
                if (v263)
                {
                  v258 = (v263 - 1) & v263;
                  v261 = __clz(__rbit64(v263)) | (v255 << 6);
                  goto LABEL_268;
                }
              }

LABEL_292:
              __break(1u);
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
LABEL_296:
              __break(1u);
LABEL_297:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_298:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_299:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

LABEL_270:

            v1 = v279;
            v241 = v287;
            if (v283)
            {
              goto LABEL_249;
            }
          }
        }

        else
        {
          v246 = v242;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v245, v240);
          v247 = v291[0];
          v241 = specialized __RawDictionaryStorage.find<A>(_:)(v238);
          if ((v246 & 1) != (v248 & 1))
          {
            goto LABEL_297;
          }

          if (v246)
          {
LABEL_249:
            *(*(v247 + 56) + 8 * v241) = v236;
            m = v247;
            goto LABEL_240;
          }
        }

        *(v247 + 8 * (v241 >> 6) + 64) |= 1 << v241;
        *(*(v247 + 48) + v241) = v238;
        *(*(v247 + 56) + 8 * v241) = v236;
        v249 = *(v247 + 16);
        v97 = __OFADD__(v249, 1);
        v250 = v249 + 1;
        if (v97)
        {
          goto LABEL_288;
        }

        *(v247 + 16) = v250;
      }
    }
  }
}

__CFArray *__CFLocalePrefsCopyAppleLanguages(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleLanguages");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E4A8], Count, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 == CFStringGetTypeID())
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  return Mutable;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = v13;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1865CC0E0](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = __CocoaSet.count.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation16JSONEncoderValueOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation18PresentationIntentV11TableColumnVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitV01_I0OGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys4Int8VGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldV6OptionOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation10JSONFutureOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV8CurrencyVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV12LanguageCodeVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV6RegionVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV9CollationVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  *v3 = result;
  return result;
}

CFTypeRef __CFLocalePrefsCopyAppleLocale(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleLocale");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

BOOL __CFLocalePrefsAppleMetricUnitsIsMetric(const __CFDictionary *a1, BOOL *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleMetricUnits");
  v4 = Value == *MEMORY[0x1E695E4D0];
  v5 = Value == *MEMORY[0x1E695E4C0] || Value == *MEMORY[0x1E695E4D0];
  *a2 = v5;
  return v4;
}

uint64_t __CFLocalePrefsAppleMeasurementUnitsIsCm(const __CFDictionary *a1, char *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleMeasurementUnits");
  if (!Value)
  {
    goto LABEL_6;
  }

  v4 = Value;
  if (!CFEqual(Value, @"Inches"))
  {
    if (CFEqual(v4, @"Centimeters"))
    {
      v6 = 1;
      result = 1;
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
    result = 0;
    goto LABEL_7;
  }

  result = 0;
  v6 = 1;
LABEL_7:
  *a2 = v6;
  return result;
}

uint64_t __CFLocalePrefsAppleTemperatureUnitIsC(const __CFDictionary *a1, char *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleTemperatureUnit");
  if (!Value)
  {
    goto LABEL_6;
  }

  v4 = Value;
  if (!CFEqual(Value, *MEMORY[0x1E695E708]))
  {
    if (CFEqual(v4, *MEMORY[0x1E695E700]))
    {
      v6 = 1;
      result = 1;
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
    result = 0;
    goto LABEL_7;
  }

  result = 0;
  v6 = 1;
LABEL_7:
  *a2 = v6;
  return result;
}

BOOL __CFLocalePrefsAppleForce24HourTime(const __CFDictionary *a1, BOOL *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUForce24HourTime");
  v4 = Value == *MEMORY[0x1E695E4D0];
  v5 = Value == *MEMORY[0x1E695E4C0] || Value == *MEMORY[0x1E695E4D0];
  *a2 = v5;
  return v4;
}

BOOL __CFLocalePrefsAppleForce12HourTime(const __CFDictionary *a1, BOOL *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUForce12HourTime");
  v4 = Value == *MEMORY[0x1E695E4D0];
  v5 = Value == *MEMORY[0x1E695E4C0] || Value == *MEMORY[0x1E695E4D0];
  *a2 = v5;
  return v4;
}

CFTypeRef __CFLocalePrefsCopyAppleCollationOrder(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleCollationOrder");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyCountry(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Country");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUDateTimeSymbols(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUDateTimeSymbols");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUDateFormatStrings(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUDateFormatStrings");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUTimeFormatStrings(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUTimeFormatStrings");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUNumberFormatStrings(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUNumberFormatStrings");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUNumberSymbols(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUNumberSymbols");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleFirstWeekday(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleFirstWeekday");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleMinDaysInFirstWeek(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleMinDaysInFirstWeek");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

id _LocaleICU.init(name:prefs:disableBundleMatching:)(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v464 = *MEMORY[0x1E69E9840];
  v384 = *v4;
  v339 = 0;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v373 = v8;
  v374 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v329 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v329 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v329 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v329 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = a3[7];
  v462 = a3[6];
  *v463 = v23;
  *&v463[12] = *(a3 + 124);
  v24 = a3[3];
  v458 = a3[2];
  v459 = v24;
  v25 = a3[5];
  v460 = a3[4];
  v461 = v25;
  v26 = a3[1];
  v456 = *a3;
  v457 = v26;
  if (a2)
  {
    v360 = &v329 - v22;
    v27 = *MEMORY[0x1E695E4A8];
    v28 = String._bridgeToObjectiveCImpl()();
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(v27, v28);
    swift_unknownObjectRelease();
    if (!CanonicalLocaleIdentifierFromString)
    {
      goto LABEL_29;
    }

    isTaggedPointer = _objc_isTaggedPointer(CanonicalLocaleIdentifierFromString);
    v31 = CanonicalLocaleIdentifierFromString;
    v32 = v31;
    if (!isTaggedPointer)
    {
LABEL_13:
      LOBYTE(v442._countAndFlagsBits) = 0;
      v402._countAndFlagsBits = 0;
      LOBYTE(v450._countAndFlagsBits) = 0;
      LOBYTE(v439) = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        if (v402._countAndFlagsBits)
        {
          if (v439 == 1)
          {
            if (v442._countAndFlagsBits)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v65 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_110;
          }

          if ((v450._countAndFlagsBits & 1) == 0)
          {
LABEL_109:
            v65 = String.init(_cocoaString:)();
LABEL_110:
            v386 = v65;
            v36 = v66;
            goto LABEL_111;
          }

          if (LOBYTE(v442._countAndFlagsBits) != 1)
          {
            IsCF = [(__CFString *)v32 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v127 = v339;
          v128 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v36 = v129;
          v130 = HIBYTE(v129) & 0xF;
          v386 = v128;
          if ((v129 & 0x2000000000000000) == 0)
          {
            v130 = v128 & 0xFFFFFFFFFFFFLL;
          }

          v339 = v127;
          if (!v130)
          {

            goto LABEL_109;
          }

          goto LABEL_35;
        }
      }

      else
      {
        v61 = v32;
        v386 = String.init(_nativeStorage:)();
        if (v62)
        {
          v36 = v62;

          goto LABEL_112;
        }

        v402._countAndFlagsBits = [(__CFString *)v61 length];
        if (v402._countAndFlagsBits)
        {
          goto LABEL_109;
        }
      }

LABEL_29:
      v386 = 0;
      v36 = 0xE000000000000000;
      goto LABEL_112;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v31);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v34 = v339;
          v386 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v36 = v35;
          v339 = v34;

LABEL_112:
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v131 = static _LocaleICU.log;
          v132 = static os_log_type_t.debug.getter();
          v359 = v131;
          if (!os_log_type_enabled(v131, v132))
          {

LABEL_156:
            v107 = String._bridgeToObjectiveCImpl()();

            v108 = v27;
LABEL_157:
            v201 = CFLocaleCreateCanonicalLocaleIdentifierFromString(v108, v107);
            swift_unknownObjectRelease();
            if (v201)
            {
              v104 = static String._unconditionallyBridgeFromObjectiveC(_:)(v201);
              v37 = v202;
            }

            else
            {
              v104 = 0;
              v37 = 0xE000000000000000;
            }

            goto LABEL_160;
          }

          v442 = 0;
          v443 = 0u;
          v444 = 0u;
          v445 = 0u;
          v446 = 0u;
          v447 = 0u;
          outlined destroy of Locale.Language.Components(&v442);
          LODWORD(v402._countAndFlagsBits) = 0;
          String.utf8CString.getter();
          Language = uloc_getLanguage();

          v134 = 0;
          v135 = 0;
          if (SLODWORD(v402._countAndFlagsBits) <= 0 && Language > 0)
          {
            v401[Language] = 0;
            v136 = MEMORY[0x1865CAEB0](v401, 0);
            if (v135)
            {
              v134 = v136;
            }

            else
            {
              v134 = 0;
            }
          }

          v372 = v135;
          LODWORD(v402._countAndFlagsBits) = 0;
          String.utf8CString.getter();
          Script = uloc_getScript();

          v138 = 0;
          v139 = 0;
          if (SLODWORD(v402._countAndFlagsBits) <= 0 && Script > 0)
          {
            v400[Script] = 0;
            v140 = MEMORY[0x1865CAEB0](v400, 0);
            if (v139)
            {
              v138 = v140;
            }

            else
            {
              v138 = 0;
            }
          }

          v371 = v139;
          v375 = v138;
          LODWORD(v402._countAndFlagsBits) = 0;
          String.utf8CString.getter();
          Country = uloc_getCountry();

          v142 = 0;
          v143 = 0;
          if (SLODWORD(v402._countAndFlagsBits) <= 0 && Country > 0)
          {
            v399[Country] = 0;
            v144 = MEMORY[0x1865CAEB0](v399, 0);
            if (v143)
            {
              v142 = v144;
            }

            else
            {
              v142 = 0;
            }
          }

          v145 = v142;
          v365 = v143;
          if (v372)
          {
            v146 = String.lowercased()();
            object = v146._object;
            countAndFlagsBits = v146._countAndFlagsBits;
          }

          else
          {
            v134 = 0;
            object = 0;
            countAndFlagsBits = 0;
          }

          v357 = a2;
          if (v371)
          {
            v402._countAndFlagsBits = v375;
            v402._object = v371;

            String.init<A>(_:)();
            v147 = String._capitalized()();
            v361 = v147._object;
            v362 = v147._countAndFlagsBits;
          }

          else
          {
            v375 = 0;
            v361 = 0;
            v362 = 0;
          }

          v356 = v27;
          v378 = v36;
          v148 = v365;
          if (v365)
          {
            v149 = v145;
            v150 = String.uppercased()();
            v151 = v150._countAndFlagsBits;
            v152 = v150._object;
          }

          else
          {
            v149 = 0;
            v151 = 0;
            v152 = 0;
          }

          outlined consume of Locale.LanguageCode?(0, 0);
          outlined consume of Locale.LanguageCode?(0, 0);
          outlined consume of Locale.LanguageCode?(0, 0);
          v450._countAndFlagsBits = v134;
          v153 = v371;
          v450._object = v372;
          *&v451 = countAndFlagsBits;
          *(&v451 + 1) = object;
          v154 = v375;
          *&v452 = v375;
          *(&v452 + 1) = v371;
          *&v453 = v362;
          *(&v453 + 1) = v361;
          *&v454 = v149;
          *(&v454 + 1) = v148;
          *&v455 = v151;
          *(&v455 + 1) = v152;
          v355 = v134;
          outlined copy of Locale.LanguageCode?(v134, v372);
          outlined copy of Locale.LanguageCode?(v154, v153);
          v354 = v149;
          outlined copy of Locale.LanguageCode?(v149, v148);
          outlined destroy of Locale.Language.Components(&v450);
          outlined consume of Locale.LanguageCode?(0, 0);
          outlined consume of Locale.LanguageCode?(0, 0);
          outlined consume of Locale.LanguageCode?(0, 0);
          LODWORD(v402._countAndFlagsBits) = 0;
          String.utf8CString.getter();
          Variant = uloc_getVariant();

          if (SLODWORD(v402._countAndFlagsBits) <= 0 && Variant > 0 && (v398[Variant] = 0, v156 = MEMORY[0x1865CAEB0](v398), v157))
          {
            v351 = v157;
            v352 = v156;
            v158 = String.lowercased()();
            v349 = v158._object;
            v350 = v158._countAndFlagsBits;
            outlined consume of Locale.LanguageCode?(0, 0);
          }

          else
          {
            v351 = 0;
            v352 = 0;
            v349 = 0;
            v350 = 0;
          }

          v391 = 0;
          String.utf8CString.getter();
          v159 = uloc_openKeywords();

          v160 = 0;
          v161 = 4;
          v162 = 7;
          v163 = 27;
          v353 = v151;
          if (v391 > 0 || !v159)
          {
            v164 = v152;
            v185 = 0;
            v180 = 0;
            v181 = 0;
            v179 = 0;
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v186 = 0;
            v166 = 0;
            v193 = 0;
            v167 = 0;
            v376 = 0;
            v377 = 0;
            v385 = 0;
            v171 = 0;
            v177 = 0;
            v178 = 0;
            v187 = 0;
            v188 = 0;
            v189 = 0;
            v190 = 0;
            v191 = 0;
            v192 = 0;
            v174 = 0;
            v176 = 0;
LABEL_151:
            v402._countAndFlagsBits = v355;
            v402._object = v372;
            *&v403 = countAndFlagsBits;
            *(&v403 + 1) = object;
            *&v404 = v375;
            *(&v404 + 1) = v371;
            *&v405 = v362;
            *(&v405 + 1) = v361;
            *&v406 = v354;
            *&v407 = v353;
            *(&v407 + 1) = v164;
            LOBYTE(v408) = v163;
            *(&v408 + 1) = v186;
            *&v409[0] = v185;
            *(&v408 + 1) = *v390;
            DWORD1(v408) = *&v390[3];
            *(&v406 + 1) = v365;
            *(&v409[0] + 1) = v180;
            *&v409[1] = v181;
            *(&v409[1] + 1) = v179;
            v410 = v182;
            v411 = v183;
            v412 = v184;
            v413 = v160;
            v414 = v166;
            v415 = v193;
            v416 = v167;
            v417 = v162;
            v418 = v161;
            v420 = v394;
            v419 = v393;
            v421 = v377;
            v422 = v376;
            v423 = v385;
            v424 = v171;
            v425 = v177;
            v426 = v178;
            v427 = v187;
            v428 = v188;
            v429 = v189;
            v430 = v190;
            v431 = v191;
            v432 = v192;
            v433 = v174;
            v434 = v176;
            v435 = v352;
            v436 = v351;
            v437 = v350;
            v438 = v349;
            if (v365)
            {
              outlined destroy of Locale.Components(&v402);

              v27 = v356;
            }

            else
            {
              v194 = v359;
              v195 = v360;
              Logger.init(_:)();
              v196 = v378;

              v197 = Logger.logObject.getter();
              v198 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v197, v198))
              {
                v199 = swift_slowAlloc();
                v200 = swift_slowAlloc();
                *&v439 = v200;
                *v199 = 136446210;
                *(v199 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v386, v196, &v439);
                _os_log_impl(&dword_18075C000, v197, v198, "Current locale fetched with overriding locale identifier '%{public}s' which does not have a country code", v199, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v200);
                MEMORY[0x1865D2690](v200, -1, -1);
                MEMORY[0x1865D2690](v199, -1, -1);
              }

              outlined destroy of Locale.Components(&v402);
              (*(v374 + 8))(v195, v373);

              v27 = v356;
            }

            goto LABEL_156;
          }

          v164 = v152;
          type metadata accessor for ICU.Enumerator();
          countAndFlagsBits_low = 7;
          v329 = swift_allocObject();
          *(v329 + 16) = v159;
          LODWORD(v402._countAndFlagsBits) = 0;
          LODWORD(v439) = 0;
          v165 = uenum_next();
          if (SLODWORD(v402._countAndFlagsBits) > 0)
          {
            v344 = 0;
            v345 = 0;
            v346 = 0;
            v347 = 0;
            v341 = 0;
            v342 = 0;
            v340 = 0;
            v337 = 0;
            v338 = 0;
            v166 = 0;
            v369 = 0;
            v167 = 0;
            v168 = 0;
            v169 = 0;
            v170 = 0;
            v171 = 0;
            v172 = 0;
            v173 = 0;
            v334 = 0;
            v335 = 0;
            v332 = 0;
            v333 = 0;
            v330 = 0;
            v331 = 0;
            v174 = 0;
            v175 = 0;
            v336 = 4;
            LODWORD(v348) = 27;
LABEL_149:
            v385 = v170;
            v376 = v169;
            v377 = v168;
            v176 = v175;

            v177 = v172;
            v178 = v173;
            v179 = v342;
            v162 = countAndFlagsBits_low;
            v181 = v346;
            v180 = v347;
            v183 = v340;
            v182 = v341;
            v161 = v336;
            v160 = v337;
            v184 = v338;
            v186 = v344;
            v185 = v345;
            v188 = v334;
            v187 = v335;
            v190 = v332;
            v189 = v333;
            v163 = v348;
            v192 = v330;
            v191 = v331;
            v193 = v369;
            goto LABEL_151;
          }

          v366 = v159;
          v175 = 0;
          v174 = 0;
          v330 = 0;
          v331 = 0;
          v332 = 0;
          v333 = 0;
          v334 = 0;
          v335 = 0;
          v173 = 0;
          v172 = 0;
          v171 = 0;
          v170 = 0;
          v169 = 0;
          v168 = 0;
          v167 = 0;
          v369 = 0;
          v166 = 0;
          v337 = 0;
          v338 = 0;
          v340 = 0;
          v341 = 0;
          v346 = 0;
          v347 = 0;
          v344 = 0;
          v345 = 0;
          LODWORD(v348) = 27;
          v342 = 0;
          countAndFlagsBits_low = 7;
          v336 = 4;
          v358 = v164;
          while (1)
          {
            if (!v165)
            {
              goto LABEL_149;
            }

            v381 = v175;
            v382 = v172;
            v383 = v171;
            v385 = v170;
            v379 = v167;
            v380 = v166;
            v298 = String.init(cString:)();
            static Locale.legacyKey(forKey:)(v298, v299, &v402._countAndFlagsBits);

            v300 = v402._object;
            if (v402._object)
            {
              break;
            }

            v167 = v379;
            v166 = v380;
LABEL_256:
            LODWORD(v402._countAndFlagsBits) = 0;
            LODWORD(v439) = 0;
            v165 = uenum_next();
            v172 = v382;
            v171 = v383;
            v170 = v385;
            v175 = v381;
            if (SLODWORD(v402._countAndFlagsBits) > 0)
            {
              goto LABEL_149;
            }
          }

          v376 = v169;
          v377 = v168;
          v367 = v174;
          v368 = v173;
          v301 = v402._countAndFlagsBits;
          v302 = specialized static Locale.keywordValue(identifier:key:)();
          if (v303)
          {
            v304 = v302;
            v305 = v303;
            if (v301 == 0x7261646E656C6163 && v300 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v306._countAndFlagsBits = v304;
              v306._object = v305;
              Calendar.Identifier.init(identifierString:)(v306);
              LODWORD(v348) = LOBYTE(v402._countAndFlagsBits);
LABEL_269:
              v164 = v358;
              v167 = v379;
              v166 = v380;
LABEL_270:
              v173 = v368;
LABEL_271:
              v174 = v367;
LABEL_272:
              v169 = v376;
              v168 = v377;
              goto LABEL_256;
            }

            if (v301 == 0x6F6974616C6C6F63 && v300 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v307 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v344, v345);
              v344 = v304;
              v345 = v305;
              v346 = v307._object;
              v347 = v307._countAndFlagsBits;
              goto LABEL_269;
            }

            if (v301 == 0x79636E6572727563 && v300 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v308 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v342, v341);
              v341 = v305;
              v342 = v304;
              v340 = v308._countAndFlagsBits;
              v338 = v308._object;
              goto LABEL_269;
            }

            if (v301 == 0x737265626D756ELL && v300 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v309 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v337, v380);
              v337 = v304;
              v369 = v309._countAndFlagsBits;
              v166 = v305;
              v167 = v309._object;
              v164 = v358;
              goto LABEL_270;
            }

            if (v301 == 30566 && v300 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v467._countAndFlagsBits = v304;
              v467._object = v305;
              Locale.Weekday.init(rawValue:)(v467, &v402);
              countAndFlagsBits_low = LOBYTE(v402._countAndFlagsBits);
              goto LABEL_269;
            }

            if (v301 == 0x7372756F68 && v300 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v468._countAndFlagsBits = v304;
              v468._object = v305;
              Locale.HourCycle.init(rawValue:)(v468, &v402);
              v336 = LOBYTE(v402._countAndFlagsBits);
              goto LABEL_269;
            }

            if (v301 == 0x6572757361656DLL && v300 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (v304 == 0x6C61697265706D69 && v305 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                if (one-time initialization token for uk != -1)
                {
                  swift_once();
                }

                v168 = static Locale.MeasurementSystem.uk;
                v310 = *algn_1EA7AFAD8;
                v311 = *(&xmmword_1EA7AFAE0 + 1);
                v312 = xmmword_1EA7AFAE0;

                outlined consume of Locale.LanguageCode?(v377, v376);
                v385 = v312;
                v169 = v310;
                v383 = v311;
              }

              else
              {
                v318 = String.lowercased()();
                outlined consume of Locale.LanguageCode?(v377, v376);
                v168 = v304;
                v169 = v305;
                v385 = v318._countAndFlagsBits;
                v383 = v318._object;
              }

              v164 = v358;
              v167 = v379;
              v166 = v380;
              v174 = v367;
              v173 = v368;
              goto LABEL_256;
            }

            if (v301 == 26482 && v300 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (String.count.getter() > 2)
              {
                specialized Collection.prefix(_:)(2);

                v313 = Substring.uppercased()();

                v402 = v313;
                v314 = String.init<A>(_:)();
                v316 = v315;
                v317 = String.uppercased()();
                outlined consume of Locale.LanguageCode?(v382, v368);
                v382 = v314;
                v173 = v316;
                v334 = v317._object;
                v335 = v317._countAndFlagsBits;
                v164 = v358;
                v167 = v379;
                v166 = v380;
                goto LABEL_271;
              }

              goto LABEL_264;
            }

            if (v301 == 25715 && v300 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v319 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v333, v332);
              v332 = v305;
              v333 = v304;
              v330 = v319._object;
              v331 = v319._countAndFlagsBits;
              goto LABEL_269;
            }

            if (v301 == 0x656E6F7A656D6974 && v300 == 0xE800000000000000)
            {

LABEL_313:
              if (one-time initialization token for cache != -1)
              {
                v320 = swift_once();
              }

              v322 = static TimeZoneCache.cache;
              MEMORY[0x1EEE9AC00](v320);
              os_unfair_lock_lock(v322 + 30);
              v323 = v339;
              closure #1 in TimeZoneCache.fixed(_:)partial apply(&v402._countAndFlagsBits);
              v339 = v323;
              os_unfair_lock_unlock(v322 + 30);
              v324 = v402._object;
              v174 = v402._countAndFlagsBits;

              if (v174)
              {
                v325 = v324;
              }

              else
              {
                v325 = 0;
              }

              v381 = v325;
              swift_unknownObjectRelease();
              v164 = v358;
              v167 = v379;
              v166 = v380;
              v173 = v368;
              goto LABEL_272;
            }

            v321 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v321)
            {
              goto LABEL_313;
            }
          }

LABEL_264:

          goto LABEL_269;
        }

        goto LABEL_13;
      }

      result = [(__CFString *)v32 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v386 = String.init(utf8String:)(result);
      if (v64)
      {
LABEL_34:
        v36 = v64;
LABEL_35:

LABEL_111:
        goto LABEL_112;
      }

      __break(1u);
    }

    LOWORD(v450._countAndFlagsBits) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v386 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v64)
    {
      [(__CFString *)v32 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v36 = v442._object;
      v386 = v442._countAndFlagsBits;
      goto LABEL_111;
    }

    goto LABEL_34;
  }

  LODWORD(v386) = a4;
  v37 = *(&v457 + 1);
  v385 = v457;
  v38 = objc_opt_self();

  v39 = [v38 mainBundle];
  v40 = [v39 _objectForUnlocalizedInfoDictionaryKey_];

  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of FloatingPointRoundingRule?(&v402, &v450, &_sypSgMd);
  if (!*(&v451 + 1))
  {
    outlined destroy of TermOfAddress?(&v402, &_sypSgMd);
    outlined destroy of TermOfAddress?(&v450, &_sypSgMd);
    v43 = 0;
    v44 = 0;
    if (v386)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  outlined init with take of Any(&v450, &v442);
  outlined init with copy of Any(&v442, &v450);
  v41 = swift_dynamicCast();
  v42 = v386;
  if (v41)
  {
    __swift_destroy_boxed_opaque_existential_1(&v442);
    outlined destroy of TermOfAddress?(&v402, &_sypSgMd);
    v43 = v439;
    goto LABEL_11;
  }

  outlined init with copy of Any(&v442, &v450);
  if (swift_dynamicCast())
  {
    v382 = v38;
    v46 = v439;
    v450 = v439;
    v383 = *(&v439 + 1);

    v47 = Substring.init<A>(_:)();
    v380 = v48;
    v381 = v47;
    v450._countAndFlagsBits = 1702195828;
    v450._object = 0xE400000000000000;
    v49 = Substring.init<A>(_:)();
    v53 = specialized _StringCompareOptionsIterable._compare<A>(_:toHalfWidth:diacriticsInsensitive:caseFold:numeric:forceOrdering:)(v49, v50, v51, v52, 0, 0, 1, 0, 0, v381, v380);

    if (v53)
    {
      v450._countAndFlagsBits = v46;
      v450._object = v383;
      v54 = Substring.init<A>(_:)();
      v383 = v55;
      v450._countAndFlagsBits = 5457241;
      v450._object = 0xE300000000000000;
      v56 = Substring.init<A>(_:)();
      v60 = specialized _StringCompareOptionsIterable._compare<A>(_:toHalfWidth:diacriticsInsensitive:caseFold:numeric:forceOrdering:)(v56, v57, v58, v59, 0, 0, 1, 0, 0, v54, v383);

      __swift_destroy_boxed_opaque_existential_1(&v442);
      outlined destroy of TermOfAddress?(&v402, &_sypSgMd);
      v43 = v60 == 0;
      if (v386)
      {
        v44 = 0;
        v38 = v382;
        goto LABEL_51;
      }

      v38 = v382;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v442);
      outlined destroy of TermOfAddress?(&v402, &_sypSgMd);
      v38 = v382;
      if (v386)
      {
        goto LABEL_12;
      }

      v43 = 1;
    }

LABEL_50:
    v44 = v43 ^ 1;
    goto LABEL_51;
  }

  outlined destroy of TermOfAddress?(&v402, &_sypSgMd);
  outlined init with copy of Any(&v442, &v450);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v442);
    v43 = v439 != 0;
  }

  else
  {
    outlined init with take of Any(&v442, &v450);
    if (!swift_dynamicCast())
    {
      v43 = 0;
      v44 = 0;
      if (v42)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v43 = *&v439 != 0.0;
  }

LABEL_11:
  if ((v42 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_12:
  v44 = 0;
LABEL_51:
  v67 = v456._object;
  if (!v456._object)
  {
    if ((v37 == 0) | v44 & 1)
    {
      if (one-time initialization token for log == -1)
      {
        goto LABEL_72;
      }

      goto LABEL_333;
    }

    goto LABEL_86;
  }

  if (v37)
  {
    v382 = v38;
    v68 = v385;
    if (v44)
    {

      v69 = [v382 mainBundle];
      v70 = [v69 localizations];
      v71 = _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZSS_Tt0g5(v70);

      v72 = specialized static Locale.canonicalizeLocalizations(_:)(v71);

      if (!*(v72 + 2))
      {
        goto LABEL_85;
      }

      v386 = *(v67 + 16);
      if (!v386)
      {
        goto LABEL_85;
      }

      v73 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v73 = v68 & 0xFFFFFFFFFFFFLL;
      }

      if (!v73)
      {
LABEL_85:

        swift_bridgeObjectRelease_n();

        goto LABEL_86;
      }

      v380 = v69;
      v383 = *MEMORY[0x1E695E4A8];
      v381 = v72;

      v21 = 0;
      v74 = v67 + 40;
      v75 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v21 >= *(v67 + 16))
        {
          __break(1u);
          goto LABEL_331;
        }

        v76 = String._bridgeToObjectiveCImpl()();

        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v383, v76);
        swift_unknownObjectRelease();
        if (CanonicalLanguageIdentifierFromString)
        {
          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)(CanonicalLanguageIdentifierFromString);
          v80 = v79;
        }

        else
        {

          v78 = 0;
          v80 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
        }

        v82 = *(v75 + 2);
        v81 = *(v75 + 3);
        if (v82 >= v81 >> 1)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v75);
        }

        ++v21;
        *(v75 + 2) = v82 + 1;
        v83 = &v75[16 * v82];
        *(v83 + 4) = v78;
        *(v83 + 5) = v80;
        v74 += 16;
      }

      while (v386 != v21);

      v118 = _ContiguousArrayBuffer._asCocoaArray()();
      v119 = [v382 preferredLocalizationsFromArray:v118 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v120 = _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZSS_Tt0g5(v119);

      if (*(v120 + 16))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v120);
        v121 = *(v120 + 32);

        v122 = static Locale.languageIdentifierWithScriptCodeForLocaleIdentifier(_:)();
        v124 = v123;
        v125 = static Locale.languageIdentifierWithScriptCodeForLocaleIdentifier(_:)();
        if (!v124)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_86;
        }

        if (v126)
        {
          if (v122 == v125 && v124 == v126)
          {

LABEL_326:
            v104 = v385;

LABEL_160:
            v203 = HIBYTE(v37) & 0xF;
            if ((v37 & 0x2000000000000000) == 0)
            {
              v203 = v104 & 0xFFFFFFFFFFFFLL;
            }

            if (!v203)
            {
            }

            goto LABEL_164;
          }

          v326 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v326)
          {

            goto LABEL_326;
          }

          v104 = static Locale.localeIdentifierByReplacingLanguageCodeAndScriptCode(localeIDWithDesiredLangCode:localeIDWithDesiredComponents:)(v121);
          v328 = v327;

          if (v328)
          {

            v37 = v328;
            goto LABEL_160;
          }

LABEL_86:

          v106 = *MEMORY[0x1E695E4A8];
          v107 = String._bridgeToObjectiveCImpl()();

          v108 = v106;
          goto LABEL_157;
        }
      }

      else
      {
      }

      swift_bridgeObjectRelease_n();

      goto LABEL_86;
    }

    goto LABEL_86;
  }

  v88 = specialized static Locale.canonicalizeLocalizations(_:)(v67);
  v89 = *(v88 + 2);

  if (v89)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v88);

    v90 = *MEMORY[0x1E695E4A8];
    v91 = String._bridgeToObjectiveCImpl()();

    v92 = CFLocaleCreateCanonicalLocaleIdentifierFromString(v90, v91);
    swift_unknownObjectRelease();
    if (v92)
    {
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)(v92);
      v95 = v94;

      v96 = *&v463[16];
      if (*&v463[16])
      {
LABEL_79:
        v97 = *&v463[8];
        v98 = one-time initialization token for log;

        if (v98 != -1)
        {
          swift_once();
        }

        v99 = static _LocaleICU.log;
        Logger.init(_:)();

        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v402._countAndFlagsBits = v103;
          *v102 = 136446210;
          *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v96, &v402._countAndFlagsBits);
          _os_log_impl(&dword_18075C000, v100, v101, "Locale.current constructing a locale identifier from preferred languages by combining with set country code '%{public}s'", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v103);
          MEMORY[0x1865D2690](v103, -1, -1);
          MEMORY[0x1865D2690](v102, -1, -1);
        }

        (*(v374 + 8))(v15, v373);
        v402._countAndFlagsBits = v93;
        v402._object = v95;
        MEMORY[0x1865CB0E0](95, 0xE100000000000000);
        MEMORY[0x1865CB0E0](v97, v96);

        v104 = specialized static Locale._canonicalLocaleIdentifier(from:)(v402._countAndFlagsBits, v402._object);
        v37 = v105;

        goto LABEL_160;
      }
    }

    else
    {
      v93 = 0;
      v95 = 0xE000000000000000;
      v96 = *&v463[16];
      if (*&v463[16])
      {
        goto LABEL_79;
      }
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v113 = static _LocaleICU.log;
    Logger.init(_:)();
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_18075C000, v114, v115, "Locale.current constructing a locale identifier from preferred languages without a set country code", v116, 2u);
      MEMORY[0x1865D2690](v116, -1, -1);
    }

    (*(v374 + 8))(v18, v373);
    v104 = specialized static Locale._canonicalLocaleIdentifier(from:)(v93, v95);
    v37 = v117;

    goto LABEL_160;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v109 = static _LocaleICU.log;
  Logger.init(_:)();
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_18075C000, v110, v111, "Value for 'AppleLanguages' found in preferences contains no valid entries; falling back to default locale identifier as current", v112, 2u);
    MEMORY[0x1865D2690](v112, -1, -1);
  }

  (*(v374 + 8))(v12, v373);
  while (1)
  {
LABEL_164:
    v204 = *MEMORY[0x1E695E4A8];
    v205 = String._bridgeToObjectiveCImpl()();

    v206 = CFLocaleCreateCanonicalLocaleIdentifierFromString(v204, v205);
    swift_unknownObjectRelease();
    if (v206)
    {
      v208 = static String._unconditionallyBridgeFromObjectiveC(_:)(v206);
      v210 = v209;
    }

    else
    {
      v208 = 0;
      v210 = 0xE000000000000000;
    }

    v211 = v370;
    *(v370 + 16) = v208;
    *(v211 + 24) = v210;
    v448 = v462;
    v449[0] = *v463;
    *(v449 + 12) = *&v463[12];
    v444 = v458;
    v445 = v459;
    v447 = v461;
    v446 = v460;
    v443 = v457;
    v442 = v456;
    _NSBundleDeallocatingImmortalBundle(&v442, v207);
    v212 = v446;
    *(v211 + 136) = v447;
    v213 = v449[0];
    *(v211 + 152) = v448;
    *(v211 + 168) = v213;
    *(v211 + 180) = *(v449 + 12);
    v214 = v442;
    *(v211 + 72) = v443;
    v215 = v445;
    *(v211 + 88) = v444;
    *(v211 + 104) = v215;
    *(v211 + 120) = v212;
    *(v211 + 56) = v214;

    outlined init with copy of LocalePreferences(&v456, &v402);
    static _LocaleICU._calendarIdentifier(forIdentifier:)(&v402);

    LODWORD(v340) = LOBYTE(v402._countAndFlagsBits);
    *(v211 + 48) = v402._countAndFlagsBits;
    v216 = *(v211 + 24);
    v351 = *(v211 + 16);
    swift_bridgeObjectRetain_n();
    Locale.Language.Components.init(identifier:)(&v402._countAndFlagsBits);
    v451 = v403;
    v450 = v402;
    v455 = v407;
    v454 = v406;
    v453 = v405;
    v452 = v404;
    v217 = v404;
    v218 = v405;
    v219 = v406;
    v220 = *(&v407 + 1);
    v221 = v407;
    v358 = v402._object;
    v359 = v402._countAndFlagsBits;
    v347 = *(&v403 + 1);
    v348 = v403;
    outlined copy of Locale.LanguageCode?(v402._countAndFlagsBits, v402._object);
    v345 = *(&v217 + 1);
    v346 = v217;
    countAndFlagsBits_low = *(&v218 + 1);
    v344 = v218;
    outlined copy of Locale.LanguageCode?(v217, *(&v217 + 1));
    v341 = *(&v219 + 1);
    v342 = v219;
    v356 = v220;
    v357 = v221;
    v222 = v216;
    outlined copy of Locale.LanguageCode?(v219, *(&v219 + 1));
    outlined destroy of Locale.Language.Components(&v450);
    outlined consume of Locale.LanguageCode?(0, 0);
    outlined consume of Locale.LanguageCode?(0, 0);
    outlined consume of Locale.LanguageCode?(0, 0);

    v223 = specialized _withFixedCharBuffer(size:_:)(257);
    v225 = v224;

    v355 = v225;
    if (v225)
    {
      v354 = v223;
      v226 = String.lowercased()();
      v352 = v226._object;
      v353 = v226._countAndFlagsBits;
      outlined consume of Locale.LanguageCode?(0, 0);
    }

    else
    {
      v353 = 0;
      v354 = 0;
      v352 = 0;
    }

    v389 = 0;
    String.utf8CString.getter();
    v227 = uloc_openKeywords();

    if (v389 > 0)
    {

      v384 = 0;
      v385 = 0;
      v37 = 0;
      v227 = 0;
LABEL_172:
      v228 = 0;
      v376 = 0;
      v377 = 0;
      v374 = 0;
      v375 = 0;
      v372 = 0;
      v373 = 0;
      v371 = 0;
      v229 = 0;
      v230 = 0;
      v21 = 0;
      v231 = 0;
      v368 = 0;
      v369 = 0;
      v366 = 0;
      v367 = 0;
      countAndFlagsBits = 0;
      v365 = 0;
      v362 = 0;
      object = 0;
      v360 = 0;
      v361 = 0;
      LODWORD(v349) = 4;
      v378 = 7;
      LODWORD(v379) = 27;
      goto LABEL_177;
    }

    if (!v227)
    {

      v384 = 0;
      v385 = 0;
      v37 = 0;
      goto LABEL_172;
    }

    type metadata accessor for ICU.Enumerator();
    v378 = 7;
    v338 = swift_allocObject();
    *(v338 + 16) = v227;
    LODWORD(v402._countAndFlagsBits) = 0;
    LODWORD(v439) = 0;
    v232 = uenum_next();
    if (SLODWORD(v402._countAndFlagsBits) <= 0)
    {
      v360 = 0;
      v361 = 0;
      v362 = 0;
      object = 0;
      countAndFlagsBits = 0;
      v365 = 0;
      v366 = 0;
      v367 = 0;
      v368 = 0;
      v369 = 0;
      v385 = 0;
      v386 = 0;
      v380 = 0;
      v381 = 0;
      v229 = 0;
      v371 = 0;
      v372 = 0;
      v373 = 0;
      v374 = 0;
      v375 = 0;
      v376 = 0;
      v228 = 0;
      v382 = 0;
      v383 = 0;
      v384 = 0;
      LODWORD(v379) = 27;
      v377 = 0;
      v378 = 7;
      LODWORD(v349) = 4;
      while (1)
      {
        if (!v232)
        {
          goto LABEL_176;
        }

        v268 = String.init(cString:)();
        static Locale.legacyKey(forKey:)(v268, v269, &v402._countAndFlagsBits);

        v270 = v402._object;
        if (v402._object)
        {
          break;
        }

LABEL_195:
        LODWORD(v402._countAndFlagsBits) = 0;
        LODWORD(v439) = 0;
        v232 = uenum_next();
        if (SLODWORD(v402._countAndFlagsBits) > 0)
        {
          goto LABEL_176;
        }
      }

      v271 = v402._countAndFlagsBits;
      v272 = v222;
      v273 = specialized static Locale.keywordValue(identifier:key:)();
      if (!v274)
      {

LABEL_194:
        v222 = v272;
        goto LABEL_195;
      }

      v275 = v273;
      v276 = v274;
      if (v271 == 0x7261646E656C6163 && v270 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v277._countAndFlagsBits = v275;
        v277._object = v276;
        Calendar.Identifier.init(identifierString:)(v277);
        LODWORD(v379) = LOBYTE(v402._countAndFlagsBits);
        goto LABEL_194;
      }

      if (v271 == 0x6F6974616C6C6F63 && v270 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v278 = String.lowercased()();
        v279 = v229;
        outlined consume of Locale.LanguageCode?(v385, v384);
        v384 = v276;
        v385 = v275;
        v382 = v278._object;
        v383 = v278._countAndFlagsBits;
LABEL_207:
        v229 = v279;
        goto LABEL_194;
      }

      if (v271 == 0x79636E6572727563 && v270 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v280 = String.lowercased()();
        v279 = v229;
        outlined consume of Locale.LanguageCode?(v228, v377);
        v228 = v275;
        v376 = v280._countAndFlagsBits;
        v377 = v276;
        v375 = v280._object;
        goto LABEL_207;
      }

      if (v271 == 0x737265626D756ELL && v270 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v281 = String.lowercased()();
        v279 = v229;
        outlined consume of Locale.LanguageCode?(v374, v373);
        v373 = v276;
        v374 = v275;
        v371 = v281._object;
        v372 = v281._countAndFlagsBits;
        goto LABEL_207;
      }

      if (v271 == 30566 && v270 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v465._countAndFlagsBits = v275;
        v465._object = v276;
        Locale.Weekday.init(rawValue:)(v465, &v402);
        v378 = LOBYTE(v402._countAndFlagsBits);
        goto LABEL_194;
      }

      if (v271 == 0x7372756F68 && v270 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v466._countAndFlagsBits = v275;
        v466._object = v276;
        Locale.HourCycle.init(rawValue:)(v466, &v402);
        LODWORD(v349) = LOBYTE(v402._countAndFlagsBits);
        goto LABEL_194;
      }

      if (v271 == 0x6572757361656DLL && v270 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v282 = v229;

        if (v275 == 0x6C61697265706D69 && v276 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (one-time initialization token for uk != -1)
          {
            swift_once();
          }

          v229 = static Locale.MeasurementSystem.uk;
          v283 = *algn_1EA7AFAD8;
          v284 = xmmword_1EA7AFAE0;

          outlined consume of Locale.LanguageCode?(v282, v381);
          v380 = v284;
          v381 = v283;
          v386 = *(&v284 + 1);
        }

        else
        {
          v290 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v229, v381);
          v380 = v290._countAndFlagsBits;
          v381 = v276;
          v386 = v290._object;
          v229 = v275;
        }

        goto LABEL_194;
      }

      v350 = v229;
      if (v271 == 26482 && v270 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (String.count.getter() > 2)
        {
          specialized Collection.prefix(_:)(2);

          v285 = Substring.uppercased()();

          v402 = v285;
          v286 = String.init<A>(_:)();
          v288 = v287;
          v289 = String.uppercased()();
          outlined consume of Locale.LanguageCode?(v369, v368);
          v368 = v288;
          v369 = v286;
          v366 = v289._object;
          v367 = v289._countAndFlagsBits;
          v229 = v350;
          goto LABEL_194;
        }

LABEL_253:

        v229 = v350;
        goto LABEL_194;
      }

      if (v271 == 25715 && v270 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v291 = String.lowercased()();
        outlined consume of Locale.LanguageCode?(v365, countAndFlagsBits);
        countAndFlagsBits = v276;
        v365 = v275;
        v362 = v291._object;
        object = v291._countAndFlagsBits;
        v229 = v350;
        goto LABEL_194;
      }

      if (v271 == 0x656E6F7A656D6974 && v270 == 0xE800000000000000)
      {
      }

      else
      {
        v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v293 & 1) == 0)
        {
          goto LABEL_253;
        }
      }

      if (one-time initialization token for cache != -1)
      {
        v292 = swift_once();
      }

      v294 = static TimeZoneCache.cache;
      MEMORY[0x1EEE9AC00](v292);
      os_unfair_lock_lock(v294 + 30);
      v295 = v339;
      closure #1 in TimeZoneCache.fixed(_:)partial apply(&v402._countAndFlagsBits);
      v339 = v295;
      os_unfair_lock_unlock(v294 + 30);
      v296 = v402;

      if (v296._countAndFlagsBits)
      {
        v297 = v296._object;
      }

      else
      {
        v297 = 0;
      }

      v360 = v297;
      swift_unknownObjectRelease();
      v361 = v296._countAndFlagsBits;
      v229 = v350;
      goto LABEL_194;
    }

    v384 = 0;
    v385 = 0;
    v382 = 0;
    v383 = 0;
    v228 = 0;
    v376 = 0;
    v377 = 0;
    v374 = 0;
    v375 = 0;
    v372 = 0;
    v373 = 0;
    v371 = 0;
    v229 = 0;
    v380 = 0;
    v381 = 0;
    v386 = 0;
    v368 = 0;
    v369 = 0;
    v366 = 0;
    v367 = 0;
    countAndFlagsBits = 0;
    v365 = 0;
    v362 = 0;
    object = 0;
    v360 = 0;
    v361 = 0;
    LODWORD(v349) = 4;
    LODWORD(v379) = 27;
LABEL_176:

    v227 = v382;
    v37 = v383;
    v21 = v380;
    v230 = v381;
    v231 = v386;
LABEL_177:
    v386 = v231;
    v233 = v229;
    v351 = v228;
    v234 = *(&v458 + 1);
    if (*(&v458 + 1))
    {
      v235 = v458;
      v236 = String.lowercased()();

      outlined consume of Locale.LanguageCode?(v385, v384);
      v384 = v234;
      v385 = v235;
      v37 = v236._countAndFlagsBits;
      v227 = v236._object;
    }

    if (!v459)
    {
      goto LABEL_185;
    }

    v237 = specialized Dictionary.subscript.getter(v340, v459);
    if (v238)
    {
      goto LABEL_185;
    }

    if (v237 >= 0xFFFFFFFF80000000)
    {
      break;
    }

LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    swift_once();
LABEL_72:
    v84 = static _LocaleICU.log;
    Logger.init(_:)();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_18075C000, v85, v86, "Lookup of 'AppleLanguages' from current preferences failed lookup (app preferences do not contain the key); likely falling back to default locale identifier as current", v87, 2u);
      MEMORY[0x1865D2690](v87, -1, -1);
    }

    (*(v374 + 8))(v21, v373);

    if (v37)
    {
      goto LABEL_86;
    }
  }

  if (v237 > 0x7FFFFFFF)
  {
    goto LABEL_332;
  }

  if ((v237 - 8) >= 0xFFFFFFFFFFFFFFF9)
  {
    v239 = v237 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v237 - 1, 1, outlined read-only object #0 of one-time initialization function for weekdays);
    v378 = outlined read-only object #0 of one-time initialization function for weekdays[v239 + 32];
  }

LABEL_185:
  v408 = v462;
  v409[0] = *v463;
  *(v409 + 12) = *&v463[12];
  v404 = v458;
  v405 = v459;
  v407 = v461;
  v406 = v460;
  v403 = v457;
  v402 = v456;
  LocalePreferences.measurementSystem.getter(&v439);
  v240 = *(&v439 + 1);
  v382 = v227;
  v383 = v37;
  if (*(&v439 + 1))
  {
    v241 = v441;
    v242 = v440;
    v243 = v439;
    outlined consume of Locale.LanguageCode?(v233, v230);
    v350 = v243;
    v380 = v242;
    v381 = v240;
    v386 = v241;
  }

  else
  {
    v350 = v229;
    v380 = v21;
    v381 = v230;
  }

  v408 = v462;
  v409[0] = *v463;
  *(v409 + 12) = *&v463[12];
  v404 = v458;
  v405 = v459;
  v407 = v461;
  v406 = v460;
  v403 = v457;
  v402 = v456;
  LocalePreferences.hourCycle.getter(&v439);
  *(&v408 + 1) = *v397;
  DWORD1(v408) = *&v397[3];
  v244 = v349;
  if (v439 != 4)
  {
    v244 = v439;
  }

  LODWORD(v340) = v244;
  v419 = v395;
  v420 = v396;
  v402._countAndFlagsBits = v359;
  v402._object = v358;
  v246 = v347;
  v245 = v348;
  *&v403 = v348;
  *(&v403 + 1) = v347;
  v247 = v345;
  v248 = v346;
  *&v404 = v346;
  *(&v404 + 1) = v345;
  v249 = countAndFlagsBits_low;
  v250 = v344;
  *&v405 = v344;
  *(&v405 + 1) = countAndFlagsBits_low;
  v252 = v341;
  v251 = v342;
  *&v406 = v342;
  *(&v406 + 1) = v341;
  *&v407 = v357;
  *(&v407 + 1) = v356;
  LOBYTE(v408) = v379;
  *(&v408 + 1) = v385;
  *&v409[0] = v384;
  *(&v409[0] + 1) = v383;
  *&v409[1] = v382;
  *(&v409[1] + 1) = v351;
  v410 = v377;
  v411 = v376;
  v412 = v375;
  v413 = v374;
  v414 = v373;
  v415 = v372;
  v416 = v371;
  v417 = v378;
  v418 = v244;
  v421 = v350;
  v422 = v381;
  v423 = v380;
  v424 = v386;
  v425 = v369;
  v426 = v368;
  v427 = v367;
  v428 = v366;
  v429 = v365;
  v430 = countAndFlagsBits;
  v431 = object;
  v432 = v362;
  v433 = v361;
  v434 = v360;
  v435 = v354;
  v436 = v355;
  v437 = v353;
  v438 = v352;
  v253 = Locale.Components.icuIdentifier.getter();
  v349 = v254;
  outlined destroy of LocalePreferences(&v456);
  v402._countAndFlagsBits = v359;
  v402._object = v358;
  *&v403 = v245;
  *(&v403 + 1) = v246;
  *&v404 = v248;
  *(&v404 + 1) = v247;
  *&v405 = v250;
  *(&v405 + 1) = v249;
  *&v406 = v251;
  *(&v406 + 1) = v252;
  *&v407 = v357;
  *(&v407 + 1) = v356;
  LOBYTE(v408) = v379;
  *(&v408 + 1) = v385;
  *&v409[0] = v384;
  *(&v408 + 1) = *v397;
  DWORD1(v408) = *&v397[3];
  *(&v409[0] + 1) = v383;
  *&v409[1] = v382;
  *(&v409[1] + 1) = v351;
  v410 = v377;
  v411 = v376;
  v412 = v375;
  v413 = v374;
  v414 = v373;
  v415 = v372;
  v416 = v371;
  v417 = v378;
  v418 = v340;
  v419 = v395;
  v420 = v396;
  v421 = v350;
  v422 = v381;
  v423 = v380;
  v424 = v386;
  v425 = v369;
  v426 = v368;
  v427 = v367;
  v428 = v366;
  v429 = v365;
  v430 = countAndFlagsBits;
  v431 = object;
  v432 = v362;
  v433 = v361;
  v434 = v360;
  v435 = v354;
  v436 = v355;
  v437 = v353;
  v438 = v352;
  outlined destroy of Locale.Components(&v402);
  v255 = v370;
  v256 = v349;
  *(v370 + 32) = v253;
  *(v255 + 40) = v256;
  v388 = 1;
  v387 = 1;
  v257 = MEMORY[0x1E69E7CC0];
  v386 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v385 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v257);
  v384 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v257);
  v383 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v257);
  v258 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation8CalendarV10IdentifierO_SSSgTt0g5Tf4g_n(v257);
  v259 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v257);
  v260 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v257);
  v261 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v257);
  v262 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_SpySvSgGTt0g5Tf4g_n(v257);
  LOBYTE(v251) = v387;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA10_LocaleICUC0C0V_GMd);
  v263 = swift_allocObject();
  *(v263 + 536) = 0;
  *(v263 + 16) = xmmword_1812187D0;
  *(v263 + 32) = 0u;
  *(v263 + 48) = 0u;
  *(v263 + 64) = 0u;
  *(v263 + 80) = 0u;
  *(v263 + 96) = 0u;
  *(v263 + 112) = 0u;
  *(v263 + 128) = 0u;
  *(v263 + 144) = 0;
  *(v263 + 152) = 1;
  *(v263 + 160) = 0u;
  *(v263 + 176) = 0u;
  *(v263 + 192) = 0u;
  *(v263 + 208) = 0;
  *(v263 + 216) = 7;
  v264 = v439;
  *(v263 + 220) = *(&v439 + 3);
  *(v263 + 217) = v264;
  *(v263 + 240) = 0u;
  *(v263 + 256) = 0u;
  *(v263 + 224) = 0u;
  *(v263 + 272) = 256;
  *(v263 + 278) = v394;
  *(v263 + 274) = v393;
  *(v263 + 280) = 0;
  *(v263 + 288) = v251;
  *(v263 + 289) = 4;
  *(v263 + 290) = v391;
  *(v263 + 294) = v392;
  *(v263 + 296) = 0u;
  *(v263 + 312) = 0u;
  *(v263 + 328) = 2;
  *(v263 + 329) = *v390;
  *(v263 + 332) = *&v390[3];
  *(v263 + 336) = xmmword_1812187D0;
  *(v263 + 352) = 0;
  *(v263 + 360) = 0;
  *(v263 + 368) = 0;
  *(v263 + 376) = 1;
  *(v263 + 384) = 0;
  *(v263 + 392) = 0;
  *(v263 + 400) = 1;
  *(v263 + 408) = 0;
  *(v263 + 416) = 0;
  *(v263 + 424) = 1;
  *(v263 + 432) = 0;
  *(v263 + 440) = 0;
  v265 = MEMORY[0x1E69E7CC8];
  *(v263 + 448) = MEMORY[0x1E69E7CC8];
  *(v263 + 456) = v265;
  v266 = v385;
  *(v263 + 464) = v386;
  *(v263 + 472) = v266;
  v267 = v383;
  *(v263 + 480) = v384;
  *(v263 + 488) = v267;
  *(v263 + 496) = v258;
  *(v263 + 504) = v259;
  *(v263 + 512) = v260;
  *(v263 + 520) = v261;
  *(v263 + 528) = v262;
  *(v255 + 200) = v263;
  return v255;
}

uint64_t Locale.Language.Components.init(identifier:)@<X0>(uint64_t *a1@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(v29, 0, 96);
  outlined destroy of Locale.Language.Components(v29);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  if (Language <= 0)
  {
    v3 = 0;
    v5 = 0;
  }

  else
  {
    v28[Language] = 0;
    v3 = MEMORY[0x1865CAEB0](v28);
    v5 = v4;
  }

  String.utf8CString.getter();
  Script = uloc_getScript();

  v7 = 0;
  v8 = 0;
  if (Script > 0)
  {
    v27[Script] = 0;
    v7 = MEMORY[0x1865CAEB0](v27);
    v8 = v9;
  }

  String.utf8CString.getter();

  Country = uloc_getCountry();

  v11 = 0;
  v12 = 0;
  if (Country > 0)
  {
    v26[Country] = 0;
    v11 = MEMORY[0x1865CAEB0](v26);
    v12 = v13;
  }

  if (v5)
  {
    v14 = String.lowercased()();
    object = v14._object;
    countAndFlagsBits = v14._countAndFlagsBits;
    v25 = v3;
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:
    v7 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v5;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    v11 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_15;
  }

  object = 0;
  countAndFlagsBits = 0;
  v25 = 0;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_10:

  String.init<A>(_:)();
  v15 = String._capitalized()();
  v16 = v15._countAndFlagsBits;
  v17 = v15._object;

  v18 = v5;
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  v19 = String.uppercased()();
  v20 = v19._countAndFlagsBits;
  v21 = v19._object;
LABEL_15:
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  result = outlined consume of Locale.LanguageCode?(0, 0);
  *a1 = v25;
  a1[1] = v18;
  a1[2] = countAndFlagsBits;
  a1[3] = object;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v16;
  a1[7] = v17;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v20;
  a1[11] = v21;
  return result;
}

uint64_t specialized _withFixedCharBuffer(size:_:)(int a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (a1 + 1 < 0)
    {
      __break(1u);
    }

    v1 = a1 + 1;

    if (v1 < 1025)
    {
      goto LABEL_4;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v8 = swift_slowAlloc();

    specialized closure #1 in _withFixedCharBuffer(size:_:)(v8, v10);
    MEMORY[0x1865D2690](v8, -1, -1);

    return v10[0];
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v4 = &v10[-1] - v3;
  LODWORD(v10[0]) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  v6 = 0;
  if (SLODWORD(v10[0]) <= 0 && Variant > 0)
  {
    v4[Variant] = 0;
    v6 = MEMORY[0x1865CAEB0](v4);
  }

  return v6;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation8CalendarV10IdentifierO_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSSSgGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for _LocaleICU(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, a2, type metadata accessor for _LocaleICU);
  *(a1 + 8) = result;
  return result;
}

unsigned __int8 static _LocaleICU._calendarIdentifier(forIdentifier:)@<W0>(_BYTE *a1@<X8>)
{
  v2 = specialized static Locale.keywordValue(identifier:key:)();
  if (!v3)
  {
    v10 = 0;
    String.utf8CString.getter();
    KeywordValuesForLocale = ucal_getKeywordValuesForLocale();

    if (!KeywordValuesForLocale || !uenum_next())
    {
      *a1 = 0;
      return uenum_close();
    }

    v7 = String.init(cString:)();
    v9 = v8;
    uenum_close();
    v3 = v9;
    v2 = v7;
  }

  result = Calendar.Identifier.init(identifierString:)(*&v2).value;
  v5 = v10;
  if (v10 == 27)
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t Locale.Components.icuIdentifier.getter()
{
  v89 = *(v0 + 72);
  v84 = *(v0 + 88);
  v85 = *(v0 + 80);
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v66 = *(v0 + 120);
  v67 = *(v0 + 152);
  v74 = *(v0 + 144);
  v75 = *(v0 + 160);
  v76 = *(v0 + 176);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v88 = *(v0 + 201);
  v78 = *(v0 + 216);
  v68 = *(v0 + 184);
  v69 = *(v0 + 224);
  v5 = *(v0 + 240);
  v73 = *(v0 + 256);
  v6 = *(v0 + 264);
  v80 = *(v0 + 248);
  v81 = *(v0 + 280);
  v86 = *(v0 + 232);
  v87 = *(v0 + 296);
  v70 = *(v0 + 288);
  v71 = *(v0 + 312);
  v72 = *(v0 + 336);
  v82 = *(v0 + 328);
  v83 = *(v0 + 344);
  v79 = *(v0 + 64);
  v77 = *(v0 + 304);
  if (*(v0 + 96) != 27)
  {
    v65 = *(v0 + 264);
    v64 = *(v0 + 240);
    v8 = Calendar.Identifier.cldrIdentifier.getter();
    v10 = v9;
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v7[2];
    v11 = v7[3];
    if (v12 >= v11 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
    }

    v7[2] = v12 + 1;
    v13 = &v7[4 * v12];
    v13[4] = 0x7261646E656C6163;
    v13[5] = 0xE800000000000000;
    v13[6] = v8;
    v13[7] = v10;
    v5 = v64;
    v6 = v65;
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
LABEL_7:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v15 = v7[2];
    v14 = v7[3];
    if (v15 >= v14 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v7);
    }

    v7[2] = v15 + 1;
    v16 = &v7[4 * v15];
    v16[4] = 0x6F6974616C6C6F63;
    v16[5] = 0xE90000000000006ELL;
    v16[6] = v66;
    v16[7] = v2;
  }

LABEL_12:
  if (v74)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v18 = v7[2];
    v17 = v7[3];
    if (v18 >= v17 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v7);
    }

    v7[2] = v18 + 1;
    v19 = &v7[4 * v18];
    v19[4] = 0x79636E6572727563;
    v19[5] = 0xE800000000000000;
    v19[6] = v67;
    v19[7] = v75;
  }

  if (v76)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v21 = v7[2];
    v20 = v7[3];
    if (v21 >= v20 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v7);
    }

    v7[2] = v21 + 1;
    v22 = &v7[4 * v21];
    v22[4] = 0x737265626D756ELL;
    v22[5] = 0xE700000000000000;
    v22[6] = v68;
    v22[7] = v3;
  }

  v23 = v88;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 != 6)
      {
        v26 = v84;
        v25 = v85;
        v27 = v80;
        if (v88 <= 1)
        {
          goto LABEL_46;
        }

        goto LABEL_41;
      }

      v24 = 7627123;
    }

    else if (v4 == 4)
    {
      v24 = 7694452;
    }

    else
    {
      v24 = 6910566;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      v24 = 6649204;
    }

    else
    {
      v24 = 6579575;
    }
  }

  else
  {
    v24 = 7237485;
    if (!v4)
    {
      v24 = 7239027;
    }
  }

  v26 = v84;
  v25 = v85;
  v27 = v80;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v29 = v7[2];
    v28 = v7[3];
    if (v29 >= v28 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v7);
    }

    v7[2] = v29 + 1;
    v30 = &v7[4 * v29];
    v30[4] = 30566;
    v30[5] = 0xE200000000000000;
    v30[6] = v24;
    v30[7] = 0xE300000000000000;
    v23 = v88;
    if (v88 <= 1)
    {
LABEL_46:
      v31 = 3223912;
      if (v23)
      {
        v31 = 3289448;
      }
    }

    else
    {
LABEL_41:
      if (v23 == 2)
      {
        v31 = 3355240;
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_53;
        }

        v31 = 3420776;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v33 = v7[2];
    v32 = v7[3];
    if (v33 >= v32 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v7);
    }

    v7[2] = v33 + 1;
    v34 = &v7[4 * v33];
    v34[4] = 0x7372756F68;
    v34[5] = 0xE500000000000000;
    v34[6] = v31;
    v34[7] = 0xE300000000000000;
LABEL_53:
    if (v78)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v36 = v7[2];
      v35 = v7[3];
      if (v36 >= v35 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
      }

      v7[2] = v36 + 1;
      v37 = &v7[4 * v36];
      v37[4] = 0x6572757361656DLL;
      v37[5] = 0xE700000000000000;
      v37[6] = v69;
      v37[7] = v86;
    }

    if (!v27)
    {
      v5 = v79;
      v27 = v77;
      goto LABEL_73;
    }

    if (v89)
    {
      if (v73 == v25 && v6 == v26)
      {
        v38 = v5;
        outlined copy of Locale.LanguageCode?(v5, v27);
        v5 = v79;
        outlined copy of Locale.LanguageCode?(v79, v89);
        outlined copy of Locale.LanguageCode?(v38, v27);
        outlined consume of Locale.LanguageCode?(v79, v89);

        outlined consume of Locale.LanguageCode?(v38, v27);
        v27 = v77;
        goto LABEL_73;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v5;
      outlined copy of Locale.LanguageCode?(v5, v27);
      v5 = v79;
      outlined copy of Locale.LanguageCode?(v79, v89);
      outlined copy of Locale.LanguageCode?(v41, v27);
      outlined consume of Locale.LanguageCode?(v79, v89);

      outlined consume of Locale.LanguageCode?(v41, v27);
      if (v40)
      {
        v27 = v77;
        goto LABEL_73;
      }
    }

    else
    {
      v39 = v5;
      outlined copy of Locale.LanguageCode?(v5, v27);
      v5 = v79;
      outlined copy of Locale.LanguageCode?(v79, 0);
      outlined copy of Locale.LanguageCode?(v39, v27);

      outlined consume of Locale.LanguageCode?(v39, v27);
      outlined consume of Locale.LanguageCode?(v79, 0);
    }

    MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
    v42 = String.lowercased()();

    v27 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v44 = v7[2];
    v43 = v7[3];
    if (v44 >= v43 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v7);
    }

    v7[2] = v44 + 1;
    v45 = &v7[4 * v44];
    v45[2]._countAndFlagsBits = 26482;
    v45[2]._object = 0xE200000000000000;
    v45[3] = v42;
LABEL_73:
    if (v81)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v47 = v7[2];
      v46 = v7[3];
      if (v47 >= v46 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v7);
      }

      v7[2] = v47 + 1;
      v48 = &v7[4 * v47];
      v48[4] = 25715;
      v48[5] = 0xE200000000000000;
      v48[6] = v70;
      v48[7] = v87;
    }

    if (v27)
    {
      ObjectType = swift_getObjectType();
      v50 = (*(v71 + 32))(ObjectType);
      v52 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v54 = v7[2];
      v53 = v7[3];
      if (v54 >= v53 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v7);
      }

      v7[2] = v54 + 1;
      v55 = &v7[4 * v54];
      v55[4] = 0x656E6F7A656D6974;
      v55[5] = 0xE800000000000000;
      v55[6] = v50;
      v55[7] = v52;
    }

    if (v82)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v57 = v7[2];
      v56 = v7[3];
      if (v57 >= v56 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v7);
      }

      v7[2] = v57 + 1;
      v58 = &v7[4 * v57];
      v58[4] = 24950;
      v58[5] = 0xE200000000000000;
      v58[6] = v72;
      v58[7] = v83;
    }

    v92 = Locale.Language.Components.identifier.getter();
    v24 = v7[2];
    if (!v24)
    {
      break;
    }

    MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    v59 = v7[2];
    if (!v59)
    {
      break;
    }

    v6 = 0;
    v60 = v24 - 1;
    v25 = v7 + 7;
    while (v6 < v59)
    {
      v62 = *(v25 - 1);
      v61 = *v25;
      v90 = *(v25 - 3);
      v91 = *(v25 - 2);

      MEMORY[0x1865CB0E0](61, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v62, v61);

      v24 = v91;
      MEMORY[0x1865CB0E0](v90, v91);

      if (v60 != v6)
      {
        MEMORY[0x1865CB0E0](59, 0xE100000000000000);
      }

      ++v6;
      v59 = v7[2];
      v25 += 4;
      if (v6 == v59)
      {
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_100:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
  }

LABEL_98:

  return v92;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1865CC0E0](v5, a1);
        swift_dynamicCast();
        v7 = *(v15 + 16);
        v6 = *(v15 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v15 + 16) = v7 + 1;
        v8 = v15 + 16 * v7;
        *(v8 + 32) = v13;
        *(v8 + 40) = v14;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v11 = *(v15 + 16);
        v10 = *(v15 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        *(v15 + 16) = v11 + 1;
        v12 = v15 + 16 * v11;
        *(v12 + 32) = v13;
        *(v12 + 40) = v14;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1865CC0E0](v5, a1);
        swift_dynamicCast();
        v7 = *(v16 + 16);
        v6 = *(v16 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        v8 = v16 + 32 * v7;
        *(v16 + 16) = v7 + 1;
        *(v8 + 32) = v13;
        *(v8 + 40) = v14;
        *(v8 + 48) = v15;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v11 = *(v16 + 16);
        v10 = *(v16 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        v12 = v16 + 32 * v11;
        *(v16 + 16) = v11 + 1;
        *(v12 + 32) = v13;
        *(v12 + 40) = v14;
        *(v12 + 48) = v15;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1865CC0E0](i, a1);
        swift_dynamicCast();
        v7 = *(v12 + 16);
        v6 = *(v12 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        *(v12 + 16) = v7 + 1;
        *(v12 + 16 * v7 + 32) = v11;
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v10 = *(v12 + 16);
        v9 = *(v12 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        *(v12 + 16) = v10 + 1;
        *(v12 + 16 * v10 + 32) = v11;
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1865CC0E0](v5, a1);
        swift_dynamicCast();
        v7 = *(v16 + 16);
        v6 = *(v16 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v16 + 16) = v7 + 1;
        v8 = v16 + 40 * v7;
        *(v8 + 64) = v15;
        *(v8 + 32) = v13;
        *(v8 + 48) = v14;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v11 = *(v16 + 16);
        v10 = *(v16 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        *(v16 + 16) = v11 + 1;
        v12 = v16 + 40 * v11;
        *(v12 + 64) = v15;
        *(v12 + 32) = v13;
        *(v12 + 48) = v14;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1865CC0E0](v5, a1);
        swift_dynamicCast();
        v7 = *(v15 + 16);
        v6 = *(v15 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v15 + 16) = v7 + 1;
        v8 = v15 + 16 * v7;
        *(v8 + 32) = v13;
        *(v8 + 40) = v14;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v11 = *(v15 + 16);
        v10 = *(v15 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        *(v15 + 16) = v11 + 1;
        v12 = v15 + 16 * v11;
        *(v12 + 32) = v13;
        *(v12 + 40) = v14;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall String._capitalized()()
{
  v2 = v1;
  v3 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v45 = type metadata accessor for Unicode.Scalar.Properties();
  v4 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v48 = 0xE000000000000000;
  v7 = v3;
  if ((v2 & 0x1000000000000000) != 0)
  {
    v9 = String.UTF8View._foreignCount()();
    v8 = v2 & 0x2000000000000000;
  }

  else
  {
    v8 = v2 & 0x2000000000000000;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v9 = v3 & 0xFFFFFFFFFFFFLL;
    }
  }

  MEMORY[0x1865CAED0](v9);
  if (v8)
  {
    v10 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v10 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v44 = v8;
    v11 = 0;
    v12 = 0;
    v42 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v43 = v2 & 0xFFFFFFFFFFFFFFLL;
    v13 = (v4 + 8);
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v16 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v18 = v17;
        goto LABEL_22;
      }

      if (v44)
      {
        v46[0] = v7;
        v46[1] = v43;
        v15 = v46 + v12;
      }

      else
      {
        v19 = v42;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v19 = _StringObject.sharedUTF8.getter();
        }

        v15 = (v19 + v12);
      }

      v16 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        break;
      }

      v28 = (__clz(v16 ^ 0xFF) - 24);
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v16 = ((v16 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3F;
          v18 = 3;
        }

        else
        {
          v16 = ((v16 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3F;
          v18 = 4;
        }
      }

      else
      {
        if (v28 == 1)
        {
          break;
        }

        v16 = v15[1] & 0x3F | ((v16 & 0x1F) << 6);
        v18 = 2;
      }

LABEL_22:
      Unicode.Scalar.properties.getter();
      if (BYTE2(v16) > 1u)
      {
        if (BYTE2(v16) > 0xEu)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v20 = *(&__CFUniCharUppercaseLetterCharacterSetBitmap_0 + BYTE2(v16));
        if (v20 && ((*(v20 + (v16 >> 3)) >> (v16 & 7)) & 1) != 0)
        {
          if (v11)
          {
            v14 = Unicode.Scalar.Properties.lowercaseMapping.getter();
          }

          else
          {
LABEL_32:
            if (v16 > 0x7F)
            {
              v31 = (v16 & 0x3F) << 8;
              if (v16 >= 0x800)
              {
                v36 = (v31 | (v16 >> 6) & 0x3F) << 8;
                v37 = (((v36 | (v16 >> 12) & 0x3F) << 8) | (v16 >> 18)) - 2122219023;
                v22 = (v16 >> 12) + v36 + 8487393;
                if (HIWORD(v16))
                {
                  v22 = v37;
                }
              }

              else
              {
                v22 = (v16 >> 6) + v31 + 33217;
              }
            }

            else
            {
              v22 = v16 + 1;
            }

            v46[0] = (v22 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v22) >> 3))));
            v14 = static String._uncheckedFromUTF8(_:)();
          }

          goto LABEL_11;
        }

        v21 = *(&__CFUniCharLowercaseLetterCharacterSetBitmap_1 + BYTE2(v16));
        if (v21 && ((*(v21 + (v16 >> 3)) >> (v16 & 7)) & 1) != 0)
        {
          if (v11)
          {
            goto LABEL_32;
          }

          v14 = Unicode.Scalar.Properties.titlecaseMapping.getter();
LABEL_11:
          MEMORY[0x1865CB0E0](v14);
          v11 = 1;
          goto LABEL_12;
        }
      }

      v23 = *(&__CFUniCharCaseIgnorableCharacterSetBitmap_0 + BYTE2(v16));
      if (!v23 || ((*(v23 + (v16 >> 3)) >> (v16 & 7)) & 1) == 0)
      {
LABEL_40:
        if (v16 > 0x7F)
        {
          v29 = (v16 & 0x3F) << 8;
          if (v16 >= 0x800)
          {
            v32 = (v29 | (v16 >> 6) & 0x3F) << 8;
            v33 = (((v32 | (v16 >> 12) & 0x3F) << 8) | (v16 >> 18)) - 2122219023;
            v26 = (v16 >> 12) + v32 + 8487393;
            if (HIWORD(v16))
            {
              v26 = v33;
            }
          }

          else
          {
            v26 = (v16 >> 6) + v29 + 33217;
          }
        }

        else
        {
          v26 = v16 + 1;
        }

        v46[0] = (v26 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v26) >> 3))));
        v27 = static String._uncheckedFromUTF8(_:)();
        MEMORY[0x1865CB0E0](v27);
        v11 = 0;
        goto LABEL_12;
      }

      if (v16 > 0x7F)
      {
        v30 = (v16 & 0x3F) << 8;
        if (v16 >= 0x800)
        {
          v34 = (v30 | (v16 >> 6) & 0x3F) << 8;
          v35 = (((v34 | (v16 >> 12) & 0x3F) << 8) | (v16 >> 18)) - 2122219023;
          v24 = (v16 >> 12) + v34 + 8487393;
          if (HIWORD(v16))
          {
            v24 = v35;
          }
        }

        else
        {
          v24 = (v16 >> 6) + v30 + 33217;
        }
      }

      else
      {
        v24 = v16 + 1;
      }

      v46[0] = (v24 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v24) >> 3))));
      v25 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v25);
LABEL_12:
      v12 += v18;

      (*v13)(v6, v45);
      if (v12 >= v10)
      {
        goto LABEL_65;
      }
    }

    v18 = 1;
    goto LABEL_22;
  }

LABEL_65:

  v38 = v47;
  v39 = v48;
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t LocalePreferences.measurementSystem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[136];
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_3;
    }

LABEL_9:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for us != -1)
    {
      v9 = a1;
      swift_once();
      a1 = v9;
    }

    v4 = &static Locale.MeasurementSystem.us;
    goto LABEL_13;
  }

  if (v3 == 2)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    if (one-time initialization token for uk != -1)
    {
      v11 = a1;
      swift_once();
      a1 = v11;
    }

    v4 = &static Locale.MeasurementSystem.uk;
    goto LABEL_13;
  }

LABEL_3:
  if (v3)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for metric != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v4 = &static Locale.MeasurementSystem.metric;
LABEL_13:
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  *a1 = *v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
}

void LocalePreferences.hourCycle.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 138);
  v3 = *(v1 + 139);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    if (v3 == 2 || (v3 & 1) == 0)
    {
      *a1 = 4;
    }

    else
    {
      *a1 = 1;
    }
  }

  else
  {
    *a1 = 2;
  }
}

uint64_t Locale.Language.Components.identifier.getter()
{
  v1 = v0[4];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[11];
  if (v0[1])
  {
    MEMORY[0x1865CB0E0](v0[2], v0[3]);
  }

  if (v3)
  {
    v9 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v9 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v2, v4);
    }
  }

  if (v7)
  {
    v10 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      MEMORY[0x1865CB0E0](95, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v6, v8);
    }
  }

  return 0;
}

uint64_t LocaleCache.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA15_LocaleProtocol_pSg_GMd);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  a1[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA14_NSSwiftLocaleCSg_GMd);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  a1[2] = v3;
  result = *MEMORY[0x1E695E6E0];
  if (*MEMORY[0x1E695E6E0])
  {
    _CFNotificationCenterInitializeDependentNotificationIfNecessary();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA11LocaleCacheV0C0V_GMd);
    result = swift_allocObject();
    v5 = MEMORY[0x1E69E7CC8];
    *(result + 48) = 0;
    *(result + 16) = v5;
    *(result + 24) = v5;
    *(result + 32) = v5;
    *(result + 40) = v5;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for cache()
{
  return LocaleCache.init()(&static LocaleCache.cache);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA17_CalendarProtocol_pSg_GMd);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  static CalendarCache.cache = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA8CalendarV10IdentifierOAA01_L8Protocol_pG_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1ED440450 = result;
  return result;
}

{
  static ICULegacyNumberFormatter.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAHG_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA7AFFA0 = result;
  return result;
}

{
  static ICUDateIntervalFormatter.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICUDateIntervalFormatterC9SignatureVAHSgG_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA8220C8 = result;
  return result;
}

{
  static ICURelativeDateFormatter.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICURelativeDateFormatterC9SignatureVAHSgG_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA822118 = result;
  return result;
}

{
  static ICUListFormatter.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA16ICUListFormatterC9SignatureVAHG_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA822138 = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA17RegexPatternCacheV3Key33_B716E24E4B0E6BAE66DBA40DF02722D8LLV17_StringProcessing0L0VyAL03AnyL6OutputVGG_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static RegexPatternCache.cache = result;
  return result;
}

{
  static Date.ComponentsFormatStyle.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA4DateV21ComponentsFormatStyleVSo06NSDateM9FormatterCG_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA8220B8 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

id LocaleCache._currentAndCache.getter()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v2)
  {
    LocaleCache.preferences()(v10);
    v4 = v3;
    type metadata accessor for _LocaleICU();
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
    v8[6] = v10[6];
    v9[0] = v11[0];
    *(v9 + 12) = *(v11 + 12);
    v8[2] = v10[2];
    v8[3] = v10[3];
    v8[4] = v10[4];
    v8[5] = v10[5];
    v8[0] = v10[0];
    v8[1] = v10[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v10, &v7);
    v5 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v8, 0);
    v2 = v5;
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v5);
      os_unfair_lock_lock((v1 + 32));
      partial apply for closure #2 in LocaleCache._currentAndCache.getter((v1 + 16), v8);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v10);

      return *&v8[0];
    }

    else
    {
      outlined destroy of LocalePreferences(v10);
    }
  }

  return v2;
}

void NSHashInsertKnownAbsent(NSHashTable *table, const void *pointer)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "void NSHashInsertKnownAbsent(NSHashTable * _Nonnull, const void * _Nullable)");
  }

  [(NSHashTable *)table insertKnownAbsentItem:pointer];
}

NSCharacterSet *__defaultInvertedSkipSet_block_invoke()
{
  result = [+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet invertedSet];
  qword_1ED43F178 = result;
  return result;
}

BOOL _NSCheckDecimalSeparator(uint64_t *a1, _WORD *a2, int a3, void *a4)
{
  if (a4)
  {
    v8 = [a4 length];
  }

  else
  {
    v8 = 1;
  }

  v9 = *a2;
  v10 = v9 == a3 && v8 == 1;
  if (v10)
  {
    return 1;
  }

  result = 0;
  if (a4 && v9 == a3)
  {
    v12 = v8 - 2;
    if (v8 >= 2)
    {
      v13 = 1;
      while (1)
      {
        v14 = *a1;
        v15 = a1[1];
        if (v15 >= *a1)
        {
          v17 = a1[3];
          v18 = a1[4] + v14;
          if (v17 > v18)
          {
            a1[4] = v18;
            if (v17 - v18 >= 0x20)
            {
              v19 = 32;
            }

            else
            {
              v19 = v17 - v18;
            }

            *a1 = v19;
            [a1[2] getUid("getCharacters:a1 + 5 range:{v18, v19}")];
            v16 = *(a1 + 20);
            *(a1 + 52) = v16;
            a1[1] = 1;
            goto LABEL_21;
          }

          a1[1] = v14 + 1;
          v16 = 0xFFFF;
        }

        else
        {
          a1[1] = v15 + 1;
          v16 = *(a1 + v15 + 20);
        }

        *(a1 + 52) = v16;
LABEL_21:
        *a2 = v16;
        v20 = [a4 characterAtIndex:v13];
        v22 = v12-- != 0;
        v10 = v16 == v20;
        result = v16 == v20;
        if (v10)
        {
          ++v13;
          if (v22)
          {
            continue;
          }
        }

        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _NSScanDoubleFromString(void *a1, void *a2, double *a3, unint64_t *a4, void *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  v58 = 0u;
  v59 = 0u;
  v55 = &v57 + 15;
  v9 = [a5 objectForKey:*MEMORY[0x1E695D990]];
  if (v9 || (v9 = [a5 objectForKey:@"NSDecimalSeparator"]) != 0)
  {
    v10 = v9;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v10 = [a5 decimalSeparator];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (![v10 length])
  {
LABEL_10:
    v52 = 46;
    goto LABEL_11;
  }

  v52 = [v10 characterAtIndex:0];
LABEL_11:
  v11 = *a4;
  v12 = [a1 length];
  *(&v59 + 1) = v12;
  *&v60[0] = v11;
  *&v59 = a1;
  if (v12 <= v11)
  {
    *&v58 = 0;
    v14 = 0xFFFF;
  }

  else
  {
    if (v12 - v11 >= 0x20)
    {
      v13 = 32;
    }

    else
    {
      v13 = v12 - v11;
    }

    *&v58 = v13;
    [a1 getUid("getCharacters:v60 + 8 range:{v11, v13}")];
    v14 = WORD4(v60[0]);
  }

  WORD4(v61) = v14;
  v15 = 1;
  *(&v58 + 1) = 1;
  if (a2)
  {
    if ([a2 characterIsMember:?])
    {
      do
      {
        v16 = *(&v58 + 1);
        if (*(&v58 + 1) - 1 >= v58)
        {
          break;
        }

        if (*(&v58 + 1) >= v58)
        {
          v18 = *&v60[0] + v58;
          if (*(&v59 + 1) > *&v60[0] + v58)
          {
            if (*(&v59 + 1) - (*&v60[0] + v58) >= 0x20uLL)
            {
              v19 = 32;
            }

            else
            {
              v19 = *(&v59 + 1) - (*&v60[0] + v58);
            }

            *&v60[0] += v58;
            *&v58 = v19;
            [v59 getUid("getCharacters:v60 + 8 range:{v18, v19}")];
            WORD4(v61) = WORD4(v60[0]);
            *(&v58 + 1) = 1;
            continue;
          }

          *(&v58 + 1) = v58 + 1;
          v17 = -1;
        }

        else
        {
          ++*(&v58 + 1);
          v17 = *(v60 + v16 + 4);
        }

        WORD4(v61) = v17;
      }

      while (([a2 characterIsMember:?] & 1) != 0);
    }

    v14 = WORD4(v61);
    v15 = *(&v58 + 1);
  }

  v20 = *a4;
  v54 = v14;
  if (v14 <= 0x7F && (*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x4000) != 0)
  {
    return 0;
  }

  v48 = *&v60[0];
  v49 = v15;
  v50 = a4;
  v21 = 0;
  v22 = 0;
  v47 = ~v20;
  v23 = 0x100004077774924;
  v24 = v60 + 8;
  v25 = v56;
  v26 = &__NSNumberSet;
  v27 = v56;
  while (1)
  {
    LOBYTE(v28) = v14;
    if (v14 <= 0x7Fu)
    {
      if ((v26[v14 >> 3] >> (v14 & 7)))
      {
        goto LABEL_43;
      }

      if (!_NSCheckDecimalSeparator(&v58, &v54, v52, v10))
      {
        goto LABEL_59;
      }

      goto LABEL_41;
    }

    v29 = u_charDigitValue(v14);
    if (v29 == -1)
    {
      break;
    }

    v28 = v29 + 48;
LABEL_42:
    v54 = v28;
LABEL_43:
    if (v27 >= v55)
    {
      v22 += 128;
      if (v21)
      {
        result = MEMORY[0x1865CFE30](v21, v22, v23, &__block_literal_global_46);
        if (!result)
        {
          return result;
        }

        v25 = result;
        LOBYTE(v28) = v54;
      }

      else
      {
        v25 = malloc_type_malloc(v22, v23);
        v31 = v57;
        v33 = v56[0];
        v32 = v56[1];
        *(v25 + 2) = v56[2];
        *(v25 + 3) = v31;
        *v25 = v33;
        *(v25 + 1) = v32;
        v21 = v56;
      }

      v27 = &v25[v27 - v21];
      v55 = &v25[v22 - 1];
      v21 = v25;
    }

    *v27++ = v28;
    v34 = *(&v58 + 1);
    if (*(&v58 + 1) < v58)
    {
      ++*(&v58 + 1);
      LOWORD(v14) = *&v24[2 * v34];
LABEL_57:
      WORD4(v61) = v14;
      goto LABEL_58;
    }

    v35 = *&v60[0] + v58;
    if (*(&v59 + 1) <= *&v60[0] + v58)
    {
      *(&v58 + 1) = v58 + 1;
      LOWORD(v14) = -1;
      goto LABEL_57;
    }

    if (*(&v59 + 1) - (*&v60[0] + v58) >= 0x20uLL)
    {
      v36 = 32;
    }

    else
    {
      v36 = *(&v59 + 1) - (*&v60[0] + v58);
    }

    *&v60[0] += v58;
    *&v58 = v36;
    v53 = v25;
    v37 = v21;
    v38 = v22;
    v39 = v24;
    v40 = v26;
    v41 = v10;
    v42 = v23;
    v43 = v59;
    Uid = sel_getUid("getCharacters:range:");
    v45 = v43;
    v23 = v42;
    v10 = v41;
    v26 = v40;
    v24 = v39;
    v22 = v38;
    v21 = v37;
    v25 = v53;
    [v45 Uid];
    LOWORD(v14) = WORD4(v60[0]);
    WORD4(v61) = WORD4(v60[0]);
    *(&v58 + 1) = 1;
LABEL_58:
    v54 = v14;
  }

  if (_NSCheckDecimalSeparator(&v58, &v54, v52, v10))
  {
LABEL_41:
    v28 = 46;
    goto LABEL_42;
  }

LABEL_59:
  *v27 = 0;
  v46 = strtod_l(v25, &v55, 0);
  if (v21)
  {
    free(v21);
  }

  if (v55 == v25)
  {
    return 0;
  }

  *v50 += &v55[v49 + v48 + v47 - v25];
  if (a3)
  {
    *a3 = v46;
  }

  return 1;
}

Protocol *__cdecl NSProtocolFromString(Protocol *namestr)
{
  v6 = *MEMORY[0x1E69E9840];
  if (namestr)
  {
    v1 = namestr;
    v2 = [(Protocol *)namestr length];
    if ([(Protocol *)v1 getCString:v5 maxLength:1000 encoding:4]&& strlen(v5) == v2)
    {
      v3 = v5;
      return objc_getProtocol(v3);
    }

    if (!v2)
    {
LABEL_9:
      v3 = [(Protocol *)v1 UTF8String];
      return objc_getProtocol(v3);
    }

    v4 = 0;
    while ([(Protocol *)v1 characterAtIndex:v4])
    {
      if (v2 == ++v4)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return namestr;
}

void _addToStatCache(const char *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *byte_1EEEFC288;
  v4 = strdup(a1);
  v5 = v4;
  if (a1 != a2)
  {
    if (a2)
    {
      v5 = strdup(a2);
    }

    else
    {
      v5 = 0;
    }
  }

  os_unfair_lock_lock(&stru_1ED43F214);
  v6 = qword_1ED43F220;
  if (!qword_1ED43F220)
  {
    v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &v7, 0);
    qword_1ED43F220 = v6;
  }

  if (CFDictionaryContainsKey(v6, v4))
  {
    free(v4);
    if (v4 != v5)
    {
      free(v5);
    }
  }

  else
  {
    CFDictionaryAddValue(qword_1ED43F220, v4, v5);
  }

  os_unfair_lock_unlock(&stru_1ED43F214);
}

uint64_t __NSThread__start__(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  _CFSetTSD();
  _CFSetTSD();
  atomic_store(0xEu, (a1[1] + 63));
  objc_sync_enter(a1);
  Current = CFRunLoopGetCurrent();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1[1] + 64);
  v3 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v3)
  {
    v16 = *v27;
    v4 = *MEMORY[0x1E695E4A8];
    do
    {
      v17 = v3;
      v5 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        if (!*(a1[1] + 72))
        {
          *(a1[1] + 72) = objc_opt_new();
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v18 = v5;
        if (v6)
        {
          v7 = *(v6 + 40);
        }

        else
        {
          v7 = 0;
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v8)
        {
          v9 = *v22;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v21 + 1) + 8 * i);
              v12 = [*(a1[1] + 72) objectForKey:v11];
              if (!v12)
              {
                memset(&context, 0, 72);
                context.perform = __NSThreadPerformPerform;
                context.info = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
                v12 = CFRunLoopSourceCreate(v4, 0, &context);
                *context.info = v12;
                CFRunLoopAddSource(Current, v12, v11);
                [*(a1[1] + 72) setObject:v12 forKey:v11];
                CFRelease(v12);
              }

              CFRunLoopSourceSignal(v12);
            }

            v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v8);
        }

        v5 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v3 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v3);
  }

  objc_sync_exit(a1);
  _CFAutoreleasePoolPush();
  v13 = [a1 name];
  if (v13)
  {
    pthread_setname_np([v13 UTF8String]);
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"_NSThreadDidStartNotification" userInfo:a1, 0];
  _CFAutoreleasePoolPop();
  if (!*(a1[1] + 62))
  {
    [a1 main];
  }

  return +[NSThread exit];
}

uint64_t ___collectionClasses_block_invoke()
{
  v2[11] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2[0] = MEMORY[0x1E695DEC8];
  v2[1] = MEMORY[0x1E695DF70];
  v2[2] = MEMORY[0x1E695DF20];
  v2[3] = MEMORY[0x1E695DF90];
  v2[4] = MEMORY[0x1E695DFA8];
  v2[5] = MEMORY[0x1E695DFD8];
  v2[6] = MEMORY[0x1E695DFA0];
  v2[7] = MEMORY[0x1E695DFB8];
  v2[8] = MEMORY[0x1E695DFA8];
  v2[9] = NSHashTable;
  v2[10] = NSPointerArray;
  result = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v2, 11)}];
  qword_1ED43F590 = result;
  return result;
}

uint64_t specialized _ProcessInfo.environment.getter()
{
  _platform_shims_lock_environ();
  environ = _platform_shims_get_environ();
  if (!environ)
  {
    _platform_shims_unlock_environ();
    return MEMORY[0x1E69E7CC8];
  }

  v1 = environ;
  v2 = *environ;
  if (v2)
  {
    v3 = (v1 + 1);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = strdup(v2);
      if (!v5)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = v6;
      v9 = *v3++;
      v2 = v9;
    }

    while (v9);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  _platform_shims_unlock_environ();
  v11 = *(v4 + 2);
  if (!v11)
  {
    v10 = MEMORY[0x1E69E7CC8];
    goto LABEL_53;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC8];
  v73 = *(v4 + 2);
  do
  {
    v15 = String.init(cString:)();
    v17 = v16;
    specialized Collection<>.firstIndex(of:)(61, 0xE100000000000000, v15, v16);
    if (v18)
    {

      v14 = v13;
      goto LABEL_16;
    }

    v19 = String.subscript.getter();
    v20 = MEMORY[0x1865CAE80](v19);
    v22 = v21;

    v23 = String.index(after:)();
    v24 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v24 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v24 < v23 >> 14)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v25 = String.subscript.getter();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v75 = MEMORY[0x1865CAE80](v25, v27, v29, v31);
    v33 = v32;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v20;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
    v37 = *(v13 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_56;
    }

    v40 = v35;
    v41 = v22;
    if (*(v13 + 24) >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v13;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
        v47 = static _DictionaryStorage.copy(original:)();
        v14 = v47;
        if (*(v13 + 16))
        {
          v48 = (v47 + 64);
          v49 = (v13 + 64);
          v50 = ((1 << *(v14 + 32)) + 63) >> 6;
          if (v14 != v13 || v48 >= &v49[8 * v50])
          {
            memmove(v48, v49, 8 * v50);
          }

          v51 = 0;
          *(v14 + 16) = *(v13 + 16);
          v52 = 1 << *(v13 + 32);
          if (v52 < 64)
          {
            v53 = ~(-1 << v52);
          }

          else
          {
            v53 = -1;
          }

          v54 = v53 & *(v13 + 64);
          v55 = (v52 + 63) >> 6;
          v71 = v55;
          if (v54)
          {
            do
            {
              v56 = __clz(__rbit64(v54));
              v72 = (v54 - 1) & v54;
LABEL_45:
              v59 = 16 * (v56 | (v51 << 6));
              v60 = (*(v13 + 48) + v59);
              v62 = *v60;
              v61 = v60[1];
              v63 = (*(v13 + 56) + v59);
              v64 = *v63;
              v65 = v63[1];
              v66 = (*(v14 + 48) + v59);
              *v66 = v62;
              v66[1] = v61;
              v67 = (*(v14 + 56) + v59);
              *v67 = v64;
              v67[1] = v65;

              v55 = v71;
              v54 = v72;
            }

            while (v72);
          }

          v57 = v51;
          while (1)
          {
            v51 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_57;
            }

            if (v51 >= v55)
            {
              break;
            }

            v58 = *(v13 + 64 + 8 * v51);
            ++v57;
            if (v58)
            {
              v56 = __clz(__rbit64(v58));
              v72 = (v58 - 1) & v58;
              goto LABEL_45;
            }
          }
        }

        v22 = v41;
      }

      v42 = v74;
      v45 = v75;
      if ((v40 & 1) == 0)
      {
LABEL_29:
        specialized _NativeDictionary._insert(at:key:value:)(v36, v42, v22, v45, v33, v14);
        goto LABEL_30;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
      v14 = v13;
      v42 = v74;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v22);
      if ((v40 & 1) != (v44 & 1))
      {
        goto LABEL_59;
      }

      v36 = v43;
      v45 = v75;
      if ((v40 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v46 = (*(v14 + 56) + 16 * v36);
    *v46 = v45;
    v46[1] = v33;

LABEL_30:
    v10 = v14;
    v11 = v73;
LABEL_16:
    ++v12;
    v13 = v14;
  }

  while (v12 != v11);
  v68 = *(v4 + 2);
  if (v68)
  {
    v69 = 32;
    do
    {
      free(*&v4[v69]);
      v69 += 8;
      --v68;
    }

    while (v68);
  }

LABEL_53:

  return v10;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void *NSKeyValuePropertyForIsaAndKeyPathInner(objc_class *a1, void *a2, const __CFSet *a3)
{
  value[3] = *MEMORY[0x1E69E9840];
  v5 = _NSKeyValueContainerClassForIsa(a1);
  value[0] = 0;
  value[1] = v5;
  value[2] = a2;
  v6 = CFSetGetValue(a3, value);
  if (v6)
  {
    return v6;
  }

  if (NSKeyValueProperties)
  {
    v6 = CFSetGetValue(NSKeyValueProperties, value);
    if (v6)
    {
      return v6;
    }
  }

  if ([a2 characterAtIndex:0] == 64)
  {
    v8 = [[NSKeyValueComputedProperty alloc] _initWithContainerClass:v5 keyPath:a2 propertiesBeingInitialized:a3];
  }

  else
  {
    v9 = [a2 rangeOfString:@"."];
    if (v10)
    {
      v8 = [[NSKeyValueNestedProperty alloc] _initWithContainerClass:v5 keyPath:a2 firstDotIndex:v9 propertiesBeingInitialized:a3];
    }

    else
    {
      v8 = [[NSKeyValueUnnestedProperty alloc] _initWithContainerClass:v5 key:a2 propertiesBeingInitialized:a3];
    }
  }

  v7 = v8;
  v11 = NSKeyValueProperties;
  if (!NSKeyValueProperties)
  {
    v12 = *(MEMORY[0x1E695E9F8] + 16);
    *&v14.version = *MEMORY[0x1E695E9F8];
    *&v14.release = v12;
    v14.equal = NSKeyValuePropertyIsEqual;
    v14.hash = NSKeyValuePropertyHash;
    v11 = CFSetCreateMutable(0, 0, &v14);
    NSKeyValueProperties = v11;
  }

  CFSetAddValue(v11, v7);
  CFSetRemoveValue(a3, v7);

  return v7;
}

IMP __coderAllocateClassForUnarchival_block_invoke()
{
  qword_1ED43EF40 = class_getMethodImplementation(MEMORY[0x1E69E58C0], sel_classForKeyedArchiver);
  qword_1ED43EF48 = class_getMethodImplementation(MEMORY[0x1E69E58C0], sel_classForArchiver);
  result = class_getMethodImplementation(MEMORY[0x1E69E58C0], sel_classForCoder);
  qword_1ED43EF50 = result;
  return result;
}

NSMapTable *__cdecl NSCreateMapTableWithZone(NSMapTableKeyCallBacks *keyCallBacks, NSMapTableValueCallBacks *valueCallBacks, NSUInteger capacity, NSZone *zone)
{
  v6 = objc_opt_self();
  v7 = malloc_default_zone();
  v8 = NSAllocateObject(v6, 0, v7);
  v9 = *&keyCallBacks->hash;
  v10 = *&keyCallBacks->describe;
  *(v8 + 24) = *&keyCallBacks->retain;
  *(v8 + 40) = v10;
  *(v8 + 8) = v9;
  describe = valueCallBacks->describe;
  *(v8 + 56) = *&valueCallBacks->retain;
  *(v8 + 9) = describe;
  result = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
  if (result)
  {
    result->super.isa = __NSMapTableCallback;
    result[1].super.isa = v8;
    v13 = 10248;
    if (!keyCallBacks->retain)
    {
      v13 = 8200;
    }

    if (valueCallBacks->retain)
    {
      v13 |= 0x200uLL;
    }

    if (keyCallBacks->release)
    {
      v13 |= 0x800uLL;
    }

    if (valueCallBacks->release)
    {
      v14 = v13 | 0x200;
    }

    else
    {
      v14 = v13;
    }

    *(v8 + 10) = CFBasicHashCreate(*MEMORY[0x1E695E4A8], v14, result);
    return v8;
  }

  else
  {
    qword_1EA7BB378 = "unable to allocate space for callbacks";
    __break(1u);
  }

  return result;
}

void *CFBasicHashCreate(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 & 8;
  v6 = a2 & 0x20;
  v7 = a2 & 0x80;
  if (!__kCFBasicHashTypeID)
  {
    __kCFBasicHashTypeID = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if ((a2 & 0x200) != 0)
  {
    result[3] |= 0x10uLL;
  }

  v9 = result[2] & 0xFFFFFFFFFFFFFFFCLL | (a2 >> 13) & 3;
  v10 = (a2 >> 12) & 8 | (a2 >> 5) & 0x40 | result[3] & 0xFFFFFFFFFFFFLL | 0x1000000000000;
  result[2] = v9;
  result[3] = v10;
  if (!v5)
  {
    v11 = 1;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v9 & 0xFFFFFFFFFFFFFFE7 | 8;
  result[2] = v9;
  v11 = 2;
  if (v6)
  {
LABEL_10:
    v9 = v9 & 0xFFFFFFFFFFFFFC7FLL | (v11 << 7);
    LOBYTE(v11) = v11 + 1;
    result[2] = v9;
  }

LABEL_11:
  if (v7)
  {
    result[2] = v9 & 0xFFFFFFFFFFFF1FFFLL | ((v11 & 7) << 13);
  }

  result[4] = a3;
  return result;
}

uint64_t CFBasicHashSetValue(uint64_t result, uint64_t a2)
{
  v3 = result;
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  v4 = *(result + 16);
  if ((v4 & 0x3F0000) != 0)
  {
    v5 = v4 & 3;
    if (v5 <= 1)
    {
      if (v5 != 1)
      {
        __break(1u);
        return result;
      }

      ___CFBasicHashFindBucket1(result, a2, 0, v10);
    }

    else if (v5 == 2)
    {
      ___CFBasicHashFindBucket2(result, a2, 0, v10);
    }

    else
    {
      ___CFBasicHashFindBucket3(result, a2, 0, v10);
    }
  }

  else
  {
    v6 = (*(result + 24) << 32) & 0xFFFFFF0000000000;
    *v10 = -1;
    *&v10[8] = v6;
    *&v10[16] = v6;
    memset(&v10[24], 0, 32);
  }

  v7[0] = *v10;
  v7[1] = *&v10[16];
  if (*&v10[40])
  {
    v8 = *&v10[32];
    v9 = *&v10[48];
    return __CFBasicHashReplaceValue(v3, v7, a2);
  }

  else
  {
    v8 = *&v10[32];
    v9 = *&v10[48];
    return __CFBasicHashAddValue(v3, v7, a2);
  }
}

void append4Bytes(void *a1, unsigned __int8 *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = (v3 >> 4) + 87;
  if (v3 < 0xA0)
  {
    LOBYTE(v4) = (*a2 >> 4) | 0x30;
  }

  bytes[0] = v4;
  v5 = v3 & 0xF;
  v6 = v3 & 0xF | 0x30;
  v7 = (v3 & 0xF) + 87;
  if (v5 < 0xA)
  {
    v7 = v6;
  }

  bytes[1] = v7;
  v8 = a2[1];
  v9 = (v8 >> 4) + 87;
  if (v8 < 0xA0)
  {
    LOBYTE(v9) = (a2[1] >> 4) | 0x30;
  }

  bytes[2] = v9;
  v10 = v8 & 0xF;
  v11 = v8 & 0xF | 0x30;
  v12 = (v8 & 0xF) + 87;
  if (v10 < 0xA)
  {
    v12 = v11;
  }

  bytes[3] = v12;
  v13 = a2[2];
  v14 = (v13 >> 4) + 87;
  if (v13 < 0xA0)
  {
    LOBYTE(v14) = (a2[2] >> 4) | 0x30;
  }

  bytes[4] = v14;
  v15 = v13 & 0xF;
  v16 = v13 & 0xF | 0x30;
  v17 = (v13 & 0xF) + 87;
  if (v15 < 0xA)
  {
    v17 = v16;
  }

  bytes[5] = v17;
  v18 = a2[3];
  v19 = (v18 >> 4) + 87;
  if (v18 < 0xA0)
  {
    LOBYTE(v19) = (a2[3] >> 4) | 0x30;
  }

  bytes[6] = v19;
  v20 = v18 & 0xF;
  v21 = v18 & 0xF | 0x30;
  v22 = (v18 & 0xF) + 87;
  if (v20 < 0xA)
  {
    v22 = v21;
  }

  bytes[7] = v22;
  bytes[8] = 32;
  v23 = CFStringCreateWithBytes(0, bytes, 9, 0x600u, 0);
  [a1 appendString:v23];
  CFRelease(v23);
}

uint64_t ResolveKeyPathsIntoExpressionSequence(void *a1, void *a2)
{
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 pathExpression];
    if (objc_opt_isKindOfClass())
    {
      a2 = v4;
    }

    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 pathExpression];
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
      {
        v6 = -[NSString initWithFormat:]([NSString alloc], "initWithFormat:", @"%@.%@", [v5 keyPath], objc_msgSend(a2, "keyPath"));
        v7 = [[NSKeyPathSpecifierExpression alloc] initWithObject:v6];
        [a1 operand];
        isKindOfClass = objc_opt_isKindOfClass();
        v9 = [NSKeyPathExpression alloc];
        v10 = ((isKindOfClass & 1) != 0 ? -[NSKeyPathExpression initWithKeyPath:](v9, "initWithKeyPath:", v7) : -[NSKeyPathExpression initWithOperand:andKeyPath:](v9, "initWithOperand:andKeyPath:", [a1 operand], v7));
        v13 = v10;

        if (v13)
        {
          return v13;
        }
      }
    }

    else if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
    {
      v13 = [[NSKeyPathExpression alloc] initWithKeyPath:a2];
      if (v13)
      {
        return v13;
      }
    }
  }

  else
  {
    objc_opt_isKindOfClass();
    objc_opt_isKindOfClass();
  }

  v11 = [NSKeyPathExpression alloc];

  return [(NSKeyPathExpression *)v11 initWithOperand:a1 andKeyPath:a2];
}

void setProtocolMetadata(Protocol *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    outCount = 0;
    v4 = protocol_copyProtocolList(a1, &outCount);
    if (v4)
    {
      v5 = v4;
      if (outCount)
      {
        v6 = 0;
        v7 = _MergedGlobals_155;
        do
        {
          if (v7 != -1)
          {
            dispatch_once(&_MergedGlobals_155, &__block_literal_global_89);
          }

          v8 = v5[v6];
          if (v8 == qword_1ED4402E0)
          {
            v7 = -1;
          }

          else
          {
            setProtocolMetadata(v8, a2);
            v7 = _MergedGlobals_155;
          }

          ++v6;
        }

        while (v6 < outCount);
      }

      free(v5);
    }

    v9 = protocol_copyMethodDescriptionList(a1, 1, 1, &outCount);
    if (v9)
    {
      v10 = v9;
      setProtocolMetdataWithMethods(a1, a2, v9, outCount);
      free(v10);
    }

    v11 = protocol_copyMethodDescriptionList(a1, 0, 1, &outCount);
    if (v11)
    {
      v12 = v11;
      setProtocolMetdataWithMethods(a1, a2, v11, outCount);
      free(v12);
    }
  }
}

void setProtocolMetadataWithSignature(const char *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  if (qword_1ED4402E8 != -1)
  {
    dispatch_once(&qword_1ED4402E8, &__block_literal_global_235_0);
  }

  if (a5)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = [a3 numberOfArguments];
  if (v11 < v10)
  {
    if (a5)
    {
      v26 = @"reply block of method";
    }

    else
    {
      v26 = @"method";
    }

    v25 = [NSString stringWithFormat:@"NSXPCInterface: Too few arguments to %@ (%s / %s)", v26, a2, sel_getName(a1)];
LABEL_44:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0]);
  }

  v12 = v11;
  if ((a5 & 1) == 0)
  {
    v13 = [a3 _argInfo:-1];
    v14 = v13[17];
    if ((v14 & 0x80) != 0)
    {
      v14 = *(*v13 + 34);
    }

    if ((v14 & 0x2000) != 0)
    {
      *(a4 + 32) = [a3 _classForObjectAtArgumentIndex:-1];
    }
  }

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v10 < v12)
  {
    v15 = 0;
    while (1)
    {
      v16 = [a3 _argInfo:v10];
      v17 = v16[17];
      if ((v17 & 0x80) != 0)
      {
        v17 = *(*v16 + 34);
      }

      if ((v17 & 0x2000) == 0)
      {
        goto LABEL_26;
      }

      if (v17 < 0)
      {
        break;
      }

      v18 = [a3 _classForObjectAtArgumentIndex:v10];
      if (!v18)
      {
        if ([a3 _protocolsForObjectAtArgumentIndex:v10])
        {
          goto LABEL_26;
        }

LABEL_30:
        v21 = qword_1ED4402F0;
        goto LABEL_27;
      }

      v19 = v18;
      if ([qword_1ED4402F8 containsObject:v18])
      {
        goto LABEL_30;
      }

      v20 = v28;
      v21 = v19;
LABEL_28:
      [v20 addObject:v21];
      if (v12 == ++v10)
      {
        goto LABEL_31;
      }
    }

    if (a5)
    {
      v25 = [NSString stringWithFormat:@"NSXPCInterface: Blocks as arguments to the reply block of method (%s / %s) are not allowed", a2, sel_getName(a1), v27];
      goto LABEL_44;
    }

    if (v15)
    {
      v25 = [NSString stringWithFormat:@"NSXPCInterface: Only one reply block is allowed per selector (%s / %s)", a2, sel_getName(a1), v27];
      goto LABEL_44;
    }

    v22 = [a3 _signatureForBlockAtArgumentIndex:v10];
    if (!v22)
    {
      v25 = [NSString stringWithFormat:@"NSXPCInterface: Unable to get block signature from Protocol data (%s / %s). Use of clang is required for NSXPCInterface.", a2, sel_getName(a1), v27];
      goto LABEL_44;
    }

    v23 = v22;
    *(a4 + 40) = v10;

    *a4 = v23;
    v15 = 1;
    setProtocolMetadataWithSignature(a1, a2, v23, a4, 1);
LABEL_26:
    v21 = [MEMORY[0x1E695DFD8] set];
LABEL_27:
    v20 = v28;
    goto LABEL_28;
  }

LABEL_31:
  if (a5)
  {
    v24 = 8;
  }

  else
  {
    v24 = 16;
  }

  *(a4 + v24) = [v28 copy];
}

__objc2_class **____immutablePlaceholderNSURL_block_invoke()
{
  if (_foundation_swift_nsurl_feature_enabled())
  {
    result = &___immutablePlaceholderSwiftURL;
  }

  else
  {
    result = [MEMORY[0x1E695DFF8] __unurl];
  }

  qword_1ED43FBF0 = result;
  return result;
}