uint64_t outlined copy of _FTSSequence.Element(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t _s10Foundation15_FileOperationsO011_linkOrCopyB033_0F974932CC9FBACA9047618113061023LL__4with8delegateySPys4Int8VG_AJSo13NSFileManagerCxtKAA04LinkeF8DelegateAELLRzlFZAC0dB0_2toAFySS_SSALtKFZ0obP0L_V_Tt3g5Tf4nndn_n(const char *a1, char *a2, char a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (swift_stdlib_isStackAllocationSafe())
  {
    result = specialized closure #1 in static _FileOperations._linkOrCopyFile<A>(_:_:with:delegate:)(v11, 1026, a2, a1, a3 & 1, a4);
    if (v4)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v10 = swift_slowAlloc();
    specialized closure #1 in static _FileOperations._linkOrCopyFile<A>(_:_:with:delegate:)(v10, 1026, a2, a1, a3 & 1, a4);
    return MEMORY[0x1865D2690](v10, -1, -1);
  }

  return result;
}

uint64_t _POSIXDirectoryContentsSequence.makeIterator()(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  LOBYTE(v6) = a3;
  v124 = *MEMORY[0x1E69E9840];
  type metadata accessor for _POSIXDirectoryContentsSequence.Iterator();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 64) = 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v11 = 3 * v10;
  if ((v10 * 3) >> 64 == (3 * v10) >> 63)
  {
    if (v11 < -1)
    {
      __break(1u);
      goto LABEL_181;
    }

    v4 = v11 + 1;

    if (v11 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v31 = swift_slowAlloc();
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v31, v4, a1, a2, &v122);
    MEMORY[0x1865D2690](v31, -1, -1);
    v117 = 0;
    v15 = v122;
    if (v122)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v14 = &v114 - v13;
  if (String._fileSystemRepresentation(into:)(&v114 - v13, v4, a1, a2))
  {
    v15 = opendir(v14);
  }

  else
  {
    v15 = 0;
  }

  v117 = 0;
  if (v15)
  {
LABEL_12:
    v16 = 0;
    *(v9 + 24) = a1;
    *(v9 + 32) = a2;
    *(v9 + 16) = v15;
    *(v9 + 56) = v6 & 1;
    v17 = (a4 + 40);
    v18 = *(a4 + 16);
    v4 = 0xE100000000000000;
    a2 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v19 = &v17[2 * v16];
    v20 = v16;
    while (v18 != v20)
    {
      if (v20 >= v18)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v10 = String.UTF8View._foreignCount()();
        goto LABEL_5;
      }

      v16 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_34;
      }

      a4 = *(v19 - 1);
      a1 = *v19;
      v21 = HIBYTE(*v19) & 0xF;
      if ((*v19 & 0x2000000000000000) == 0)
      {
        v21 = a4 & 0xFFFFFFFFFFFFLL;
      }

      ++v20;
      v19 += 2;
      if (v21)
      {

        String.index(before:)();
        if (String.subscript.getter() == 47 && v22 == 0xE100000000000000)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            v122 = a4;
            v123 = a1;

            MEMORY[0x1865CB0E0](47, 0xE100000000000000);

            a4 = v122;
            a1 = v123;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16) + 1, 1, a2);
        }

        v26 = *(a2 + 16);
        v25 = *(a2 + 24);
        v6 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, a2);
        }

        *(a2 + 16) = v6;
        v27 = a2 + 16 * v26;
        *(v27 + 32) = a4;
        *(v27 + 40) = a1;
        goto LABEL_13;
      }
    }

    v122 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    *(v9 + 40) = v28;
    *(v9 + 48) = v30;
    return v9;
  }

LABEL_39:
  *(v9 + 24) = 0;
  *(v9 + 32) = 0xE000000000000000;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0xE000000000000000;
  *(v9 + 56) = 0;
  v32 = MEMORY[0x1865CA7A0]();
  LODWORD(v33) = v32;
  v34 = 0x1E69EE000;
  if (v32 > 26)
  {
    if (v32 == 27)
    {
      v35 = 263;
      goto LABEL_52;
    }

    if (v32 != 63)
    {
      if (v32 == 102)
      {
        v36 = 0;
        v37 = 256;
        goto LABEL_165;
      }

LABEL_49:
      v35 = 256;
      goto LABEL_52;
    }

    v35 = 258;
  }

  else
  {
    if (v32 == 1)
    {
LABEL_43:
      v35 = 257;
      goto LABEL_52;
    }

    if (v32 != 2)
    {
      if (v32 == 13)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }

    v35 = 260;
  }

LABEL_52:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v39 = @"NSPOSIXErrorDomain";
    v40 = v39;
    v115 = v35;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v39);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v42 = v117;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v117 = v42;
            v34 = 0x1E69EE000;

            goto LABEL_86;
          }

          goto LABEL_58;
        }

        v46 = [(__CFString *)v40 UTF8String];
        if (!v46)
        {
          __break(1u);
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        String.init(utf8String:)(v46);
        if (v47)
        {
          goto LABEL_70;
        }

        __break(1u);
      }

      v120 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v48)
      {
        [(__CFString *)v40 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_86;
      }

      goto LABEL_70;
    }

LABEL_58:
    LOBYTE(v118) = 0;
    v122 = 0;
    LOBYTE(v120) = 0;
    v121 = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v44 = v40;
      String.init(_nativeStorage:)();
      if (v45 || (v122 = [(__CFString *)v44 length]) == 0)
      {

        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (v122)
    {
      if (v121 == 1)
      {
        if (v118)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_86:
        v53 = POSIXErrorCode.rawValue.getter();
        v54 = objc_allocWithZone(*(v34 + 960));
        v55 = String._bridgeToObjectiveCImpl()();

        v36 = [v54 initWithDomain:v55 code:v53 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v56 = [(DIR *)v36 domain];
        if (!v56)
        {
          v116 = 0;
          v62 = 0xE000000000000000;
          v34 = v117;
          goto LABEL_125;
        }

        v57 = v56;
        v58 = _objc_isTaggedPointer(v56);
        v59 = v57;
        v33 = v59;
        v34 = v117;
        if (v58)
        {
          v60 = _objc_getTaggedPointerTag(v59);
          switch(v60)
          {
            case 0:
              v120 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v69 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v70)
              {
                [(__CFString *)v33 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v62 = v119;
                v116 = v118;
LABEL_124:

                goto LABEL_125;
              }

              v62 = v70;
              goto LABEL_119;
            case 0x16:
              v67 = [(__CFString *)v33 UTF8String];
              if (!v67)
              {
LABEL_184:
                __break(1u);
                goto LABEL_185;
              }

              v116 = String.init(utf8String:)(v67);
              if (!v68)
              {
LABEL_185:
                __break(1u);
                goto LABEL_186;
              }

              v62 = v68;
              goto LABEL_120;
            case 2:
              MEMORY[0x1EEE9AC00](v60);
              v116 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v62 = v61;

LABEL_125:
              v75 = v40;
              v33 = v75;
              if (!isTaggedPointer)
              {
                goto LABEL_130;
              }

              v76 = _objc_getTaggedPointerTag(v75);
              if (!v76)
              {
                goto LABEL_142;
              }

              if (v76 != 22)
              {
                if (v76 == 2)
                {
                  MEMORY[0x1EEE9AC00](v76);
                  v77 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v79 = v78;

                  goto LABEL_160;
                }

LABEL_130:
                LOBYTE(v118) = 0;
                v122 = 0;
                LOBYTE(v120) = 0;
                v121 = 0;
                v80 = __CFStringIsCF();
                if (v80)
                {
                  if (v122)
                  {
                    if (v121 == 1)
                    {
                      if (v118)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v87 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_159;
                    }

                    if (v120)
                    {
                      if (v118 != 1)
                      {
                        v80 = [(__CFString *)v33 lengthOfBytesUsingEncoding:4];
                      }

                      MEMORY[0x1EEE9AC00](v80);
                      v89 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v79 = v90;
                      v91 = HIBYTE(v90) & 0xF;
                      if ((v90 & 0x2000000000000000) == 0)
                      {
                        v91 = v89 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v91)
                      {
                        v77 = v89;

                        goto LABEL_160;
                      }
                    }

LABEL_158:
                    v87 = String.init(_cocoaString:)();
LABEL_159:
                    v77 = v87;
                    v79 = v88;
LABEL_160:
                    if (v116 == v77 && v62 == v79)
                    {

LABEL_164:
                      v37 = v115;
LABEL_165:

                      if (_foundation_swift_url_feature_enabled())
                      {

                        v93 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a1, a2);
                        v95 = v94;

                        LOBYTE(v118) = 3;
                        type metadata accessor for _SwiftURL();
                        v122 = 0;
                        v123 = 0;
                        swift_allocObject();
                        _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v93, v95, 0, &v118, &v122);
                        v96 = _SwiftURL.convertingFileReference()();
                        v98 = v97;
                      }

                      else
                      {
                        v99 = (specialized BidirectionalCollection.last.getter(a1, a2) & 0x1FF) == 47;
                        objc_allocWithZone(type metadata accessor for _BridgedURL());

                        v100 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a1, a2, v99);
                        if (v100)
                        {
                          v101 = v100;
                          v96 = _BridgedURL.convertingFileReference()();
                          v98 = v102;
                        }

                        else
                        {

                          v96 = 0;
                          v98 = 0;
                        }
                      }

                      v103 = String._bridgeToObjectiveCImpl()();

                      if (v96)
                      {
                        ObjectType = swift_getObjectType();
                        v105 = (*(v98 + 432))(ObjectType, v98);
                        swift_unknownObjectRelease();
                        if (v36)
                        {
LABEL_172:
                          v122 = v36;
                          lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                          v36 = v36;
                          v106 = _getErrorEmbeddedNSError<A>(_:)();

                          if (v106)
                          {
                          }

                          else
                          {
                            swift_allocError();
                            *v108 = v36;
                          }

                          v107 = _swift_stdlib_bridgeErrorToNSError();
                          goto LABEL_178;
                        }
                      }

                      else
                      {
                        v105 = 0;
                        if (v36)
                        {
                          goto LABEL_172;
                        }
                      }

                      v107 = 0;
LABEL_178:
                      v109 = objc_opt_self();
                      v110 = [v109 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                      swift_unknownObjectRelease();

                      swift_unknownObjectRelease();
                      v111 = *(v9 + 64);
                      *(v9 + 64) = v110;

                      return v9;
                    }

                    v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v92)
                    {
                      goto LABEL_164;
                    }

LABEL_181:
                    __break(1u);
                  }
                }

                else
                {
                  v81 = v33;
                  v82 = String.init(_nativeStorage:)();
                  if (v83)
                  {
                    v77 = v82;
                    v79 = v83;

                    goto LABEL_160;
                  }

                  v122 = [(__CFString *)v81 length];
                  if (v122)
                  {
                    goto LABEL_158;
                  }
                }

                v77 = 0;
                v79 = 0xE000000000000000;
                goto LABEL_160;
              }

              v84 = [(__CFString *)v33 UTF8String];
              if (v84)
              {
                v85 = String.init(utf8String:)(v84);
                if (v86)
                {
                  goto LABEL_143;
                }

                __break(1u);
LABEL_142:
                v120 = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v85 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v86)
                {
                  [(__CFString *)v33 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v77 = v118;
                  v79 = v119;
                  goto LABEL_160;
                }

LABEL_143:
                v77 = v85;
                v79 = v86;

                goto LABEL_160;
              }

              goto LABEL_183;
          }
        }

        LOBYTE(v118) = 0;
        v122 = 0;
        LOBYTE(v120) = 0;
        v121 = 0;
        v63 = __CFStringIsCF();
        if (v63)
        {
          if (v122)
          {
            if (v121 == 1)
            {
              if (v118)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v71 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_123;
            }

            if (v120)
            {
              if (v118 != 1)
              {
                v63 = [(__CFString *)v33 lengthOfBytesUsingEncoding:4];
              }

              MEMORY[0x1EEE9AC00](v63);
              v69 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v62 = v73;
              v74 = HIBYTE(v73) & 0xF;
              if ((v73 & 0x2000000000000000) == 0)
              {
                v74 = v69 & 0xFFFFFFFFFFFFLL;
              }

              if (v74)
              {
LABEL_119:
                v116 = v69;
LABEL_120:

                goto LABEL_124;
              }
            }

LABEL_122:
            v71 = String.init(_cocoaString:)();
LABEL_123:
            v116 = v71;
            v62 = v72;
            goto LABEL_124;
          }
        }

        else
        {
          v64 = v33;
          v65 = String.init(_nativeStorage:)();
          if (v66)
          {
            v62 = v66;
            v116 = v65;

            goto LABEL_125;
          }

          v122 = [(__CFString *)v64 length];
          if (v122)
          {
            goto LABEL_122;
          }
        }

        v116 = 0;
        v62 = 0xE000000000000000;
        goto LABEL_125;
      }

      if (v120)
      {
        if (v118 != 1)
        {
          IsCF = [(__CFString *)v40 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v49 = v117;
        v50 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v117 = v49;
        v52 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v52 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {

          v34 = 0x1E69EE000;
          goto LABEL_86;
        }

        v34 = 0x1E69EE000uLL;
      }

LABEL_85:
      String.init(_cocoaString:)();
      goto LABEL_86;
    }

LABEL_70:

    goto LABEL_86;
  }

LABEL_186:
  v122 = 0;
  v123 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v122 = 0xD000000000000014;
  v123 = 0x80000001814813E0;
  LODWORD(v118) = v33;
  v113 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v113);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t protocol witness for IteratorProtocol.next() in conformance _FTSSequence.Iterator@<X0>(uint64_t a1@<X8>)
{
  result = _FTSSequence.Iterator.next()();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _FTSSequence@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  type metadata accessor for _FTSSequence.Iterator();
  v5 = swift_allocObject();
  result = _FTSSequence.Iterator.init(_:_:)(v3, v4);
  *a1 = v5;
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _FTSSequence(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 12))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _FTSSequence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation12_FTSSequenceV8IteratorC5StateO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t getEnumTagSinglePayload for _FTSSequence.Iterator.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _FTSSequence.Iterator.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for _FTSSequence.Iterator.State(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

double protocol witness for IteratorProtocol.next() in conformance _POSIXDirectoryContentsSequence.Iterator@<D0>(uint64_t a1@<X8>)
{
  _POSIXDirectoryContentsSequence.Iterator.next()(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _POSIXDirectoryContentsSequence@<X0>(uint64_t *a1@<X8>)
{
  v3 = _POSIXDirectoryContentsSequence.makeIterator()(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _POSIXDirectoryContentsSequence()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));

  return v1;
}

uint64_t getEnumTagSinglePayload for _POSIXDirectoryContentsSequence.Iterator.Element(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for _POSIXDirectoryContentsSequence.Iterator.Element(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _FTSSequence.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _FTSSequence.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _FTSSequence.Iterator and conformance _FTSSequence.Iterator(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _FTSSequence.Element.SwiftFTSENT(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _FTSSequence.Element.SwiftFTSENT(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t BinaryInteger.numericStringRepresentation.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v8 - v2;
  dispatch thunk of BinaryInteger.words.getter();
  v4 = dispatch thunk of static BinaryInteger.isSigned.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v3, v4 & 1, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8));
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v6;
}

unint64_t numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = dispatch thunk of Collection.count.getter();
  if ((isStackAllocationSafe & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v9 = isStackAllocationSafe;
  if (isStackAllocationSafe >> 60)
  {
    goto LABEL_11;
  }

  if ((8 * isStackAllocationSafe) > 1024)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v14 = swift_slowAlloc();
      v15 = a2 & 1;
      v16 = v14;
      closure #1 in numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v14, v9, a1, v15, a3, a4, v18);
      MEMORY[0x1865D2690](v16, -1, -1);
      return v18[0];
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v11 = (&v18[-1] - v10);
  v12 = specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a1, &v18[-1] - v10, v9, a3, a4);
  if (v12 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return numericStringRepresentationForMutableBinaryInteger(words:isSigned:)(v11, v12, a2 & 1);
}

uint64_t closure #1 in numericStringRepresentationForBinaryInteger<A>(words:isSigned:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a3, a1, a2, a5, a6);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = numericStringRepresentationForMutableBinaryInteger(words:isSigned:)(a1, result, a4 & 1);
    *a7 = result;
    a7[1] = v11;
  }

  return result;
}

unint64_t numericStringRepresentationForMutableBinaryInteger(words:isSigned:)(void *a1, uint64_t a2, char a3)
{
  v4 = 0;
  v17[2] = *MEMORY[0x1E69E9840];
  v17[0] = a1;
  v17[1] = a2;
  if ((a3 & 1) != 0 && a2)
  {
    if ((a1[a2 - 1] & 0x8000000000000000) != 0)
    {
      if (a2 < 0)
      {
        goto LABEL_23;
      }

      v5 = 1;
      v6 = a2;
      do
      {
        v7 = v5 & 1;
        v8 = ~*a1;
        v9 = __CFADD__(v8, v7);
        v10 = v8 + v7;
        v5 = v9;
        *a1++ = v10;
        --v6;
      }

      while (v6);
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  if ((a2 - 0x200000000000000) >> 58 == 63)
  {
    isStackAllocationSafe = maxDecimalDigitCountForUnsignedInteger(bitWidth:)(a2 << 6);
    v3 = isStackAllocationSafe + v4;
    if (!__OFADD__(isStackAllocationSafe, v4))
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        if (v3 <= 1024)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v14 = swift_slowAlloc();
    closure #1 in numericStringRepresentationForMutableBinaryInteger(words:isSigned:)(v14, v3, v17, v4, &v16);
    MEMORY[0x1865D2690](v14, -1, -1);
    return v16;
  }

LABEL_16:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  closure #1 in numericStringRepresentationForMutableBinaryInteger(words:isSigned:)(&v15 - v12, v3, v17, v4, &v16);
  return v16;
}

uint64_t maxDecimalDigitCountForUnsignedInteger(bitWidth:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *&result = COERCE_DOUBLE(_sSd7exactlySdSgx_tcSzRzlufCs6UInt64V_Tt0g5());
  if (v1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v2 = *&result * 0.301029996;
  if (COERCE__INT64(fabs(*&result * 0.301029996)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

unint64_t closure #1 in numericStringRepresentationForMutableBinaryInteger(words:isSigned:)@<X0>(unint64_t __b@<X0>, int64_t __len@<X2>, uint64_t a3@<X3>, char a4@<W4>, unint64_t *a5@<X8>)
{
  v8 = __b;
  if (__b && __len)
  {
    if (__len < 1)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    memset(__b, 48, __len);
  }

  __b = formQuotientWithRemainderForUnsignedInteger(words:dividingBy:)(*a3, *(a3 + 8), 0x8AC7230489E80000);
  v9 = *(a3 + 8);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = __len;
    while (1)
    {
      v11 = v9;
      do
      {
        v12 = v11;
        if (!v11)
        {
          break;
        }

        --v11;
      }

      while (!*(*a3 - 8 + 8 * v12));
      if (v9 < v12)
      {
        break;
      }

      *(a3 + 8) = v12;
      v13 = v10;
      do
      {
        v9 = v13 - 1;
        if (v13 < 1)
        {
          __break(1u);
          goto LABEL_23;
        }

        *(v8 - 1 + v13--) = (__b % 0xA) | 0x30;
        v14 = __b > 9;
        __b /= 0xAuLL;
      }

      while (v14);
      v15 = *(a3 + 8);
      if (!v15)
      {
        goto LABEL_17;
      }

      v10 -= 19;
      __b = formQuotientWithRemainderForUnsignedInteger(words:dividingBy:)(*a3, v15, 0x8AC7230489E80000);
      v9 = *(a3 + 8);
      if (v9 < 0)
      {
        goto LABEL_16;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  if ((a4 & 1) == 0)
  {
LABEL_20:
    __b = __len - v9;
    if (__len >= v9)
    {
      MEMORY[0x1EEE9AC00](__b);
      __b = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      *a5 = __b;
      a5[1] = v17;
      return __b;
    }

    goto LABEL_24;
  }

  if (v9)
  {
    v16 = v8 + v9--;
    *(v16 - 1) = 45;
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return __b;
}

uint64_t formQuotientWithRemainderForUnsignedInteger(words:dividingBy:)(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return a2;
  }

  if (a3)
  {
    v4 = a2;
    a2 = 0;
    v5 = result - 8;
    while (1)
    {
      v6 = v4 - 1;
      if (v4 < 1)
      {
        break;
      }

      if (a2 >= a3)
      {
        goto LABEL_9;
      }

      v7 = *(v5 + 8 * v4);
      result = __udivti3();
      a2 = v7 - result * a3;
      *(v5 + 8 * v4--) = result;
      if (!v6)
      {
        return a2;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *closure #2 in closure #1 in numericStringRepresentationForMutableBinaryInteger(words:isSigned:)(void *result, int64_t a2, void *__src, int64_t __n)
{
  if (!__src || !__n)
  {
    return __n;
  }

  if (a2 >= __n)
  {
    memcpy(result, __src, __n);
    return __n;
  }

  __break(1u);
  return result;
}

void *partial apply for closure #2 in closure #1 in numericStringRepresentationForMutableBinaryInteger(words:isSigned:)(void *result, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return v5;
  }

  if (v5 <= a2)
  {
    memcpy(result, v4, *(v2 + 24));
    return v5;
  }

  __break(1u);
  return result;
}

Foundation::Date __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Date.HTTPFormatStyle.parse(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v150 = *MEMORY[0x1E69E9840];
  Date.HTTPFormatStyle.parse(_:in:)(a1._countAndFlagsBits, a1._object, v148);
  if ((v148[1].tv_sec & 1) == 0)
  {
    *&result._time = v148[0].tv_nsec;
    *v5 = v148[0].tv_nsec;
    return result;
  }

  v143 = v2;
  v148[0].tv_sec = 0;
  v148[0].tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, v148);
  v7 = *&v148[0].tv_sec;
  tv_nsec = v148[0].tv_nsec;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v8 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  tv_sec = v8[1].tv_sec;
  if (*(tv_sec + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v11 & 1) != 0))
  {
    v12 = (*(tv_sec + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(&v8[1].tv_nsec);
    if (v13)
    {
      goto LABEL_29;
    }
  }

  else
  {
    os_unfair_lock_unlock(&v8[1].tv_nsec);
  }

  *&v142 = countAndFlagsBits;
  type metadata accessor for _CalendarGregorian();
  v141 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_181232B40;
  *(v16 + 32) = xmmword_181232B50;
  *(v16 + 48) = 2299161;
  *(v16 + 80) = 0x4290000000000000;
  *(v16 + 96) = 0;
  v17 = (v16 + 96);
  *(v16 + 128) = 0;
  *(v16 + 104) = 0;
  *(v16 + 136) = 1;
  *(v16 + 144) = 0;
  *(v16 + 152) = 1;
  if (one-time initialization token for cache == -1)
  {
    goto LABEL_11;
  }

LABEL_191:
  swift_once();
LABEL_11:
  v18 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v19 = *(v18 + 32);
  if (v19)
  {
    v20 = *(v18 + 40);
    v21 = *(v18 + 32);
  }

  else
  {
    v21 = *(v18 + 16);
    if (v21)
    {
      v20 = *(v18 + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      TimeZoneCache.State.findCurrentTimeZone()(v148);
      v21 = v148[0].tv_sec;
      v20 = v148[0].tv_nsec;
      *(v18 + 16) = v148[0].tv_sec;
      *(v18 + 24) = v20;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v18 + 120));
  *(v16 + 112) = v21;
  *(v16 + 120) = v20;
  *(v16 + 56) = xmmword_181232B60;
  *(v16 + 72) = 0xC208951B28000000;
  *v17 = 0;
  v17[1] = 0;
  swift_unknownObjectRelease();
  *(v16 + 88) = 0;
  os_unfair_lock_lock(&v8[1].tv_nsec);
  v22 = v8[1].tv_sec;
  if (*(v22 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v24)
    {
      v14 = *(*(v22 + 56) + 16 * v23 + 8);
      countAndFlagsBits = v142;
      goto LABEL_28;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v148[0].tv_sec = v8[1].tv_sec;
  v26 = v148[0].tv_sec;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v29 = v26[2];
  v30 = (v28 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (!v31)
  {
    LOBYTE(v19) = v28;
    if (v26[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_194;
      }

      v33 = v26;
      v14 = v141;
      countAndFlagsBits = v142;
      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native);
      v33 = v148[0].tv_sec;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v19 & 1) != (v34 & 1))
      {
LABEL_217:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v14 = v141;
      countAndFlagsBits = v142;
      if ((v19 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

LABEL_23:
    v35 = (*(v33 + 56) + 16 * v27);
    *v35 = v16;
    v35[1] = v14;
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_194:
    v139 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v125 = static _DictionaryStorage.copy(original:)();
    v33 = v125;
    if (v26[2])
    {
      v126 = (v125 + 64);
      v127 = (v26 + 8);
      v128 = ((1 << *(v33 + 32)) + 63) >> 6;
      if (v33 != v26 || v126 >= &v127[8 * v128])
      {
        memmove(v126, v26 + 8, 8 * v128);
      }

      v129 = 0;
      *(v33 + 16) = v26[2];
      v130 = 1 << *(v26 + 32);
      v131 = -1;
      if (v130 < 64)
      {
        v131 = ~(-1 << v130);
      }

      v132 = (v130 + 63) >> 6;
      v133 = v131 & v26[8];
      if (v133)
      {
        do
        {
          v134 = __clz(__rbit64(v133));
          v140 = (v133 - 1) & v133;
LABEL_207:
          v137 = v134 | (v129 << 6);
          v138 = *(v26[7] + 16 * v137);
          *(*(v33 + 48) + v137) = *(v26[6] + v137);
          *(*(v33 + 56) + 16 * v137) = v138;
          swift_unknownObjectRetain();
          v133 = v140;
        }

        while (v140);
      }

      v135 = v129;
      while (1)
      {
        v129 = v135 + 1;
        if (__OFADD__(v135, 1))
        {
          break;
        }

        if (v129 >= v132)
        {
          goto LABEL_209;
        }

        v136 = *&v127[8 * v129];
        ++v135;
        if (v136)
        {
          v134 = __clz(__rbit64(v136));
          v140 = (v136 - 1) & v136;
          goto LABEL_207;
        }
      }

      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      swift_willThrow();
      __break(1u);
      goto LABEL_217;
    }

LABEL_209:

    v27 = v139;
    v14 = v141;
    countAndFlagsBits = v142;
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_26:
    specialized _NativeDictionary._insert(at:key:value:)(v27, 0, v16, v33);
LABEL_27:
    v8[1].tv_sec = v33;
LABEL_28:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(&v8[1].tv_nsec);

LABEL_29:
    v36 = tv_nsec;
    v37 = *&v7 + -978307200.0;
    v7 = v36 * 0.000000001;
    v38 = one-time initialization token for cache;
    swift_unknownObjectRetain();
    if (v38 != -1)
    {
      swift_once();
    }

    v39 = v37 + v7;
    v146 = 254;
    v40 = one-time initialization token for validCalendarRange;
    v142 = xmmword_1ED440468;
    swift_unknownObjectRetain();
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v39)
    {
      v41 = v39;
    }

    if (*&static Date.validCalendarRange >= v41)
    {
      tv_nsec = *&static Date.validCalendarRange;
    }

    else
    {
      *&tv_nsec = v41;
    }

    ObjectType = swift_getObjectType();
    v145 = tv_nsec;
    v144 = v142;
    (*(v14 + 184))(v148, &v146, &v145, &v144, ObjectType, v14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    memcpy(v149, v148, 0x11BuLL);
    closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v147, 33, v149, v148);
    v16 = v143;
    if (v143)
    {
      goto LABEL_216;
    }

    v43 = v148[0].tv_sec;
    v44 = v148[0].tv_nsec;
    outlined destroy of DateComponents(v149);
    v148[0].tv_sec = 0;
    v148[0].tv_nsec = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](countAndFlagsBits, object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v43, v44);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v46 = v148[0].tv_sec;
    v45 = v148[0].tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v47 = swift_allocObject();
    LOBYTE(v43) = _objc_isTaggedPointer(@"NSDebugDescription");
    v48 = @"NSDebugDescription";
    v49 = v48;
    v143 = v44;
    if ((v43 & 1) == 0)
    {
      goto LABEL_44;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v48);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v51 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v53 = v52;

          goto LABEL_75;
        }

LABEL_44:
        LOBYTE(v144) = 0;
        v148[0].tv_sec = 0;
        LOBYTE(v146) = 0;
        LOBYTE(v145) = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          if (!v148[0].tv_sec)
          {

LABEL_52:
            v51 = 0;
            v53 = 0xE000000000000000;
            goto LABEL_75;
          }

          if (v145 == 1)
          {
            if (v144)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v61 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_74;
          }

          if (v146)
          {
            if (v144 != 1)
            {
              IsCF = [(__CFString *)v49 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v53 = v64;
            v65 = HIBYTE(v64) & 0xF;
            if ((v64 & 0x2000000000000000) == 0)
            {
              v65 = v63 & 0xFFFFFFFFFFFFLL;
            }

            if (v65)
            {
              v51 = v63;
              goto LABEL_58;
            }
          }
        }

        else
        {
          v55 = v49;
          v56 = String.init(_nativeStorage:)();
          if (v57)
          {
            v51 = v56;
            v53 = v57;

            goto LABEL_75;
          }

          v148[0].tv_sec = [(__CFString *)v55 length];
          if (!v148[0].tv_sec)
          {

            goto LABEL_52;
          }
        }

        v61 = String.init(_cocoaString:)();
LABEL_74:
        v51 = v61;
        v53 = v62;
        goto LABEL_75;
      }

      v58 = [(__CFString *)v49 UTF8String];
      if (!v58)
      {
        goto LABEL_212;
      }

      v59 = String.init(utf8String:)(v58);
      if (v60)
      {
LABEL_57:
        v51 = v59;
        v53 = v60;
LABEL_58:

        goto LABEL_75;
      }

      __break(1u);
    }

    LOWORD(v146) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v59 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v60)
    {
      goto LABEL_57;
    }

    [(__CFString *)v49 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v53 = *(&v144 + 1);
    v51 = v144;
LABEL_75:
    v47[4] = v51;
    v47[5] = v53;
    v47[9] = MEMORY[0x1E69E6158];
    v47[6] = v46;
    v47[7] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v17 = static _DictionaryStorage.allocate(capacity:)();
    v8 = v148;
    outlined init with copy of FloatingPointRoundingRule?((v47 + 4), v148, &_sSS_yptMd);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?((v47 + 4), &_sSS_yptMd);
    swift_deallocClassInstance();
    object = v148[0].tv_sec;
    v66 = v148[0].tv_nsec;
    v67 = specialized __RawDictionaryStorage.find<A>(_:)(v148[0].tv_sec, v148[0].tv_nsec);
    v69 = v68;

    if (v69)
    {
      __break(1u);
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    v17[(v67 >> 6) + 8] |= 1 << v67;
    v70 = (v17[6] + 16 * v67);
    *v70 = object;
    v70[1] = v66;
    outlined init with take of Any(&v148[1].tv_sec, (v17[7] + 32 * v67));
    v71 = v17[2];
    v31 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v31)
    {
      goto LABEL_190;
    }

    v17[2] = v72;
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v74 = @"NSCocoaErrorDomain";
    v75 = v74;
    if (isTaggedPointer)
    {
      v76 = _objc_getTaggedPointerTag(v74);
      switch(v76)
      {
        case 0:
          goto LABEL_93;
        case 0x16:
          v80 = [(__CFString *)v75 UTF8String];
          if (!v80)
          {
            goto LABEL_213;
          }

          String.init(utf8String:)(v80);
          if (!v81)
          {
            __break(1u);
LABEL_93:
            LOWORD(v146) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v82)
            {
              [(__CFString *)v75 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_110;
            }
          }

LABEL_107:

          goto LABEL_110;
        case 2:
          MEMORY[0x1EEE9AC00](v76);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_110;
      }
    }

    LOBYTE(v144) = 0;
    v148[0].tv_sec = 0;
    LOBYTE(v146) = 0;
    LOBYTE(v145) = 0;
    v77 = __CFStringIsCF();
    if (!v77)
    {
      v78 = v75;
      String.init(_nativeStorage:)();
      if (v79 || (v148[0].tv_sec = [(__CFString *)v78 length]) == 0)
      {

        goto LABEL_110;
      }

LABEL_109:
      String.init(_cocoaString:)();
      goto LABEL_110;
    }

    if (!v148[0].tv_sec)
    {
      goto LABEL_107;
    }

    if (v145 != 1)
    {
      if (v146)
      {
        if (v144 != 1)
        {
          v77 = [(__CFString *)v75 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](v77);
        v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v85 = HIBYTE(v84) & 0xF;
        if ((v84 & 0x2000000000000000) == 0)
        {
          v85 = v83 & 0xFFFFFFFFFFFFLL;
        }

        if (v85)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_109;
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
LABEL_110:
    v26 = objc_allocWithZone(NSError);
    v86 = String._bridgeToObjectiveCImpl()();

    v8 = [v26 initWithDomain:v86 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v87 = [(timespec *)v8 domain];
    if (!v87)
    {
      goto LABEL_124;
    }

    v88 = v87;
    v89 = _objc_isTaggedPointer(v87);
    v90 = v88;
    v26 = v90;
    if ((v89 & 1) == 0)
    {
      goto LABEL_116;
    }

    v91 = _objc_getTaggedPointerTag(v90);
    if (v91)
    {
      if (v91 != 22)
      {
        if (v91 == 2)
        {
          v92 = v8;
          MEMORY[0x1EEE9AC00](v91);
          v19 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v94 = v93;

LABEL_143:
          v8 = v92;
          goto LABEL_148;
        }

LABEL_116:
        LOBYTE(v144) = 0;
        v148[0].tv_sec = 0;
        LOBYTE(v146) = 0;
        LOBYTE(v145) = 0;
        v95 = __CFStringIsCF();
        if (v95)
        {
          if (!v148[0].tv_sec)
          {

LABEL_124:
            v19 = 0;
            v94 = 0xE000000000000000;
            goto LABEL_148;
          }

          if (v145 == 1)
          {
            if (v144)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v102 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_146;
          }

          if (v146)
          {
            v92 = v8;
            if (v144 != 1)
            {
              v95 = [v26 lengthOfBytesUsingEncoding_];
            }

            MEMORY[0x1EEE9AC00](v95);
            v104 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v94 = v105;
            v106 = HIBYTE(v105) & 0xF;
            if ((v105 & 0x2000000000000000) == 0)
            {
              v106 = v104 & 0xFFFFFFFFFFFFLL;
            }

            if (v106)
            {
              v19 = v104;

              goto LABEL_143;
            }
          }
        }

        else
        {
          v96 = v26;
          v97 = String.init(_nativeStorage:)();
          if (v98)
          {
            v19 = v97;
            v94 = v98;

            goto LABEL_148;
          }

          v148[0].tv_sec = [v96 length];
          if (!v148[0].tv_sec)
          {

            goto LABEL_124;
          }
        }

        v102 = String.init(_cocoaString:)();
LABEL_146:
        v19 = v102;
        v94 = v103;
        goto LABEL_147;
      }

      v99 = [v26 UTF8String];
      if (!v99)
      {
        goto LABEL_215;
      }

      v100 = String.init(utf8String:)(v99);
      if (v101)
      {
        goto LABEL_129;
      }

      __break(1u);
    }

    LOWORD(v146) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v100 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v101)
    {
      [v26 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v94 = *(&v144 + 1);
      v19 = v144;
      goto LABEL_147;
    }

LABEL_129:
    v19 = v100;
    v94 = v101;

LABEL_147:
LABEL_148:
    v107 = v75;
    object = v107;
    if (isTaggedPointer)
    {
      v108 = _objc_getTaggedPointerTag(v107);
      switch(v108)
      {
        case 0:
          goto LABEL_165;
        case 0x16:
          v117 = [object UTF8String];
          if (!v117)
          {
            goto LABEL_214;
          }

          v118 = String.init(utf8String:)(v117);
          if (!v119)
          {
            __break(1u);
LABEL_165:
            LOWORD(v146) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v118 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v119)
            {
              [object mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v112 = *(&v144 + 1);
              v110 = v144;
              goto LABEL_184;
            }
          }

          v110 = v118;
          v112 = v119;

          goto LABEL_184;
        case 2:
          v109 = v8;
          MEMORY[0x1EEE9AC00](v108);
          v110 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v112 = v111;

LABEL_180:
          v8 = v109;
          goto LABEL_184;
      }
    }

    LOBYTE(v144) = 0;
    v148[0].tv_sec = 0;
    LOBYTE(v146) = 0;
    LOBYTE(v145) = 0;
    v113 = __CFStringIsCF();
    if (v113)
    {
      if (v148[0].tv_sec)
      {
        if (v145 == 1)
        {
          if (v144)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v120 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_183;
        }

        if ((v146 & 1) == 0)
        {
          goto LABEL_182;
        }

        v109 = v8;
        if (v144 != 1)
        {
          v113 = [object lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](v113);
        v122 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v112 = v123;
        v124 = HIBYTE(v123) & 0xF;
        if ((v123 & 0x2000000000000000) == 0)
        {
          v124 = v122 & 0xFFFFFFFFFFFFLL;
        }

        if (!v124)
        {

LABEL_182:
          v120 = String.init(_cocoaString:)();
LABEL_183:
          v110 = v120;
          v112 = v121;
          goto LABEL_184;
        }

        v110 = v122;

        goto LABEL_180;
      }

      goto LABEL_161;
    }

    v114 = object;
    v115 = String.init(_nativeStorage:)();
    if (!v116)
    {
      v148[0].tv_sec = [v114 length];
      if (v148[0].tv_sec)
      {
        goto LABEL_182;
      }

LABEL_161:
      v110 = 0;
      v112 = 0xE000000000000000;
      goto LABEL_184;
    }

    v110 = v115;
    v112 = v116;

LABEL_184:
    if (v19 == v110 && v94 == v112)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_188;
    }
  }

LABEL_188:
  swift_willThrow();
  return result;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.HTTPFormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = Date.HTTPFormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

Swift::String __swiftcall Date.HTTPFormatStyle.format(_:)(Foundation::Date a1)
{
  v57[36] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v5 = *(v4 + 16);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v4 + 24));
    if (v10)
    {
      goto LABEL_39;
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 24));
  }

  v11 = type metadata accessor for _CalendarGregorian();
  v9 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  LOBYTE(v52) = 0;
  v57[0] = 0;
  v57[1] = 0;
  v56 = 0uLL;
  v54 = 0;
  v55 = 1;
  v12 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v52, v57, &v56, 0, 1, 0, 1, &v54);
  os_unfair_lock_lock((v4 + 24));
  v13 = *(v4 + 16);
  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v15 & 1) == 0))
  {
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57[0] = *(v4 + 16);
    v17 = v57[0];
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    v20 = *(v17 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v2 = v19;
      if (*(v17 + 24) < v23)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v24 = v57[0];
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(0);
        if ((v2 & 1) == (v25 & 1))
        {
          goto LABEL_17;
        }

        v18 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v17;
LABEL_17:
        if (v2)
        {
LABEL_18:
          v26 = (*(v24 + 56) + 16 * v18);
          *v26 = v12;
          v26[1] = v9;
          swift_unknownObjectRelease();
LABEL_37:
          *(v4 + 16) = v24;
          goto LABEL_38;
        }

LABEL_36:
        specialized _NativeDictionary._insert(at:key:value:)(v18, 0, v12, v24, v11, v9);
        goto LABEL_37;
      }
    }

    v50 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v27 = static _DictionaryStorage.copy(original:)();
    v24 = v27;
    if (*(v17 + 16))
    {
      v28 = (v27 + 64);
      v29 = ((1 << *(v24 + 32)) + 63) >> 6;
      if (v24 != v17 || v28 >= v17 + 64 + 8 * v29)
      {
        memmove(v28, (v17 + 64), 8 * v29);
      }

      v30 = 0;
      *(v24 + 16) = *(v17 + 16);
      v31 = 1 << *(v17 + 32);
      v32 = *(v17 + 64);
      v33 = -1;
      if (v31 < 64)
      {
        v33 = ~(-1 << v31);
      }

      v34 = v33 & v32;
      v35 = (v31 + 63) >> 6;
      if ((v33 & v32) != 0)
      {
        do
        {
          v36 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
LABEL_33:
          v39 = v36 | (v30 << 6);
          v40 = *(*(v17 + 56) + 16 * v39);
          *(*(v24 + 48) + v39) = *(*(v17 + 48) + v39);
          *(*(v24 + 56) + 16 * v39) = v40;
          swift_unknownObjectRetain();
        }

        while (v34);
      }

      v37 = v30;
      while (1)
      {
        v30 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
        }

        if (v30 >= v35)
        {
          break;
        }

        v38 = *(v17 + 64 + 8 * v30);
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v34 = (v38 - 1) & v38;
          goto LABEL_33;
        }
      }
    }

    v18 = v50;
    if (v2)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  v9 = *(*(v13 + 56) + 16 * v14 + 8);
LABEL_38:
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 24));

LABEL_39:
  v41 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v41 != -1)
  {
    swift_once();
  }

  v54 = 254;
  v42 = one-time initialization token for validCalendarRange;
  v51 = xmmword_1ED440468;
  swift_unknownObjectRetain();
  if (v42 != -1)
  {
    swift_once();
  }

  v43 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v3)
  {
    v43 = v3;
  }

  if (*&static Date.validCalendarRange >= v43)
  {
    v44 = *&static Date.validCalendarRange;
  }

  else
  {
    v44 = v43;
  }

  ObjectType = swift_getObjectType();
  v52 = v44;
  v56 = v51;
  (*(v9 + 184))(v57, &v54, &v52, &v56, ObjectType, v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v53, 33, v57, &v56);
  v46 = v56;
  outlined destroy of DateComponents(v57);
  v48 = *(&v46 + 1);
  v47 = v46;
  result._object = v48;
  result._countAndFlagsBits = v47;
  return result;
}

uint64_t DateComponents.HTTPFormatStyle.format(_:)(void *__src)
{
  v5 = *MEMORY[0x1E69E9840];
  memcpy(__dst, __src, 0x11BuLL);
  closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v3, 33, __dst, &v2);
  return v2;
}

uint64_t Date.HTTPFormatStyle.parse(_:in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = String.subscript.getter();
  v10 = v9;
  v112 = v6;
  v113 = v7;
  v114 = v8;
  v115 = v9;
  if ((v6 ^ v7) < 0x4000)
  {
    goto LABEL_89;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v8 = v114;
    v10 = v115;
    v6 = v112;
    v7 = v113;
  }

  v11 = v6 >> 16;
  v12 = v7 >> 16;
  v99 = v6;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v110 = v8;
    v111 = v10 & 0xFFFFFFFFFFFFFFLL;
    DateComponents.HTTPFormatStyle.components(from:in:)(a1, a2, &v110 + v11, v12 - v11, __src);
    memcpy(__dst, __src, 0x123uLL);
    if (one-time initialization token for cache == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v13 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    goto LABEL_7;
  }

  v13 = _StringObject.sharedUTF8.getter();
  if (!v13)
  {
    __break(1u);
LABEL_44:
    swift_once();
LABEL_14:
    v14 = qword_1ED440450;
    os_unfair_lock_lock((qword_1ED440450 + 24));
    v21 = *(v14 + 16);
    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v23 & 1) != 0))
    {
      v24 = (*(v21 + 56) + 16 * v22);
      v25 = *v24;
      v20 = v24[1];
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v14 + 24));
      if (v25)
      {
LABEL_81:
        ObjectType = swift_getObjectType();
        memcpy(v102, &__dst[1], 0x11BuLL);
        v78 = *(v20 + 176);
        outlined init with copy of DateComponents.HTTPFormatStyle.ComponentsParseResult(__dst, &v100);
        v78(&v106, v102, ObjectType, v20);
        outlined destroy of DateComponents.HTTPFormatStyle.ComponentsParseResult(__dst);
        swift_unknownObjectRelease();
        if (v107)
        {
LABEL_88:
          outlined destroy of DateComponents.HTTPFormatStyle.ComponentsParseResult(__dst);
LABEL_89:

          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 1;
          return result;
        }

        v79 = v106;
LABEL_91:
        outlined destroy of DateComponents.HTTPFormatStyle.ComponentsParseResult(__dst);
        v83 = __dst[0];

        v84 = (a1 >> 59) & 1;
        if ((a2 & 0x1000000000000000) == 0)
        {
          LOBYTE(v84) = 1;
        }

        v85 = v99;
        if ((v99 & 0xC) == 4 << v84)
        {
          v85 = _StringGuts._slowEnsureMatchingEncoding(_:)(v99, a1, a2);
          if ((a2 & 0x1000000000000000) == 0)
          {
LABEL_95:
            v86 = v83 + (v85 >> 16);
            if (__OFADD__(v83, v85 >> 16))
            {
              __break(1u);
            }

            else if ((v86 & 0x8000000000000000) == 0)
            {
              v87 = HIBYTE(a2) & 0xF;
              if ((a2 & 0x2000000000000000) == 0)
              {
                v87 = a1 & 0xFFFFFFFFFFFFLL;
              }

              if (v87 >= v86)
              {
                result = (v86 << 16) | 4;
LABEL_101:
                *a3 = result;
                *(a3 + 8) = v79;
                *(a3 + 16) = 0;
                return result;
              }

              goto LABEL_106;
            }

            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }
        }

        else if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_95;
        }

        result = MEMORY[0x1865CB180](v85, v83);
        goto LABEL_101;
      }
    }

    else
    {
      os_unfair_lock_unlock((v14 + 24));
    }

    v26 = type metadata accessor for _CalendarGregorian();
    v20 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
    v105 = 0;
    v100 = 0;
    v101 = 0;
    v102[0] = 0;
    v102[1] = 0;
    v103 = 0;
    v104 = 1;
    v98 = v26;
    v27 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v105, &v100, v102, 0, 1, 0, 1, &v103);
    os_unfair_lock_lock((v14 + 24));
    v28 = *(v14 + 16);
    if (*(v28 + 16))
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if (v30)
      {
        v20 = *(*(v28 + 56) + 16 * v29 + 8);
LABEL_80:
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v14 + 24));

        goto LABEL_81;
      }
    }

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v14 + 16);
    v36 = v100;
    v37 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    v39 = *(v36 + 16);
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (!v41)
    {
      if (*(v36 + 24) < v42)
      {
        v43 = v38;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
        v44 = v100;
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(0);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_109;
        }

        if ((v43 & 1) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_38;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = v36;
        if ((v38 & 1) == 0)
        {
LABEL_78:
          specialized _NativeDictionary._insert(at:key:value:)(v37, 0, v27, v44, v98, v20);
          goto LABEL_79;
        }

LABEL_38:
        v53 = (*(v44 + 56) + 16 * v37);
        *v53 = v27;
        v53[1] = v20;
        swift_unknownObjectRelease();
LABEL_79:
        *(v14 + 16) = v44;
        goto LABEL_80;
      }

LABEL_47:
      v90 = v38;
      v92 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
      v55 = static _DictionaryStorage.copy(original:)();
      v44 = v55;
      if (*(v36 + 16))
      {
        v56 = (v55 + 64);
        v94 = (v36 + 64);
        v57 = ((1 << *(v44 + 32)) + 63) >> 6;
        if (v44 != v36 || v56 >= &v94[8 * v57])
        {
          memmove(v56, v94, 8 * v57);
        }

        v58 = 0;
        *(v44 + 16) = *(v36 + 16);
        v59 = 1 << *(v36 + 32);
        v60 = -1;
        if (v59 < 64)
        {
          v60 = ~(-1 << v59);
        }

        v96 = v60 & *(v36 + 64);
        v88 = (v59 + 63) >> 6;
        while (v96)
        {
          v61 = __clz(__rbit64(v96));
          v96 &= v96 - 1;
LABEL_60:
          v64 = v61 | (v58 << 6);
          v65 = *(*(v36 + 56) + 16 * v64);
          *(*(v44 + 48) + v64) = *(*(v36 + 48) + v64);
          *(*(v44 + 56) + 16 * v64) = v65;
          swift_unknownObjectRetain();
        }

        v62 = v58;
        while (1)
        {
          v58 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_107;
          }

          if (v58 >= v88)
          {
            break;
          }

          v63 = *&v94[8 * v58];
          ++v62;
          if (v63)
          {
            v61 = __clz(__rbit64(v63));
            v96 = (v63 - 1) & v63;
            goto LABEL_60;
          }
        }
      }

      v37 = v92;
      if ((v90 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_7:
  DateComponents.HTTPFormatStyle.components(from:in:)(a1, a2, (v13 + v11), v12 - v11, __src);
  memcpy(__dst, __src, 0x123uLL);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v14 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v15 = *(v14 + 16);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v14 + 24));
    if (v19)
    {
LABEL_87:
      v80 = swift_getObjectType();
      memcpy(v102, &__dst[1], 0x11BuLL);
      v81 = *(v20 + 176);
      outlined init with copy of DateComponents.HTTPFormatStyle.ComponentsParseResult(__dst, &v100);
      v81(&v110, v102, v80, v20);
      outlined destroy of DateComponents.HTTPFormatStyle.ComponentsParseResult(__dst);
      swift_unknownObjectRelease();
      if (v111)
      {
        goto LABEL_88;
      }

      v79 = v110;
      goto LABEL_91;
    }
  }

  else
  {
    os_unfair_lock_unlock((v14 + 24));
  }

  v31 = type metadata accessor for _CalendarGregorian();
  v20 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  LOBYTE(v103) = 0;
  v100 = 0;
  v101 = 0;
  v102[0] = 0;
  v102[1] = 0;
  v106 = 0;
  v107 = 1;
  v98 = v31;
  v27 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v103, &v100, v102, 0, 1, 0, 1, &v106);
  os_unfair_lock_lock((v14 + 24));
  v32 = *(v14 + 16);
  if (*(v32 + 16))
  {
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v34)
    {
      v20 = *(*(v32 + 56) + 16 * v33 + 8);
LABEL_86:
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v14 + 24));

      goto LABEL_87;
    }
  }

  swift_unknownObjectRetain();
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(v14 + 16);
  v36 = v100;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v47 = *(v36 + 16);
  v48 = (v38 & 1) == 0;
  v41 = __OFADD__(v47, v48);
  v49 = v47 + v48;
  if (v41)
  {
    goto LABEL_46;
  }

  if (*(v36 + 24) >= v49)
  {
    if (v46)
    {
      v51 = v36;
      if ((v38 & 1) == 0)
      {
LABEL_84:
        specialized _NativeDictionary._insert(at:key:value:)(v37, 0, v27, v51, v98, v20);
        goto LABEL_85;
      }
    }

    else
    {
      v91 = v38;
      v93 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
      v66 = static _DictionaryStorage.copy(original:)();
      v51 = v66;
      if (*(v36 + 16))
      {
        v67 = (v66 + 64);
        v95 = (v36 + 64);
        v68 = ((1 << *(v51 + 32)) + 63) >> 6;
        if (v51 != v36 || v67 >= &v95[8 * v68])
        {
          memmove(v67, v95, 8 * v68);
        }

        v69 = 0;
        *(v51 + 16) = *(v36 + 16);
        v70 = 1 << *(v36 + 32);
        v71 = -1;
        if (v70 < 64)
        {
          v71 = ~(-1 << v70);
        }

        v97 = v71 & *(v36 + 64);
        v89 = (v70 + 63) >> 6;
        while (v97)
        {
          v72 = __clz(__rbit64(v97));
          v97 &= v97 - 1;
LABEL_75:
          v75 = v72 | (v69 << 6);
          v76 = *(*(v36 + 56) + 16 * v75);
          *(*(v51 + 48) + v75) = *(*(v36 + 48) + v75);
          *(*(v51 + 56) + 16 * v75) = v76;
          swift_unknownObjectRetain();
        }

        v73 = v69;
        while (1)
        {
          v69 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_108;
          }

          if (v69 >= v89)
          {
            break;
          }

          v74 = *&v95[8 * v69];
          ++v73;
          if (v74)
          {
            v72 = __clz(__rbit64(v74));
            v97 = (v74 - 1) & v74;
            goto LABEL_75;
          }
        }
      }

      v37 = v93;
      if ((v91 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

LABEL_41:
    v54 = (*(v51 + 56) + 16 * v37);
    *v54 = v27;
    v54[1] = v20;
    swift_unknownObjectRelease();
LABEL_85:
    *(v14 + 16) = v51;
    goto LABEL_86;
  }

  v50 = v38;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v46);
  v51 = v100;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  if ((v50 & 1) == (v52 & 1))
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_41;
  }

LABEL_109:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *DateComponents.HTTPFormatStyle.components(from:in:)@<X0>(__darwin_time_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, unint64_t object@<X8>)
{
  v8 = v5;
  v10 = a3;
  v276 = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = &a3[a4];
  v268[0] = a3;
  v268[1] = &a3[a4];
  LOBYTE(v274[2].tv_nsec) = 1;
  v274[3].tv_sec = 0;
  LOBYTE(v274[3].tv_nsec) = 1;
  v274[4].tv_sec = 0;
  LOBYTE(v274[4].tv_nsec) = 1;
  v274[5].tv_sec = 0;
  LOBYTE(v274[5].tv_nsec) = 1;
  v274[6].tv_sec = 0;
  LOBYTE(v274[6].tv_nsec) = 1;
  v274[7].tv_sec = 0;
  LOBYTE(v274[7].tv_nsec) = 1;
  v274[8].tv_sec = 0;
  LOBYTE(v274[8].tv_nsec) = 1;
  v274[9].tv_sec = 0;
  LOBYTE(v274[9].tv_nsec) = 1;
  v274[10].tv_sec = 0;
  LOBYTE(v274[10].tv_nsec) = 1;
  v274[11].tv_sec = 0;
  LOBYTE(v274[11].tv_nsec) = 1;
  v274[12].tv_sec = 0;
  LOBYTE(v274[12].tv_nsec) = 1;
  v274[13].tv_sec = 0;
  LOBYTE(v274[13].tv_nsec) = 1;
  v274[14].tv_sec = 0;
  LOBYTE(v274[14].tv_nsec) = 1;
  v274[15].tv_sec = 0;
  LOBYTE(v274[15].tv_nsec) = 1;
  v274[16].tv_sec = 0;
  LOBYTE(v274[16].tv_nsec) = 1;
  v274[17].tv_sec = 0;
  LOBYTE(v274[17].tv_nsec) = 1;
  *(&v274[17].tv_nsec + 1) = 514;
  memset(v274, 0, 40);
  v270[0].tv_sec = 0;
  v270[0].tv_nsec = 0;
  DateComponents.timeZone.setter(&v270[0].tv_sec);
  v274[2].tv_sec = 0;
  LOBYTE(v274[2].tv_nsec) = 1;
  v274[3].tv_sec = 0;
  LOBYTE(v274[3].tv_nsec) = 1;
  v274[4].tv_sec = 0;
  LOBYTE(v274[4].tv_nsec) = 1;
  v274[5].tv_sec = 0;
  LOBYTE(v274[5].tv_nsec) = 1;
  v274[7].tv_sec = 0;
  LOBYTE(v274[7].tv_nsec) = 1;
  v274[8].tv_sec = 0;
  LOBYTE(v274[8].tv_nsec) = 1;
  v274[9].tv_sec = 0;
  LOBYTE(v274[9].tv_nsec) = 1;
  v274[10].tv_sec = 0;
  LOBYTE(v274[10].tv_nsec) = 1;
  v274[11].tv_sec = 0;
  LOBYTE(v274[11].tv_nsec) = 1;
  v274[12].tv_sec = 0;
  LOBYTE(v274[12].tv_nsec) = 1;
  v274[13].tv_sec = 0;
  LOBYTE(v274[13].tv_nsec) = 1;
  v274[15].tv_sec = 0;
  LOBYTE(v274[15].tv_nsec) = 1;
  v274[16].tv_sec = 0;
  LOBYTE(v274[16].tv_nsec) = 1;
  v274[17].tv_sec = 0;
  LOBYTE(v274[17].tv_nsec) = 1;
  v274[6].tv_sec = 0;
  LOBYTE(v274[6].tv_nsec) = 1;
  if (a4 < 1)
  {
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, v270);
    tv_sec = v270[0].tv_sec;
    tv_nsec = v270[0].tv_nsec;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v19 = qword_1ED440450;
    os_unfair_lock_lock((qword_1ED440450 + 24));
    v20 = *(v19 + 16);
    if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v22 & 1) != 0))
    {
      v23 = (*(v20 + 56) + 16 * v21);
      v24 = *v23;
      object = v23[1];
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v19 + 24));
      if (v24)
      {
        goto LABEL_158;
      }
    }

    else
    {
      os_unfair_lock_unlock((v19 + 24));
    }

    type metadata accessor for _CalendarGregorian();
    object = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0;
    v273 = 0uLL;
    LOBYTE(v267) = 0;
    v271 = 0;
    v272 = 1;
    swift_allocObject();
    _CalendarGregorian.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(&v267, &v270[0].tv_sec, &v273, 0, 1, 0, 1, &v271);
    v10 = v25;
    os_unfair_lock_lock((v19 + 24));
    v26 = *(v19 + 16);
    if (*(v26 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if (v28)
      {
        object = *(*(v26 + 56) + 16 * v27 + 8);
LABEL_157:
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v19 + 24));

LABEL_158:
        v166 = tv_nsec;
        v167 = tv_sec + -978307200.0;
        v168 = v166 * 0.000000001;
        v169 = one-time initialization token for cache;
        swift_unknownObjectRetain();
        if (v169 != -1)
        {
          swift_once();
        }

        v170 = v167 + v168;
        v271 = 254;
        v171 = one-time initialization token for validCalendarRange;
        v265 = xmmword_1ED440468;
        v10 = xmmword_1ED440468;
        swift_unknownObjectRetain();
        if (v171 != -1)
        {
          swift_once();
        }

        v172 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v170)
        {
          v172 = v170;
        }

        if (*&static Date.validCalendarRange >= v172)
        {
          v173 = *&static Date.validCalendarRange;
        }

        else
        {
          v173 = v172;
        }

        ObjectType = swift_getObjectType();
        v267 = v173;
        v273 = v265;
        (*(object + 184))(v270, &v271, &v267, &v273, ObjectType, object);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        memcpy(v275, v270, 0x11BuLL);
        closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v269, 33, v275, v270);
        if (!v8)
        {
          v176 = v270[0].tv_sec;
          v175 = v270[0].tv_nsec;
          outlined destroy of DateComponents(v275);
          v270[0].tv_sec = 0;
          v270[0].tv_nsec = 0xE000000000000000;
          _StringGuts.grow(_:)(89);
          MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
          MEMORY[0x1865CB0E0](a1, a2);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
          MEMORY[0x1865CB0E0](v176, v175);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          a1 = v270[0].tv_sec;
          v177 = v270[0].tv_nsec;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
          v178 = swift_allocObject();
          isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
          v180 = @"NSDebugDescription";
          v181 = v180;
          v10 = MEMORY[0x1E69E7CA0];
          if ((isTaggedPointer & 1) == 0)
          {
            goto LABEL_173;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v180);
          if (!TaggedPointerTag)
          {
            LOWORD(v271) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v193 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v194)
            {
              v183 = v193;
              v185 = v194;
              object = v10;
            }

            else
            {
              [(__CFString *)v181 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              object = v10;
              swift_dynamicCast();
              v185 = *(&v273 + 1);
              v183 = v273;
            }

LABEL_202:
            v178[4] = v183;
            v178[5] = v185;
            v178[9] = MEMORY[0x1E69E6158];
            v178[6] = a1;
            v178[7] = v177;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v200 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of FloatingPointRoundingRule?((v178 + 4), v270, &_sSS_yptMd);
            swift_setDeallocating();

            outlined destroy of TermOfAddress?((v178 + 4), &_sSS_yptMd);
            swift_deallocClassInstance();
            isUniquelyReferenced_nonNull_native = v270[0].tv_sec;
            v19 = v270[0].tv_nsec;
            v8 = specialized __RawDictionaryStorage.find<A>(_:)(v270[0].tv_sec, v270[0].tv_nsec);
            v10 = v201;

            if (v10)
            {
              __break(1u);
            }

            else
            {
              v200[(v8 >> 6) + 8] |= 1 << v8;
              v202 = (v200[6] + 16 * v8);
              *v202 = isUniquelyReferenced_nonNull_native;
              v202[1] = v19;
              outlined init with take of Any(&v270[1].tv_sec, (v200[7] + 32 * v8));
              v203 = v200[2];
              v44 = __OFADD__(v203, 1);
              v37 = (v203 + 1);
              if (!v44)
              {
                v200[2] = v37;
                static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
                v204 = objc_allocWithZone(NSError);
                v205 = String._bridgeToObjectiveCImpl()();

                v8 = [v204 initWithDomain:v205 code:2048 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v206 = [v8 domain];
                v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v206);
                v208 = v207;

                v209 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
                isUniquelyReferenced_nonNull_native = v210;
                if (v10 == v209 && v208 == v210)
                {
                  goto LABEL_206;
                }

                v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v19)
                {
                  goto LABEL_208;
                }

                goto LABEL_212;
              }
            }

            __break(1u);
LABEL_212:
            __break(1u);
            goto LABEL_213;
          }

          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              object = v10;
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v183 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v185 = v184;

              goto LABEL_202;
            }

LABEL_173:
            LOBYTE(v273) = 0;
            v270[0].tv_sec = 0;
            LOBYTE(v271) = 0;
            LOBYTE(v267) = 0;
            IsCF = __CFStringIsCF();
            if (IsCF)
            {
              v183 = v270[0].tv_sec;
              if (!v270[0].tv_sec)
              {
                object = v10;

                v185 = 0xE000000000000000;
                goto LABEL_202;
              }

              object = v10;
              if (LOBYTE(v267) == 1)
              {
                if (v273)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v195 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_201;
              }

              if (v271)
              {
                if (v273 != 1)
                {
                  IsCF = [(__CFString *)v181 lengthOfBytesUsingEncoding:4];
                }

                MEMORY[0x1EEE9AC00](IsCF);
                v197 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v185 = v198;
                v199 = HIBYTE(v198) & 0xF;
                if ((v198 & 0x2000000000000000) == 0)
                {
                  v199 = v197 & 0xFFFFFFFFFFFFLL;
                }

                if (v199)
                {
                  v183 = v197;

                  goto LABEL_202;
                }
              }
            }

            else
            {
              object = v10;
              v187 = v181;
              v188 = String.init(_nativeStorage:)();
              if (v189)
              {
                v183 = v188;
                v185 = v189;

                goto LABEL_202;
              }

              v270[0].tv_sec = [(__CFString *)v187 length];
              if (!v270[0].tv_sec)
              {

                v183 = 0;
                v185 = 0xE000000000000000;
                goto LABEL_202;
              }
            }

            v195 = String.init(_cocoaString:)();
LABEL_201:
            v183 = v195;
            v185 = v196;
            goto LABEL_202;
          }

          object = v10;
          v190 = [(__CFString *)v181 UTF8String];
          if (v190)
          {
            v191 = String.init(utf8String:)(v190);
            if (v192)
            {
              v183 = v191;
              v185 = v192;

              goto LABEL_202;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

        swift_willThrow();
        __break(1u);
LABEL_281:
        swift_once();
        goto LABEL_272;
      }
    }

LABEL_25:
    v264 = a1;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v270[0].tv_sec = *(v19 + 16);
    a1 = v270[0].tv_sec;
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    v53 = *(a1 + 16);
    v38 = (v52 & 1) == 0;
    v44 = __OFADD__(v53, v38);
    v37 = (v53 + v38);
    if (v44)
    {
      __break(1u);
LABEL_135:
      if (v41 == 65 && v40 == 117 && v39 == 103)
      {
        v64 = 8;
        goto LABEL_224;
      }

LABEL_215:
      if (v41 > 78)
      {
        if (v41 == 79)
        {
          if (v40 == 99 && v39 == 116)
          {
            v64 = 10;
            goto LABEL_224;
          }
        }

        else if (v41 == 83 && v40 == 101 && v39 == 112)
        {
          v64 = 9;
          goto LABEL_224;
        }

        goto LABEL_258;
      }

      if (v41 != 68)
      {
        if (v41 == 78 && v40 == 111 && v39 == 118)
        {
          v64 = 11;
          goto LABEL_224;
        }

        goto LABEL_258;
      }

LABEL_252:
      if (v40 == 101 && v39 == 99)
      {
        v64 = 12;
        goto LABEL_224;
      }

      goto LABEL_258;
    }

    v54 = v52;
    if (*(a1 + 24) < v37)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
      v55 = v270[0].tv_sec;
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v54 & 1) == (v56 & 1))
      {
        goto LABEL_31;
      }

      v51 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v261 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
      v154 = static _DictionaryStorage.copy(original:)();
      v55 = v154;
      if (*(a1 + 16))
      {
        v155 = (v154 + 64);
        v262 = (a1 + 64);
        v156 = ((1 << *(v55 + 32)) + 63) >> 6;
        if (v55 != a1 || v155 >= &v262[8 * v156])
        {
          memmove(v155, v262, 8 * v156);
        }

        v157 = 0;
        *(v55 + 16) = *(a1 + 16);
        v158 = 1 << *(a1 + 32);
        v159 = -1;
        if (v158 < 64)
        {
          v159 = ~(-1 << v158);
        }

        v141 = (v158 + 63) >> 6;
        v160 = v159 & *(a1 + 64);
        if (v160)
        {
          do
          {
            v161 = __clz(__rbit64(v160));
            v263 = (v160 - 1) & v160;
LABEL_152:
            v164 = v161 | (v157 << 6);
            v165 = *(*(a1 + 56) + 16 * v164);
            *(*(v55 + 48) + v164) = *(*(a1 + 48) + v164);
            *(*(v55 + 56) + 16 * v164) = v165;
            swift_unknownObjectRetain();
            v160 = v263;
          }

          while (v263);
        }

        v162 = v157;
        while (1)
        {
          v157 = v162 + 1;
          if (__OFADD__(v162, 1))
          {
            break;
          }

          if (v157 >= v141)
          {
            goto LABEL_154;
          }

          v163 = *&v262[8 * v157];
          ++v162;
          if (v163)
          {
            v161 = __clz(__rbit64(v163));
            v263 = (v163 - 1) & v163;
            goto LABEL_152;
          }
        }

        __break(1u);
        goto LABEL_266;
      }

LABEL_154:

      v51 = v261;
      a1 = v264;
      if (v54)
      {
        goto LABEL_32;
      }

      goto LABEL_155;
    }

    v55 = a1;
LABEL_31:
    a1 = v264;
    if (v54)
    {
LABEL_32:
      v57 = (*(v55 + 56) + 16 * v51);
      *v57 = v10;
      v57[1] = object;
      swift_unknownObjectRelease();
LABEL_156:
      *(v19 + 16) = v55;
      goto LABEL_157;
    }

LABEL_155:
    specialized _NativeDictionary._insert(at:key:value:)(v51, 0, v10, v55);
    goto LABEL_156;
  }

  v14 = *v10;
  v15 = a2;
  if ((v14 - 58) > 0xFFFFFFF5)
  {
    goto LABEL_61;
  }

  v268[0] = v10 + 1;
  if (a4 == 1 || (v16 = v10[1], v268[0] = v10 + 2, a4 < 3))
  {
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, v270);
    *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
    v29 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
    object = v29._object;
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](a1, a2);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v29._countAndFlagsBits, v29._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v30 = v270[0].tv_sec;
    v31 = v270[0].tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v32 = swift_allocObject();
    v32[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
    v32[9] = MEMORY[0x1E69E6158];
    v32[5] = v33;
    v32[6] = v30;
    v32[7] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v34 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of FloatingPointRoundingRule?((v32 + 4), v270, &_sSS_yptMd);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?((v32 + 4), &_sSS_yptMd);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = v270[0].tv_sec;
    v35 = v270[0].tv_nsec;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v270[0].tv_sec, v270[0].tv_nsec);
    v10 = v36;

    if (v10)
    {
      __break(1u);
    }

    else
    {
      v34[(v8 >> 6) + 8] |= 1 << v8;
      v42 = (v34[6] + 16 * v8);
      *v42 = isUniquelyReferenced_nonNull_native;
      v42[1] = v35;
      outlined init with take of Any(&v270[1].tv_sec, (v34[7] + 32 * v8));
      v43 = v34[2];
      v44 = __OFADD__(v43, 1);
      v37 = (v43 + 1);
      if (!v44)
      {
        v34[2] = v37;
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v45 = objc_allocWithZone(NSError);
        v46 = String._bridgeToObjectiveCImpl()();

        v8 = [v45 initWithDomain:v46 code:2048 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v47 = [v8 domain];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v47);
        v49 = v48;

        if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v49 == v50)
        {
          goto LABEL_206;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_208;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_129;
  }

  v17 = v10[2];
  v268[0] = v10 + 3;
  if (v14 == 83 && v16 == 117 && v17 == 110)
  {
    v18 = 1;
    goto LABEL_57;
  }

  if (v14 == 77 && v16 == 111 && v17 == 110)
  {
    v18 = 2;
    goto LABEL_57;
  }

  if (v14 == 84 && v16 == 117 && v17 == 101)
  {
    v18 = 3;
    goto LABEL_57;
  }

  if (v14 == 87 && v16 == 101 && v17 == 100)
  {
    v18 = 4;
    goto LABEL_57;
  }

  if (v14 == 84 && v16 == 104 && v17 == 117)
  {
    v18 = 5;
    goto LABEL_57;
  }

  if (v14 == 70 && v16 == 114 && v17 == 105)
  {
    v18 = 6;
    goto LABEL_57;
  }

  if (v14 != 83 || v16 != 97 || v17 != 116)
  {
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, v270);
    *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
    v135 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
    object = v135._object;
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](a1, a2);
    *&v273 = 8250;
    *(&v273 + 1) = 0xE200000000000000;
    MEMORY[0x1865CB0E0](0xD000000000000016, 0x8000000181481AB0);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v273, *(&v273 + 1));

    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v135._countAndFlagsBits, v135._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v136 = v270[0].tv_sec;
    v137 = v270[0].tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v138 = swift_allocObject();
    v138[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
    v138[9] = MEMORY[0x1E69E6158];
    v138[5] = v139;
    v138[6] = v136;
    v138[7] = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v140 = static _DictionaryStorage.allocate(capacity:)();
    v54 = v270;
    outlined init with copy of FloatingPointRoundingRule?((v138 + 4), v270, &_sSS_yptMd);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?((v138 + 4), &_sSS_yptMd);
    swift_deallocClassInstance();
    v141 = v270[0].tv_sec;
    v142 = v270[0].tv_nsec;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v270[0].tv_sec, v270[0].tv_nsec);
    v10 = v143;

    if ((v10 & 1) == 0)
    {
      v140[(v8 >> 6) + 8] |= 1 << v8;
      v144 = (v140[6] + 16 * v8);
      *v144 = v141;
      v144[1] = v142;
      outlined init with take of Any(&v270[1].tv_sec, (v140[7] + 32 * v8));
      v145 = v140[2];
      v44 = __OFADD__(v145, 1);
      v146 = v145 + 1;
      if (!v44)
      {
        v140[2] = v146;
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v147 = objc_allocWithZone(NSError);
        v148 = String._bridgeToObjectiveCImpl()();

        v8 = [v147 initWithDomain:v148 code:2048 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v149 = [v8 domain];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v149);
        v151 = v150;

        v152 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        isUniquelyReferenced_nonNull_native = v153;
        if (v10 == v152 && v151 == v153)
        {
          goto LABEL_206;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          __break(1u);
LABEL_119:
          if (v41 == 65 && v40 == 112 && v39 == 114)
          {
            v64 = 4;
            goto LABEL_225;
          }

          if (v39 != 121)
          {
            v134 = 0;
          }

          if (v134)
          {
            v64 = 5;
            goto LABEL_225;
          }

LABEL_129:
          v19 = 0xD000000000000045;
          if (v41 == 74 && v40 == 117)
          {
            if (v39 != 110)
            {
              if (v39 == 108)
              {
                v64 = 7;
LABEL_224:
                v15 = a2;
                goto LABEL_225;
              }

LABEL_258:
              v270[0].tv_sec = 0;
              v270[0].tv_nsec = 0;
              clock_gettime(_CLOCK_REALTIME, v270);
              *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
              v246 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
              countAndFlagsBits = v246._countAndFlagsBits;
              v219 = v246._object;
              v270[0].tv_sec = 0x2068746E6F4DLL;
              v270[0].tv_nsec = 0xE600000000000000;
              *&v273 = 0;
              BYTE8(v273) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
              v247 = String.init<A>(describing:)();
              MEMORY[0x1865CB0E0](v247);

              v223 = (v19 - 52);
              goto LABEL_259;
            }

LABEL_223:
            v64 = 6;
            goto LABEL_224;
          }

          goto LABEL_135;
        }

        goto LABEL_208;
      }

LABEL_267:
      __break(1u);
      goto LABEL_268;
    }

LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  v18 = 7;
LABEL_57:
  v274[11].tv_sec = v18;
  LOBYTE(v274[11].tv_nsec) = 0;
  if (a4 == 3)
  {
    goto LABEL_80;
  }

  v58 = v10[3];
  v268[0] = v10 + 4;
  if (v58 != 44)
  {
    goto LABEL_80;
  }

  if (a4 < 5)
  {
    goto LABEL_92;
  }

  v59 = v10[4];
  v268[0] = v10 + 5;
  if (v59 != 32)
  {
    goto LABEL_92;
  }

LABEL_61:
  v60 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(2, 0, 2, 0, 0, a1, a2, 0xD000000000000018, 0x8000000181481A50, v268);
  if (v5)
  {
LABEL_209:
    memcpy(v270, v274, 0x11BuLL);
    return outlined destroy of DateComponents(v270);
  }

  if (v60 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  v274[5].tv_sec = v61;
  LOBYTE(v274[5].tv_nsec) = v60 == 0x7FFFFFFFFFFFFFFFLL;
  v37 = v268[0];
  if (v268[0] >= isUniquelyReferenced_nonNull_native || (v62 = v268[0] + 1, v63 = *v268[0], ++v268[0], v63 != 32))
  {
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, v270);
    *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
    v65 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
    object = v65._object;
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](a1, a2);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v65._countAndFlagsBits, v65._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v66 = v270[0].tv_sec;
    v67 = v270[0].tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v68 = swift_allocObject();
    v68[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
    v68[9] = MEMORY[0x1E69E6158];
    v68[5] = v69;
    v68[6] = v66;
    v68[7] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v70 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of FloatingPointRoundingRule?((v68 + 4), v270, &_sSS_yptMd);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?((v68 + 4), &_sSS_yptMd);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = v270[0].tv_sec;
    v19 = v270[0].tv_nsec;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v270[0].tv_sec, v270[0].tv_nsec);
    v10 = v71;

    if ((v10 & 1) == 0)
    {
      v70[(v8 >> 6) + 8] |= 1 << v8;
      v72 = (v70[6] + 16 * v8);
      *v72 = isUniquelyReferenced_nonNull_native;
      v72[1] = v19;
      outlined init with take of Any(&v270[1].tv_sec, (v70[7] + 32 * v8));
      v73 = v70[2];
      v44 = __OFADD__(v73, 1);
      v37 = (v73 + 1);
      if (!v44)
      {
        v70[2] = v37;
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v74 = objc_allocWithZone(NSError);
        v75 = String._bridgeToObjectiveCImpl()();

        v76 = [v74 initWithDomain:v75 code:2048 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v77 = [v76 domain];
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)(v77);
        v80 = v79;

        if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v80 == v81)
        {
          goto LABEL_206;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_208;
        }

        __break(1u);
LABEL_80:
        v270[0].tv_sec = 0;
        v270[0].tv_nsec = 0;
        clock_gettime(_CLOCK_REALTIME, v270);
        *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
        v82 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
        object = v82._object;
        v270[0].tv_sec = 0;
        v270[0].tv_nsec = 0xE000000000000000;
        _StringGuts.grow(_:)(89);
        MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
        MEMORY[0x1865CB0E0](a1, v15);
        *&v273 = 8250;
        *(&v273 + 1) = 0xE200000000000000;
        MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181481AD0);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](v273, *(&v273 + 1));

        MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
        MEMORY[0x1865CB0E0](v82._countAndFlagsBits, v82._object);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v83 = v270[0].tv_sec;
        v84 = v270[0].tv_nsec;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
        v85 = swift_allocObject();
        v85[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
        v85[9] = MEMORY[0x1E69E6158];
        v85[5] = v86;
        v85[6] = v83;
        v85[7] = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
        v87 = static _DictionaryStorage.allocate(capacity:)();
        outlined init with copy of FloatingPointRoundingRule?((v85 + 4), v270, &_sSS_yptMd);
        swift_setDeallocating();

        outlined destroy of TermOfAddress?((v85 + 4), &_sSS_yptMd);
        swift_deallocClassInstance();
        isUniquelyReferenced_nonNull_native = v270[0].tv_sec;
        v88 = v270[0].tv_nsec;
        v8 = specialized __RawDictionaryStorage.find<A>(_:)(v270[0].tv_sec, v270[0].tv_nsec);
        v10 = v89;

        if (v10)
        {
          __break(1u);
        }

        else
        {
          v87[(v8 >> 6) + 8] |= 1 << v8;
          v90 = (v87[6] + 16 * v8);
          *v90 = isUniquelyReferenced_nonNull_native;
          v90[1] = v88;
          outlined init with take of Any(&v270[1].tv_sec, (v87[7] + 32 * v8));
          v91 = v87[2];
          v44 = __OFADD__(v91, 1);
          v37 = (v91 + 1);
          if (!v44)
          {
            v87[2] = v37;
            static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
            v92 = objc_allocWithZone(NSError);
            v93 = String._bridgeToObjectiveCImpl()();

            v94 = [v92 initWithDomain:v93 code:2048 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v95 = [v94 domain];
            v96 = static String._unconditionallyBridgeFromObjectiveC(_:)(v95);
            v98 = v97;

            if (v96 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v98 == v99)
            {
              goto LABEL_206;
            }

            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v15)
            {
              goto LABEL_208;
            }

            __break(1u);
LABEL_86:
            v270[0].tv_sec = 0;
            v270[0].tv_nsec = 0;
            clock_gettime(_CLOCK_REALTIME, v270);
            *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
            v100 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
            object = v100._object;
            v270[0].tv_sec = 0;
            v270[0].tv_nsec = 0xE000000000000000;
            _StringGuts.grow(_:)(89);
            MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
            MEMORY[0x1865CB0E0](a1, v15);
            *&v273 = 8250;
            *(&v273 + 1) = 0xE200000000000000;
            MEMORY[0x1865CB0E0](0x20676E697373694DLL, 0xED000068746E6F6DLL);
            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            MEMORY[0x1865CB0E0](v273, *(&v273 + 1));

            MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
            MEMORY[0x1865CB0E0](v100._countAndFlagsBits, v100._object);
            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            v101 = v270[0].tv_sec;
            v102 = v270[0].tv_nsec;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
            v103 = swift_allocObject();
            v103[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
            v103[9] = MEMORY[0x1E69E6158];
            v103[5] = v104;
            v103[6] = v101;
            v103[7] = v102;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v105 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of FloatingPointRoundingRule?((v103 + 4), v270, &_sSS_yptMd);
            swift_setDeallocating();

            outlined destroy of TermOfAddress?((v103 + 4), &_sSS_yptMd);
            swift_deallocClassInstance();
            isUniquelyReferenced_nonNull_native = v270[0].tv_sec;
            v19 = v270[0].tv_nsec;
            v8 = specialized __RawDictionaryStorage.find<A>(_:)(v270[0].tv_sec, v270[0].tv_nsec);
            v10 = v106;

            if (v10)
            {
              __break(1u);
            }

            else
            {
              v105[(v8 >> 6) + 8] |= 1 << v8;
              v107 = (v105[6] + 16 * v8);
              *v107 = isUniquelyReferenced_nonNull_native;
              v107[1] = v19;
              outlined init with take of Any(&v270[1].tv_sec, (v105[7] + 32 * v8));
              v108 = v105[2];
              v44 = __OFADD__(v108, 1);
              v37 = (v108 + 1);
              if (!v44)
              {
                v105[2] = v37;
                static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
                v109 = objc_allocWithZone(NSError);
                v110 = String._bridgeToObjectiveCImpl()();

                v111 = [v109 initWithDomain:v110 code:2048 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v112 = [v111 domain];
                v113 = static String._unconditionallyBridgeFromObjectiveC(_:)(v112);
                v115 = v114;

                if (v113 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v115 == v116)
                {
                  goto LABEL_206;
                }

                v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v15)
                {
                  goto LABEL_208;
                }

                __break(1u);
LABEL_92:
                v270[0].tv_sec = 0;
                v270[0].tv_nsec = 0;
                clock_gettime(_CLOCK_REALTIME, v270);
                *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
                v117 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
                object = v117._object;
                v270[0].tv_sec = 0;
                v270[0].tv_nsec = 0xE000000000000000;
                _StringGuts.grow(_:)(89);
                MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
                MEMORY[0x1865CB0E0](a1, v15);
                *&v273 = 8250;
                *(&v273 + 1) = 0xE200000000000000;
                MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181481AF0);
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                MEMORY[0x1865CB0E0](v273, *(&v273 + 1));

                MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
                MEMORY[0x1865CB0E0](v117._countAndFlagsBits, v117._object);
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                v118 = v270[0].tv_sec;
                v119 = v270[0].tv_nsec;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
                v120 = swift_allocObject();
                v120[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
                v120[9] = MEMORY[0x1E69E6158];
                v120[5] = v121;
                v120[6] = v118;
                v120[7] = v119;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
                v122 = static _DictionaryStorage.allocate(capacity:)();
                outlined init with copy of FloatingPointRoundingRule?((v120 + 4), v270, &_sSS_yptMd);
                swift_setDeallocating();

                outlined destroy of TermOfAddress?((v120 + 4), &_sSS_yptMd);
                swift_deallocClassInstance();
                isUniquelyReferenced_nonNull_native = v270[0].tv_sec;
                v19 = v270[0].tv_nsec;
                v8 = specialized __RawDictionaryStorage.find<A>(_:)(v270[0].tv_sec, v270[0].tv_nsec);
                v10 = v123;

                if ((v10 & 1) == 0)
                {
                  v122[(v8 >> 6) + 8] |= 1 << v8;
                  v124 = (v122[6] + 16 * v8);
                  *v124 = isUniquelyReferenced_nonNull_native;
                  v124[1] = v19;
                  outlined init with take of Any(&v270[1].tv_sec, (v122[7] + 32 * v8));
                  v125 = v122[2];
                  v44 = __OFADD__(v125, 1);
                  v37 = (v125 + 1);
                  if (!v44)
                  {
                    v122[2] = v37;
                    static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
                    v126 = objc_allocWithZone(NSError);
                    v127 = String._bridgeToObjectiveCImpl()();

                    v8 = [v126 initWithDomain:v127 code:2048 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v128 = [v8 domain];
                    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v128);
                    v130 = v129;

                    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
                    isUniquelyReferenced_nonNull_native = v132;
                    if (v10 == v131 && v130 == v132)
                    {
                      goto LABEL_206;
                    }

                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v15 & 1) == 0)
                    {
                      __break(1u);
LABEL_99:
                      if (v41 == 70 && v40 == 101 && v39 == 98)
                      {
                        v64 = 2;
                        goto LABEL_225;
                      }

                      v133 = v41 == 77 && v40 == 97;
                      v134 = v133;
                      if (v133 && v39 == 114)
                      {
                        v64 = 3;
                        goto LABEL_225;
                      }

                      goto LABEL_119;
                    }

LABEL_208:
                    swift_willThrow();
                    goto LABEL_209;
                  }

LABEL_251:
                  __break(1u);
                  goto LABEL_252;
                }

LABEL_250:
                __break(1u);
                goto LABEL_251;
              }
            }

            __break(1u);
            goto LABEL_250;
          }
        }

        __break(1u);
        goto LABEL_223;
      }

LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  if (v62 >= isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_86;
  }

  v41 = v37[1];
  v268[0] = v37 + 2;
  if ((v37 + 2) >= isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_86;
  }

  v40 = v37[2];
  v268[0] = v37 + 3;
  if ((v37 + 3) >= isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_86;
  }

  v39 = v37[3];
  v38 = (v37 + 4);
  v268[0] = v37 + 4;
  if (v41 != 74 || v40 != 97 || v39 != 110)
  {
    goto LABEL_99;
  }

  v64 = 1;
LABEL_225:
  v274[4].tv_sec = v64;
  LOBYTE(v274[4].tv_nsec) = 0;
  if (v38 < isUniquelyReferenced_nonNull_native)
  {
    v212 = v37[4];
    v268[0] = v37 + 5;
    if (v212 == 32)
    {
      v213 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(4, 0, 4, 0, 0, a1, v15, 0, 0, v268);
      if (v8)
      {
        goto LABEL_209;
      }

      v54 = 0xD000000000000045;
      if (v213 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v214 = 0;
      }

      else
      {
        v214 = v213;
      }

      v274[3].tv_sec = v214;
      LOBYTE(v274[3].tv_nsec) = v213 == 0x7FFFFFFFFFFFFFFFLL;
      specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(32, a1, v15, 0, 0, v268);
      v215 = 0;
      v216 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(2, 0, 2, 0, 0, a1, v15, 0, 0, v268);
      if (v216 >= 0x18)
      {
        v270[0].tv_sec = 0;
        v270[0].tv_nsec = 0;
        clock_gettime(_CLOCK_REALTIME, v270);
        *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
        v217 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
        countAndFlagsBits = v217._countAndFlagsBits;
        v219 = v217._object;
        v220 = 0x2072756F48;
        v221 = 0xE500000000000000;
LABEL_233:
        v270[0].tv_sec = v220;
        v270[0].tv_nsec = v221;
        *&v273 = v216;
        v222 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v222);

        v223 = &v54[-4].tv_nsec + 4;
LABEL_259:
        MEMORY[0x1865CB0E0](v223, 0x8000000181481A70);
        v248 = v270[0].tv_sec;
        v249 = v270[0].tv_nsec;
        v250 = a1;
        v251 = a2;
        v252 = countAndFlagsBits;
LABEL_260:
        v253 = v219;
        v254 = v249;
        parseError(_:exampleFormattedString:extendedDescription:)(&v273, *&v250, *&v252, *&v248);

        goto LABEL_208;
      }

      goto LABEL_240;
    }
  }

  v270[0].tv_sec = 0;
  v270[0].tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, v270);
  *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
  v224 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
  object = v224._object;
  v270[0].tv_sec = 0;
  v270[0].tv_nsec = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](a1, v15);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
  MEMORY[0x1865CB0E0](v224._countAndFlagsBits, v224._object);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  v225 = v270[0].tv_sec;
  v226 = v270[0].tv_nsec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v227 = swift_allocObject();
  v227[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
  v227[9] = MEMORY[0x1E69E6158];
  v227[5] = v228;
  v227[6] = v225;
  v227[7] = v226;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v229 = static _DictionaryStorage.allocate(capacity:)();
  v54 = v270;
  outlined init with copy of FloatingPointRoundingRule?((v227 + 4), v270, &_sSS_yptMd);
  swift_setDeallocating();

  outlined destroy of TermOfAddress?((v227 + 4), &_sSS_yptMd);
  swift_deallocClassInstance();
  v230 = v270[0].tv_sec;
  v231 = v270[0].tv_nsec;
  v232 = specialized __RawDictionaryStorage.find<A>(_:)(v270[0].tv_sec, v270[0].tv_nsec);
  v234 = v233;

  if (v234)
  {
    __break(1u);
LABEL_264:
    __break(1u);
  }

  v229[(v232 >> 6) + 8] |= 1 << v232;
  v235 = (v229[6] + 16 * v232);
  *v235 = v230;
  v235[1] = v231;
  outlined init with take of Any(&v270[1].tv_sec, (v229[7] + 32 * v232));
  v236 = v229[2];
  v44 = __OFADD__(v236, 1);
  v237 = v236 + 1;
  if (v44)
  {
    goto LABEL_264;
  }

  v229[2] = v237;
  static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
  v238 = objc_allocWithZone(NSError);
  v239 = String._bridgeToObjectiveCImpl()();

  v215 = [v238 initWithDomain:v239 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v240 = [v215 domain];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v240);
  v216 = v241;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v216 == v242)
  {
LABEL_206:

    goto LABEL_208;
  }

  v243 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v243)
  {
    goto LABEL_208;
  }

  __break(1u);
LABEL_240:
  v274[7].tv_sec = v216;
  LOBYTE(v274[7].tv_nsec) = 0;
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(58, a1, a2, 0, 0, v268);
  if (v215)
  {
    goto LABEL_209;
  }

  v244 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(2, 0, 2, 0, 0, a1, a2, 0, 0, v268);
  v216 = v244;
  if (v244 >= 0x3C)
  {
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, v270);
    *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
    v245 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
    countAndFlagsBits = v245._countAndFlagsBits;
    v219 = v245._object;
    v220 = 0x206574756E694DLL;
    v221 = 0xE700000000000000;
    goto LABEL_233;
  }

  v274[8].tv_sec = v244;
  LOBYTE(v274[8].tv_nsec) = 0;
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(58, a1, a2, 0, 0, v268);
  v8 = 0;
  v141 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(2, 0, 2, 0, 0, a1, a2, 0, 0, v268);
  if (v141 >= 0x3D)
  {
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, v270);
    *&v270[0].tv_sec = v270[0].tv_sec + -978307200.0 + v270[0].tv_nsec * 0.000000001;
    v255 = Date.HTTPFormatStyle.format(_:)(v270[0].tv_sec);
    v219 = v255._object;
    v270[0].tv_sec = 0;
    v270[0].tv_nsec = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v270[0].tv_sec = 0x20646E6F636553;
    v270[0].tv_nsec = 0xE700000000000000;
    *&v273 = v141;
    v256 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v256);

    MEMORY[0x1865CB0E0](&v54[-4].tv_nsec + 4, 0x8000000181481A70);
    v248 = v270[0].tv_sec;
    v249 = v270[0].tv_nsec;
    v250 = a1;
    v251 = a2;
    v252 = v255._countAndFlagsBits;
    goto LABEL_260;
  }

LABEL_268:
  v257 = 59;
  if (v141 != 60)
  {
    v257 = v141;
  }

  v274[9].tv_sec = v257;
  LOBYTE(v274[9].tv_nsec) = 0;
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(32, a1, a2, 0, 0, v268);
  if (v8)
  {
    goto LABEL_209;
  }

  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(71, a1, a2, &v54[-3], 0x8000000181481A90, v268);
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(77, a1, a2, &v54[-3], 0x8000000181481A90, v268);
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(84, a1, a2, &v54[-3], 0x8000000181481A90, v268);
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_281;
  }

LABEL_272:
  v270[0] = xmmword_1ED440468;
  swift_unknownObjectRetain();
  DateComponents.timeZone.setter(&v270[0].tv_sec);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LOBYTE(v270[0].tv_sec) = 0;
  v258 = CalendarCache.fixed(_:)(v270);
  v260 = v259;
  swift_unknownObjectRelease();
  v274[0].tv_sec = v258;
  v274[0].tv_nsec = v260;
  if (v274[1].tv_sec)
  {
    if (v258)
    {
      v270[0] = v274[1];
      swift_unknownObjectRetain();
      Calendar.timeZone.setter(&v270[0].tv_sec);
    }
  }

  *object = v268[0] - v10;
  return memcpy((object + 8), v274, 0x11BuLL);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.HTTPFormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEF656C7974537374)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.HTTPFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.HTTPFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.HTTPFormatStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV15HTTPFormatStyleV10CodingKeys33_58DA0B635EBE7CD593C54CDCF8BCD071LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

double Date.HTTPFormatStyle.consuming(_:startingAt:in:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3 >> 14 >= a4 >> 14)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
  }

  else
  {
    Date.HTTPFormatStyle.parse(_:in:)(a1, a2, &v7);
    if (v8)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      result = *&v7;
      *a5 = v7;
      *(a5 + 16) = 0;
    }
  }

  return result;
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance Date.HTTPFormatStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle();

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

void *DateComponents.HTTPFormatStyle.consuming(_:startingAt:in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, void *a5@<X8>)
{
  if (a3 >> 14 >= a4 >> 14)
  {
    sub_1809417B0(&v11);
    v6 = &v11;
  }

  else
  {
    DateComponents.HTTPFormatStyle.parse(_:in:)(a1, a2, &v11);
    if (_s10Foundation17LocalePreferencesVSgWOg(&v11) == 1)
    {
      sub_1809417B0(&v9);
    }

    else
    {
      memcpy(v10, v12, sizeof(v10));
      v9 = v11;
      _NSBundleDeallocatingImmortalBundle(&v9, v7);
    }

    v6 = &v9;
  }

  return memcpy(a5, v6, 0x123uLL);
}

void *DateComponents.HTTPFormatStyle.parse(_:in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = String.subscript.getter();
  v10 = v9;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v37 = v9;
  if ((v6 ^ v7) < 0x4000)
  {

    sub_1809417B0(__dst);
    v11 = __dst;
    return memcpy(a3, v11, 0x123uLL);
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v8 = v36;
    v10 = v37;
    v12 = v34;
    v7 = v35;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12 >> 16;
  v14 = v7 >> 16;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v30[0] = v8;
    v30[1] = v10 & 0xFFFFFFFFFFFFFFLL;
    v16 = v14 - v13;
    v17 = v30 + v13;
  }

  else
  {
    if ((v8 & 0x1000000000000000) != 0)
    {
      v15 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v15 = _StringObject.sharedUTF8.getter();
      if (!v15)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    v16 = v14 - v13;
    v17 = (v15 + v13);
  }

  DateComponents.HTTPFormatStyle.components(from:in:)(a1, a2, v17, v16, &v28);
  v18 = v28;
  __src[0] = v28;
  memcpy(&__src[1], v29, 0x11BuLL);
  _NSBundleDeallocatingImmortalBundle(__src, v19);
  v31 = v18;
  memcpy(v32, v29, sizeof(v32));
  memcpy(__dst, __src, 0x123uLL);
  outlined init with copy of FloatingPointRoundingRule?(&v31, &v28, &_sSi_10Foundation14DateComponentsVtMd);

  v20 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v20) = 1;
  }

  if ((v12 & 0xC) != 4 << v20)
  {
    v21 = v31;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_26:
    v25 = MEMORY[0x1865CB180](v12, v21, a1, a2);
    outlined destroy of TermOfAddress?(__dst, &_sSi_10Foundation14DateComponentsVtSgMd);
    goto LABEL_20;
  }

LABEL_25:
  v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
  v21 = v31;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  result = outlined destroy of TermOfAddress?(__dst, &_sSi_10Foundation14DateComponentsVtSgMd);
  v23 = v21 + (v12 >> 16);
  if (__OFADD__(v21, v12 >> 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v24 >= v23)
  {
    v25 = (v23 << 16) | 4;
LABEL_20:
    memcpy(v29, v32, sizeof(v29));
    v28 = v25;
    _NSBundleDeallocatingImmortalBundle(&v28, v26);
    v11 = &v28;
    return memcpy(a3, v11, 0x123uLL);
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance DateComponents.HTTPFormatStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle();

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

_BYTE *protocol witness for FormatStyle.format(_:) in conformance DateComponents.HTTPFormatStyle@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  memcpy(__dst, __src, 0x11BuLL);
  result = closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v6, 33, __dst, v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

void *DateComponents.HTTPFormatStyle.parse(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = a1;
  v155 = *MEMORY[0x1E69E9840];
  DateComponents.HTTPFormatStyle.parse(_:in:)(a1, a2, &v152);
  if (_s10Foundation17LocalePreferencesVSgWOg(&v152) != 1)
  {
    return memcpy(a3, v153, 0x11BuLL);
  }

  v151[0].tv_sec = 0;
  v151[0].tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, v151);
  v9 = *&v151[0].tv_sec;
  tv_nsec = v151[0].tv_nsec;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v10 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  tv_sec = v10[1].tv_sec;
  v12 = &unk_1ED439000;
  if (*(tv_sec + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v14 & 1) != 0))
  {
    v15 = (*(tv_sec + 56) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(&v10[1].tv_nsec);
    if (v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
    os_unfair_lock_unlock(&v10[1].tv_nsec);
  }

  v145 = v6;
  *&v146 = v3;
  type metadata accessor for _CalendarGregorian();
  v144 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_181232B40;
  *(v19 + 32) = xmmword_181232B50;
  *(v19 + 48) = 2299161;
  *(v19 + 80) = 0x4290000000000000;
  *(v19 + 96) = 0;
  v20 = (v19 + 96);
  *(v19 + 128) = 0;
  *(v19 + 104) = 0;
  *(v19 + 136) = 1;
  *(v19 + 144) = 0;
  *(v19 + 152) = 1;
  if (one-time initialization token for cache == -1)
  {
    goto LABEL_11;
  }

LABEL_193:
  swift_once();
LABEL_11:
  v21 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v22 = *(v21 + 32);
  if (v22)
  {
    v23 = *(v21 + 40);
    v24 = *(v21 + 32);
  }

  else
  {
    v24 = *(v21 + 16);
    if (v24)
    {
      v23 = *(v21 + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      TimeZoneCache.State.findCurrentTimeZone()(v151);
      v24 = v151[0].tv_sec;
      v23 = v151[0].tv_nsec;
      *(v21 + 16) = v151[0].tv_sec;
      *(v21 + 24) = v23;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v21 + 120));
  *(v19 + 112) = v24;
  *(v19 + 120) = v23;
  *(v19 + 56) = xmmword_181232B60;
  *(v19 + 72) = 0xC208951B28000000;
  *v20 = 0;
  v20[1] = 0;
  swift_unknownObjectRelease();
  *(v19 + 88) = 0;
  os_unfair_lock_lock(&v10[1].tv_nsec);
  v25 = v10[1].tv_sec;
  if (*(v25 + 16))
  {
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v27)
    {
      v17 = *(*(v25 + 56) + 16 * v26 + 8);
      v6 = v145;
      v4 = v146;
      v12 = &unk_1ED439000;
      goto LABEL_29;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v151[0].tv_sec = v10[1].tv_sec;
  v29 = v151[0].tv_sec;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v32 = *(v29 + 2);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  v12 = &unk_1ED439000;
  if (!v34)
  {
    LOBYTE(v22) = v31;
    if (*(v29 + 3) < v35)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
      v36 = v151[0].tv_sec;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v22 & 1) == (v37 & 1))
      {
        goto LABEL_25;
      }

      v30 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = v29;
      goto LABEL_25;
    }

    goto LABEL_196;
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_196:
    v142 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v127 = static _DictionaryStorage.copy(original:)();
    v36 = v127;
    if (*(v29 + 2))
    {
      break;
    }

LABEL_211:

    v30 = v142;
LABEL_25:
    v4 = v146;
    v17 = v144;
    if (v22)
    {
      v38 = (*(v36 + 56) + 16 * v30);
      *v38 = v19;
      v38[1] = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v30, 0, v19, v36);
    }

    v10[1].tv_sec = v36;
    v6 = v145;
LABEL_29:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(&v10[1].tv_nsec);

LABEL_30:
    v39 = tv_nsec;
    v40 = *&v9 + -978307200.0;
    v9 = v39 * 0.000000001;
    v41 = v12[87];
    swift_unknownObjectRetain();
    if (v41 != -1)
    {
      swift_once();
    }

    v42 = v40 + v9;
    v149 = 254;
    v43 = one-time initialization token for validCalendarRange;
    v146 = xmmword_1ED440468;
    swift_unknownObjectRetain();
    if (v43 != -1)
    {
      swift_once();
    }

    v44 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v42)
    {
      v44 = v42;
    }

    if (*&static Date.validCalendarRange >= v44)
    {
      tv_nsec = *&static Date.validCalendarRange;
    }

    else
    {
      *&tv_nsec = v44;
    }

    ObjectType = swift_getObjectType();
    v148 = tv_nsec;
    v147 = v146;
    (*(v17 + 184))(v151, &v149, &v148, &v147, ObjectType, v17);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    memcpy(v154, v151, 0x11BuLL);
    closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v150, 33, v154, v151);
    v19 = v4;
    if (v4)
    {
      goto LABEL_217;
    }

    v46 = v151[0].tv_sec;
    v47 = v151[0].tv_nsec;
    outlined destroy of DateComponents(v154);
    v151[0].tv_sec = 0;
    v151[0].tv_nsec = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v6, v5);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v46, v47);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v49 = v151[0].tv_sec;
    v48 = v151[0].tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v50 = swift_allocObject();
    LOBYTE(v46) = _objc_isTaggedPointer(@"NSDebugDescription");
    v51 = @"NSDebugDescription";
    v52 = v51;
    v145 = v47;
    if ((v46 & 1) == 0)
    {
      goto LABEL_45;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v51);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v54 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v56 = v55;

          goto LABEL_76;
        }

LABEL_45:
        LOBYTE(v147) = 0;
        v151[0].tv_sec = 0;
        LOBYTE(v149) = 0;
        LOBYTE(v148) = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          if (!v151[0].tv_sec)
          {

LABEL_53:
            v54 = 0;
            v56 = 0xE000000000000000;
            goto LABEL_76;
          }

          if (v148 == 1)
          {
            if (v147)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v64 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_75;
          }

          if (v149)
          {
            if (v147 != 1)
            {
              IsCF = [(__CFString *)v52 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v56 = v67;
            v68 = HIBYTE(v67) & 0xF;
            if ((v67 & 0x2000000000000000) == 0)
            {
              v68 = v66 & 0xFFFFFFFFFFFFLL;
            }

            if (v68)
            {
              v54 = v66;
              goto LABEL_59;
            }
          }
        }

        else
        {
          v58 = v52;
          v59 = String.init(_nativeStorage:)();
          if (v60)
          {
            v54 = v59;
            v56 = v60;

            goto LABEL_76;
          }

          v151[0].tv_sec = [(__CFString *)v58 length];
          if (!v151[0].tv_sec)
          {

            goto LABEL_53;
          }
        }

        v64 = String.init(_cocoaString:)();
LABEL_75:
        v54 = v64;
        v56 = v65;
        goto LABEL_76;
      }

      v61 = [(__CFString *)v52 UTF8String];
      if (!v61)
      {
        goto LABEL_213;
      }

      v62 = String.init(utf8String:)(v61);
      if (v63)
      {
LABEL_58:
        v54 = v62;
        v56 = v63;
LABEL_59:

        goto LABEL_76;
      }

      __break(1u);
    }

    LOWORD(v149) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v62 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v63)
    {
      goto LABEL_58;
    }

    [(__CFString *)v52 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v56 = *(&v147 + 1);
    v54 = v147;
LABEL_76:
    v50[4] = v54;
    v50[5] = v56;
    v50[9] = MEMORY[0x1E69E6158];
    v50[6] = v49;
    v50[7] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v20 = static _DictionaryStorage.allocate(capacity:)();
    v10 = v151;
    outlined init with copy of FloatingPointRoundingRule?((v50 + 4), v151, &_sSS_yptMd);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?((v50 + 4), &_sSS_yptMd);
    swift_deallocClassInstance();
    v5 = v151[0].tv_sec;
    v69 = v151[0].tv_nsec;
    v70 = specialized __RawDictionaryStorage.find<A>(_:)(v151[0].tv_sec, v151[0].tv_nsec);
    v72 = v71;

    if (v72)
    {
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v20[(v70 >> 6) + 8] |= 1 << v70;
    v73 = (v20[6] + 16 * v70);
    *v73 = v5;
    v73[1] = v69;
    outlined init with take of Any(&v151[1].tv_sec, (v20[7] + 32 * v70));
    v74 = v20[2];
    v34 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v34)
    {
      goto LABEL_192;
    }

    v20[2] = v75;
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v77 = @"NSCocoaErrorDomain";
    v78 = v77;
    if (isTaggedPointer)
    {
      v79 = _objc_getTaggedPointerTag(v77);
      switch(v79)
      {
        case 0:
          goto LABEL_94;
        case 0x16:
          v83 = [(__CFString *)v78 UTF8String];
          if (!v83)
          {
            goto LABEL_214;
          }

          String.init(utf8String:)(v83);
          if (!v84)
          {
            __break(1u);
LABEL_94:
            LOWORD(v149) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v85)
            {
              [(__CFString *)v78 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_111;
            }
          }

LABEL_108:

          goto LABEL_111;
        case 2:
          v10 = &v142;
          MEMORY[0x1EEE9AC00](v79);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_111;
      }
    }

    LOBYTE(v147) = 0;
    v151[0].tv_sec = 0;
    LOBYTE(v149) = 0;
    LOBYTE(v148) = 0;
    v80 = __CFStringIsCF();
    if (!v80)
    {
      v81 = v78;
      String.init(_nativeStorage:)();
      if (v82 || (v151[0].tv_sec = [(__CFString *)v81 length]) == 0)
      {

        goto LABEL_111;
      }

LABEL_110:
      String.init(_cocoaString:)();
      goto LABEL_111;
    }

    if (!v151[0].tv_sec)
    {
      goto LABEL_108;
    }

    if (v148 != 1)
    {
      if (v149)
      {
        if (v147 != 1)
        {
          v80 = [(__CFString *)v78 lengthOfBytesUsingEncoding:4];
        }

        v10 = &v142;
        MEMORY[0x1EEE9AC00](v80);
        v86 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v88 = HIBYTE(v87) & 0xF;
        if ((v87 & 0x2000000000000000) == 0)
        {
          v88 = v86 & 0xFFFFFFFFFFFFLL;
        }

        if (v88)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_110;
    }

    if (v147)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_111:
    v89 = objc_allocWithZone(NSError);
    v90 = String._bridgeToObjectiveCImpl()();

    v29 = [v89 initWithDomain:v90 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v91 = [v29 domain];
    if (v91)
    {
      *&v146 = v29;
      v92 = v91;
      v93 = _objc_isTaggedPointer(v91);
      v94 = v92;
      v95 = v94;
      if ((v93 & 1) == 0)
      {
        goto LABEL_117;
      }

      v96 = _objc_getTaggedPointerTag(v94);
      if (!v96)
      {
        goto LABEL_130;
      }

      if (v96 != 22)
      {
        if (v96 == 2)
        {
          v10 = &v142;
          MEMORY[0x1EEE9AC00](v96);
          v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v12 = v97;

LABEL_150:
          v29 = v146;
          goto LABEL_151;
        }

LABEL_117:
        LOBYTE(v147) = 0;
        v151[0].tv_sec = 0;
        LOBYTE(v149) = 0;
        LOBYTE(v148) = 0;
        v98 = __CFStringIsCF();
        if (v98)
        {
          if (v151[0].tv_sec)
          {
            if (v148 == 1)
            {
              if (v147)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v105 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_148:
              v22 = v105;
              v12 = v106;
LABEL_149:

              goto LABEL_150;
            }

            if (v149)
            {
              if (v147 != 1)
              {
                v98 = [v95 lengthOfBytesUsingEncoding_];
              }

              v10 = &v142;
              MEMORY[0x1EEE9AC00](v98);
              v107 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v12 = v108;
              v109 = HIBYTE(v108) & 0xF;
              if ((v108 & 0x2000000000000000) == 0)
              {
                v109 = v107 & 0xFFFFFFFFFFFFLL;
              }

              if (v109)
              {
                v22 = v107;
                goto LABEL_132;
              }
            }

LABEL_147:
            v105 = String.init(_cocoaString:)();
            goto LABEL_148;
          }
        }

        else
        {
          v99 = v95;
          v100 = String.init(_nativeStorage:)();
          if (v101)
          {
            v22 = v100;
            v12 = v101;

            goto LABEL_150;
          }

          v151[0].tv_sec = [v99 length];
          if (v151[0].tv_sec)
          {
            goto LABEL_147;
          }
        }

        v22 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_150;
      }

      v102 = [v95 UTF8String];
      if (!v102)
      {
        goto LABEL_216;
      }

      v103 = String.init(utf8String:)(v102);
      if (!v104)
      {
        __break(1u);
LABEL_130:
        LOWORD(v149) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v103 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v104)
        {
          [v95 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v12 = *(&v147 + 1);
          v22 = v147;
          goto LABEL_149;
        }
      }

      v22 = v103;
      v12 = v104;
LABEL_132:

      goto LABEL_149;
    }

    v22 = 0;
    v12 = 0xE000000000000000;
LABEL_151:
    v110 = v78;
    v5 = v110;
    if (!isTaggedPointer)
    {
      goto LABEL_156;
    }

    v111 = _objc_getTaggedPointerTag(v110);
    switch(v111)
    {
      case 0:
        goto LABEL_168;
      case 0x16:
        v119 = [v5 UTF8String];
        if (!v119)
        {
          goto LABEL_215;
        }

        v120 = String.init(utf8String:)(v119);
        if (!v121)
        {
          __break(1u);
LABEL_168:
          LOWORD(v149) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v120 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v121)
          {
            [v5 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v114 = *(&v147 + 1);
            v112 = v147;
            break;
          }
        }

        v112 = v120;
        v114 = v121;

        break;
      case 2:
        v10 = &v142;
        MEMORY[0x1EEE9AC00](v111);
        v112 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v114 = v113;

        break;
      default:
LABEL_156:
        LOBYTE(v147) = 0;
        v151[0].tv_sec = 0;
        LOBYTE(v149) = 0;
        LOBYTE(v148) = 0;
        v115 = __CFStringIsCF();
        if (v115)
        {
          if (!v151[0].tv_sec)
          {

LABEL_164:
            v112 = 0;
            v114 = 0xE000000000000000;
            break;
          }

          if (v148 == 1)
          {
            if (v147)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v122 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_185;
          }

          if ((v149 & 1) == 0)
          {
            goto LABEL_184;
          }

          if (v147 != 1)
          {
            v115 = [v5 lengthOfBytesUsingEncoding_];
          }

          v10 = &v142;
          MEMORY[0x1EEE9AC00](v115);
          v124 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v114 = v125;
          v126 = HIBYTE(v125) & 0xF;
          if ((v125 & 0x2000000000000000) == 0)
          {
            v126 = v124 & 0xFFFFFFFFFFFFLL;
          }

          if (!v126)
          {

LABEL_184:
            v122 = String.init(_cocoaString:)();
LABEL_185:
            v112 = v122;
            v114 = v123;
            break;
          }

          v112 = v124;
        }

        else
        {
          v116 = v5;
          v117 = String.init(_nativeStorage:)();
          if (!v118)
          {
            v151[0].tv_sec = [v116 length];
            if (v151[0].tv_sec)
            {
              goto LABEL_184;
            }

            goto LABEL_164;
          }

          v112 = v117;
          v114 = v118;
        }

        break;
    }

    if (v22 == v112 && v12 == v114)
    {

      return swift_willThrow();
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      return swift_willThrow();
    }
  }

  v128 = (v127 + 64);
  v129 = 1 << *(v36 + 32);
  v143 = v29 + 64;
  v130 = (v129 + 63) >> 6;
  if (v36 != v29 || v128 >= &v143[8 * v130])
  {
    memmove(v128, v143, 8 * v130);
  }

  v131 = 0;
  *(v36 + 16) = *(v29 + 2);
  v132 = 1 << v29[32];
  v133 = *(v29 + 8);
  v134 = -1;
  if (v132 < 64)
  {
    v134 = ~(-1 << v132);
  }

  v135 = v134 & v133;
  v136 = (v132 + 63) >> 6;
  if ((v134 & v133) != 0)
  {
    do
    {
      v137 = __clz(__rbit64(v135));
      v135 &= v135 - 1;
LABEL_209:
      v140 = v137 | (v131 << 6);
      v141 = *(*(v29 + 7) + 16 * v140);
      *(*(v36 + 48) + v140) = *(*(v29 + 6) + v140);
      *(*(v36 + 56) + 16 * v140) = v141;
      swift_unknownObjectRetain();
    }

    while (v135);
  }

  v138 = v131;
  v12 = &unk_1ED439000;
  while (1)
  {
    v131 = v138 + 1;
    if (__OFADD__(v138, 1))
    {
      break;
    }

    if (v131 >= v136)
    {
      goto LABEL_211;
    }

    v139 = *&v143[8 * v131];
    ++v138;
    if (v139)
    {
      v137 = __clz(__rbit64(v139));
      v135 = (v139 - 1) & v139;
      goto LABEL_209;
    }
  }

  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  result = swift_willThrow();
  __break(1u);
  return result;
}

_BYTE *closure #1 in DateComponents.HTTPFormatStyle.format(_:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_194;
  }

  v6 = result;
  if (*(a3 + 184))
  {
    goto LABEL_3;
  }

  v19 = *(a3 + 176);
  if (v19 <= 4)
  {
    switch(v19)
    {
      case 2:
        goto LABEL_84;
      case 3:
        if (a2 >= 1)
        {
          *result = 84;
          if (a2 != 1)
          {
            result[1] = 117;
            if (a2 >= 3)
            {
              i = 101;
              goto LABEL_7;
            }

            goto LABEL_161;
          }

          goto LABEL_156;
        }

        goto LABEL_150;
      case 4:
        if (a2 >= 1)
        {
          *result = 87;
          if (a2 != 1)
          {
            result[1] = 101;
            if (a2 >= 3)
            {
              i = 100;
              goto LABEL_7;
            }

LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          goto LABEL_154;
        }

        goto LABEL_148;
    }

LABEL_3:
    if (a2 < 1)
    {
LABEL_140:
      __break(1u);
    }

    else
    {
      *result = 83;
      if (a2 != 1)
      {
        result[1] = 117;
        if (a2 >= 3)
        {
LABEL_6:
          i = 110;
          goto LABEL_7;
        }

LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

    __break(1u);
    goto LABEL_142;
  }

  if (v19 == 5)
  {
    goto LABEL_88;
  }

  if (v19 != 6)
  {
    if (v19 == 7)
    {
      if (a2 >= 1)
      {
        *result = 83;
        if (a2 != 1)
        {
          result[1] = 97;
          if (a2 >= 3)
          {
            i = 116;
            goto LABEL_7;
          }

          goto LABEL_160;
        }

        goto LABEL_155;
      }

      goto LABEL_149;
    }

    goto LABEL_3;
  }

  if (a2 < 1)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  *result = 70;
  if (a2 == 1)
  {
    goto LABEL_157;
  }

  result[1] = 114;
  if (a2 < 3)
  {
    goto LABEL_162;
  }

  for (i = 105; ; i = 117)
  {
LABEL_7:
    v6[2] = i;
    if (a2 < 4)
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v6[3] = 44;
    if (a2 == 4)
    {
      goto LABEL_129;
    }

    v6[4] = 32;
    if (*(a3 + 88))
    {
      v9 = 1;
    }

    else
    {
      v9 = *(a3 + 80);
    }

    result = OutputBuffer<A>.append(_:zeroPad:)(v9, 2);
    if (a2 <= 5)
    {
      goto LABEL_130;
    }

    v6[5] = 32;
    v10 = 6;
    if (*(a3 + 72))
    {
      goto LABEL_14;
    }

    v20 = *(a3 + 64);
    if (v20 > 6)
    {
      break;
    }

    if (v20 > 3)
    {
      if (v20 == 4)
      {
        if (a2 <= 6)
        {
          goto LABEL_169;
        }

        v6[6] = 65;
        if (a2 <= 7)
        {
          goto LABEL_180;
        }

        v6[7] = 112;
        if (a2 <= 8)
        {
          goto LABEL_189;
        }

LABEL_119:
        v11 = 114;
        goto LABEL_18;
      }

      if (v20 == 5)
      {
        if (a2 <= 6)
        {
          goto LABEL_165;
        }

        v6[6] = 77;
        if (a2 <= 7)
        {
          goto LABEL_176;
        }

        v6[7] = 97;
        if (a2 <= 8)
        {
          goto LABEL_186;
        }

        v11 = 121;
        goto LABEL_18;
      }

      if (a2 <= 6)
      {
        goto LABEL_168;
      }

      v6[6] = 74;
      if (a2 <= 7)
      {
        goto LABEL_179;
      }

      v20 = 117;
      v6[7] = 117;
      v10 = 8;
      if (a2 <= 8)
      {
        __break(1u);
LABEL_71:
        switch(v20)
        {
          case 10:
            if (v10 >= a2)
            {
              goto LABEL_173;
            }

            v6[v10] = 79;
            if (a2 <= 7)
            {
              goto LABEL_184;
            }

            v6[7] = 99;
            if (a2 <= 8)
            {
              goto LABEL_193;
            }

            v11 = 116;
            goto LABEL_18;
          case 11:
            if (v10 >= a2)
            {
              goto LABEL_167;
            }

            v6[v10] = 78;
            if (a2 <= 7)
            {
              goto LABEL_178;
            }

            v6[7] = 111;
            if (a2 <= 8)
            {
              goto LABEL_188;
            }

            v11 = 118;
            goto LABEL_18;
          case 12:
            if (v10 >= a2)
            {
              goto LABEL_171;
            }

            v6[v10] = 68;
            if (a2 <= 7)
            {
              goto LABEL_182;
            }

            v6[7] = 101;
            if (a2 <= 8)
            {
              goto LABEL_191;
            }

            v11 = 99;
            goto LABEL_18;
        }

LABEL_14:
        if (v10 >= a2)
        {
          goto LABEL_143;
        }

        v6[v10] = 74;
        if (a2 <= 7)
        {
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        v6[7] = 97;
        if (a2 <= 8)
        {
          goto LABEL_145;
        }
      }

      v11 = 110;
      goto LABEL_18;
    }

    if (v20 == 2)
    {
      if (a2 <= 6)
      {
        goto LABEL_163;
      }

      v6[6] = 70;
      if (a2 <= 7)
      {
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

      v6[7] = 101;
      if (a2 <= 8)
      {
        goto LABEL_185;
      }

      v11 = 98;
LABEL_18:
      v6[8] = v11;
      if (a2 > 9)
      {
        v6[9] = 32;
        if (*(a3 + 56))
        {
          v12 = 2000;
        }

        else
        {
          v12 = *(a3 + 48);
        }

        result = OutputBuffer<A>.append(_:zeroPad:)(v12, 4);
        if (a2 > 10)
        {
          v6[10] = 32;
          if (*(a3 + 120))
          {
            v13 = 0;
          }

          else
          {
            v13 = *(a3 + 112);
          }

          v14 = *(a3 + 128);
          v15 = *(a3 + 136);
          if (*(a3 + 152))
          {
            v16 = 0;
          }

          else
          {
            v16 = *(a3 + 144);
          }

          result = OutputBuffer<A>.append(_:zeroPad:)(v13, 2);
          if (a2 > 11)
          {
            if (v15)
            {
              v17 = 0;
            }

            else
            {
              v17 = v14;
            }

            v6[11] = 58;
            result = OutputBuffer<A>.append(_:zeroPad:)(v17, 2);
            if (a2 > 12)
            {
              v6[12] = 58;
              result = OutputBuffer<A>.append(_:zeroPad:)(v16, 2);
              if (a2 > 13)
              {
                v6[13] = 32;
                if (a2 > 14)
                {
                  v6[14] = 71;
                  if (a2 > 15)
                  {
                    v6[15] = 77;
                    if (a2 > 16)
                    {
                      v6[16] = 84;
                      if (a2 > 17)
                      {
                        v6[17] = 0;
                        result = MEMORY[0x1865CAEB0](v6);
                        if (!v18)
                        {
                          goto LABEL_195;
                        }

                        *a4 = result;
                        a4[1] = v18;
                        return result;
                      }

LABEL_139:
                      __break(1u);
                      goto LABEL_140;
                    }

LABEL_138:
                    __break(1u);
                    goto LABEL_139;
                  }

LABEL_137:
                  __break(1u);
                  goto LABEL_138;
                }

LABEL_136:
                __break(1u);
                goto LABEL_137;
              }

LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v20 != 3)
    {
      goto LABEL_14;
    }

    if (a2 <= 6)
    {
      goto LABEL_164;
    }

    v6[6] = 77;
    if (a2 <= 7)
    {
      goto LABEL_175;
    }

    v6[7] = 97;
    if (a2 > 8)
    {
      goto LABEL_119;
    }

    __break(1u);
LABEL_84:
    if (a2 < 1)
    {
      goto LABEL_146;
    }

    *v6 = 77;
    if (a2 == 1)
    {
      goto LABEL_152;
    }

    v6[1] = 111;
    if (a2 >= 3)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_88:
    if (a2 < 1)
    {
      goto LABEL_147;
    }

    *v6 = 84;
    if (a2 == 1)
    {
      goto LABEL_153;
    }

    v6[1] = 104;
    if (a2 < 3)
    {
      goto LABEL_158;
    }
  }

  if (v20 > 9)
  {
    goto LABEL_71;
  }

  if (v20 == 7)
  {
    if (a2 <= 6)
    {
      goto LABEL_172;
    }

    v6[6] = 74;
    if (a2 <= 7)
    {
      goto LABEL_183;
    }

    v6[7] = 117;
    if (a2 <= 8)
    {
      goto LABEL_192;
    }

    v11 = 108;
    goto LABEL_18;
  }

  if (v20 == 8)
  {
    if (a2 <= 6)
    {
      goto LABEL_166;
    }

    v6[6] = 65;
    if (a2 <= 7)
    {
      goto LABEL_177;
    }

    v6[7] = 117;
    if (a2 <= 8)
    {
      goto LABEL_187;
    }

    v11 = 103;
    goto LABEL_18;
  }

  if (a2 <= 6)
  {
    goto LABEL_170;
  }

  v6[6] = 83;
  if (a2 > 7)
  {
    v6[7] = 101;
    if (a2 <= 8)
    {
      goto LABEL_190;
    }

    v11 = 112;
    goto LABEL_18;
  }

LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
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
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DateComponents.HTTPFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DateComponents.HTTPFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateComponents.HTTPFormatStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation14DateComponentsV15HTTPFormatStyleV10CodingKeys33_58DA0B635EBE7CD593C54CDCF8BCD071LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance DateComponents.HTTPFormatStyle(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation14DateComponentsV15HTTPFormatStyleV10CodingKeys33_58DA0B635EBE7CD593C54CDCF8BCD071LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian()
{
  result = lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
  if (!lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian)
  {
    type metadata accessor for _CalendarGregorian();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  result = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v9 = (a4[7] + 16 * a1);
  *v9 = a3;
  v9[1] = result;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle.CodingKeys and conformance Date.HTTPFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle()
{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.HTTPFormatStyle.CodingKeys and conformance DateComponents.HTTPFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.HTTPFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.HTTPFormatStyle and conformance Date.HTTPFormatStyle();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Date.HTTPFormatStyle(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for DateComponents.HTTPFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DateComponents.HTTPFormatStyle and conformance DateComponents.HTTPFormatStyle();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DateComponents.HTTPFormatStyle.ComponentsParseResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 291))
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

uint64_t storeEnumTagSinglePayload for DateComponents.HTTPFormatStyle.ComponentsParseResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
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
    *(result + 290) = 0;
    *(result + 288) = 0;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 291) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 291) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = 0xFFFFLL;
    while (1)
    {
      v7 = *v4++;
      v6 = v7;
      v8 = v7 & v5;
      if ((v7 & v5) != 0)
      {
        if (v8 == v6)
        {
          goto LABEL_4;
        }
      }

      else if (v6 == 0xFFFF)
      {
        goto LABEL_4;
      }

      v5 |= v6;
LABEL_4:
      if (!--v3)
      {
        goto LABEL_11;
      }
    }
  }

  v5 = 0xFFFFLL;
LABEL_11:

  *a2 = v5;
  return result;
}

BOOL specialized OptionSet<>.insert(_:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  if (*v2)
  {
    v4 = v3 & a2;
    if ((v3 & a2) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = a2;
  if (!a2)
  {
LABEL_3:
    v4 = 0xFFFFLL;
  }

LABEL_4:
  if (v4 != a2)
  {
    v5 = v3 | a2;
    if (!v5)
    {
      v5 = 0xFFFFLL;
    }

    *v2 = v5;
  }

  *a1 = a2;
  return v4 != a2;
}

char *Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, _OWORD *a7@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a6;
  v14 = a6[1];
  *(&v65 + 1) = 0;
  if (one-time initialization token for cache != -1)
  {
    v7 = a5;
    swift_once();
    a5 = v7;
  }

  BYTE3(v65) = v9;
  BYTE4(v65) = v10;
  *&v67 = v13;
  *(&v67 + 1) = v14;
  LOBYTE(v65) = v11;
  BYTE2(v65) = v12;
  BYTE1(v65) = a5 & 1;
  v15 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v17 = *(v16 + 16);
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v19 & 1) != 0))
  {
    v57 = *(*(v17 + 56) + 16 * v18);
    v20 = *(*(v17 + 56) + 16 * v18);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v16 + 24));
    if (v20)
    {
LABEL_41:
      v66 = v57;
      v62 = v13;
      v63 = v14;
      result = Calendar.timeZone.setter(&v62);
      v53 = v66;
      *a7 = v65;
      a7[1] = v53;
      a7[2] = v67;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v16 + 24));
  }

  v21 = type metadata accessor for _CalendarGregorian();
  v22 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v64 = 7;
  v62 = 0;
  v63 = 0;
  v61[0] = 0;
  v61[1] = 0;
  v59 = 0;
  v60 = 1;
  v23 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v64, &v62, v61, 0, 1, 0, 1, &v59);
  os_unfair_lock_lock((v16 + 24));
  v24 = *(v16 + 16);
  if (*(v24 + 16))
  {
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v26)
    {
      v27 = *(*(v24 + 56) + 16 * v25);
LABEL_40:
      v57 = v27;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v16 + 24));

      goto LABEL_41;
    }
  }

  v58 = v14;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v16 + 16);
  v29 = v62;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v32 = *(v29 + 16);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    v7 = v31;
    if (*(v29 + 24) < v35)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
      v36 = v62;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v7 & 1) == (v37 & 1))
      {
        goto LABEL_19;
      }

      v30 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = v29;
LABEL_19:
      v14 = v58;
      if (v7)
      {
LABEL_20:
        v38 = (*(v36 + 56) + 16 * v30);
        *v38 = v23;
        v38[1] = v22;
        swift_unknownObjectRelease();
LABEL_39:
        *(v16 + 16) = v36;
        *&v27 = v23;
        *(&v27 + 1) = v22;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v30, 7, v23, v36, v21, v22);
      goto LABEL_39;
    }
  }

  v54 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v39 = static _DictionaryStorage.copy(original:)();
  v36 = v39;
  if (!*(v29 + 16))
  {
LABEL_37:

    v30 = v54;
    v14 = v58;
    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v39 + 64);
  v41 = (v29 + 64);
  v42 = ((1 << *(v36 + 32)) + 63) >> 6;
  if (v36 != v29 || result >= &v41[8 * v42])
  {
    result = memmove(result, v41, 8 * v42);
  }

  v43 = 0;
  *(v36 + 16) = *(v29 + 16);
  v44 = 1 << *(v29 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v29 + 64);
  v47 = (v44 + 63) >> 6;
  v55 = v47;
  if (v46)
  {
    do
    {
      v48 = __clz(__rbit64(v46));
      v56 = (v46 - 1) & v46;
LABEL_35:
      v51 = v48 | (v43 << 6);
      v52 = *(*(v29 + 56) + 16 * v51);
      *(*(v36 + 48) + v51) = *(*(v29 + 48) + v51);
      *(*(v36 + 56) + 16 * v51) = v52;
      result = swift_unknownObjectRetain();
      v47 = v55;
      v46 = v56;
    }

    while (v56);
  }

  v49 = v43;
  while (1)
  {
    v43 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v43 >= v47)
    {
      goto LABEL_37;
    }

    v50 = *(v29 + 64 + 8 * v43);
    ++v49;
    if (v50)
    {
      v48 = __clz(__rbit64(v50));
      v56 = (v50 - 1) & v50;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t Date.ISO8601FormatStyle.DateSeparator.rawValue.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 45;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.ISO8601FormatStyle.DateSeparator(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 45;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 45;
  }

  if (*a2)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.ISO8601FormatStyle.DateSeparator()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.ISO8601FormatStyle.DateSeparator()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.ISO8601FormatStyle.DateSeparator()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.ISO8601FormatStyle.DateSeparator(uint64_t *a1@<X8>)
{
  v2 = 45;
  if (*v1)
  {
    v2 = 0;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE000000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Date.ISO8601FormatStyle.TimeSeparator.rawValue.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 58;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.ISO8601FormatStyle.TimeZoneSeparator(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 58;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 58;
  }

  if (*a2)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.ISO8601FormatStyle.TimeZoneSeparator()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.ISO8601FormatStyle.TimeZoneSeparator()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Date.ISO8601FormatStyle.TimeZoneSeparator.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X2>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v7 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t Date.ISO8601FormatStyle.DateTimeSeparator.rawValue.getter()
{
  if (*v0)
  {
    return 2577447;
  }

  else
  {
    return 32;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.ISO8601FormatStyle.DateTimeSeparator(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 2577447;
  }

  else
  {
    v3 = 32;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 2577447;
  }

  else
  {
    v5 = 32;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.ISO8601FormatStyle.DateTimeSeparator()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.ISO8601FormatStyle.DateTimeSeparator()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.ISO8601FormatStyle.DateTimeSeparator()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.ISO8601FormatStyle.DateTimeSeparator(uint64_t *a1@<X8>)
{
  v2 = 32;
  if (*v1)
  {
    v2 = 2577447;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t key path setter for Date.ISO8601FormatStyle.timeZone : Date.ISO8601FormatStyle(__int128 *a1, uint64_t a2)
{
  v8 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a2 + 32) = v8;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LOBYTE(v9) = 7;
  v3 = CalendarCache.fixed(_:)(&v9);
  v5 = v4;
  v6 = a2 + 16;
  swift_unknownObjectRelease();
  *v6 = v3;
  *(v6 + 8) = v5;
  v9 = *(v6 + 16);
  swift_unknownObjectRetain();
  return Calendar.timeZone.setter(&v9);
}

char *Date.ISO8601FormatStyle.timeZone.setter(_OWORD *a1)
{
  v3 = v1;
  swift_unknownObjectRelease();
  *(v3 + 32) = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v8 & 1) != 0))
  {
    v44 = *(*(v6 + 56) + 16 * v7);
    v9 = *(*(v6 + 56) + 16 * v7);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 24));
    if (v9)
    {
LABEL_39:
      v42 = (v3 + 16);
      swift_unknownObjectRelease();
      *v42 = v44;
      v49 = v42[1];
      swift_unknownObjectRetain();
      return Calendar.timeZone.setter(&v49);
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
  }

  v10 = type metadata accessor for _CalendarGregorian();
  v11 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v50 = 7;
  v49 = 0uLL;
  v48[0] = 0;
  v48[1] = 0;
  v46 = 0;
  v47 = 1;
  v12 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v50, &v49, v48, 0, 1, 0, 1, &v46);
  os_unfair_lock_lock((v5 + 24));
  v13 = *(v5 + 16);
  if (*(v13 + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 16 * v14);
LABEL_38:
      v44 = v16;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_39;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = *(v5 + 16);
  v18 = v49;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v2 = v20;
    if (*(v18 + 24) < v24)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
      v25 = v49;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v2 & 1) == (v26 & 1))
      {
        goto LABEL_17;
      }

      v19 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v25 = v18;
LABEL_17:
      if (v2)
      {
LABEL_18:
        v27 = (*(v25 + 56) + 16 * v19);
        *v27 = v12;
        v27[1] = v11;
        swift_unknownObjectRelease();
LABEL_37:
        *(v5 + 16) = v25;
        *&v16 = v12;
        *(&v16 + 1) = v11;
        goto LABEL_38;
      }

LABEL_36:
      specialized _NativeDictionary._insert(at:key:value:)(v19, 7, v12, v25, v10, v11);
      goto LABEL_37;
    }
  }

  v43 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v28 = static _DictionaryStorage.copy(original:)();
  v25 = v28;
  if (!*(v18 + 16))
  {
LABEL_35:

    v19 = v43;
    if (v2)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  result = (v28 + 64);
  v30 = (v18 + 64);
  v31 = ((1 << *(v25 + 32)) + 63) >> 6;
  if (v25 != v18 || result >= &v30[8 * v31])
  {
    result = memmove(result, v30, 8 * v31);
  }

  v32 = 0;
  *(v25 + 16) = *(v18 + 16);
  v33 = 1 << *(v18 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v18 + 64);
  v36 = (v33 + 63) >> 6;
  if (v35)
  {
    do
    {
      v37 = __clz(__rbit64(v35));
      v45 = (v35 - 1) & v35;
LABEL_33:
      v40 = v37 | (v32 << 6);
      v41 = *(*(v18 + 56) + 16 * v40);
      *(*(v25 + 48) + v40) = *(*(v18 + 48) + v40);
      *(*(v25 + 56) + 16 * v40) = v41;
      result = swift_unknownObjectRetain();
      v35 = v45;
    }

    while (v45);
  }

  v38 = v32;
  while (1)
  {
    v32 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v32 >= v36)
    {
      goto LABEL_35;
    }

    v39 = *(v18 + 64 + 8 * v32);
    ++v38;
    if (v39)
    {
      v37 = __clz(__rbit64(v39));
      v45 = (v39 - 1) & v39;
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *(*Date.ISO8601FormatStyle.timeZone.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 32);
  swift_unknownObjectRetain();
  return Date.ISO8601FormatStyle.timeZone.modify;
}

char *Date.ISO8601FormatStyle.timeZone.modify(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRelease();
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v6 = qword_1ED440450;
    os_unfair_lock_lock((qword_1ED440450 + 24));
    v11 = *(v6 + 16);
    if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v13 & 1) != 0))
    {
      v74 = *(*(v11 + 56) + 16 * v12);
      v14 = *(*(v11 + 56) + 16 * v12);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v6 + 24));
      if (v14)
      {
LABEL_79:
        v68 = (v3 + 16);
        swift_unknownObjectRelease();
        *v68 = v74;
        v82 = v68[1];
        swift_unknownObjectRetain();
        return Calendar.timeZone.setter(&v82);
      }
    }

    else
    {
      os_unfair_lock_unlock((v6 + 24));
    }

    v15 = type metadata accessor for _CalendarGregorian();
    v16 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
    v77 = 7;
    v78 = 0;
    v79 = 0;
    v82 = 0uLL;
    v80 = 0;
    v81 = 1;
    v17 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v77, &v78, &v82, 0, 1, 0, 1, &v80);
    os_unfair_lock_lock((v6 + 24));
    v22 = *(v6 + 16);
    if (*(v22 + 16))
    {
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if (v24)
      {
        v25 = *(*(v22 + 56) + 16 * v23);
LABEL_78:
        v74 = v25;
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v6 + 24));

        v3 = a1[2];
        goto LABEL_79;
      }
    }

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82 = *(v6 + 16);
    v27 = v82;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    v37 = *(v27 + 16);
    v38 = (v36 & 1) == 0;
    v32 = __OFADD__(v37, v38);
    v39 = v37 + v38;
    if (v32)
    {
      goto LABEL_39;
    }

    LOBYTE(v4) = v36;
    if (*(v27 + 24) >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
        v56 = static _DictionaryStorage.copy(original:)();
        v40 = v56;
        v57 = *(v27 + 16);
        if (v57)
        {
          result = (v56 + 64);
          __srca = (v27 + 64);
          v58 = ((1 << *(v40 + 32)) + 63) >> 6;
          if (v40 != v27 || result >= &__srca[8 * v58])
          {
            result = memmove(result, __srca, 8 * v58);
            v57 = *(v27 + 16);
          }

          v59 = 0;
          *(v40 + 16) = v57;
          v60 = 1 << *(v27 + 32);
          v61 = -1;
          if (v60 < 64)
          {
            v61 = ~(-1 << v60);
          }

          v62 = (v60 + 63) >> 6;
          v63 = v61 & *(v27 + 64);
          if (v63)
          {
            do
            {
LABEL_66:
              v76 = (v63 - 1) & v63;
              v65 = __clz(__rbit64(v63)) | (v59 << 6);
              v66 = *(*(v27 + 56) + 16 * v65);
              *(*(v40 + 48) + v65) = *(*(v27 + 48) + v65);
              *(*(v40 + 56) + 16 * v65) = v66;
              result = swift_unknownObjectRetain();
              v63 = v76;
            }

            while (v76);
          }

          v64 = v59;
          while (1)
          {
            v59 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_81;
            }

            if (v59 >= v62)
            {
              break;
            }

            v63 = *&__srca[8 * v59];
            ++v64;
            if (v63)
            {
              goto LABEL_66;
            }
          }
        }

        v28 = v70;
        if (v4)
        {
          goto LABEL_37;
        }

        goto LABEL_76;
      }

      v40 = v27;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
      v40 = v82;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v4 & 1) != (v41 & 1))
      {
        goto LABEL_29;
      }
    }

    if (v4)
    {
LABEL_37:
      v43 = (*(v40 + 56) + 16 * v28);
      *v43 = v17;
      v43[1] = v16;
      swift_unknownObjectRelease();
LABEL_77:
      *(v6 + 16) = v40;
      *&v25 = v17;
      *(&v25 + 1) = v16;
      goto LABEL_78;
    }

LABEL_76:
    specialized _NativeDictionary._insert(at:key:value:)(v28, 7, v17, v40, v15, v16);
    goto LABEL_77;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v6 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v7 = *(v6 + 16);
  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v9 & 1) == 0))
  {
    os_unfair_lock_unlock((v6 + 24));
    goto LABEL_15;
  }

  v73 = *(*(v7 + 56) + 16 * v8);
  v10 = *(*(v7 + 56) + 16 * v8);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 24));
  if (!v10)
  {
LABEL_15:
    v15 = type metadata accessor for _CalendarGregorian();
    v16 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
    v77 = 7;
    v78 = 0;
    v79 = 0;
    v82 = 0uLL;
    v80 = 0;
    v81 = 1;
    v17 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v77, &v78, &v82, 0, 1, 0, 1, &v80);
    os_unfair_lock_lock((v6 + 24));
    v18 = *(v6 + 16);
    if (*(v18 + 16))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 16 * v19);
LABEL_71:
        v73 = v21;
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v6 + 24));

        v3 = a1[2];
        goto LABEL_72;
      }
    }

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82 = *(v6 + 16);
    v27 = v82;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (!v32)
    {
      LOBYTE(v4) = v29;
      if (*(v27 + 24) >= v33)
      {
        goto LABEL_30;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v34 = v82;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v4 & 1) == (v35 & 1))
      {
        goto LABEL_32;
      }

LABEL_29:
      v28 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_30:
      if (isUniquelyReferenced_nonNull_native)
      {
        v34 = v27;
LABEL_32:
        if (v4)
        {
LABEL_33:
          v42 = (*(v34 + 56) + 16 * v28);
          *v42 = v17;
          v42[1] = v16;
          swift_unknownObjectRelease();
LABEL_70:
          *(v6 + 16) = v34;
          *&v21 = v17;
          *(&v21 + 1) = v16;
          goto LABEL_71;
        }

LABEL_69:
        specialized _NativeDictionary._insert(at:key:value:)(v28, 7, v17, v34, v15, v16);
        goto LABEL_70;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v69 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v44 = static _DictionaryStorage.copy(original:)();
    v34 = v44;
    v45 = *(v27 + 16);
    if (!v45)
    {
LABEL_68:

      v28 = v69;
      if (v4)
      {
        goto LABEL_33;
      }

      goto LABEL_69;
    }

    result = (v44 + 64);
    __src = (v27 + 64);
    v47 = ((1 << *(v34 + 32)) + 63) >> 6;
    if (v34 != v27 || result >= &__src[8 * v47])
    {
      result = memmove(result, __src, 8 * v47);
      v45 = *(v27 + 16);
    }

    v48 = 0;
    *(v34 + 16) = v45;
    v49 = 1 << *(v27 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = (v49 + 63) >> 6;
    v52 = v50 & *(v27 + 64);
    if (v52)
    {
      do
      {
LABEL_52:
        v75 = (v52 - 1) & v52;
        v54 = __clz(__rbit64(v52)) | (v48 << 6);
        v55 = *(*(v27 + 56) + 16 * v54);
        *(*(v34 + 48) + v54) = *(*(v27 + 48) + v54);
        *(*(v34 + 56) + 16 * v54) = v55;
        result = swift_unknownObjectRetain();
        v52 = v75;
      }

      while (v75);
    }

    v53 = v48;
    while (1)
    {
      v48 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v48 >= v51)
      {
        goto LABEL_68;
      }

      v52 = *&__src[8 * v48];
      ++v53;
      if (v52)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
    return result;
  }

LABEL_72:
  v67 = (v3 + 16);
  swift_unknownObjectRelease();
  *v67 = v73;
  v82 = v67[1];
  swift_unknownObjectRetain();
  Calendar.timeZone.setter(&v82);

  return swift_unknownObjectRelease();
}

uint64_t Date.ISO8601FormatStyle.init(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v74 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation14DateComponentsV18ISO8601FormatStyleV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - v6;
  outlined init with copy of Hashable & Sendable(a1, v73);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys();
  swift_unknownObjectRetain();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v73);
    return swift_unknownObjectRelease();
  }

  LOBYTE(v63) = 0;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  BYTE2(v70) = v66[0];
  LOBYTE(v63) = 1;
  lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v62 = v66[0];
  swift_unknownObjectRelease();
  v72 = v62;
  LOBYTE(v63) = 2;
  lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(&v70 + 1) = *&v66[0];
  LOBYTE(v63) = 3;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  BYTE4(v70) = v66[0];
  LOBYTE(v66[0]) = 4;
  BYTE1(v70) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v63) = 5;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  BYTE3(v70) = v66[0];
  LOBYTE(v63) = 6;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v70) = v66[0];
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v9 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v10 = *(v9 + 16);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v12 & 1) != 0))
  {
    v61 = *(*(v10 + 56) + 16 * v11);
    v13 = v61;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v9 + 24));
    v14 = v62;
    if (v13)
    {
LABEL_43:
      v71 = v61;
      v66[0] = v14;
      swift_unknownObjectRetain();
      Calendar.timeZone.setter(v66);
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v5 + 8))(v7, v4);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v63, v66);
      __swift_destroy_boxed_opaque_existential_1(v73);
      v66[0] = v70;
      v66[1] = v71;
      v66[2] = v72;
      result = outlined destroy of DateComponents.ISO8601FormatStyle(v66);
      v53 = v64;
      v54 = v74;
      *v74 = v63;
      v54[1] = v53;
      v54[2] = v65;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v9 + 24));
  }

  v15 = type metadata accessor for _CalendarGregorian();
  v16 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v69 = 7;
  v66[0] = 0uLL;
  v63 = 0uLL;
  v67 = 0;
  v68 = 1;
  *&v62 = v16;
  v58 = v15;
  v17 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v69, v66, &v63, 0, 1, 0, 1, &v67);
  os_unfair_lock_lock((v9 + 24));
  v18 = *(v9 + 16);
  if (*(v18 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 16 * v19);
LABEL_42:
      v61 = v21;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v9 + 24));

      v14 = v72;
      goto LABEL_43;
    }
  }

  *&v61 = v17;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v66[0] = *(v9 + 16);
  v23 = *&v66[0];
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v26 = *(v23 + 16);
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_24;
  }

  v59 = v24;
  v29 = *(v23 + 24);
  v60 = v9;
  if (v29 >= v28)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v32 = v62;
      if (v59)
      {
        goto LABEL_22;
      }

      goto LABEL_40;
    }

LABEL_24:
    v55 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v35 = v23;
    v36 = static _DictionaryStorage.copy(original:)();
    v23 = v36;
    v56 = v35;
    if (v35[2])
    {
      v37 = (v36 + 64);
      v38 = 1 << *(v23 + 32);
      v57 = (v56 + 8);
      v39 = (v38 + 63) >> 6;
      if (v23 != v56 || v37 >= &v57[8 * v39])
      {
        memmove(v37, v57, 8 * v39);
      }

      v40 = 0;
      v41 = v56;
      *(v23 + 16) = v56[2];
      v42 = 1 << *(v41 + 32);
      v43 = v41[8];
      v44 = -1;
      if (v42 < 64)
      {
        v44 = ~(-1 << v42);
      }

      v45 = v44 & v43;
      v46 = (v42 + 63) >> 6;
      if ((v44 & v43) != 0)
      {
        do
        {
          v47 = __clz(__rbit64(v45));
          v45 &= v45 - 1;
LABEL_37:
          v50 = v47 | (v40 << 6);
          v51 = *(v56[7] + 16 * v50);
          *(*(v23 + 48) + v50) = *(v56[6] + v50);
          *(*(v23 + 56) + 16 * v50) = v51;
          swift_unknownObjectRetain();
        }

        while (v45);
      }

      v48 = v40;
      while (1)
      {
        v40 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v40 >= v46)
        {
          goto LABEL_39;
        }

        v49 = *&v57[8 * v40];
        ++v48;
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          v45 = (v49 - 1) & v49;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_39:

    v32 = v62;
    v25 = v55;
    if (v59)
    {
      goto LABEL_22;
    }

LABEL_40:
    v34 = v61;
    specialized _NativeDictionary._insert(at:key:value:)(v25, 7, v61, v23, v58, v32);
    goto LABEL_41;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
  v23 = *&v66[0];
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  if ((v59 & 1) == (v31 & 1))
  {
    v25 = v30;
    v32 = v62;
    if ((v59 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_22:
    v33 = (*(v23 + 56) + 16 * v25);
    v34 = v61;
    *v33 = v61;
    v33[1] = v32;
    swift_unknownObjectRelease();
LABEL_41:
    v52 = v60;
    *(v60 + 16) = v23;
    *&v21 = v34;
    *(&v21 + 1) = v32;
    v9 = v52;
    goto LABEL_42;
  }

LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Date.ISO8601FormatStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation14DateComponentsV18ISO8601FormatStyleV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - v6;
  v8 = v1[1];
  v14[0] = *v1;
  v14[1] = v8;
  v15 = v1[2];
  v9 = BYTE2(v14[0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of DateComponents.ISO8601FormatStyle(v14, v13);
  lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13[0]) = v9;
  v16 = 0;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v15;
    v13[0] = v15;
    v16 = 1;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(&v14[0] + 1);
    swift_unknownObjectRelease();
    *&v13[0] = v11;
    v16 = 2;
    lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13[0]) = BYTE4(v14[0]);
    v16 = 3;
    lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13[0]) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13[0]) = BYTE3(v14[0]);
    v16 = 5;
    lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13[0]) = v14[0];
    v16 = 6;
    lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v5 + 8))(v7, v4);
  return outlined destroy of DateComponents.ISO8601FormatStyle(v14);
}

uint64_t Date.ISO8601FormatStyle.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 8);
  v5 = *(v1 + 40);
  String.hash(into:)();

  ObjectType = swift_getObjectType();
  (*(v5 + 120))(a1, ObjectType, v5);
  MEMORY[0x1865CD060](v4);
  String.hash(into:)();

  Hasher._combine(_:)(v3);
  String.hash(into:)();

  String.hash(into:)();
}

char *Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeZone:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  *(&v60 + 1) = 0;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  BYTE3(v60) = v6;
  BYTE4(v60) = v7;
  *&v62 = v8;
  *(&v62 + 1) = v9;
  LOWORD(v60) = 0;
  BYTE2(v60) = 1;
  v10 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v12 = *(v11 + 16);
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v14 & 1) != 0))
  {
    v52 = *(*(v12 + 56) + 16 * v13);
    v15 = *(*(v12 + 56) + 16 * v13);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v11 + 24));
    if (v15)
    {
LABEL_41:
      v61 = v52;
      v57 = v8;
      v58 = v9;
      result = Calendar.timeZone.setter(&v57);
      v48 = v61;
      *a4 = v60;
      a4[1] = v48;
      a4[2] = v62;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v11 + 24));
  }

  v16 = type metadata accessor for _CalendarGregorian();
  v17 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v59 = 7;
  v57 = 0;
  v58 = 0;
  v56[0] = 0;
  v56[1] = 0;
  v54 = 0;
  v55 = 1;
  v18 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v59, &v57, v56, 0, 1, 0, 1, &v54);
  os_unfair_lock_lock((v11 + 24));
  v19 = *(v11 + 16);
  if (*(v19 + 16))
  {
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 16 * v20);
LABEL_40:
      v52 = v22;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v11 + 24));

      goto LABEL_41;
    }
  }

  v53 = v9;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v11 + 16);
  v24 = v57;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v27 = *(v24 + 16);
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v4 = v26;
    if (*(v24 + 24) < v30)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
      v31 = v57;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v4 & 1) == (v32 & 1))
      {
        goto LABEL_19;
      }

      v25 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v24;
LABEL_19:
      v9 = v53;
      if (v4)
      {
LABEL_20:
        v33 = (*(v31 + 56) + 16 * v25);
        *v33 = v18;
        v33[1] = v17;
        swift_unknownObjectRelease();
LABEL_39:
        *(v11 + 16) = v31;
        *&v22 = v18;
        *(&v22 + 1) = v17;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v25, 7, v18, v31, v16, v17);
      goto LABEL_39;
    }
  }

  v49 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v34 = static _DictionaryStorage.copy(original:)();
  v31 = v34;
  if (!*(v24 + 16))
  {
LABEL_37:

    v25 = v49;
    v9 = v53;
    if (v4)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v34 + 64);
  v36 = (v24 + 64);
  v37 = ((1 << *(v31 + 32)) + 63) >> 6;
  if (v31 != v24 || result >= &v36[8 * v37])
  {
    result = memmove(result, v36, 8 * v37);
  }

  v38 = 0;
  *(v31 + 16) = *(v24 + 16);
  v39 = 1 << *(v24 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v24 + 64);
  v42 = (v39 + 63) >> 6;
  v50 = v42;
  if (v41)
  {
    do
    {
      v43 = __clz(__rbit64(v41));
      v51 = (v41 - 1) & v41;
LABEL_35:
      v46 = v43 | (v38 << 6);
      v47 = *(*(v24 + 56) + 16 * v46);
      *(*(v31 + 48) + v46) = *(*(v24 + 48) + v46);
      *(*(v31 + 56) + 16 * v46) = v47;
      result = swift_unknownObjectRetain();
      v42 = v50;
      v41 = v51;
    }

    while (v51);
  }

  v44 = v38;
  while (1)
  {
    v38 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v38 >= v42)
    {
      goto LABEL_37;
    }

    v45 = *(v24 + 64 + 8 * v38);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v51 = (v45 - 1) & v45;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t Date.ISO8601FormatStyle.year()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8 = v1[2];
  v3 = v8;
  v4 = *(&v7[0] + 1) | 1;
  *a1 = *&v7[0];
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v7, &v6);
}

uint64_t Date.ISO8601FormatStyle.weekOfYear()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8 = v1[2];
  v3 = v8;
  v4 = *(&v7[0] + 1) | 4;
  *a1 = *&v7[0];
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v7, &v6);
}

uint64_t Date.ISO8601FormatStyle.month()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8 = v1[2];
  v3 = v8;
  v4 = *(&v7[0] + 1) | 2;
  *a1 = *&v7[0];
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v7, &v6);
}

uint64_t Date.ISO8601FormatStyle.day()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8 = v1[2];
  v3 = v8;
  v4 = *(&v7[0] + 1) | 8;
  *a1 = *&v7[0];
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v7, &v6);
}

uint64_t Date.ISO8601FormatStyle.time(includingFractionalSeconds:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v8[0] = *v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = *(&v8[0] + 1) | 0x10;
  *a2 = v8[0];
  *(a2 + 1) = a1;
  *(a2 + 2) = *(v2 + 2);
  *(a2 + 6) = *(v2 + 6);
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t Date.ISO8601FormatStyle.timeZone(separator:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v9[0] = *v2;
  v9[1] = v4;
  v9[2] = v5;
  v6 = *(&v9[0] + 1) | 0x20;
  *a2 = v9[0];
  *(a2 + 2) = v3;
  *(a2 + 3) = *(v2 + 3);
  *(a2 + 7) = *(v2 + 7);
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v9, &v8);
}

uint64_t Date.ISO8601FormatStyle.dateSeparator(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  v5 = v9;
  *a2 = *v2;
  *(a2 + 2) = *(v2 + 2);
  *(a2 + 3) = v3;
  *(a2 + 32) = v5;
  *(a2 + 20) = *(v2 + 20);
  *(a2 + 4) = *(v2 + 4);
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t Date.ISO8601FormatStyle.dateTimeSeparator(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9 = v2[2];
  v5 = v9;
  *a2 = v8[0];
  *(a2 + 4) = v3;
  *(a2 + 5) = *(v2 + 5);
  *(a2 + 21) = *(v2 + 21);
  *(a2 + 32) = v5;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t Date.ISO8601FormatStyle.timeSeparator(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9 = v2[2];
  v5 = v9;
  *a2 = v3;
  *(a2 + 1) = *(v2 + 1);
  *(a2 + 17) = *(v2 + 17);
  *(a2 + 32) = v5;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t Date.ISO8601FormatStyle.timeZoneSeparator(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9 = v2[2];
  v5 = v9;
  *a2 = v8[0];
  *(a2 + 2) = v3;
  *(a2 + 3) = *(v2 + 3);
  *(a2 + 19) = *(v2 + 19);
  *(a2 + 32) = v5;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

Swift::Int Date.ISO8601FormatStyle.hashValue.getter()
{
  Hasher.init(_seed:)();
  Date.ISO8601FormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.ISO8601FormatStyle()
{
  Hasher.init(_seed:)();
  Date.ISO8601FormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.ISO8601FormatStyle()
{
  Hasher.init(_seed:)();
  Date.ISO8601FormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

Foundation::Date __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Date.ISO8601FormatStyle.parse(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  v79[6] = *MEMORY[0x1E69E9840];
  Date.ISO8601FormatStyle.parse(_:in:)(a1._countAndFlagsBits, a1._object, &__tp);
  if ((v78 & 1) == 0)
  {
    *&result._time = __tp.tv_nsec;
    *v4 = __tp.tv_nsec;
    return result;
  }

  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  v5 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](countAndFlagsBits, object);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
  MEMORY[0x1865CB0E0](v5._countAndFlagsBits, v5._object);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  tv_sec = __tp.tv_sec;
  tv_nsec = __tp.tv_nsec;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v9 = @"NSDebugDescription";
  v10 = v9;
  if (!isTaggedPointer)
  {
    goto LABEL_8;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_18;
    case 0x16:
      v19 = [(__CFString *)v10 UTF8String];
      if (!v19)
      {
        __break(1u);
        goto LABEL_100;
      }

      v20 = String.init(utf8String:)(v19);
      if (v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      _CFIndirectTaggedPointerStringGetContents();
      v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v21)
      {
        [(__CFString *)v10 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v12 = v75;
        v14 = v76;
        goto LABEL_24;
      }

LABEL_19:
      v12 = v20;
      v14 = v21;

      goto LABEL_24;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

      goto LABEL_24;
  }

LABEL_8:
  LOBYTE(v75) = 0;
  __tp.tv_sec = 0;
  if (!__CFStringIsCF())
  {
    v16 = v10;
    v17 = String.init(_nativeStorage:)();
    if (v18)
    {
      v12 = v17;
      v14 = v18;

      goto LABEL_24;
    }

    __tp.tv_sec = [(__CFString *)v16 length];
    if (__tp.tv_sec)
    {
      goto LABEL_23;
    }

LABEL_14:
    v12 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_24;
  }

  if (!__tp.tv_sec)
  {

    goto LABEL_14;
  }

LABEL_23:
  v12 = String.init(_cocoaString:)();
  v14 = v22;
LABEL_24:
  v79[0] = v12;
  v79[1] = v14;
  v79[5] = MEMORY[0x1E69E6158];
  v79[2] = tv_sec;
  v79[3] = tv_nsec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v23 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v79, &__tp);

  outlined destroy of TermOfAddress?(v79, &_sSS_yptMd);
  v24 = __tp.tv_sec;
  v25 = __tp.tv_nsec;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(__tp.tv_sec, __tp.tv_nsec);
  v28 = v27;

  if (v28)
  {
    __break(1u);
    goto LABEL_97;
  }

  v23[(v26 >> 6) + 8] |= 1 << v26;
  v29 = (v23[6] + 16 * v26);
  *v29 = v24;
  v29[1] = v25;
  outlined init with take of Any(&v78, (v23[7] + 32 * v26));
  v30 = v23[2];
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v23[2] = v32;
  v33 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v34 = @"NSCocoaErrorDomain";
  v35 = v34;
  if (!v33)
  {
    goto LABEL_31;
  }

  v36 = _objc_getTaggedPointerTag(v34);
  switch(v36)
  {
    case 0:
LABEL_40:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v41)
      {
        [(__CFString *)v35 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_46;
      }

      goto LABEL_41;
    case 0x16:
      v39 = [(__CFString *)v35 UTF8String];
      if (v39)
      {
        String.init(utf8String:)(v39);
        if (v40)
        {
          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    case 2:
      MEMORY[0x1EEE9AC00](v36);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_46;
  }

LABEL_31:
  LOBYTE(v75) = 0;
  __tp.tv_sec = 0;
  if (!__CFStringIsCF())
  {
    v37 = v35;
    String.init(_nativeStorage:)();
    if (v38 || (__tp.tv_sec = [(__CFString *)v37 length]) == 0)
    {

      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (!__tp.tv_sec)
  {
LABEL_41:

    goto LABEL_46;
  }

LABEL_45:
  String.init(_cocoaString:)();
LABEL_46:
  v42 = objc_allocWithZone(NSError);
  v43 = String._bridgeToObjectiveCImpl()();

  v44 = [v42 initWithDomain:v43 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v45 = [v44 domain];
  if (!v45)
  {
    goto LABEL_58;
  }

  v46 = v45;
  v47 = _objc_isTaggedPointer(v45);
  v48 = v46;
  v49 = v48;
  if ((v47 & 1) == 0)
  {
LABEL_52:
    LOBYTE(v75) = 0;
    __tp.tv_sec = 0;
    if (!__CFStringIsCF())
    {
      v54 = v49;
      v55 = String.init(_nativeStorage:)();
      if (v56)
      {
        v51 = v55;
        v53 = v56;

        goto LABEL_70;
      }

      __tp.tv_sec = [v54 length];
      if (!__tp.tv_sec)
      {

        v51 = 0;
        v53 = 0xE000000000000000;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    if (__tp.tv_sec)
    {
LABEL_68:
      v51 = String.init(_cocoaString:)();
      v53 = v60;
      goto LABEL_69;
    }

LABEL_58:
    v51 = 0;
    v53 = 0xE000000000000000;
    goto LABEL_70;
  }

  v50 = _objc_getTaggedPointerTag(v48);
  if (!v50)
  {
    goto LABEL_62;
  }

  if (v50 != 22)
  {
    if (v50 == 2)
    {
      MEMORY[0x1EEE9AC00](v50);
      v51 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v53 = v52;

LABEL_70:
      v61 = v35;
      v62 = v61;
      if (!v33)
      {
        goto LABEL_75;
      }

      v63 = _objc_getTaggedPointerTag(v61);
      if (!v63)
      {
        goto LABEL_85;
      }

      if (v63 != 22)
      {
        if (v63 == 2)
        {
          MEMORY[0x1EEE9AC00](v63);
          v64 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v66 = v65;

          goto LABEL_91;
        }

LABEL_75:
        __tp.tv_sec = 0;
        if (__CFStringIsCF())
        {
          if (__tp.tv_sec)
          {
LABEL_90:
            v64 = String.init(_cocoaString:)();
            v66 = v73;
LABEL_91:
            if (v51 == v64 && v53 == v66)
            {

LABEL_95:
              swift_willThrow();
              return result;
            }

            v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v74)
            {
              goto LABEL_95;
            }

LABEL_98:
            __break(1u);
          }
        }

        else
        {
          v67 = v62;
          v68 = String.init(_nativeStorage:)();
          if (v69)
          {
            v64 = v68;
            v66 = v69;

            goto LABEL_91;
          }

          __tp.tv_sec = [(__CFString *)v67 length];
          if (__tp.tv_sec)
          {
            goto LABEL_90;
          }
        }

        v64 = 0;
        v66 = 0xE000000000000000;
        goto LABEL_91;
      }

      v70 = [(__CFString *)v62 UTF8String];
      if (v70)
      {
        v71 = String.init(utf8String:)(v70);
        if (v72)
        {
          goto LABEL_86;
        }

        __break(1u);
LABEL_85:
        _CFIndirectTaggedPointerStringGetContents();
        v71 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v72)
        {
          [(__CFString *)v62 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v64 = v75;
          v66 = v76;
          goto LABEL_91;
        }

LABEL_86:
        v64 = v71;
        v66 = v72;

        goto LABEL_91;
      }

      goto LABEL_101;
    }

    goto LABEL_52;
  }

  v57 = [v49 UTF8String];
  if (v57)
  {
    v58 = String.init(utf8String:)(v57);
    if (v59)
    {
      goto LABEL_63;
    }

    __break(1u);
LABEL_62:
    _CFIndirectTaggedPointerStringGetContents();
    v58 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v59)
    {
      [v49 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v51 = v75;
      v53 = v76;
      goto LABEL_69;
    }

LABEL_63:
    v51 = v58;
    v53 = v59;

LABEL_69:
    goto LABEL_70;
  }

LABEL_102:
  __break(1u);
  return result;
}

uint64_t Date.ISO8601FormatStyle.parseStrategy.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of Date.ISO8601FormatStyle(v6, &v5);
}

uint64_t protocol witness for ParseableFormatStyle.parseStrategy.getter in conformance Date.ISO8601FormatStyle@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of Date.ISO8601FormatStyle(v6, &v5);
}

double Date.ISO8601FormatStyle.consuming(_:startingAt:in:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3 >> 14 >= a4 >> 14)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
  }

  else
  {
    Date.ISO8601FormatStyle.parse(_:in:)(a1, a2, &v7);
    if (v8)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      result = *&v7;
      *a5 = v7;
      *(a5 + 16) = 0;
    }
  }

  return result;
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance Date.ISO8601FormatStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle();

  return MEMORY[0x1EEE6E5F8](a1, v2);
}