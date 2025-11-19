id Error.localizedDescription.getter(uint64_t a1)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1, v3);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = [_swift_stdlib_bridgeErrorToNSError() localizedDescription];
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
LABEL_10:
    LOBYTE(v31) = 0;
    v34[0] = 0;
    LOBYTE(v32) = 0;
    v33 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v16 = v34[0];
      if (v34[0])
      {
        if (v33 == 1)
        {
          if (v31)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v26 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_38;
        }

        if (v32)
        {
          if (v31 == 1)
          {
            MEMORY[0x1EEE9AC00](IsCF);
            *(&v31 - 4) = v11;
            *(&v31 - 3) = v34;
            *(&v31 - 4) = 1536;
            *(&v31 - 1) = v16;
          }

          else
          {
            v27 = [v11 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v27);
            *(&v31 - 4) = v11;
            *(&v31 - 3) = v34;
            *(&v31 - 4) = 134217984;
            *(&v31 - 1) = v28;
          }

          v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v23 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            goto LABEL_35;
          }
        }

LABEL_37:
        v26 = String.init(_cocoaString:)();
LABEL_38:
        v25 = v26;
        goto LABEL_39;
      }
    }

    else
    {
      v17 = v11;
      v18 = String.init(_nativeStorage:)();
      if (v19)
      {
        v20 = v18;

        return v20;
      }

      v34[0] = [v17 length];
      if (v34[0])
      {
        goto LABEL_37;
      }
    }

    return 0;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v10);
  if (!TaggedPointerTag)
  {
    v32 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v24)
    {
      [v11 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v25 = v31;
LABEL_39:

      return v25;
    }

LABEL_35:
    v25 = v23;

    goto LABEL_39;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v31 - 2) = v11;
      v13 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v13;
    }

    goto LABEL_10;
  }

  result = [v11 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v21)
    {
      v22 = result;

      return v22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *_getErrorDefaultUserInfo<A>(_:)(uint64_t a1, uint64_t a2)
{
  v275 = *MEMORY[0x1E69E9840];
  v2 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v261 = &v251 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v251 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v251 - v8;
  v263 = v10;
  v262 = v11;
  v12 = dispatch thunk of Error._domain.getter();
  v14 = v13;
  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v16 = @"NSCocoaErrorDomain";
  v17 = v16;
  if (!isTaggedPointer)
  {
LABEL_6:
    LOBYTE(v268) = 0;
    aBlock[0] = 0;
    LOBYTE(v267[0]) = 0;
    v266[0] = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v19 = aBlock[0];
      if (!aBlock[0])
      {

        v21 = 0xE000000000000000;
        goto LABEL_35;
      }

      if (v266[0] == 1)
      {
        if (v268)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v29 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_34;
      }

      if (v267[0])
      {
        if (v268 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v251 - 4) = v17;
          *(&v251 - 3) = aBlock;
          *(&v251 - 4) = 1536;
          *(&v251 - 1) = v19;
        }

        else
        {
          v31 = [(__CFString *)v17 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v31);
          *(&v251 - 4) = v17;
          *(&v251 - 3) = aBlock;
          *(&v251 - 4) = 134217984;
          *(&v251 - 1) = v32;
        }

        v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v21 = v34;
        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          v19 = v33;

          goto LABEL_35;
        }
      }
    }

    else
    {
      v23 = v17;
      v24 = String.init(_nativeStorage:)();
      if (v25)
      {
        v19 = v24;
        v21 = v25;

        goto LABEL_35;
      }

      aBlock[0] = [(__CFString *)v23 length];
      if (!aBlock[0])
      {

        v19 = 0;
        v21 = 0xE000000000000000;
        goto LABEL_35;
      }
    }

    v29 = String.init(_cocoaString:)();
LABEL_34:
    v19 = v29;
    v21 = v30;
    goto LABEL_35;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v16);
  if (!TaggedPointerTag)
  {
    goto LABEL_17;
  }

  if (TaggedPointerTag == 22)
  {
    result = [(__CFString *)v17 UTF8String];
    if (!result)
    {
LABEL_328:
      __break(1u);
      goto LABEL_329;
    }

    v27 = String.init(utf8String:)(result);
    if (v28)
    {
LABEL_18:
      v19 = v27;
      v21 = v28;

      goto LABEL_35;
    }

    __break(1u);
LABEL_17:
    LOWORD(v267[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v28)
    {
      [(__CFString *)v17 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v21 = *(&v268 + 1);
      v19 = v268;
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  *(&v251 - 2) = v17;
  v19 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v21 = v20;

LABEL_35:
  if (v12 == v19 && v14 == v21)
  {

LABEL_39:

    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_43;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_39;
  }

  if (one-time initialization token for _errorDomainUserInfoProviderQueue != -1)
  {
    swift_once();
  }

  v42 = _errorDomainUserInfoProviderQueue;
  v38 = swift_allocObject();
  *(v38 + 16) = v12;
  *(v38 + 24) = v14;
  v40 = swift_allocObject();
  v37 = partial apply for closure #1 in _getErrorDefaultUserInfo<A>(_:);
  *(v40 + 16) = partial apply for closure #1 in _getErrorDefaultUserInfo<A>(_:);
  *(v40 + 24) = v38;
  v273 = partial apply for closure #1 in NSRunLoop.schedule(options:_:);
  v274 = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  v272 = &block_descriptor_16;
  v41 = _Block_copy(aBlock);

  dispatch_sync(v42, v41);
  _Block_release(v41);
  v39 = 1;
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
    goto LABEL_92;
  }

LABEL_43:
  v46 = *(v2 + 16);
  v45 = v2 + 16;
  v44 = v46;
  v46(v9, v263, v262);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13CustomNSError_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v268, aBlock);
    v47 = v44;
    v48 = v272;
    v49 = v273;
    __swift_project_boxed_opaque_existential_1(aBlock, v272);
    v50 = *(v49 + 4);
    v51 = v49;
    v44 = v47;
    v9 = v50(v48, v51);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {
    v270 = 0;
    v268 = 0u;
    v269 = 0u;
    outlined destroy of TermOfAddress?(&v268, &_s10Foundation13CustomNSError_pSgMd);
    v9 = MEMORY[0x1E69E7CC8];
  }

  v265 = v9;
  if (v39)
  {
    goto LABEL_308;
  }

  v44(v6, v263, v262);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14LocalizedError_pMd);
  v52 = swift_dynamicCast();
  v260 = v37;
  if ((v52 & 1) == 0)
  {
    v270 = 0;
    v268 = 0u;
    v269 = 0u;
    outlined destroy of TermOfAddress?(&v268, &_s10Foundation14LocalizedError_pSgMd);
    goto LABEL_225;
  }

  v258 = v44;
  v259 = v45;
  outlined init with take of Equatable(&v268, aBlock);
  v53 = v272;
  v54 = v273;
  __swift_project_boxed_opaque_existential_1(aBlock, v272);
  v55 = (*(v54 + 2))(v53, v54);
  if (v56)
  {
    v57 = v55;
    v58 = v56;
    v59 = _objc_isTaggedPointer(@"NSLocalizedDescription");
    v60 = @"NSLocalizedDescription";
    v42 = v60;
    v257 = v38;
    if (!v59)
    {
      goto LABEL_55;
    }

    v61 = _objc_getTaggedPointerTag(v60);
    if (v61)
    {
      if (v61 != 22)
      {
        if (v61 == 2)
        {
          v39 = &v251;
          MEMORY[0x1EEE9AC00](v61);
          *(&v251 - 2) = v42;
          v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v38 = v62;

          goto LABEL_83;
        }

LABEL_55:
        LOBYTE(v267[0]) = 0;
        *&v268 = 0;
        v266[0] = 0;
        LOBYTE(v264) = 0;
        v63 = __CFStringIsCF();
        if (v63)
        {
          v41 = v268;
          if (!v268)
          {

            v38 = 0xE000000000000000;
            goto LABEL_83;
          }

          if (v264 == 1)
          {
            if (v267[0])
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v41 = String.init<A>(_immortalCocoaString:count:encoding:)();
            v38 = v68;
LABEL_83:
            *(&v269 + 1) = MEMORY[0x1E69E6158];
            *&v268 = v57;
            *(&v268 + 1) = v58;
            outlined init with take of Any(&v268, v267);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v264 = v9;
            v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v38);
            v77 = *(v9 + 2);
            v78 = (v76 & 1) == 0;
            v79 = __OFADD__(v77, v78);
            v80 = v77 + v78;
            if (!v79)
            {
              LOBYTE(v42) = v76;
              if (*(v9 + 3) < v80)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, isUniquelyReferenced_nonNull_native);
                v81 = v264;
                v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v38);
                if ((v42 & 1) != (v82 & 1))
                {
                  goto LABEL_265;
                }

LABEL_89:
                if (v42)
                {
LABEL_90:
                  v83 = v43;

                  v84 = (*(v81 + 7) + 32 * v83);
                  __swift_destroy_boxed_opaque_existential_1(v84);
                  outlined init with take of Any(v267, v84);
LABEL_110:
                  v265 = v81;
                  v38 = v257;
                  goto LABEL_111;
                }

LABEL_109:
                specialized _NativeDictionary._insert(at:key:value:)(v43, v41, v38, v267, v81);
                goto LABEL_110;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                v81 = v9;
                goto LABEL_89;
              }

LABEL_93:
              v253 = v43;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
              v85 = static _DictionaryStorage.copy(original:)();
              v81 = v85;
              if (*(v9 + 2))
              {
                result = (v85 + 64);
                v86 = 1 << v81[32];
                v254 = v9 + 64;
                v87 = (v86 + 63) >> 6;
                if (v81 != v9 || result >= &v254[8 * v87])
                {
                  result = memmove(result, v254, 8 * v87);
                }

                v88 = 0;
                *(v81 + 2) = *(v9 + 2);
                v89 = 1 << v9[32];
                v90 = -1;
                if (v89 < 64)
                {
                  v90 = ~(-1 << v89);
                }

                v256 = v90 & *(v9 + 8);
                v252 = (v89 + 63) >> 6;
                while (v256)
                {
                  v91 = __clz(__rbit64(v256));
                  v256 &= v256 - 1;
LABEL_107:
                  v94 = v91 | (v88 << 6);
                  v95 = 16 * v94;
                  v96 = *(v9 + 7);
                  v97 = (*(v9 + 6) + 16 * v94);
                  v98 = v97[1];
                  v255 = *v97;
                  v99 = 32 * v94;
                  outlined init with copy of Any(v96 + 32 * v94, v266);
                  v100 = (*(v81 + 6) + v95);
                  *v100 = v255;
                  v100[1] = v98;
                  outlined init with take of Any(v266, (*(v81 + 7) + v99));
                }

                v92 = v88;
                while (1)
                {
                  v88 = v92 + 1;
                  if (__OFADD__(v92, 1))
                  {
                    break;
                  }

                  if (v88 >= v252)
                  {
                    goto LABEL_108;
                  }

                  v93 = *&v254[8 * v88];
                  ++v92;
                  if (v93)
                  {
                    v91 = __clz(__rbit64(v93));
                    v256 = (v93 - 1) & v93;
                    goto LABEL_107;
                  }
                }

LABEL_327:
                __break(1u);
                goto LABEL_328;
              }

LABEL_108:

              v43 = v253;
              if (v42)
              {
                goto LABEL_90;
              }

              goto LABEL_109;
            }

LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          if (v266[0])
          {
            if (LOBYTE(v267[0]) == 1)
            {
              v39 = &v251;
              MEMORY[0x1EEE9AC00](v63);
              *(&v251 - 4) = v42;
              *(&v251 - 3) = &v268;
              *(&v251 - 4) = 1536;
              *(&v251 - 1) = v41;
            }

            else
            {
              v69 = [v42 lengthOfBytesUsingEncoding_];
              v39 = &v251;
              MEMORY[0x1EEE9AC00](v69);
              *(&v251 - 4) = v42;
              *(&v251 - 3) = &v268;
              *(&v251 - 4) = 134217984;
              *(&v251 - 1) = v70;
            }

            v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v38 = v72;
            v73 = HIBYTE(v72) & 0xF;
            if ((v72 & 0x2000000000000000) == 0)
            {
              v73 = v71 & 0xFFFFFFFFFFFFLL;
            }

            if (v73)
            {
              v41 = v71;

              goto LABEL_83;
            }
          }
        }

        else
        {
          v39 = v42;
          v64 = String.init(_nativeStorage:)();
          if (v65)
          {
            v41 = v64;
            v38 = v65;

            goto LABEL_83;
          }

          *&v268 = [v39 length];
          if (!v268)
          {

            v41 = 0;
            v38 = 0xE000000000000000;
            goto LABEL_83;
          }
        }

        v41 = String.init(_cocoaString:)();
        v38 = v74;
        v9 = v265;
        goto LABEL_83;
      }

      result = [v42 UTF8String];
      if (!result)
      {
LABEL_331:
        __break(1u);
        goto LABEL_332;
      }

      v66 = String.init(utf8String:)(result);
      if (v67)
      {
LABEL_67:
        v41 = v66;
        v38 = v67;

        goto LABEL_83;
      }

      __break(1u);
    }

    *v266 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v67)
    {
      [v42 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v38 = *(&v267[0] + 1);
      v41 = *&v267[0];
      goto LABEL_83;
    }

    goto LABEL_67;
  }

LABEL_111:
  v101 = v272;
  v102 = v273;
  __swift_project_boxed_opaque_existential_1(aBlock, v272);
  v103 = (*(v102 + 3))(v101, v102);
  if (!v104)
  {
    goto LABEL_149;
  }

  v105 = v103;
  v106 = v104;
  v107 = _objc_isTaggedPointer(@"NSLocalizedFailureReason");
  v108 = @"NSLocalizedFailureReason";
  v109 = v108;
  if (!v107)
  {
LABEL_117:
    LOBYTE(v267[0]) = 0;
    *&v268 = 0;
    v266[0] = 0;
    LOBYTE(v264) = 0;
    v114 = __CFStringIsCF();
    if (v114)
    {
      v115 = v268;
      if (v268)
      {
        if (v264 == 1)
        {
          if (v267[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v121 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_147;
        }

        if (v266[0])
        {
          if (LOBYTE(v267[0]) == 1)
          {
            MEMORY[0x1EEE9AC00](v114);
            *(&v251 - 4) = v109;
            *(&v251 - 3) = &v268;
            *(&v251 - 4) = 1536;
            *(&v251 - 1) = v115;
          }

          else
          {
            v123 = [(__CFString *)v109 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v123);
            *(&v251 - 4) = v109;
            *(&v251 - 3) = &v268;
            *(&v251 - 4) = 134217984;
            *(&v251 - 1) = v124;
          }

          v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v113 = v126;
          v127 = HIBYTE(v126) & 0xF;
          if ((v126 & 0x2000000000000000) == 0)
          {
            v127 = v125 & 0xFFFFFFFFFFFFLL;
          }

          if (v127)
          {
            v111 = v125;
            goto LABEL_131;
          }
        }

LABEL_146:
        v121 = String.init(_cocoaString:)();
LABEL_147:
        v111 = v121;
        v113 = v122;
        goto LABEL_148;
      }
    }

    else
    {
      v116 = v109;
      v117 = String.init(_nativeStorage:)();
      if (v118)
      {
        v111 = v117;
        v113 = v118;

        goto LABEL_148;
      }

      *&v268 = [(__CFString *)v116 length];
      if (v268)
      {
        goto LABEL_146;
      }
    }

    v111 = 0;
    v113 = 0xE000000000000000;
    goto LABEL_148;
  }

  v110 = _objc_getTaggedPointerTag(v108);
  if (!v110)
  {
    goto LABEL_129;
  }

  if (v110 == 22)
  {
    result = [(__CFString *)v109 UTF8String];
    if (!result)
    {
LABEL_332:
      __break(1u);
      goto LABEL_333;
    }

    v119 = String.init(utf8String:)(result);
    if (v120)
    {
LABEL_130:
      v111 = v119;
      v113 = v120;
LABEL_131:

      goto LABEL_148;
    }

    __break(1u);
LABEL_129:
    *v266 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v119 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v120)
    {
      [(__CFString *)v109 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v113 = *(&v267[0] + 1);
      v111 = *&v267[0];
      goto LABEL_148;
    }

    goto LABEL_130;
  }

  if (v110 != 2)
  {
    goto LABEL_117;
  }

  MEMORY[0x1EEE9AC00](v110);
  *(&v251 - 2) = v109;
  v111 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v113 = v112;

LABEL_148:
  *(&v269 + 1) = MEMORY[0x1E69E6158];
  *&v268 = v105;
  *(&v268 + 1) = v106;
  specialized Dictionary.subscript.setter(&v268, v111, v113);
LABEL_149:
  v128 = v272;
  v129 = v273;
  __swift_project_boxed_opaque_existential_1(aBlock, v272);
  v130 = (*(v129 + 4))(v128, v129);
  if (!v131)
  {
    goto LABEL_186;
  }

  v132 = v130;
  v133 = v131;
  v134 = _objc_isTaggedPointer(@"NSLocalizedRecoverySuggestion");
  v135 = @"NSLocalizedRecoverySuggestion";
  v136 = v135;
  if (!v134)
  {
LABEL_155:
    LOBYTE(v267[0]) = 0;
    *&v268 = 0;
    v266[0] = 0;
    LOBYTE(v264) = 0;
    v141 = __CFStringIsCF();
    if (v141)
    {
      v142 = v268;
      if (v268)
      {
        if (v264 == 1)
        {
          if (v267[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v148 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_184;
        }

        if (v266[0])
        {
          if (LOBYTE(v267[0]) == 1)
          {
            MEMORY[0x1EEE9AC00](v141);
            *(&v251 - 4) = v136;
            *(&v251 - 3) = &v268;
            *(&v251 - 4) = 1536;
            *(&v251 - 1) = v142;
          }

          else
          {
            v150 = [(__CFString *)v136 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v150);
            *(&v251 - 4) = v136;
            *(&v251 - 3) = &v268;
            *(&v251 - 4) = 134217984;
            *(&v251 - 1) = v151;
          }

          v152 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v140 = v153;
          v154 = HIBYTE(v153) & 0xF;
          if ((v153 & 0x2000000000000000) == 0)
          {
            v154 = v152 & 0xFFFFFFFFFFFFLL;
          }

          if (v154)
          {
            v138 = v152;

            goto LABEL_185;
          }
        }

LABEL_183:
        v148 = String.init(_cocoaString:)();
LABEL_184:
        v138 = v148;
        v140 = v149;
        goto LABEL_185;
      }
    }

    else
    {
      v143 = v136;
      v144 = String.init(_nativeStorage:)();
      if (v145)
      {
        v138 = v144;
        v140 = v145;

        goto LABEL_185;
      }

      *&v268 = [(__CFString *)v143 length];
      if (v268)
      {
        goto LABEL_183;
      }
    }

    v138 = 0;
    v140 = 0xE000000000000000;
    goto LABEL_185;
  }

  v137 = _objc_getTaggedPointerTag(v135);
  if (!v137)
  {
    goto LABEL_167;
  }

  if (v137 == 22)
  {
    result = [(__CFString *)v136 UTF8String];
    if (!result)
    {
LABEL_333:
      __break(1u);
      goto LABEL_334;
    }

    v146 = String.init(utf8String:)(result);
    if (v147)
    {
LABEL_168:
      v138 = v146;
      v140 = v147;

      goto LABEL_185;
    }

    __break(1u);
LABEL_167:
    *v266 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v146 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v147)
    {
      [(__CFString *)v136 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v140 = *(&v267[0] + 1);
      v138 = *&v267[0];
      goto LABEL_185;
    }

    goto LABEL_168;
  }

  if (v137 != 2)
  {
    goto LABEL_155;
  }

  MEMORY[0x1EEE9AC00](v137);
  *(&v251 - 2) = v136;
  v138 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v140 = v139;

LABEL_185:
  *(&v269 + 1) = MEMORY[0x1E69E6158];
  *&v268 = v132;
  *(&v268 + 1) = v133;
  specialized Dictionary.subscript.setter(&v268, v138, v140);
LABEL_186:
  v37 = v260;
  v155 = v272;
  v156 = v273;
  __swift_project_boxed_opaque_existential_1(aBlock, v272);
  v157 = (*(v156 + 5))(v155, v156);
  if (!v158)
  {
LABEL_224:
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v44 = v258;
LABEL_225:
    v44(v261, v263, v262);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16RecoverableError_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v270 = 0;
      v268 = 0u;
      v269 = 0u;
      outlined destroy of TermOfAddress?(&v268, &_s10Foundation16RecoverableError_pSgMd);
LABEL_308:
      v235 = _NativeDictionary.bridged()();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v37, v38);
      return v235;
    }

    outlined init with take of Equatable(&v268, aBlock);
    v182 = _objc_isTaggedPointer(@"NSLocalizedRecoveryOptions");
    v183 = @"NSLocalizedRecoveryOptions";
    v184 = v183;
    if (!v182)
    {
      goto LABEL_232;
    }

    v185 = _objc_getTaggedPointerTag(v183);
    if (v185)
    {
      if (v185 != 22)
      {
        if (v185 == 2)
        {
          MEMORY[0x1EEE9AC00](v185);
          *(&v251 - 2) = v184;
          v39 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v45 = v186;

LABEL_262:
          v201 = v272;
          v202 = v273;
          __swift_project_boxed_opaque_existential_1(aBlock, v272);
          v42 = (*(v202 + 2))(v201, v202);
          *(&v269 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          *&v268 = v42;
          outlined init with take of Any(&v268, v267);
          v41 = v265;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v264 = v41;
          v203 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v45);
          v205 = *(v41 + 16);
          v206 = (v204 & 1) == 0;
          v79 = __OFADD__(v205, v206);
          v207 = v205 + v206;
          if (v79)
          {
            __break(1u);
LABEL_310:
            v257 = v38;
            v261 = v203;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v236 = static _DictionaryStorage.copy(original:)();
            v208 = v236;
            if (!*(v41 + 16))
            {
LABEL_325:

              v203 = v261;
              v38 = v257;
              goto LABEL_268;
            }

            result = (v236 + 64);
            v237 = ((1 << *(v208 + 32)) + 63) >> 6;
            if (v208 != v41 || result >= v41 + 64 + 8 * v237)
            {
              result = memmove(result, (v41 + 64), 8 * v237);
            }

            v259 = v41 + 64;
            v238 = 0;
            *(v208 + 16) = *(v41 + 16);
            v239 = 1 << *(v41 + 32);
            v240 = -1;
            if (v239 < 64)
            {
              v240 = ~(-1 << v239);
            }

            v263 = v240 & *(v41 + 64);
            v258 = (v239 + 63) >> 6;
            while (v263)
            {
              v241 = __clz(__rbit64(v263));
              v263 &= v263 - 1;
LABEL_324:
              v244 = v241 | (v238 << 6);
              v245 = 16 * v244;
              v246 = *(v41 + 56);
              v247 = (*(v41 + 48) + 16 * v244);
              v248 = v247[1];
              v262 = *v247;
              v249 = 32 * v244;
              outlined init with copy of Any(v246 + 32 * v244, v266);
              v250 = (*(v208 + 48) + v245);
              *v250 = v262;
              v250[1] = v248;
              outlined init with take of Any(v266, (*(v208 + 56) + v249));
            }

            v242 = v238;
            while (1)
            {
              v238 = v242 + 1;
              if (__OFADD__(v242, 1))
              {
                break;
              }

              if (v238 >= v258)
              {
                goto LABEL_325;
              }

              v243 = *(v259 + 8 * v238);
              ++v242;
              if (v243)
              {
                v241 = __clz(__rbit64(v243));
                v263 = (v243 - 1) & v243;
                goto LABEL_324;
              }
            }

            __break(1u);
            goto LABEL_327;
          }

          LOBYTE(v42) = v204;
          if (*(v41 + 24) >= v207)
          {
LABEL_266:
            if (isUniquelyReferenced_nonNull_native)
            {
              v208 = v41;
              goto LABEL_268;
            }

            goto LABEL_310;
          }

          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v207, isUniquelyReferenced_nonNull_native);
          v208 = v264;
          v203 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v45);
          if ((v42 & 1) == (v209 & 1))
          {
LABEL_268:
            v37 = v260;
            if (v42)
            {
              v210 = v203;

              v211 = (*(v208 + 56) + 32 * v210);
              __swift_destroy_boxed_opaque_existential_1(v211);
              outlined init with take of Any(v267, v211);
            }

            else
            {
              specialized _NativeDictionary._insert(at:key:value:)(v203, v39, v45, v267, v208);
            }

            v265 = v208;
            v212 = _objc_isTaggedPointer(@"NSRecoveryAttempter");
            v213 = @"NSRecoveryAttempter";
            v214 = v213;
            if ((v212 & 1) == 0)
            {
              goto LABEL_276;
            }

            v215 = _objc_getTaggedPointerTag(v213);
            if (!v215)
            {
              goto LABEL_288;
            }

            if (v215 != 22)
            {
              if (v215 == 2)
              {
                MEMORY[0x1EEE9AC00](v215);
                *(&v251 - 2) = v214;
                v216 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v218 = v217;

LABEL_307:
                v233 = type metadata accessor for __NSErrorRecoveryAttempter();
                v234 = swift_allocObject();
                *(&v269 + 1) = v233;
                *&v268 = v234;
                specialized Dictionary.subscript.setter(&v268, v216, v218);
                __swift_destroy_boxed_opaque_existential_1(aBlock);
                goto LABEL_308;
              }

LABEL_276:
              LOBYTE(v267[0]) = 0;
              *&v268 = 0;
              v266[0] = 0;
              LOBYTE(v264) = 0;
              v219 = __CFStringIsCF();
              if (v219)
              {
                v220 = v268;
                if (v268)
                {
                  if (v264 == 1)
                  {
                    if (v267[0])
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v228 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_306;
                  }

                  if (v266[0])
                  {
                    if (LOBYTE(v267[0]) == 1)
                    {
                      MEMORY[0x1EEE9AC00](v219);
                      *(&v251 - 4) = v214;
                      *(&v251 - 3) = &v268;
                      *(&v251 - 4) = 1536;
                      *(&v251 - 1) = v220;
                    }

                    else
                    {
                      v230 = [(__CFString *)v214 lengthOfBytesUsingEncoding:4];
                      MEMORY[0x1EEE9AC00](v230);
                      *(&v251 - 4) = v214;
                      *(&v251 - 3) = &v268;
                      *(&v251 - 4) = 134217984;
                      *(&v251 - 1) = v231;
                    }

                    v226 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v218 = v227;
                    v232 = HIBYTE(v227) & 0xF;
                    if ((v227 & 0x2000000000000000) == 0)
                    {
                      v232 = v226 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v232)
                    {
                      v216 = v226;
                      goto LABEL_290;
                    }
                  }

LABEL_305:
                  v228 = String.init(_cocoaString:)();
LABEL_306:
                  v216 = v228;
                  v218 = v229;
                  goto LABEL_307;
                }
              }

              else
              {
                v221 = v214;
                v222 = String.init(_nativeStorage:)();
                if (v223)
                {
                  v216 = v222;
                  v218 = v223;

                  goto LABEL_307;
                }

                *&v268 = [(__CFString *)v221 length];
                if (v268)
                {
                  goto LABEL_305;
                }
              }

              v216 = 0;
              v218 = 0xE000000000000000;
              goto LABEL_307;
            }

            result = [(__CFString *)v214 UTF8String];
            if (result)
            {
              v224 = String.init(utf8String:)(result);
              if (v225)
              {
LABEL_289:
                v216 = v224;
                v218 = v225;
LABEL_290:

                goto LABEL_307;
              }

              __break(1u);
LABEL_288:
              *v266 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v224 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v225)
              {
                [(__CFString *)v214 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v218 = *(&v267[0] + 1);
                v216 = *&v267[0];
                goto LABEL_307;
              }

              goto LABEL_289;
            }

            goto LABEL_330;
          }

LABEL_265:
          v203 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_266;
        }

LABEL_232:
        LOBYTE(v267[0]) = 0;
        *&v268 = 0;
        v266[0] = 0;
        LOBYTE(v264) = 0;
        v187 = __CFStringIsCF();
        if (v187)
        {
          v188 = v268;
          if (v268)
          {
            if (v264 == 1)
            {
              if (v267[0])
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v196 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_261;
            }

            if (v266[0])
            {
              if (LOBYTE(v267[0]) == 1)
              {
                MEMORY[0x1EEE9AC00](v187);
                *(&v251 - 4) = v184;
                *(&v251 - 3) = &v268;
                *(&v251 - 4) = 1536;
                *(&v251 - 1) = v188;
              }

              else
              {
                v198 = [(__CFString *)v184 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v198);
                *(&v251 - 4) = v184;
                *(&v251 - 3) = &v268;
                *(&v251 - 4) = 134217984;
                *(&v251 - 1) = v199;
              }

              v194 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v45 = v195;
              v200 = HIBYTE(v195) & 0xF;
              if ((v195 & 0x2000000000000000) == 0)
              {
                v200 = v194 & 0xFFFFFFFFFFFFLL;
              }

              if (v200)
              {
                v39 = v194;

                goto LABEL_262;
              }
            }

LABEL_260:
            v196 = String.init(_cocoaString:)();
LABEL_261:
            v39 = v196;
            v45 = v197;
            goto LABEL_262;
          }
        }

        else
        {
          v189 = v184;
          v190 = String.init(_nativeStorage:)();
          if (v191)
          {
            v39 = v190;
            v45 = v191;

            goto LABEL_262;
          }

          *&v268 = [(__CFString *)v189 length];
          if (v268)
          {
            goto LABEL_260;
          }
        }

        v39 = 0;
        v45 = 0xE000000000000000;
        goto LABEL_262;
      }

      result = [(__CFString *)v184 UTF8String];
      if (!result)
      {
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
        goto LABEL_331;
      }

      v192 = String.init(utf8String:)(result);
      if (v193)
      {
LABEL_245:
        v39 = v192;
        v45 = v193;

        goto LABEL_262;
      }

      __break(1u);
    }

    *v266 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v192 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v193)
    {
      [(__CFString *)v184 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v45 = *(&v267[0] + 1);
      v39 = *&v267[0];
      goto LABEL_262;
    }

    goto LABEL_245;
  }

  v159 = v157;
  v160 = v158;
  v161 = _objc_isTaggedPointer(@"NSHelpAnchor");
  v162 = @"NSHelpAnchor";
  v163 = v162;
  if (!v161)
  {
    goto LABEL_192;
  }

  v164 = _objc_getTaggedPointerTag(v162);
  if (!v164)
  {
    goto LABEL_204;
  }

  if (v164 != 22)
  {
    if (v164 == 2)
    {
      MEMORY[0x1EEE9AC00](v164);
      *(&v251 - 2) = v163;
      v165 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v167 = v166;

LABEL_223:
      *(&v269 + 1) = MEMORY[0x1E69E6158];
      *&v268 = v159;
      *(&v268 + 1) = v160;
      specialized Dictionary.subscript.setter(&v268, v165, v167);
      v37 = v260;
      goto LABEL_224;
    }

LABEL_192:
    LOBYTE(v267[0]) = 0;
    *&v268 = 0;
    v266[0] = 0;
    LOBYTE(v264) = 0;
    v168 = __CFStringIsCF();
    if (v168)
    {
      v169 = v268;
      if (v268)
      {
        if (v264 == 1)
        {
          if (v267[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v175 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_222;
        }

        if (v266[0])
        {
          if (LOBYTE(v267[0]) == 1)
          {
            MEMORY[0x1EEE9AC00](v168);
            *(&v251 - 4) = v163;
            *(&v251 - 3) = &v268;
            *(&v251 - 4) = 1536;
            *(&v251 - 1) = v169;
          }

          else
          {
            v177 = [(__CFString *)v163 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v177);
            *(&v251 - 4) = v163;
            *(&v251 - 3) = &v268;
            *(&v251 - 4) = 134217984;
            *(&v251 - 1) = v178;
          }

          v179 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v167 = v180;
          v181 = HIBYTE(v180) & 0xF;
          if ((v180 & 0x2000000000000000) == 0)
          {
            v181 = v179 & 0xFFFFFFFFFFFFLL;
          }

          if (v181)
          {
            v165 = v179;
            goto LABEL_206;
          }
        }

LABEL_221:
        v175 = String.init(_cocoaString:)();
LABEL_222:
        v165 = v175;
        v167 = v176;
        goto LABEL_223;
      }
    }

    else
    {
      v170 = v163;
      v171 = String.init(_nativeStorage:)();
      if (v172)
      {
        v165 = v171;
        v167 = v172;

        goto LABEL_223;
      }

      *&v268 = [(__CFString *)v170 length];
      if (v268)
      {
        goto LABEL_221;
      }
    }

    v165 = 0;
    v167 = 0xE000000000000000;
    goto LABEL_223;
  }

  result = [(__CFString *)v163 UTF8String];
  if (result)
  {
    v173 = String.init(utf8String:)(result);
    if (v174)
    {
LABEL_205:
      v165 = v173;
      v167 = v174;
LABEL_206:

      goto LABEL_223;
    }

    __break(1u);
LABEL_204:
    *v266 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v173 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v174)
    {
      [(__CFString *)v163 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v167 = *(&v267[0] + 1);
      v165 = *&v267[0];
      goto LABEL_223;
    }

    goto LABEL_205;
  }

LABEL_334:
  __break(1u);
  return result;
}

uint64_t sub_180857560()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void closure #1 in _getErrorDefaultUserInfo<A>(_:)()
{
  v0 = objc_opt_self();
  v1 = [v0 userInfoValueProviderForDomain_];
  swift_unknownObjectRelease();
  if (v1)
  {

    _Block_release(v1);
  }

  else
  {
    v2 = String._bridgeToObjectiveCImpl()();
    v4[4] = closure #1 in closure #1 in _getErrorDefaultUserInfo<A>(_:);
    v4[5] = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error, @guaranteed String) -> (@out Any?);
    v4[3] = &block_descriptor_121;
    v3 = _Block_copy(v4);
    [v0 setUserInfoValueProviderForDomain:v2 provider:v3];
    _Block_release(v3);
    swift_unknownObjectRelease();
  }
}

uint64_t _LocaleICU.usesMetricSystem.getter()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock((v1 + 536));
  closure #1 in _LocaleICU.measurementSystem.getterpartial apply((v1 + 16), &v8);
  os_unfair_lock_unlock((v1 + 536));
  v2 = v9;
  v3 = v10;
  if (one-time initialization token for us != -1)
  {
    v7 = v9;
    swift_once();
    v2 = v7;
  }

  if (v2 == xmmword_1EA7B2450 && v3 == *(&xmmword_1EA7B2450 + 1))
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t closure #1 in _LocaleICU.measurementSystem.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a1[35];
  v6 = a1[36];
  v5 = a1[37];
  v7 = a1[38];
  if (v6)
  {
    *a2 = v4;
    a2[1] = v6;
    a2[2] = v5;
    a2[3] = v7;
  }

  else
  {
    v44 = v4;
    v8 = specialized static Locale.keywordValue(identifier:key:)();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = v8 == 0x6C61697265706D69 && v9 == 0xE800000000000000;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (one-time initialization token for uk != -1)
        {
          swift_once();
        }

        v13 = *algn_1EA7AFAD8;
        v14 = *(&xmmword_1EA7AFAE0 + 1);
        v39 = xmmword_1EA7AFAE0;
        v40 = static Locale.MeasurementSystem.uk;
        v15 = a1[35];
        v16 = a1[36];

        outlined consume of Locale.LanguageCode?(v15, v16);
        a1[35] = v40;
        a1[36] = v13;
        a1[37] = v39;
        a1[38] = v14;
        v17 = *algn_1EA7AFAD8;
        v18 = xmmword_1EA7AFAE0;
        *a2 = static Locale.MeasurementSystem.uk;
        a2[1] = v17;
        *(a2 + 1) = v18;
      }

      else
      {
        v24 = String.lowercased()();
        v25 = a1[35];
        v26 = a1[36];

        outlined consume of Locale.LanguageCode?(v25, v26);
        a1[35] = v10;
        a1[36] = v11;
        *(a1 + 37) = v24;
        *a2 = v10;
        a2[1] = v11;
        *(a2 + 1) = v24;
      }
    }

    else
    {
      _LocaleICU.forceMeasurementSystem.getter(&v45);
      v19 = v46;
      if (v46)
      {
        v21 = v47;
        v20 = v48;
        v22 = v45;
        v23 = a1[35];
        v41 = a1[36];

        outlined consume of Locale.LanguageCode?(v23, v41);
        a1[35] = v22;
        a1[36] = v19;
        a1[37] = v21;
        a1[38] = v20;
        *a2 = v22;
        a2[1] = v19;
        a2[2] = v21;
        a2[3] = v20;
      }

      else
      {
        LODWORD(v45) = 0;
        String.utf8CString.getter();
        MeasurementSystem = ulocdata_getMeasurementSystem();

        if (v45 <= 0)
        {
          if (MeasurementSystem == 2)
          {
            if (one-time initialization token for uk != -1)
            {
              swift_once();
            }

            v33 = &static Locale.MeasurementSystem.uk;
          }

          else if (MeasurementSystem == 1)
          {
            if (one-time initialization token for us != -1)
            {
              swift_once();
            }

            v33 = &static Locale.MeasurementSystem.us;
          }

          else
          {
            if (one-time initialization token for metric != -1)
            {
              swift_once();
            }

            v33 = &static Locale.MeasurementSystem.metric;
          }

          v35 = *v33;
          v34 = v33[1];
          v30 = v33[3];
          v43 = v33[2];

          v36 = a1[35];
          v37 = a1[36];

          outlined consume of Locale.LanguageCode?(v36, v37);
          a1[35] = v35;
          a1[36] = v34;
          a1[37] = v43;
          a1[38] = v30;
          *a2 = v35;
          a2[1] = v34;
          a2[2] = v43;
        }

        else
        {
          if (one-time initialization token for metric != -1)
          {
            swift_once();
          }

          v29 = static Locale.MeasurementSystem.metric;
          v28 = *algn_1EA7B00F8;
          v30 = *(&xmmword_1EA7B0100 + 1);
          v31 = xmmword_1EA7B0100;
          v32 = a1[36];
          v42 = a1[35];
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          outlined consume of Locale.LanguageCode?(v42, v32);
          a1[35] = v29;
          a1[36] = v28;
          a1[37] = v31;
          a1[38] = v30;
          *a2 = v29;
          a2[1] = v28;
          a2[2] = v31;
        }

        a2[3] = v30;
      }
    }

    v4 = v44;
  }

  return outlined copy of Locale.LanguageCode?(v4, v6);
}

uint64_t _LocaleICU.forceMeasurementSystem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  *v13 = v4;
  *&v13[12] = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v6;
  v12[4] = *(v1 + 120);
  v12[5] = v3;
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  result = _s10Foundation17LocalePreferencesVSgWOg(v12);
  if (result == 1)
  {
    goto LABEL_2;
  }

  if (LOBYTE(v12[0]) == 2)
  {
    if (v13[24] != 2)
    {
      goto LABEL_5;
    }

LABEL_2:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if ((v12[0] & 1) == 0)
  {
    if (one-time initialization token for us != -1)
    {
      swift_once();
    }

    v8 = &static Locale.MeasurementSystem.us;
    goto LABEL_18;
  }

  if (v13[24] == 2)
  {
    goto LABEL_2;
  }

  if (v13[24])
  {
    if (one-time initialization token for uk != -1)
    {
      swift_once();
    }

    v8 = &static Locale.MeasurementSystem.uk;
    goto LABEL_18;
  }

LABEL_5:
  if (v13[24])
  {
    goto LABEL_2;
  }

  if (one-time initialization token for metric != -1)
  {
    swift_once();
  }

  v8 = &static Locale.MeasurementSystem.metric;
LABEL_18:
  v9 = v8[1];
  v10 = v8[2];
  v11 = v8[3];
  *a1 = *v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
}

void __DataStorage.length.setter(Swift::Int growingTo)
{
  if ((*(v1 + 32) & 0x7FFFFFFFFFFFFFFFLL) < growingTo || (v3 = *(v1 + 16)) == 0)
  {
    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(growingTo, 1);
    goto LABEL_8;
  }

  v4 = *(v1 + 24);
  if (v4 >= growingTo || *(v1 + 64) != 1)
  {
    if (v4 > growingTo)
    {
      *(v1 + 64) = 1;
    }

    goto LABEL_8;
  }

  if (!__OFSUB__(growingTo, v4))
  {
    bzero((v3 + v4), growingTo - v4);
LABEL_8:
    *(v1 + 24) = growingTo;
    return;
  }

  __break(1u);
}

id specialized static NSURLQueryItem._queryItemWith(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _NSSwiftURLQueryItem();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____NSSwiftURLQueryItem_queryItem];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v11 = String._bridgeToObjectiveCImpl()();
  if (a4)
  {
    v12 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v9;
  v15.super_class = v8;

  v13 = objc_msgSendSuper2(&v15, sel_initWithName_value_, v11, v12);
  swift_unknownObjectRelease();

  return v13;
}

Swift::Void __swiftcall URLComponents._URLComponents.setQueryItems(_:)(Swift::OpaquePointer_optional a1)
{
  *(v1 + 8) = 0;
  *(v1 + 15) = 0;
  if (!a1.value._rawValue)
  {

    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    return;
  }

  rawValue = a1.value._rawValue;
  v3 = *(a1.value._rawValue + 2);
  if (!v3)
  {

    *(v1 + 120) = xmmword_1812476D0;
    return;
  }

  v98 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = 0;
  v90 = 0;
  v5 = v98;
  v93 = rawValue + 32;
  v6 = MEMORY[0x1E69E6158];
  v92 = v3;
  while (1)
  {
    v7 = v6;
    v8 = &v93[32 * v4];
    v10 = *v8;
    v9 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    v96 = 0;
    v97 = 0xE000000000000000;
    if ((v9 & 0x1000000000000000) == 0)
    {
      if ((v9 & 0x2000000000000000) == 0)
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v14 = v10 & 0xFFFFFFFFFFFFLL;
          goto LABEL_8;
        }

        v13 = _StringObject.sharedUTF8.getter();
        if (v13)
        {
LABEL_8:
          if (!v14)
          {
            goto LABEL_78;
          }

          do
          {
            if (*v13 < 0)
            {
LABEL_24:
              v91 = v11;

              v17 = 0;
              goto LABEL_42;
            }

            v15 = *v13;
            if ((v15 - 39) >= 9 && v15 != 33 && v15 != 36)
            {
              if (v15 == 38)
              {
                goto LABEL_24;
              }

              v16 = v15 - 58;
              if ((v15 - 58) <= 0xFFFFFFF5)
              {
                if (v16 <= 6)
                {
                  if (((1 << v16) & 0x63) != 0)
                  {
                    goto LABEL_10;
                  }

                  if (v15 == 61)
                  {
                    goto LABEL_24;
                  }
                }

                if (v15 != 95 && (v15 - 65) >= 0x1A && v15 != 126 && (v15 - 97) >= 0x1A)
                {
                  goto LABEL_24;
                }
              }
            }

LABEL_10:
            ++v13;
            --v14;
          }

          while (v14);
        }

LABEL_78:

        goto LABEL_79;
      }

      v18 = HIBYTE(v9) & 0xF;
      v94 = v10;
      v95 = v9 & 0xFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        goto LABEL_78;
      }

      v19 = 0;
      while (1)
      {
        if (*(&v94 + v19) < 0)
        {
LABEL_41:
          v91 = v11;

          v17 = 1;
          goto LABEL_42;
        }

        v20 = *(&v94 + v19);
        if ((v20 - 39) >= 9 && v20 != 33 && v20 != 36)
        {
          if (v20 == 38)
          {
            goto LABEL_41;
          }

          v21 = v20 - 58;
          if ((v20 - 58) <= 0xFFFFFFF5)
          {
            if (v21 <= 6)
            {
              if (((1 << v21) & 0x63) != 0)
              {
                goto LABEL_27;
              }

              if (v20 == 61)
              {
                goto LABEL_41;
              }
            }

            if (v20 != 95 && (v20 - 65) >= 0x1A && v20 != 126 && (v20 - 97) >= 0x1A)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_27:
        if (v18 == ++v19)
        {
          goto LABEL_78;
        }
      }
    }

    v91 = v11;
    v94 = v10;
    v95 = v9;
    v31 = lazy protocol witness table accessor for type String and conformance String();

    v88 = v31;
    StringProtocol._ephemeralString.getter();
    v32 = String._bridgeToObjectiveCImpl()();

    v33 = [v32 _fastCharacterContents];
    v34 = v32;
    if (!v33)
    {
      break;
    }

    v94 = v10;
    v95 = v9;
    StringProtocol._ephemeralString.getter();
    v35 = String._bridgeToObjectiveCImpl()();

    v36 = [v35 length];
    swift_unknownObjectRelease();
    if (!v36)
    {
      v11 = v91;
LABEL_79:
      MEMORY[0x1865CB0E0](v10, v9);
      v6 = v7;
      if (!v12)
      {
        goto LABEL_151;
      }

      goto LABEL_80;
    }

    v37 = 2 * v36;
    v11 = v91;
    while (1)
    {
      v38 = *v33;
      if (v38 > 0x7F)
      {
        break;
      }

      v39 = *v33;
      if ((v39 - 39) >= 9 && v39 != 33 && v39 != 36)
      {
        if (v39 == 38)
        {
          break;
        }

        if ((v38 - 58) <= 0xF5u)
        {
          if (*v33 - 58 <= 6)
          {
            if (((1 << (v38 - 58)) & 0x63) != 0)
            {
              goto LABEL_62;
            }

            if (*v33 == 61)
            {
              break;
            }
          }

          if (*v33 != 95 && (v38 - 65) >= 0x1Au && *v33 != 126 && (v38 - 97) >= 0x1Au)
          {
            break;
          }
        }
      }

LABEL_62:
      ++v33;
      v37 -= 2;
      if (!v37)
      {
        goto LABEL_79;
      }
    }

    v17 = v9 & 0x2000000000000000;
LABEL_42:
    v22 = v10 & 0xFFFFFFFFFFFFLL;
    if (v17)
    {
      v23 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v23 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      if ((v9 & 0x1000000000000000) != 0)
      {

        goto LABEL_55;
      }

      if (v17)
      {
        v94 = v10;
        v95 = v9 & 0xFFFFFFFFFFFFFFLL;

        v24 = &v94;
        v25 = HIBYTE(v9) & 0xF;
      }

      else
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v28 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v28 = _StringObject.sharedUTF8.getter();
          v22 = v79;
        }

        v24 = v28;
        v25 = v22;
      }

      v26 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5Tm(v24, v25, 128, 0, specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:));
      v27 = v29;
      if (!v29)
      {
LABEL_55:
        v26 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v10, v9, 0x80u, 0);
        v27 = v30;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
    }

    MEMORY[0x1865CB0E0](v26, v27);

    v6 = v7;
    v11 = v91;
    if (!v12)
    {
LABEL_151:

      goto LABEL_152;
    }

LABEL_80:
    v40 = MEMORY[0x1865CB0E0](61, 0xE100000000000000);
    if ((v12 & 0x1000000000000000) == 0)
    {
      if ((v12 & 0x2000000000000000) == 0)
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          v41 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v42 = v11 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = _StringObject.sharedUTF8.getter();
        }

        v40 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v41, v42, 0x80u, 0);
        if ((v40 & 1) == 0)
        {
          v43 = 0;
          goto LABEL_103;
        }

        goto LABEL_150;
      }

      v44 = HIBYTE(v12) & 0xF;
      v94 = v11;
      v95 = v12 & 0xFFFFFFFFFFFFFFLL;
      if (!v44)
      {
LABEL_150:
        MEMORY[0x1865CB0E0](v11, v12);
        goto LABEL_151;
      }

      v45 = 0;
      while (2)
      {
        if (*(&v94 + v45) < 0)
        {
LABEL_102:
          v43 = 1;
          goto LABEL_103;
        }

        v46 = *(&v94 + v45);
        if ((v46 - 39) >= 9 && v46 != 33 && v46 != 36)
        {
          if (v46 == 38)
          {
            goto LABEL_102;
          }

          v47 = v46 - 58;
          if ((v46 - 58) <= 0xFFFFFFF5)
          {
            if (v47 > 6)
            {
LABEL_98:
              if (v46 != 95 && (v46 - 65) >= 0x1A && v46 != 126 && (v46 - 97) >= 0x1A)
              {
                goto LABEL_102;
              }
            }

            else if (((1 << v47) & 0x63) == 0)
            {
              if (v46 == 61)
              {
                goto LABEL_102;
              }

              goto LABEL_98;
            }
          }
        }

        if (v44 == ++v45)
        {
          goto LABEL_150;
        }

        continue;
      }
    }

    v94 = v11;
    v95 = v12;
    v56 = lazy protocol witness table accessor for type String and conformance String();
    v91 = v11;
    v88 = v56;
    StringProtocol._ephemeralString.getter();
    v57 = v6;
    v58 = String._bridgeToObjectiveCImpl()();

    v59 = [v58 _fastCharacterContents];
    v60 = v58;
    if (v59)
    {
      v6 = v57;
      v11 = v91;
      v94 = v91;
      v95 = v12;
      StringProtocol._ephemeralString.getter();
      v61 = String._bridgeToObjectiveCImpl()();

      v62 = [v61 length];
      swift_unknownObjectRelease();
      if (!v62)
      {
        goto LABEL_150;
      }

      v63 = 2 * v62;
      while (1)
      {
        v40 = *v59;
        if (v40 > 0x7F)
        {
          break;
        }

        v40 = UInt8.allowedURLComponents.getter(v40);
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        ++v59;
        v63 -= 2;
        if (!v63)
        {
          goto LABEL_150;
        }
      }

      v43 = v12 & 0x2000000000000000;
    }

    else
    {
      v43 = v12 & 0x2000000000000000;
      v11 = v91;
      if ((v12 & 0x2000000000000000) != 0)
      {
        v69 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v69 = v91 & 0xFFFFFFFFFFFFLL;
      }

      v87 = 4 << ((v91 & 0x800000000000000) != 0);
      v88 = 4 * v69;
      v70 = 15;
      while (1)
      {
        if (v88 == v70 >> 14)
        {
          v6 = v7;
          goto LABEL_150;
        }

        if ((v70 & 0xC) == v87)
        {
          if (v69 <= _StringGuts._slowEnsureMatchingEncoding(_:)(v70, v11, v12) >> 16)
          {
            goto LABEL_162;
          }

          v72 = String.UTF8View._foreignSubscript(position:)();
          v73 = v11;
          v71 = v72;
          if (v69 <= _StringGuts._slowEnsureMatchingEncoding(_:)(v70, v73, v12) >> 16)
          {
            goto LABEL_163;
          }
        }

        else
        {
          if (v69 <= v70 >> 16)
          {
            goto LABEL_162;
          }

          v71 = String.UTF8View._foreignSubscript(position:)();
        }

        v40 = String.UTF8View._foreignIndex(after:)();
        if (v71 < 0)
        {
          break;
        }

        v70 = v40;
        v40 = UInt8.allowedURLComponents.getter(v71);
        v11 = v91;
        if ((v40 & 0x80) == 0)
        {
          v6 = v7;
          goto LABEL_103;
        }
      }

      v6 = v7;
      v11 = v91;
    }

LABEL_103:
    v48 = HIBYTE(v12) & 0xF;
    if (!v43)
    {
      v48 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      v94 = v11;
      v95 = v12;
      MEMORY[0x1EEE9AC00](v40);
      v84[2] = &v94;
      v85 = 128;

      v49 = v90;
      v50 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v84, v11, v12);
      v90 = v49;
      if (v51)
      {
        v52 = v51;
        v53 = v50;
      }

      else
      {
        v53 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v11, v12, 0x80u, 0);
        v52 = v55;
      }

      v54 = v53;
    }

    else
    {
      v54 = 0;
      v52 = 0xE000000000000000;
    }

    MEMORY[0x1865CB0E0](v54, v52);

LABEL_152:

    v75 = v96;
    v74 = v97;
    v98 = v5;
    v77 = *(v5 + 16);
    v76 = *(v5 + 24);
    if (v77 >= v76 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
      v5 = v98;
    }

    ++v4;
    *(v5 + 16) = v77 + 1;
    v78 = v5 + 16 * v77;
    *(v78 + 32) = v75;
    *(v78 + 40) = v74;
    if (v4 == v92)
    {
      v96 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v80 = BidirectionalCollection<>.joined(separator:)();
      v82 = v81;

      v83 = v89;

      *(v83 + 120) = v80;
      *(v83 + 128) = v82;
      return;
    }
  }

  v17 = v9 & 0x2000000000000000;
  v64 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v64 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v88 = v64;
  v86 = 4 << ((v10 & 0x800000000000000) != 0);
  v87 = 4 * v64;
  v65 = 15;
  while (1)
  {
    v11 = v91;
    if (v87 == v65 >> 14)
    {
      goto LABEL_79;
    }

    if ((v65 & 0xC) == v86)
    {
      break;
    }

    if (v88 <= v65 >> 16)
    {
      goto LABEL_160;
    }

    v66 = String.UTF8View._foreignSubscript(position:)();
LABEL_126:
    if (v88 <= v65 >> 16)
    {
      goto LABEL_161;
    }

    v67 = String.UTF8View._foreignIndex(after:)();
    if ((v66 & 0x80) == 0)
    {
      v65 = v67;
      if ((UInt8.allowedURLComponents.getter(v66) & 0x80) != 0)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  v68 = _StringGuts._slowEnsureMatchingEncoding(_:)(v65, v10, v9);
  if (v88 > v68 >> 16)
  {
    v66 = String.UTF8View._foreignSubscript(position:)();
    v65 = _StringGuts._slowEnsureMatchingEncoding(_:)(v65, v10, v9);
    goto LABEL_126;
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

id @objc _NSSwiftURLComponents.string.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id @objc static NSLocale._isoLanguageCodes.getter(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v3 = _ContiguousArrayBuffer._asCocoaArray()();

  return v3;
}

void *one-time initialization function for _isoLanguageCodeStrings(uint64_t a1, uint64_t (*a2)(void), char **a3)
{
  result = a2();
  if (result && (v5 = result, (result = *result) != 0))
  {
    v6 = v5 + 1;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = String.init(cString:)();
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v13 = &v7[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v14 = *v6++;
      result = v14;
    }

    while (v14);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v7;
  return result;
}

uint64_t URL.port.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 208))(ObjectType, v1);
}

uint64_t URL.scheme.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 136))(ObjectType, v1);
}

id protocol witness for _URLProtocol.scheme.getter in conformance _BridgedURL(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(v3 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);

  return v6;
}

id protocol witness for _URLProtocol.port.getter in conformance _BridgedURL()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) port];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal._multiply(byShort:)(NSDecimal *__return_ptr retstr, Swift::UInt16 byShort)
{
  *&v27 = v2;
  *(&v27 + 1) = v3;
  v28 = v4;
  if (!byShort)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v5 = v2;
  *&v25 = v2;
  v24 = WORD2(v2);
  v7 = v3;
  v23 = HIWORD(v2);
  v8 = WORD1(v3);
  *(&v25 + 1) = v3;
  v9 = WORD2(v3);
  v10 = v4;
  v11 = HIWORD(v3);
  v12 = HIWORD(v4);
  v26 = v4;
  v13 = _So9NSDecimala__length_getter(&v25);
  if (!v13)
  {
LABEL_29:
    _So9NSDecimala__length_setter(v13, &v27);
    return;
  }

  v22 = v5;
  v14 = 0;
  v29 = byShort;
  v15 = 1;
  do
  {
    v18 = v15;
    v19 = v15 - 1;
    if (v15 - 1 > 3)
    {
      if (v19 > 5)
      {
        if (v15 == 7)
        {
          v16 = v14 + v10 * v29;
          v10 = (v14 + v10 * v29);
        }

        else
        {
          if (v15 != 8)
          {
LABEL_31:
            HIWORD(v28) = v12;
            LOWORD(v28) = v10;
            HIWORD(v27) = v11;
            WORD6(v27) = v9;
            WORD5(v27) = v8;
            WORD4(v27) = v7;
            WORD3(v27) = v23;
            WORD2(v27) = v24;
            *&v25 = 0;
            *(&v25 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(30);

            strcpy(&v25, "Invalid index ");
            HIBYTE(v25) = -18;
            v30 = v19;
            v21 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v21);

            MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          v16 = v14 + v12 * v29;
          v12 = (v14 + v12 * v29);
        }
      }

      else if (v15 == 5)
      {
        v16 = v14 + v9 * v29;
        v9 = (v14 + v9 * v29);
      }

      else
      {
        if (v15 != 6)
        {
          goto LABEL_31;
        }

        v16 = v14 + v11 * v29;
        LODWORD(v11) = (v14 + v11 * v29);
      }
    }

    else if (v19 > 1)
    {
      if (v15 == 3)
      {
        v16 = v14 + v7 * v29;
        v7 = (v14 + v7 * v29);
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_31;
        }

        v16 = v14 + v8 * v29;
        v8 = (v14 + v8 * v29);
      }
    }

    else if (v15 == 1)
    {
      v16 = v14 + v24 * v29;
      v24 = (v14 + v24 * v29);
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_31;
      }

      v16 = v14 + v23 * v29;
      LODWORD(v23) = (v14 + v23 * v29);
    }

    LODWORD(v25) = v22;
    v14 = HIWORD(v16);
    WORD2(v25) = v24;
    WORD3(v25) = v23;
    WORD4(v25) = v7;
    WORD5(v25) = v8;
    WORD6(v25) = v9;
    HIWORD(v25) = v11;
    LOWORD(v26) = v10;
    HIWORD(v26) = v12;
    v17 = _So9NSDecimala__length_getter(&v25);
    v15 = v18 + 1;
  }

  while (v18 < v17);
  HIWORD(v28) = v12;
  LOWORD(v28) = v10;
  HIWORD(v27) = v11;
  WORD6(v27) = v9;
  WORD5(v27) = v8;
  WORD4(v27) = v7;
  WORD3(v27) = v23;
  WORD2(v27) = v24;
  if (v16 < 0x10000)
  {
    v13 = v18;
    goto LABEL_29;
  }

  v25 = v27;
  v26 = v28;
  if (_So9NSDecimala__length_getter(&v25) < 8)
  {
    NSDecimal.subscript.setter(HIWORD(v16), v18);
    v13 = v18 + 1;
    goto LABEL_29;
  }

  lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal._add(_:)(NSDecimal *__return_ptr retstr, Swift::UInt16 a2)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  *&v27 = v2;
  *(&v27 + 1) = v3;
  v28 = v4;
  *&v25 = v2;
  v9 = HIWORD(v3);
  v24 = HIWORD(v2);
  v10 = HIWORD(v4);
  *(&v25 + 1) = v3;
  v26 = v4;
  if (_So9NSDecimala__length_getter(&v25))
  {
    v22 = v7;
    v11 = v5;
    LODWORD(v12) = 0;
    v23 = WORD2(v7);
    v13 = v6;
    v14 = WORD1(v6);
    v15 = WORD2(v6);
    v16 = v11;
    v17 = a2;
    do
    {
      if (v12 > 3)
      {
        if (v12 > 5)
        {
          if (v12 == 6)
          {
            v18 = v17 + v16;
            v16 = (v17 + v16);
          }

          else
          {
            if (v12 != 7)
            {
LABEL_45:
              HIWORD(v28) = v10;
              LOWORD(v28) = v16;
              HIWORD(v27) = v9;
              WORD6(v27) = v15;
              WORD5(v27) = v14;
              WORD4(v27) = v13;
              WORD3(v27) = v24;
              WORD2(v27) = v23;
              *&v25 = 0;
              *(&v25 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(30);

              strcpy(&v25, "Invalid index ");
              HIBYTE(v25) = -18;
              v29 = v12;
              v20 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1865CB0E0](v20);

              MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
              goto LABEL_46;
            }

            v18 = v17 + v10;
            v10 = (v17 + v10);
          }
        }

        else if (v12 == 4)
        {
          v18 = v17 + v15;
          v15 = (v17 + v15);
        }

        else
        {
          v18 = v17 + v9;
          LODWORD(v9) = (v17 + v9);
        }
      }

      else if (v12 > 1)
      {
        if (v12 == 2)
        {
          v18 = v17 + v13;
          v13 = (v17 + v13);
        }

        else
        {
          v18 = v17 + v14;
          v14 = (v17 + v14);
        }
      }

      else if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_45;
        }

        v18 = v17 + v24;
        LODWORD(v24) = (v17 + v24);
      }

      else
      {
        v18 = v17 + v23;
        v23 = (v17 + v23);
      }

      v12 = (v12 + 1);
      LODWORD(v25) = v22;
      v17 = HIWORD(v18);
      WORD2(v25) = v23;
      WORD3(v25) = v24;
      WORD4(v25) = v13;
      WORD5(v25) = v14;
      WORD6(v25) = v15;
      HIWORD(v25) = v9;
      LOWORD(v26) = v16;
      HIWORD(v26) = v10;
    }

    while (v12 < _So9NSDecimala__length_getter(&v25));
    HIWORD(v28) = v10;
    LOWORD(v28) = v16;
    HIWORD(v27) = v9;
    WORD6(v27) = v15;
    WORD5(v27) = v14;
    WORD4(v27) = v13;
    WORD3(v27) = v24;
    WORD2(v27) = v23;
    if (v18 < 0x10000)
    {
      goto LABEL_24;
    }

    a2 = 1;
  }

  else
  {
    v12 = 0;
    if (!a2)
    {
LABEL_24:
      _So9NSDecimala__length_setter(v12, &v27);
      return;
    }
  }

  v25 = v27;
  v26 = v28;
  if (_So9NSDecimala__length_getter(&v25) < 8)
  {
    if (v12 > 3)
    {
      if (v12 <= 5)
      {
        if (v12 == 4)
        {
          WORD6(v27) = a2;
          v12 = 5;
        }

        else
        {
          HIWORD(v27) = a2;
          v12 = 6;
        }

        goto LABEL_24;
      }

      if (v12 == 6)
      {
        LOWORD(v28) = a2;
        v12 = 7;
        goto LABEL_24;
      }

      if (v12 == 7)
      {
        HIWORD(v28) = a2;
        v12 = 8;
        goto LABEL_24;
      }
    }

    else
    {
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          WORD4(v27) = a2;
          v12 = 3;
        }

        else
        {
          WORD5(v27) = a2;
          v12 = 4;
        }

        goto LABEL_24;
      }

      if (!v12)
      {
        WORD2(v27) = a2;
        v12 = 1;
        goto LABEL_24;
      }

      if (v12 == 1)
      {
        WORD3(v27) = a2;
        v12 = 2;
        goto LABEL_24;
      }
    }

    while (1)
    {
      *&v25 = 0;
      *(&v25 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      strcpy(&v25, "Invalid index ");
      HIBYTE(v25) = -18;
      v29 = v12;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v21);

      MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
LABEL_46:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
}

Swift::Void __swiftcall NSDecimal.compact()()
{
  v46 = *v0;
  v47 = *(v0 + 4);
  v1 = _So9NSDecimala__exponent_getter(&v46);
  v46 = *v0;
  v47 = *(v0 + 4);
  if (_So9NSDecimala__isCompact_getter(&v46))
  {
    return;
  }

  v46 = *v0;
  v47 = *(v0 + 4);
  if (!_So9NSDecimala__length_getter(&v46))
  {
    v46 = *v0;
    v47 = *(v0 + 4);
    if (_So9NSDecimala__isNegative_getter(&v46))
    {
      return;
    }
  }

  v46 = *v0;
  v47 = *(v0 + 4);
  if (!_So9NSDecimala__length_getter(&v46))
  {
    return;
  }

  v2 = *v0;
  LOWORD(v3) = *(v0 + 2);
  LOWORD(v4) = *(v0 + 3);
  v45 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  LOWORD(v7) = *(v0 + 7);
  v8 = *(v0 + 8);
  v41 = v0;
  LOWORD(v9) = *(v0 + 9);
  do
  {
    LOWORD(v10) = v3;
    LODWORD(v3) = v2;
    LOWORD(v11) = v8;
    NSDecimal._divide(by:)((v45 | (v5 << 16) | (v6 << 32)), 0xAu);
    if (v15)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = v1;
    v43 = v1 + 1;
    LODWORD(v3) = WORD2(v12);
    v2 = v12;
    v4 = HIWORD(v12);
    LOWORD(v5) = WORD1(v13);
    LOWORD(v6) = WORD2(v13);
    v7 = HIWORD(v13);
    v8 = v14;
    LOWORD(v9) = WORD1(v14);
    v42 = v14;
    v44 = WORD2(v14);
    v45 = v13;
    if (WORD2(v14))
    {
      break;
    }

    *&v46 = v12;
    *(&v46 + 1) = v13;
    v47 = v14;
    v17 = HIWORD(v13);
    v7 = WORD2(v13);
    v18 = WORD1(v13);
    v19 = v12;
    v20 = v14;
    v21 = v16;
    v22 = _So9NSDecimala__length_getter(&v46);
    v16 = v21;
    v8 = v20;
    v2 = v19;
    v5 = v18;
    v6 = v7;
    LOWORD(v7) = v17;
    v1 = v16 + 1;
  }

  while (v22);
  v40 = v16;
  LOWORD(v11) = v41;
  *v41 = v2;
  *(v41 + 2) = v3;
  *(v41 + 3) = v4;
  *(v41 + 4) = v45;
  *(v41 + 5) = v5;
  *(v41 + 6) = v6;
  *(v41 + 7) = v7;
  *(v41 + 8) = v8;
  *(v41 + 9) = v9;
  v46 = *v41;
  v47 = *(v41 + 4);
  v23 = _So9NSDecimala__length_getter(&v46);
  if (!v44 && !v23)
  {
    *v41 = 0;
    *(v41 + 1) = 0;
    *(v41 + 4) = 0;
    return;
  }

  LOWORD(v7) = v42;
  NSDecimal._multiply(byShort:)(v44, 0xAu);
  if (v27)
  {
LABEL_30:
    swift_unexpectedError();
    __break(1u);
    goto LABEL_31;
  }

  *v41 = v24;
  *(v41 + 1) = v25;
  *(v41 + 4) = v26;
  NSDecimal._add(_:)(v24, WORD2(v42));
  if (v31)
  {
LABEL_31:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v32 = v28;
  *v41 = v28;
  v10 = HIWORD(v28);
  v33 = HIWORD(v30);
  *(v41 + 1) = v29;
  v9 = HIWORD(v29);
  *(v41 + 4) = v30;
  v34 = (v43 - 1);
  if (__OFSUB__(v43, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    *v41 = v3;
    *(v41 + 2) = v10;
    *(v41 + 3) = v4;
    *(v41 + 4) = v45;
    *(v41 + 5) = v5;
    *(v41 + 6) = v6;
    *(v41 + 7) = v7;
    *(v41 + 8) = v11;
    *(v41 + 9) = v9;
    swift_unexpectedError();
    __break(1u);
LABEL_29:
    *v41 = v1;
    *(v41 + 2) = v5;
    *(v41 + 3) = v10;
    *(v41 + 4) = v11;
    *(v41 + 5) = v3;
    *(v41 + 6) = v4;
    *(v41 + 7) = v9;
    *(v41 + 8) = v6;
    *(v41 + 9) = v45;
    swift_unexpectedError();
    __break(1u);
    goto LABEL_30;
  }

  LOWORD(v6) = v30;
  v4 = WORD2(v29);
  v3 = WORD1(v29);
  v11 = v29;
  LOWORD(v5) = WORD2(v32);
  v1 = v32;
  if (v34 >= 128)
  {
    v35 = v40 + 1;
    while (1)
    {
      LOWORD(v45) = v33;
      NSDecimal._multiply(byShort:)((v11 | (v3 << 16) | (v4 << 32)), 0xAu);
      if (v39)
      {
        goto LABEL_29;
      }

      v33 = HIWORD(v38);
      LOWORD(v6) = v38;
      v9 = HIWORD(v37);
      v4 = WORD2(v37);
      v3 = WORD1(v37);
      v11 = v37;
      v1 = v36;
      --v35;
      v10 = HIWORD(v36);
      LOWORD(v5) = WORD2(v36);
      if (v35 <= 128)
      {
        v34 = 127;
        break;
      }
    }
  }

  *v41 = v1;
  *(v41 + 2) = v5;
  *(v41 + 3) = v10;
  *(v41 + 4) = v11;
  *(v41 + 5) = v3;
  *(v41 + 6) = v4;
  *(v41 + 7) = v9;
  *(v41 + 8) = v6;
  *(v41 + 9) = v33;
  _So9NSDecimala__exponent_setter(v34, v41);

  _So9NSDecimala__isCompact_setter_0(1, v41);
}

double NSDecimal.asVariableLengthInteger()(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a2;
  v4 = WORD1(a2);
  v5 = WORD2(a2);
  v6 = a3;
  if (WORD2(a1))
  {
    if (!HIWORD(a1))
    {
      goto LABEL_3;
    }

LABEL_17:
    if (!a2)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (HIWORD(a1))
  {
    goto LABEL_17;
  }

  if (a2 || WORD2(a2) || HIWORD(a2) || HIWORD(a3) || a3)
  {
LABEL_3:
    if (!a2)
    {
      if (!WORD1(a2) && !WORD2(a2) && !HIWORD(a2) && !HIWORD(a3) && !a3)
      {
        v7 = HIDWORD(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
        v8 = swift_allocObject();
        *&result = 1;
        *(v8 + 16) = xmmword_181218E20;
        *(v8 + 32) = v7;
        return result;
      }

LABEL_24:
      if (WORD1(a2))
      {
LABEL_25:
        if (WORD2(a2))
        {
LABEL_26:
          if (!HIWORD(a2))
          {
            goto LABEL_27;
          }

          goto LABEL_34;
        }

LABEL_30:
        if (!HIWORD(a2))
        {
          if (!HIWORD(a3) && !a3)
          {
            v16 = HIWORD(a1);
            v17 = HIDWORD(a1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
            v18 = swift_allocObject();
            *&result = 4;
            *(v18 + 16) = xmmword_18121D6C0;
            *(v18 + 32) = v17;
            *(v18 + 34) = v16;
            *(v18 + 36) = v3;
            *(v18 + 38) = v4;
            return result;
          }

LABEL_27:
          if (!a3)
          {
            if (!HIWORD(a3))
            {
              v13 = HIWORD(a1);
              v14 = HIDWORD(a1);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
              v15 = swift_allocObject();
              *&result = 5;
              *(v15 + 16) = xmmword_1812354D0;
              *(v15 + 32) = v14;
              *(v15 + 34) = v13;
              *(v15 + 36) = v3;
              *(v15 + 38) = v4;
              *(v15 + 40) = v5;
              return result;
            }

LABEL_39:
            v27 = HIWORD(a3);
            v28 = HIWORD(a2);
            v29 = HIWORD(a1);
            v30 = HIDWORD(a1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
            v31 = swift_allocObject();
            *&result = 8;
            *(v31 + 16) = xmmword_1812354C0;
            *(v31 + 32) = v30;
            *(v31 + 34) = v29;
            *(v31 + 36) = v3;
            *(v31 + 38) = v4;
            *(v31 + 40) = v5;
            *(v31 + 42) = v28;
            *(v31 + 44) = v6;
            *(v31 + 46) = v27;
            return result;
          }

LABEL_35:
          if (!HIWORD(a3))
          {
            v19 = HIWORD(a2);
            v20 = HIWORD(a1);
            v21 = HIDWORD(a1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
            v22 = swift_allocObject();
            *&result = 7;
            *(v22 + 16) = xmmword_18122CFA0;
            *(v22 + 32) = v21;
            *(v22 + 34) = v20;
            *(v22 + 36) = v3;
            *(v22 + 38) = v4;
            *(v22 + 40) = v5;
            *(v22 + 42) = v19;
            *(v22 + 44) = v6;
            return result;
          }

          goto LABEL_39;
        }

LABEL_34:
        if (!a3)
        {
          if (!HIWORD(a3))
          {
            v23 = HIWORD(a2);
            v24 = HIWORD(a1);
            v25 = HIDWORD(a1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
            v26 = swift_allocObject();
            *&result = 6;
            *(v26 + 16) = xmmword_18121C7A0;
            *(v26 + 32) = v25;
            *(v26 + 34) = v24;
            *(v26 + 36) = v3;
            *(v26 + 38) = v4;
            *(v26 + 40) = v5;
            *(v26 + 42) = v23;
            return result;
          }

          goto LABEL_39;
        }

        goto LABEL_35;
      }

      if (!WORD2(a2) && !HIWORD(a2) && !HIWORD(a3) && !a3)
      {
        v32 = HIWORD(a1);
        v33 = HIDWORD(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
        v34 = swift_allocObject();
        *&result = 2;
        *(v34 + 16) = xmmword_181215ED0;
        *(v34 + 32) = v33;
        *(v34 + 34) = v32;
        return result;
      }

LABEL_19:
      if (WORD2(a2))
      {
        goto LABEL_26;
      }

      if (!HIWORD(a2) && !HIWORD(a3) && !a3)
      {
        v10 = HIWORD(a1);
        v11 = HIDWORD(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
        v12 = swift_allocObject();
        *&result = 3;
        *(v12 + 16) = xmmword_18121D6B0;
        *(v12 + 32) = v11;
        *(v12 + 34) = v10;
        *(v12 + 36) = v3;
        return result;
      }

      goto LABEL_30;
    }

LABEL_18:
    if (WORD1(a2))
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  return result;
}

double _NSDecimalCompact(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  NSDecimal.compact()();
  result = *&v3;
  *a1 = v3;
  *(a1 + 4) = v4;
  return result;
}

void NSDecimalCopy(NSDecimal *destination, const NSDecimal *source)
{
  v2 = *destination;
  *destination &= 0x3FFFu;
  v3 = *source & 0x1000 | v2 & 0x2FFF;
  *destination = v3;
  v4 = *source;
  v5 = v3 & 0xFFFFF0FF | *source & 0xF00;
  *destination = v5;
  v6 = v5 & 0x3F00 | *source;
  *destination = v6;
  *destination = *source & 0x2000 | v6 & 0x1FFF;
  v7 = (v4 >> 8) & 0xF;
  if (v7)
  {
    mantissa = source->_mantissa;
    v9 = destination->_mantissa;
    do
    {
      v10 = *mantissa++;
      *v9++ = v10;
      --v7;
    }

    while (v7);
  }
}

unint64_t _SwiftURL.description.getter()
{
  v1 = v0[2];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (*(v1 + 48))
  {
    if (!v0[3])
    {

      goto LABEL_14;
    }

    v4 = v0[4];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 136);

    v6(ObjectType, v4);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v8 = String.subscript.getter();
    MEMORY[0x1865CAE80](v8);
  }

  v9 = String.lowercased()();

  if (one-time initialization token for dataSchemeUTF8 != -1)
  {
    swift_once();
  }

  v10 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.dataSchemeUTF8, v9._countAndFlagsBits, v9._object);

  if (v10)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      if (String.UTF8View._foreignCount()() >= 129)
      {
LABEL_12:
        specialized Collection.prefix(_:)(0x78uLL, v3, v2, v11);
        specialized BidirectionalCollection.suffix(_:)(8uLL, v3, v2);

        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](0x202E2E2E20, 0xE500000000000000);
        _print_unlocked<A, B>(_:_:)();

        v3 = 0;
      }
    }

    else if ((v2 & 0x2000000000000000) == 0 && (v3 & 0xFFFFFFFFFFFFLL) >= 0x81)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  if (v0[3])
  {
    v12 = v0[4];
    swift_unknownObjectRetain();
    MEMORY[0x1865CB0E0](539831584, 0xE400000000000000);
    v13 = swift_getObjectType();
    v14 = (*(v12 + 416))(v13, v12);
    MEMORY[0x1865CB0E0](v14);
    swift_unknownObjectRelease();
  }

  return v3;
}

unsigned __int8 *specialized static JSONScanner.validateLeadingZero(in:fullSource:)(unsigned __int8 *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = *result;
    if ((v4 - 46) > 0x37 || ((1 << (v4 - 46)) & 0x80000000800001) == 0)
    {
      v6 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a3, a4);
      v8 = v7;
      v10 = v9;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      if ((v4 - 58) >= 0xFFFFFFF6)
      {
        *v11 = v6;
        *(v11 + 8) = v8;
        *(v11 + 16) = v10;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        v12 = 10;
      }

      else
      {
        *v11 = xmmword_181237560;
        *(v11 + 16) = v4;
        *(v11 + 24) = v6;
        *(v11 + 32) = v8;
        *(v11 + 40) = v10;
        v12 = 1;
      }

      *(v11 + 48) = v12;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, MEMORY[0x1E69E7140]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, MEMORY[0x1E69E7160]);
}

uint64_t JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a3;
  v34 = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    v32 = v12;
    v35 = v6;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = *(a4 + 56) + 24 * v17;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = v22 | *v20;
    v25 = (v23 & 0xE0) == 0xA0 && v24 == 0;
    if (v25 && v23 == 160)
    {
      return 0;
    }

    else
    {
      v26 = *(a5 - 8);
      (*(v26 + 16))(v14, a1, a5);
      (*(v26 + 56))(v14, 0, 1, a5);
      v27 = v35;
      v28 = JSONDecoderImpl.unwrapString<A>(from:for:_:)(v21, v22, v23, v33, v14, a5, a6);
      if (v27)
      {
        return (*(v32 + 8))(v14, v11);
      }

      else
      {
        v30 = v28;
        (*(v32 + 8))(v14, v11);
        return v30;
      }
    }
  }

  else
  {

    return 0;
  }
}

{
  v50 = a3;
  v54 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v48 = a6;
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    return 2;
  }

  v47 = v11;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    return 2;
  }

  v22 = *(a4 + 56) + 24 * v19;
  v23 = *(v22 + 16);
  v24 = v23 >> 5;
  if (v23 >> 5 == 2)
  {
    return *v22 & 1;
  }

  if (v24 == 5 && v23 == 160 && *v22 == 0)
  {
    return 2;
  }

  v44 = type metadata accessor for DecodingError();
  v46 = swift_allocError();
  v45 = v26;
  *v26 = MEMORY[0x1E69E6370];
  v27 = v54;
  v28 = *(v54 + 16);
  v28(v16, a1, a5);
  (*(v27 + 56))(v16, 0, 1, a5);
  v29 = v51;
  v30 = v47;
  (*(v51 + 16))(v13, v16, v47);
  if ((*(v27 + 48))(v13, 1, a5) == 1)
  {
    v31 = *(v29 + 8);
    v31(v13, v30);
    _CodingPathNode.path.getter(v50);
    v31(v16, v30);
  }

  else
  {
    v33 = *(v27 + 32);
    v43 = v28;
    v34 = v49;
    v33(v49, v13, a5);
    v50 = _CodingPathNode.path.getter(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v35 = v27;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    v37 = v48;
    *(inited + 56) = a5;
    *(inited + 64) = v37;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    v43(boxed_opaque_existential_0, v34, a5);
    v52 = v50;
    specialized Array.append<A>(contentsOf:)(inited);
    (*(v35 + 8))(v34, a5);
    (*(v29 + 8))(v16, v30);
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v52 = 0xD000000000000022;
  v53 = 0x8000000181482220;
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      v39 = 0xEC0000007972616ELL;
      v40 = 0x6F69746369642061;
    }

    else if (v24 == 4)
    {
      v39 = 0xE800000000000000;
      v40 = 0x7961727261206E61;
    }

    else
    {
      v39 = 0xE400000000000000;
      v40 = 1819047278;
    }
  }

  else if (v24)
  {
    if (v24 == 1)
    {
      v39 = 0xE600000000000000;
      v40 = 0x7265626D756ELL;
    }

    else
    {
      v39 = 0xE400000000000000;
      v40 = 1819242338;
    }
  }

  else
  {
    v39 = 0xE800000000000000;
    v40 = 0x676E697274732061;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  MEMORY[0x1865CB0E0](v40, v39);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  v41 = v45;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v44 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8]);
  return swift_willThrow();
}

{
  v32 = a3;
  v33 = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    v31 = v12;
    v34 = v6;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = *(a4 + 56) + 24 * v17;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = v22 | *v20;
    v25 = (v23 & 0xE0) == 0xA0 && v24 == 0;
    if (v25 && v23 == 160)
    {
      return 0;
    }

    else
    {
      v26 = *(a5 - 8);
      (*(v26 + 16))(v14, a1, a5);
      (*(v26 + 56))(v14, 0, 1, a5);
      v27 = v34;
      specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v21, v22, v23, v32, v14, a5, a6);
      if (v27)
      {
        return (*(v31 + 8))(v14, v11);
      }

      else
      {
        v30 = v28;
        (*(v31 + 8))(v14, v11);
        return v30;
      }
    }
  }

  else
  {

    return 0;
  }
}

id protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v2 = [v1 description];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  return v3;
}

uint64_t static JSONScanner.stringValue(from:fullSource:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = (a1 + a2);
  v9 = a1;
  if (a2 >= 1)
  {
    do
    {
      v10 = *v9;
      if (v10 == 92)
      {
        break;
      }

      if (v10 < 0x20)
      {
        break;
      }

      ++v9;
    }

    while (v9 < v8);
    if (v9 < a1)
    {
      __break(1u);
      return v19[0];
    }
  }

  result = static String._tryFromUTF8(_:)();
  if (v12)
  {
    v19[0] = result;
    v19[1] = v12;
    if (v8 != v9)
    {
      if (v8 < v9)
      {
        __break(1u);
        return result;
      }

      specialized static JSONScanner._slowpath_stringValue(from:appendingTo:fullSource:)(v9, v8 - v9, v19, a3, a4);
      if (v4)
      {
      }

      return v19[0];
    }
  }

  else
  {
    v13 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a1, a3, a4);
    v15 = v14;
    v17 = v16;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

unsigned __int8 *specialized static JSONScanner._slowpath_stringValue(from:appendingTo:fullSource:)(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v10 = a1 + a2;
    v11 = a1;
    v12 = a1;
    do
    {
      while (1)
      {
        v13 = *v12;
        if (v13 == 92)
        {
          break;
        }

        if (v13 < 0x20)
        {
          goto LABEL_20;
        }

        if (++v12 >= v10)
        {
          goto LABEL_12;
        }
      }

      if (v12 < v11)
      {
        __break(1u);
LABEL_20:
        v26 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v12, a4, a5);
        v28 = v27;
        v30 = v29;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v31 = v13;
        *(v31 + 8) = v26;
        *(v31 + 16) = v28;
        *(v31 + 24) = v30;
        *(v31 + 32) = 0;
        *(v31 + 40) = 0;
        *(v31 + 48) = 7;
        return swift_willThrow();
      }

      v14 = static String._tryFromUTF8(_:)();
      if (!v15)
      {
        goto LABEL_17;
      }

      MEMORY[0x1865CB0E0](v14);

      result = v12 + 1;
      v17 = v10 - (v12 + 1);
      if (((&v12[-a1 + 1] | v17) & 0x8000000000000000) != 0)
      {
        __break(1u);
        return result;
      }

      result = specialized static JSONScanner.parseEscapeSequence(from:into:fullSource:)(result, v17, a3, a4, a5);
      if (v5)
      {
        return result;
      }

      v11 = result;
      v12 = result;
    }

    while (result < v10);
LABEL_12:
    if (v12 >= v11)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v11 = a1;
LABEL_15:
  v18 = static String._tryFromUTF8(_:)();
  if (v19)
  {
    MEMORY[0x1865CB0E0](v18);
  }

  else
  {
LABEL_17:
    v20 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v11, a4, a5);
    v22 = v21;
    v24 = v23;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v25 = v20;
    *(v25 + 8) = v22;
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    return swift_willThrow();
  }
}

unsigned __int8 *specialized static JSONScanner.parseEscapeSequence(from:into:fullSource:)(unsigned __int8 *result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *result;
  if (v6 <= 101)
  {
    if (v6 > 91)
    {
      if (v6 == 92)
      {
        v6 = 92;
      }

      else
      {
        if (v6 != 98)
        {
          goto LABEL_26;
        }

        v6 = 8;
      }
    }

    else if (v6 != 34)
    {
      if (v6 != 47)
      {
        goto LABEL_26;
      }

      v6 = 47;
    }

LABEL_25:
    MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
    return (v5 + 1);
  }

  if (v6 <= 113)
  {
    if (v6 == 102)
    {
      v6 = 12;
    }

    else
    {
      if (v6 != 110)
      {
        goto LABEL_26;
      }

      v6 = 10;
    }

    goto LABEL_25;
  }

  if (v6 == 114)
  {
    v6 = 13;
    goto LABEL_25;
  }

  if (v6 == 116)
  {
    v6 = 9;
    goto LABEL_25;
  }

  if (v6 != 117)
  {
LABEL_26:
    v8 = v6;
    v9 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v5, a4, a5);
    v11 = v10;
    v13 = v12;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v14 = v8;
    *(v14 + 8) = v9;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 6;
    return swift_willThrow();
  }

  if (a2 >= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  return specialized static JSONScanner.parseUnicodeSequence(from:into:fullSource:allowNulls:)(v5 + v7, a2 - v7, a3, a4, a5, 1);
}

unint64_t *specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, char *a5, char *a6, char *a7)
{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E6530];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](7630409, 0xE300000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E6530];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000021;
      v75 = 0x80000001814821C0;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E6810];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](1953384789, 0xE400000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E6810];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000022;
      v75 = 0x80000001814820A0;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E7360];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3436746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E7360];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000023;
      v75 = 0x8000000181482100;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E7508];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x38746E4955, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E7508];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000023;
      v75 = 0x8000000181482070;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E76D8];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E76D8];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000024;
      v75 = 0x8000000181481FE0;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E75F8];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E75F8];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000024;
      v75 = 0x8000000181482040;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E7668];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E7668];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000024;
      v75 = 0x8000000181482010;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E72F0];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3233746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E72F0];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000023;
      v75 = 0x8000000181482130;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E7230];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](947154505, 0xE400000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E7230];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000022;
      v75 = 0x8000000181482190;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v72 = a7;
  v73 = a5;
  v76 = a4;
  *(&v71 + 1) = a2;
  *&v71 = a1;
  v67 = *v7;
  v69 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v66 - v13;
  v70 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v72;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v73;
    *(&v66 - 3) = v76;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v67;
    v43 = *(v7[4] + 3);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v71 + 1);
    *(&v66 - 2) = v71;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v68;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v43 + 16), &v74);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v74;
    }
  }

  else
  {
    if (v28 == 5 && v71 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v71 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v71 = v30;
      *v30 = MEMORY[0x1E69E7290];
      v31 = *(v29 + 16);
      v32 = v70;
      v31(v27, v73, v70);
      v31(v21, v27, v32);
      v33 = v69;
      if ((*(v69 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v76);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v66, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v72;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v66;
        (*(v57 + 16))(boxed_opaque_existential_0, v66, a6);
        v74 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3631746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v71;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v71 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v70;
      v37 = v24;
      v35(v18, v73, v70, v25);
      (v35)(v15, v18, v36);
      v38 = v69;
      if ((*(v69 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v76);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v72;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v74 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E7290];
      v74 = 0;
      v75 = 0xE000000000000000;
      v45 = &v74;
      _StringGuts.grow(_:)(43);

      v74 = 0xD000000000000023;
      v75 = 0x8000000181482160;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

unsigned __int8 *specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(unsigned __int8 *result, uint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_34;
  }

  v10 = *result;
  if (v10 == 48)
  {
    if (a2 >= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a2;
    }

    v12 = result;
    specialized static JSONScanner.validateLeadingZero(in:fullSource:)(&result[v11], a2 - v11, a4, a5);
    if (v5)
    {
      return v12;
    }

    result = v12;
    goto LABEL_15;
  }

  if ((v10 - 58) > 0xFFFFFFF6)
  {
    v12 = result;
    goto LABEL_15;
  }

  if (v10 != 45)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = a2 - 2;
  if (a2 < 2)
  {
    v12 = 0x8000000181481B20;
    v19 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a4, a5);
    v21 = v20;
    v23 = v22;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v24 = 0xD000000000000010;
    *(v24 + 8) = 0x8000000181481B20;
    *(v24 + 16) = 45;
LABEL_29:
    *(v24 + 24) = v19;
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
    *(v24 + 48) = 1;
    swift_willThrow();
    return v12;
  }

  v12 = (result + 1);
  v14 = result[1];
  if (v14 == 48)
  {
    v15 = result;
    specialized static JSONScanner.validateLeadingZero(in:fullSource:)(result + 2, v13, a4, a5);
    if (v5)
    {
      return v12;
    }

    result = v15;
  }

  else if ((v14 - 58) <= 0xFFFFFFF6)
  {
    v19 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)((result + 1), a4, a5);
    v21 = v33;
    v23 = v34;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v24 = 0xD000000000000013;
    *(v24 + 8) = 0x8000000181481F30;
    *(v24 + 16) = v14;
    goto LABEL_29;
  }

LABEL_15:
  if ((a3 & 1) == 0)
  {
    goto LABEL_26;
  }

  v16 = v12 + 1;
  if (v12 + 1 >= &result[a2])
  {
    goto LABEL_26;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(v16 + v17);
    if ((v18 | 0x20) == 0x65)
    {
      break;
    }

    if (&result[a2 + ~v12] == ++v17)
    {
      goto LABEL_26;
    }
  }

  v25 = v16 + v17;
  if (*(v25 - 1) - 58 > 0xFFFFFFF5)
  {
LABEL_26:
    v28 = &result[a2];
    v30 = *(v28 - 1);
    v29 = (v28 - 1);
    v18 = v30;
    if (v30 - 58 <= 0xFFFFFFF5)
    {
      v12 = 0x8000000181481B20;
      v19 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v29, a4, a5);
      v21 = v31;
      v23 = v32;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v24 = 0xD000000000000010;
      *(v24 + 8) = 0x8000000181481B20;
      goto LABEL_28;
    }

    return v12;
  }

  if (((v12 - result + v17 + 1) & 0x8000000000000000) == 0 && &result[a2 + ~v12 - v17] >= 1)
  {
    v19 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v25, a4, a5);
    v21 = v26;
    v23 = v27;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v24 = xmmword_181237560;
LABEL_28:
    *(v24 + 16) = v18;
    goto LABEL_29;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, char *, uint64_t, uint64_t))
{
  return JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(a1, *v4, *(v4 + 8), *(v4 + 16), *(a2 + 16), *(a2 + 24), a4);
}

{
  return JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(a1, *v4, *(v4 + 8), *(v4 + 16), *(a2 + 16), *(a2 + 24), a4);
}

{
  return JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(a1, *v4, *(v4 + 8), *(v4 + 16), *(a2 + 16), *(a2 + 24), a4);
}

{
  return JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(a1, *v4, *(v4 + 8), *(v4 + 16), *(a2 + 16), *(a2 + 24), a4);
}

{
  return JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(a1, *v4, *(v4 + 8), *(v4 + 16), *(a2 + 16), *(a2 + 24), a4);
}

uint64_t JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, unint64_t, char *, uint64_t, uint64_t))
{
  v36 = a7;
  v39 = a3;
  v35[1] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_7;
  }

  v35[0] = v12;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v39);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v37 = 0xD00000000000001DLL;
    v38 = 0x8000000181482300;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v32 = dispatch thunk of CodingKey.stringValue.getter();
    a6 = v33;
    MEMORY[0x1865CB0E0](v32);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF0], v27);
    swift_willThrow();
    return a6;
  }

  v20 = *(a4 + 56) + 24 * v17;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(a5 - 8);
  v24 = *(v20 + 16);
  (*(v23 + 16))(v14, a1, a5);
  (*(v23 + 56))(v14, 0, 1, a5);
  v25 = v35[2];
  v26 = v36(v21, v22, v24, v39, v14, a5, a6);
  if (!v25)
  {
    a6 = v26;
  }

  (*(v35[0] + 8))(v14, v11);
  return a6;
}

{
  v36 = a7;
  v39 = a3;
  v35[1] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_7;
  }

  v35[0] = v12;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v39);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v37 = 0xD00000000000001DLL;
    v38 = 0x8000000181482300;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v32 = dispatch thunk of CodingKey.stringValue.getter();
    a6 = v33;
    MEMORY[0x1865CB0E0](v32);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF0], v27);
    swift_willThrow();
    return a6;
  }

  v20 = *(a4 + 56) + 24 * v17;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(a5 - 8);
  v24 = *(v20 + 16);
  (*(v23 + 16))(v14, a1, a5);
  (*(v23 + 56))(v14, 0, 1, a5);
  v25 = v35[2];
  v26 = v36(v21, v22, v24, v39, v14, a5, a6);
  if (!v25)
  {
    a6 = v26;
  }

  (*(v35[0] + 8))(v14, v11);
  return a6;
}

{
  v36 = a7;
  v39 = a3;
  v35[1] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_7;
  }

  v35[0] = v12;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v39);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v37 = 0xD00000000000001DLL;
    v38 = 0x8000000181482300;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v32 = dispatch thunk of CodingKey.stringValue.getter();
    a6 = v33;
    MEMORY[0x1865CB0E0](v32);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF0], v27);
    swift_willThrow();
    return a6;
  }

  v20 = *(a4 + 56) + 24 * v17;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(a5 - 8);
  v24 = *(v20 + 16);
  (*(v23 + 16))(v14, a1, a5);
  (*(v23 + 56))(v14, 0, 1, a5);
  v25 = v35[2];
  v26 = v36(v21, v22, v24, v39, v14, a5, a6);
  if (!v25)
  {
    a6 = v26;
  }

  (*(v35[0] + 8))(v14, v11);
  return a6;
}

{
  v36 = a7;
  v39 = a3;
  v35[1] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_7;
  }

  v35[0] = v12;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v39);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v37 = 0xD00000000000001DLL;
    v38 = 0x8000000181482300;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v32 = dispatch thunk of CodingKey.stringValue.getter();
    a6 = v33;
    MEMORY[0x1865CB0E0](v32);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF0], v27);
    swift_willThrow();
    return a6;
  }

  v20 = *(a4 + 56) + 24 * v17;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(a5 - 8);
  v24 = *(v20 + 16);
  (*(v23 + 16))(v14, a1, a5);
  (*(v23 + 56))(v14, 0, 1, a5);
  v25 = v35[2];
  v26 = v36(v21, v22, v24, v39, v14, a5, a6);
  if (!v25)
  {
    a6 = v26;
  }

  (*(v35[0] + 8))(v14, v11);
  return a6;
}

{
  v36 = a7;
  v39 = a3;
  v35[1] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_7;
  }

  v35[0] = v12;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v39);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v37 = 0xD00000000000001DLL;
    v38 = 0x8000000181482300;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v32 = dispatch thunk of CodingKey.stringValue.getter();
    a6 = v33;
    MEMORY[0x1865CB0E0](v32);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF0], v27);
    swift_willThrow();
    return a6;
  }

  v20 = *(a4 + 56) + 24 * v17;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(a5 - 8);
  v24 = *(v20 + 16);
  (*(v23 + 16))(v14, a1, a5);
  (*(v23 + 56))(v14, 0, 1, a5);
  v25 = v35[2];
  v26 = v36(v21, v22, v24, v39, v14, a5, a6);
  if (!v25)
  {
    a6 = v26;
  }

  (*(v35[0] + 8))(v14, v11);
  return a6;
}

void *URL.appending<A>(component:directoryHint:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a2;
  v12 = *v5;
  v11 = v5[1];
  ObjectType = swift_getObjectType();
  v16 = v10;
  result = (*(v11 + 360))(v17, a1, &v16, a3, a4, ObjectType, v11);
  v15 = v17[0];
  if (v17[0])
  {
    v11 = v17[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v15 = v12;
  }

  *a5 = v15;
  a5[1] = v11;
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URL()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 424))(ObjectType, v1);
}

void __Block_byref_object_copy__14(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 40), *(a2 + 40), 131);
}

{
  _Block_object_assign((a1 + 40), *(a2 + 40), 135);
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 131);
}

{
  _Block_object_dispose(*(a1 + 40), 135);
}

double NSOrderedSet.makeIterator()@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_unknownObjectRetain();

  return NSFastEnumerationIterator.init(_:)(v2, a1);
}

unint64_t specialized static Platform.getUGIDs(allowEffectiveRootUID:)(char a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _canChangeUIDs != -1)
  {
    swift_once();
  }

  if (_canChangeUIDs)
  {
    *v5 = 0;
    if (pthread_getugid_np(&v5[1], v5))
    {
      v5[1] = geteuid();
      v2 = getegid();
      v3 = v5[1];
      if (a1)
      {
        return v3 | (v2 << 32);
      }
    }

    else
    {
      v2 = v5[0];
      v3 = v5[1];
      if (a1)
      {
        return v3 | (v2 << 32);
      }
    }

    goto LABEL_12;
  }

  if (one-time initialization token for _cachedUGIDs != -1)
  {
    swift_once();
  }

  v3 = _cachedUGIDs._0;
  v2 = _cachedUGIDs._1;
  if ((a1 & 1) == 0)
  {
LABEL_12:
    if (!v3)
    {
      v3 = getuid();
    }
  }

  return v3 | (v2 << 32);
}

char *specialized static Platform.homeDirectory(forUID:)(uid_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = sysconf(71);
  if (isStackAllocationSafe == -1)
  {
    v3 = 4096;
  }

  else
  {
    v3 = isStackAllocationSafe;
  }

  v11 = v3;
  if (v3 < 0)
  {
    __break(1u);
  }

  if (v3 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    memset(&v13, 0, sizeof(v13));
    v12 = 0;
    if (getpwuid_r(a1, &v13, &v10 - v4, v5, &v12))
    {
      v6 = 1;
    }

    else
    {
      v6 = v12 == 0;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      result = v13.pw_dir;
      if (v13.pw_dir)
      {
        return String.init(cString:)();
      }
    }
  }

  else
  {
    v8 = swift_slowAlloc();
    memset(&v13, 0, sizeof(v13));
    v9 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(v8, &v13, specialized thunk for @callee_guaranteed (@unowned UInt32, @unowned UnsafeMutablePointer<passwd>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<passwd>?>?) -> (@unowned Int32), 0, a1, &v11, closure #1 in static Platform.homeDirectory(forUID:));
    MEMORY[0x1865D2690](v8, -1, -1);
    return v9;
  }

  return result;
}

uint64_t closure #1 in static Platform.homeDirectory(forUserName:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 48);
  if (result)
  {
    result = String.init(cString:)();
  }

  else
  {
    v4 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

_BYTE *_s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF@<X0>(_BYTE *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q4>)
{
  a8.i64[0] = *a2;
  if (!a3)
  {
LABEL_70:
    *a6 = a8.i64[0];
    return result;
  }

  v11 = &v250;
  v13 = *a4;
  v12 = a4[1];
  *a7.i64 = *a8.i64 - trunc(*a8.i64);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  a7.i64[0] = vbslq_s8(vnegq_f64(v14), a7, a8).i64[0];
  if (*a7.i64 >= 0.0)
  {
    v15 = *a7.i64;
  }

  else
  {
    v15 = *a7.i64 + 1.0;
  }

  if (*a7.i64 >= 0.0)
  {
    v16 = *a8.i64 - *a7.i64;
  }

  else
  {
    v16 = *a8.i64 - *a7.i64 + -1.0;
  }

  v17 = a3;
  v18 = 604800.0;
  switch(*result)
  {
    case 1:
      v240 = *a2;
      v286 = v9;
      *&v247[0] = 8319;
      *v245 = v16;
      __src[0] = v13;
      __src[1] = v12;
      v237 = a5;
      _CalendarGregorian.dateComponents(_:from:in:)(v247, v245, __src, __dst);
      v59 = v17;
      if ((LOBYTE(__dst[5]) & 1) == 0)
      {
        v59 = v17;
        if (!*&__dst[4])
        {
          v59 = -v17;
          if (__OFSUB__(0, v17))
          {
            goto LABEL_377;
          }
        }
      }

      if ((LOBYTE(__dst[7]) & 1) == 0)
      {
        v24 = __OFADD__(*&__dst[6], v59);
        v59 += *&__dst[6];
        if (v24)
        {
          *v237 = 1;
          *(v237 + 8) = v240;
          *(v237 + 24) = 0;
          *(v237 + 32) = 1;
          *&v247[0] = 1;
          *(&v247[0] + 1) = v240;
          v247[1] = 0uLL;
          LOBYTE(v247[2]) = 1;
LABEL_63:
          lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
          swift_willThrowTypedImpl();
          memcpy(__src, __dst, 0x11BuLL);
          return outlined destroy of DateComponents(__src);
        }
      }

      v242 = v12;
      if (v59 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v69 = 0;
      }

      else
      {
        v69 = v59;
      }

      *&__dst[6] = v69;
      LOBYTE(__dst[7]) = v59 == 0x7FFFFFFFFFFFFFFFLL;
      if ((LOBYTE(__dst[11]) & 1) == 0 && (LOBYTE(__dst[9]) & 1) == 0 && v59 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v70 = *&__dst[10];
        v71 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(*&__dst[8], v69);
        if (v71 >= v70)
        {
          if (v70 > 0)
          {
            goto LABEL_94;
          }

          v71 = 1;
        }

        *&__dst[10] = v71;
        LOBYTE(__dst[11]) = 0;
      }

LABEL_94:
      memcpy(__src, __dst, 0x11BuLL);
      memcpy(v247, __dst, 0x11BuLL);
      outlined init with copy of DateComponents(__src, v245);
      specialized ResolvedDateComponents.init(dateComponents:)(v247, &v262);
      v72 = 0;
      v66 = v262;
      v60 = v263;
      v67 = v273 >> 5;
      if (v67 > 2)
      {
        v68 = v263;
        if (v67 != 3)
        {
          goto LABEL_129;
        }

        v72 = v262 == *(v8 + 64);
      }

      else
      {
        v68 = v263;
        if ((v67 - 1) < 2)
        {
          goto LABEL_129;
        }

        v72 = 0;
      }

      v68 = 1;
LABEL_129:
      v92 = v68 - 2;
      if (__OFSUB__(v68, 2))
      {
LABEL_375:
        __break(1u);
        goto LABEL_376;
      }

      v93 = v262 + 4716;
      if (!__OFADD__(v262, 4716))
      {
        if (__OFSUB__(12, v92))
        {
LABEL_380:
          __break(1u);
          goto LABEL_381;
        }

        v94 = (14 - v68) / 12;
        v24 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v24)
        {
LABEL_383:
          __break(1u);
          goto LABEL_384;
        }

        if (__OFSUB__(v92, 1))
        {
LABEL_386:
          __break(1u);
          goto LABEL_387;
        }

        if (__OFADD__(v68 - 3, 12))
        {
LABEL_389:
          __break(1u);
          goto LABEL_390;
        }

        if ((v95 * 1461) >> 64 == (1461 * v95) >> 63)
        {
          v96 = v68 + 9 - 12 * (((((v68 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 63) + ((((v68 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 1));
          v97 = 1461 * v95 / 4 + (((26215 * (153 * v96 + 2)) >> 17) + ((26215 * (153 * v96 + 2)) >> 31)) - 1402;
          v98 = v97 - 3 * ((v95 + 184) / 100) / 4 + 38;
          LODWORD(v232) = v72;
          if (v72)
          {
            v98 = v97;
          }

          v234 = v98;
          v99 = _CalendarGregorian.relativeWeekday(fromJulianDay:)(v98 + 1);
          v87 = v264;
          v88 = v265 | ((v266 | (v267 << 16)) << 32);
          v100 = v268;
          if (v67 > 1)
          {
            v86 = v99;
            v101 = v269 | ((v270 | (v271 << 16)) << 32);
            v85 = v272;
            if (v67 != 2)
            {
              if (v67 == 3)
              {
                if (v272)
                {
                  v102 = 0;
                  goto LABEL_249;
                }

LABEL_248:
                v152 = v87;
                v153 = v86;
                v102 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v100 | (v101 << 8));
                v86 = v153;
                LOBYTE(v87) = v152;
LABEL_249:
                v154 = v102 - v86;
                v155 = v102 - v86 + 1;
                if (*(v8 + 152) == 1)
                {
                  if (!*(v8 + 96))
                  {
                    v156 = v8;
                    v119 = v286;
                    if ((v87 & 1) == 0)
                    {
LABEL_260:
                      v163 = v60 - 1;
                      if (__OFSUB__(v60, 1))
                      {
LABEL_410:
                        __break(1u);
                        goto LABEL_411;
                      }

                      v164 = 7 * v163;
                      if ((v163 * 7) >> 64 != (7 * v163) >> 63)
                      {
LABEL_413:
                        __break(1u);
                        goto LABEL_414;
                      }

                      v24 = __OFADD__(v155, v164);
                      v155 += v164;
                      if (v24)
                      {
LABEL_416:
                        __break(1u);
                        goto LABEL_417;
                      }
                    }

LABEL_263:
                    v120 = v234 + v155;
                    if (!__OFADD__(v234, v155))
                    {
                      v8 = v156;
                      goto LABEL_318;
                    }

                    goto LABEL_396;
                  }

                  v156 = v8;
                  v157 = *(v8 + 104);
                  v220 = v86;
                  v228 = v87;
                  ObjectType = swift_getObjectType();
                  v217 = *(v157 + 344);
                  swift_unknownObjectRetain();
                  v159 = v217(ObjectType, v157);
                  swift_unknownObjectRelease();
                  v86 = v220;
                  LOBYTE(v87) = v228;
                }

                else
                {
                  v156 = v8;
                  v159 = *(v8 + 144);
                }

                v119 = v286;
                if (7 - v86 < v159)
                {
                  v155 = v154 + 8;
                }

                if ((v87 & 1) == 0)
                {
                  goto LABEL_260;
                }

                goto LABEL_263;
              }

              if (v272)
              {
                v125 = 0;
              }

              else
              {
                v60 = v264;
                v160 = v99;
                v66 = v265 | ((v266 | (v267 << 16)) << 32);
                v125 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v268 | (v101 << 8));
                v88 = v66;
                v86 = v160;
                v87 = v60;
              }

              v126 = v87 | (v88 << 8);
              v68 = v125 - v86;
              v130 = v125 - v86 + 1;
              v233 = v8;
              if (*(v8 + 152) == 1)
              {
                if (!*(v8 + 96))
                {
                  v119 = v286;
                  v165 = v126 - 1;
                  if (!__OFSUB__(v126, 1))
                  {
                    goto LABEL_269;
                  }

LABEL_357:
                  __break(1u);
LABEL_358:
                  v117 = v286;
                  v185 = v126 - 1;
                  if (!__OFSUB__(v126, 1))
                  {
LABEL_304:
                    v186 = 7 * v185;
                    if ((v185 * 7) >> 64 != (7 * v185) >> 63)
                    {
LABEL_395:
                      __break(1u);
LABEL_396:
                      __break(1u);
LABEL_397:
                      __break(1u);
                      goto LABEL_398;
                    }

                    v187 = v130 + v186;
                    if (__OFADD__(v130, v186))
                    {
LABEL_403:
                      __break(1u);
LABEL_404:
                      __break(1u);
LABEL_405:
                      __break(1u);
                      goto LABEL_406;
                    }

                    v118 = v242 + v187;
                    v184 = v233;
                    if (!__OFADD__(v242, v187))
                    {
                      goto LABEL_333;
                    }

                    __break(1u);
                    goto LABEL_309;
                  }

                  goto LABEL_360;
                }

                v161 = *(v8 + 104);
                v60 = v86;
                v162 = swift_getObjectType();
                v221 = *(v161 + 344);
                swift_unknownObjectRetain();
                v66 = v221(v162, v161);
                swift_unknownObjectRelease();
                v86 = v60;
              }

              else
              {
                v66 = *(v8 + 144);
              }

              v119 = v286;
              if (7 - v86 < v66)
              {
                v130 = v68 + 8;
              }

              v165 = v126 - 1;
              if (!__OFSUB__(v126, 1))
              {
LABEL_269:
                v166 = 7 * v165;
                if ((v165 * 7) >> 64 == (7 * v165) >> 63)
                {
                  v114 = v130 + v166;
                  if (__OFADD__(v130, v166))
                  {
LABEL_401:
                    __break(1u);
                    goto LABEL_402;
                  }

                  v115 = v234;
                  v120 = v234 + v114;
                  if (!__OFADD__(v234, v114))
                  {
                    goto LABEL_318;
                  }

                  __break(1u);
                  goto LABEL_274;
                }

                goto LABEL_394;
              }

              goto LABEL_357;
            }

LABEL_184:
            v123 = v88 << 8;
            if (v85)
            {
              v124 = 0;
              goto LABEL_240;
            }

LABEL_239:
            v60 = v87;
            v149 = v86;
            v227 = v88;
            v124 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v100 | (v101 << 8));
            v88 = v227;
            v86 = v149;
            LOBYTE(v87) = v60;
LABEL_240:
            v119 = v286;
            v87 = v87 | (v88 << 8);
            if ((v124 - v86) <= 0x7FFFFFFFFFFFFFFELL)
            {
              v150 = v124 - v86 + 1;
            }

            else
            {
              v150 = v124 - v86 + 8;
            }

            if ((v123 & 0x8000000000000000) != 0)
            {
              v194 = v87;
              v195 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v68, v66);
              v196 = v194 + ((((37 * (v195 - v150)) >> 8) + (((v195 - v150 - ((37 * (v195 - v150)) >> 8)) & 0xFE) >> 1)) >> 2) + 1;
              v197 = 7 * v196;
              if ((v196 * 7) >> 64 != (7 * v196) >> 63)
              {
LABEL_419:
                __break(1u);
                goto LABEL_420;
              }

              v24 = __OFADD__(v150, v197);
              v100 = v150 + v197;
              v119 = v286;
              if (v24)
              {
LABEL_422:
                __break(1u);
                goto LABEL_423;
              }
            }

            else
            {
              v101 = ((v87 - 1) * 7) >> 64;
              v151 = 7 * (v87 - 1);
              if (v101 != v151 >> 63)
              {
LABEL_407:
                __break(1u);
                goto LABEL_408;
              }

              v24 = __OFADD__(v150, v151);
              v100 = v150 + v151;
              if (v24)
              {
                __break(1u);
                goto LABEL_248;
              }
            }

            v120 = v234 + v100;
            if (!__OFADD__(v234, v100))
            {
              goto LABEL_318;
            }

            goto LABEL_400;
          }

LABEL_166:
          v119 = v286;
          if (!v67)
          {
            LOBYTE(v114) = v234;
            v120 = v234 + v60;
            if (!__OFADD__(v234, v60))
            {
              goto LABEL_318;
            }

            __break(1u);
            goto LABEL_170;
          }

          if (v100)
          {
            v114 = 1;
          }

          else
          {
            v114 = v87 | (v88 << 8);
          }

          v115 = v234;
          v120 = v234 + v114;
          if (!__OFADD__(v234, v114))
          {
LABEL_318:
            if ((v232 & 1) != 0 || v120 >= *(v8 + 56) || (v120 = _s10Foundation18_CalendarGregorianC9julianDay20usingJulianReference18resolvedComponentsSiSb_AA012ResolvedDateJ0OtAA0cB5ErrorOYKF(1, &v262, v245), !v119))
            {
              v198 = __src[14] * 3600.0 + 0.0;
              if (LOBYTE(__src[15]))
              {
                v198 = 0.0;
              }

              v199 = __src[16] * 60.0;
              if (LOBYTE(__src[17]))
              {
                v199 = -0.0;
              }

              v200 = v198 + v199;
              if (!LOBYTE(__src[19]))
              {
                v200 = v200 + __src[18];
              }

              if ((__src[21] & 1) == 0)
              {
                v200 = v200 + __src[20] / 1000000000.0;
              }

              v201 = (v120 + -2451910.5) * 86400.0 + -43200.0 + v200;
              v202 = swift_getObjectType();
              *v247 = v201;
              LOBYTE(v245[0]) = 1;
              LOBYTE(v243) = 0;
              v60 = v242;
              v203 = (*(v242 + 56))(v247, v245, &v243, v202);
LABEL_347:
              v214 = v203;
              v215 = v204;
              memcpy(v247, __dst, 0x11BuLL);
              result = outlined destroy of DateComponents(v247);
              v216 = v201 - v214 - v215;
              if (v17 < 1 || (*v247 = v216, __src[0] = v13, __src[1] = v60, result = _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v247, __src, __dst), (LOBYTE(__dst[2]) & 1) != 0))
              {
                *a8.i64 = v15 + v216;
              }

              else
              {
                *a8.i64 = v15 + v216 - __dst[1];
              }

              goto LABEL_70;
            }

            goto LABEL_337;
          }

          __break(1u);
          goto LABEL_194;
        }
      }

LABEL_153:
      v247[0] = xmmword_18121FA20;
      v247[1] = xmmword_18121B2B0;
      LOBYTE(v247[2]) = 1;
      lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
      swift_willThrowTypedImpl();
      memcpy(v247, __dst, 0x11BuLL);
      result = outlined destroy of DateComponents(v247);
      v107 = xmmword_18121B2B0;
      v108 = xmmword_18121FA20;
      v109 = 1;
LABEL_154:
      *v237 = v108;
      *(v237 + 16) = v107;
      *(v237 + 32) = v109;
      return result;
    case 2:
      v239 = *a2;
      v286 = v9;
      *&v247[0] = 8319;
      *v245 = v16;
      __src[0] = v13;
      __src[1] = v12;
      v237 = a5;
      _CalendarGregorian.dateComponents(_:from:in:)(v247, v245, __src, __dst);
      v55 = v17;
      if ((LOBYTE(__dst[9]) & 1) != 0 || (v55 = *&__dst[8] + v17, !__OFADD__(*&__dst[8], v17)))
      {
        v60 = v12;
        v233 = v8;
        if (v55 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v62 = 0;
        }

        else
        {
          v62 = v55;
        }

        *&__dst[8] = v62;
        LOBYTE(__dst[9]) = v55 == 0x7FFFFFFFFFFFFFFFLL;
        if ((LOBYTE(__dst[11]) & 1) == 0 && v55 != 0x7FFFFFFFFFFFFFFFLL && (LOBYTE(__dst[7]) & 1) == 0)
        {
          v63 = *&__dst[10];
          v64 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v62, *&__dst[6]);
          if (v64 >= v63)
          {
            if (v63 > 0)
            {
              goto LABEL_81;
            }

            v64 = 1;
          }

          *&__dst[10] = v64;
          LOBYTE(__dst[11]) = 0;
        }

LABEL_81:
        memcpy(__src, __dst, 0x11BuLL);
        memcpy(v247, __dst, 0x11BuLL);
        outlined init with copy of DateComponents(__src, v245);
        specialized ResolvedDateComponents.init(dateComponents:)(v247, &v274);
        v65 = 0;
        v66 = v274;
        v67 = v285 >> 5;
        if (v67 > 2)
        {
          v68 = v275;
          if (v67 != 3)
          {
            goto LABEL_112;
          }

          v65 = v274 == *(v8 + 64);
        }

        else
        {
          v68 = v275;
          if ((v67 - 1) < 2)
          {
            goto LABEL_112;
          }

          v65 = 0;
        }

        v68 = 1;
LABEL_112:
        v77 = v68 - 2;
        if (__OFSUB__(v68, 2))
        {
LABEL_374:
          __break(1u);
          goto LABEL_375;
        }

        v78 = v274 + 4716;
        if (__OFADD__(v274, 4716))
        {
          goto LABEL_153;
        }

        if (__OFSUB__(12, v77))
        {
LABEL_379:
          __break(1u);
          goto LABEL_380;
        }

        v79 = (14 - v68) / 12;
        v24 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v24)
        {
LABEL_382:
          __break(1u);
          goto LABEL_383;
        }

        if (__OFSUB__(v77, 1))
        {
LABEL_385:
          __break(1u);
          goto LABEL_386;
        }

        if (__OFADD__(v68 - 3, 12))
        {
LABEL_388:
          __break(1u);
          goto LABEL_389;
        }

        if ((v80 * 1461) >> 64 != (1461 * v80) >> 63)
        {
          goto LABEL_153;
        }

        v232 = v275;
        v81 = v68 + 9 - 12 * (((((v68 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 63) + ((((v68 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 1));
        v82 = 1461 * v80 / 4 + (((26215 * (153 * v81 + 2)) >> 17) + ((26215 * (153 * v81 + 2)) >> 31)) - 1402;
        v83 = v82 - 3 * ((v80 + 184) / 100) / 4 + 38;
        LODWORD(v234) = v65;
        if (v65)
        {
          v83 = v82;
        }

        v242 = v83;
        v84 = _CalendarGregorian.relativeWeekday(fromJulianDay:)(v83 + 1);
        v87 = v276;
        v88 = v277 | ((v278 | (v279 << 16)) << 32);
        v89 = v280;
        if (v67 <= 1)
        {
          v117 = v286;
          if (v67)
          {
            if (v280)
            {
              v100 = 1;
            }

            else
            {
              v100 = v276 | (v88 << 8);
            }

            v101 = v242;
            v118 = v242 + v100;
            if (__OFADD__(v242, v100))
            {
              __break(1u);
              goto LABEL_184;
            }

            goto LABEL_229;
          }

          LOBYTE(v100) = v242;
          v118 = v242 + v232;
          if (!__OFADD__(v242, v232))
          {
LABEL_229:
            v8 = v233;
            goto LABEL_312;
          }

          __break(1u);
          goto LABEL_166;
        }

        v86 = v84;
        v90 = v281 | ((v282 | (v283 << 16)) << 32);
        v85 = v284;
        if (v67 == 2)
        {
          goto LABEL_174;
        }

        if (v67 == 3)
        {
          if (v284)
          {
            v91 = 0;
            goto LABEL_214;
          }

LABEL_213:
          v132 = v87;
          v133 = v86;
          v91 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v89 | (v90 << 8));
          v86 = v133;
          LOBYTE(v87) = v132;
LABEL_214:
          v134 = v91 - v86;
          v135 = v91 - v86 + 1;
          if (*(v8 + 152) == 1)
          {
            if (!*(v8 + 96))
            {
              v117 = v286;
              if (v87)
              {
                goto LABEL_228;
              }

LABEL_225:
              v145 = v232 - 1;
              if (__OFSUB__(v232, 1))
              {
LABEL_409:
                __break(1u);
                goto LABEL_410;
              }

              v146 = 7 * v145;
              if ((v145 * 7) >> 64 != (7 * v145) >> 63)
              {
LABEL_412:
                __break(1u);
                goto LABEL_413;
              }

              v24 = __OFADD__(v135, v146);
              v135 += v146;
              if (v24)
              {
LABEL_415:
                __break(1u);
                goto LABEL_416;
              }

LABEL_228:
              v118 = v242 + v135;
              if (__OFADD__(v242, v135))
              {
LABEL_393:
                __break(1u);
LABEL_394:
                __break(1u);
                goto LABEL_395;
              }

              goto LABEL_229;
            }

            v136 = *(v8 + 104);
            v218 = v86;
            v225 = v87;
            v137 = swift_getObjectType();
            v138 = *(v136 + 344);
            swift_unknownObjectRetain();
            v139 = v138(v137, v136);
            swift_unknownObjectRelease();
            v86 = v218;
            LOBYTE(v87) = v225;
          }

          else
          {
            v139 = *(v8 + 144);
          }

          v117 = v286;
          if (7 - v86 < v139)
          {
            v135 = v134 + 8;
          }

          if (v87)
          {
            goto LABEL_228;
          }

          goto LABEL_225;
        }

        if (v284)
        {
          v122 = 0;
        }

        else
        {
          v140 = v276;
          v66 = v84;
          v141 = v277 | ((v278 | (v279 << 16)) << 32);
          v122 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v280 | (v90 << 8));
          v88 = v141;
          v86 = v66;
          v87 = v140;
        }

        v117 = v286;
        v123 = v87 | (v88 << 8);
        v68 = v122 - v86;
        v142 = v122 - v86 + 1;
        if (*(v8 + 152) == 1)
        {
          if (!*(v8 + 96))
          {
            goto LABEL_233;
          }

          v143 = *(v8 + 104);
          v219 = v86;
          v144 = swift_getObjectType();
          v226 = *(v143 + 344);
          LOBYTE(v232) = v143 + 88;
          swift_unknownObjectRetain();
          v66 = v226(v144, v143);
          swift_unknownObjectRelease();
          v86 = v219;
          v117 = v286;
        }

        else
        {
          v66 = *(v8 + 144);
        }

        if (7 - v86 < v66)
        {
          v142 = v68 + 8;
        }

LABEL_233:
        v147 = v123 - 1;
        if (__OFSUB__(v123, 1))
        {
LABEL_391:
          __break(1u);
          goto LABEL_392;
        }

        v148 = 7 * v147;
        if ((v147 * 7) >> 64 != (7 * v147) >> 63)
        {
LABEL_392:
          __break(1u);
          goto LABEL_393;
        }

        v100 = v142 + v148;
        if (__OFADD__(v142, v148))
        {
LABEL_399:
          __break(1u);
LABEL_400:
          __break(1u);
          goto LABEL_401;
        }

        v101 = v242;
        v118 = v242 + v100;
        if (__OFADD__(v242, v100))
        {
          __break(1u);
          goto LABEL_239;
        }

LABEL_312:
        if ((v234 & 1) != 0 || v118 >= *(v8 + 56))
        {
          goto LABEL_338;
        }

        v193 = &v274;
        goto LABEL_336;
      }

      *v237 = 2;
      v56 = v239;
      *(v237 + 8) = v239;
      *(v237 + 24) = 0;
      *(v237 + 32) = 1;
      *&v247[0] = 2;
      goto LABEL_62;
    case 3:
    case 7:
    case 0x12:
      v18 = 86400.0;
      goto LABEL_10;
    case 4:
      v57 = a3;
      v58 = 3600.0;
      goto LABEL_66;
    case 5:
      v57 = a3;
      v58 = 60.0;
LABEL_66:
      v37 = v57 * v58 + v16;
      goto LABEL_68;
    case 6:
      v37 = v16 + a3;
LABEL_68:
      v54 = 0.0;
      goto LABEL_69;
    case 8:
    case 0xA:
    case 0xB:
LABEL_10:
      v286 = v9;
      *&v245[0] = 112;
      v238 = a8.i64[0];
      *&v243 = a8.i64[0];
      v247[0] = *(v8 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(v245, &v243, v247, __src);
      swift_unknownObjectRelease();
      memcpy(__dst, __src, 0x11BuLL);
      if (LOBYTE(__dst[15]) & 1) != 0 || (LOBYTE(__dst[17]) & 1) != 0 || (LOBYTE(__dst[19]))
      {
        goto LABEL_404;
      }

      v19 = __dst[14];
      v20 = __dst[16];
      v21 = __dst[18];
      outlined destroy of DateComponents(__dst);
      v22 = 3600 * *&v19;
      if ((*&v19 * 3600) >> 64 != (3600 * *&v19) >> 63)
      {
        goto LABEL_361;
      }

      v23 = 60 * *&v20;
      if ((*&v20 * 60) >> 64 != (60 * *&v20) >> 63)
      {
        goto LABEL_362;
      }

      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_363;
      }

      v26 = v25 + *&v21;
      if (__OFADD__(v25, *&v21))
      {
        goto LABEL_364;
      }

      v27 = v16 + v18 * v17;
      *&v243 = 112;
      v246 = *&v27;
      v245[0] = *(v8 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v243, &v246, v245, v247);
      swift_unknownObjectRelease();
      memcpy(__src, v247, 0x11BuLL);
      if (__src[15] & 1) != 0 || (__src[17] & 1) != 0 || (__src[19])
      {
        goto LABEL_405;
      }

      v28 = __src[14];
      v29 = __src[16];
      v30 = __src[18];
      result = outlined destroy of DateComponents(__src);
      v31 = 3600 * v28;
      if ((v28 * 3600) >> 64 != (3600 * v28) >> 63)
      {
        goto LABEL_365;
      }

      v32 = 60 * v29;
      if ((v29 * 60) >> 64 != (60 * v29) >> 63)
      {
        goto LABEL_366;
      }

      v24 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v24)
      {
        goto LABEL_367;
      }

      v24 = __OFADD__(v33, v30);
      v34 = v33 + v30;
      if (v24)
      {
        goto LABEL_368;
      }

      v35 = v26;
      if (v26 == v34)
      {
        v36 = v12;
        v37 = v27;
      }

      else
      {
        v38 = v8;
        v235 = v17;
        v236 = a6;
        v39 = swift_getObjectType();
        *v247 = v27;
        v40 = v12;
        v41 = v13;
        v42 = *(v12 + 40);
        v43 = v42(v247, v39, v12);
        *&v247[0] = v238;
        v44 = v41;
        v45 = v40;
        result = v42(v247, v39, v40);
        if (v43 == result)
        {
          v37 = v27;
          v36 = v40;
          v17 = v235;
          a6 = v236;
          v13 = v41;
        }

        else
        {
          v46 = result;
          if (__OFSUB__(result, v43))
          {
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
            goto LABEL_371;
          }

          v37 = v27 + &result[-v43];
          v246 = 112;
          v244 = v37;
          v243 = *(v38 + 112);
          swift_unknownObjectRetain();
          _CalendarGregorian.dateComponents(_:from:in:)(&v246, &v244, &v243, v245);
          swift_unknownObjectRelease();
          memcpy(v247, v245, 0x11BuLL);
          if (BYTE8(v247[7]) & 1) != 0 || (BYTE8(v247[8]) & 1) != 0 || (BYTE8(v247[9]))
          {
LABEL_424:
            __break(1u);
            JUMPOUT(0x18085E8C4);
          }

          v47 = *&v247[7];
          v48 = *&v247[8];
          v49 = *&v247[9];
          result = outlined destroy of DateComponents(v247);
          v50 = 3600 * v47;
          if ((v47 * 3600) >> 64 != (3600 * v47) >> 63)
          {
            goto LABEL_370;
          }

          v51 = 60 * v48;
          if ((v48 * 60) >> 64 != (60 * v48) >> 63)
          {
LABEL_371:
            __break(1u);
            goto LABEL_372;
          }

          v36 = v45;
          v24 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          a6 = v236;
          if (v24)
          {
LABEL_372:
            __break(1u);
            goto LABEL_373;
          }

          v24 = __OFADD__(v52, v49);
          v53 = v52 + v49;
          v17 = v235;
          if (v24)
          {
LABEL_373:
            __break(1u);
            goto LABEL_374;
          }

          v13 = v44;
          if (v53 != v35 && v46 < v43)
          {
            v37 = v27;
          }
        }
      }

      if (v17 >= 1)
      {
        *&v243 = v37;
        *&v245[0] = v13;
        *(&v245[0] + 1) = v36;
        result = _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(&v243, v245, v247);
        if ((v247[1] & 1) == 0)
        {
          v37 = v37 - *(v247 + 1);
        }
      }

      v54 = 0.0;
LABEL_69:
      *a8.i64 = v15 + v37 + v54;
      goto LABEL_70;
    case 0xC:
      v241 = *a2;
      v286 = v9;
      *&v247[0] = 14577;
      *v245 = v16;
      __src[0] = v13;
      v60 = v12;
      __src[1] = v12;
      v233 = v8;
      v237 = a5;
      _CalendarGregorian.dateComponents(_:from:in:)(v247, v245, __src, __dst);
      v61 = *&v17;
      if ((LOBYTE(__dst[5]) & 1) == 0)
      {
        v61 = *&v17;
        if (!*&__dst[4])
        {
          *&v61 = -v17;
          if (__OFSUB__(0, v17))
          {
            goto LABEL_378;
          }
        }
      }

      if ((LOBYTE(__dst[35]) & 1) == 0)
      {
        v24 = __OFADD__(*&__dst[34], *&v61);
        *&v61 += *&__dst[34];
        if (v24)
        {
          *v237 = 12;
          v56 = v241;
          *(v237 + 8) = v241;
          *(v237 + 24) = 0;
          *(v237 + 32) = 1;
          *&v247[0] = 12;
LABEL_62:
          *(&v247[0] + 1) = v56;
          v247[1] = 0uLL;
          LOBYTE(v247[2]) = 1;
          goto LABEL_63;
        }
      }

      v73 = *&v61 == 0x7FFFFFFFFFFFFFFFLL;
      if (v61 == NAN)
      {
        v61 = 0.0;
      }

      __dst[34] = v61;
      LOBYTE(__dst[35]) = v73;
      if (LOBYTE(__dst[11]) & 1) != 0 || (LOBYTE(__dst[9]) & 1) != 0 || (LOBYTE(__dst[7]))
      {
        goto LABEL_106;
      }

      v74 = *&__dst[10];
      v75 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(*&__dst[8], *&__dst[6]);
      if (v75 < v74)
      {
        goto LABEL_105;
      }

      if (v74 <= 0)
      {
        v75 = 1;
LABEL_105:
        *&__dst[10] = v75;
        LOBYTE(__dst[11]) = 0;
      }

LABEL_106:
      memcpy(__src, __dst, 0x11BuLL);
      memcpy(v247, __dst, 0x11BuLL);
      outlined init with copy of DateComponents(__src, v245);
      specialized ResolvedDateComponents.init(dateComponents:)(v247, &v250);
      v76 = 0;
      v66 = v250;
      v67 = v261 >> 5;
      if (v67 > 2)
      {
        v68 = v251;
        if (v67 != 3)
        {
          goto LABEL_146;
        }

        v76 = v250 == *(v8 + 64);
      }

      else
      {
        v68 = v251;
        if ((v67 - 1) < 2)
        {
          goto LABEL_146;
        }

        v76 = 0;
      }

      v68 = 1;
LABEL_146:
      v103 = v68 - 2;
      if (__OFSUB__(v68, 2))
      {
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
        goto LABEL_379;
      }

      v104 = v250 + 4716;
      if (!__OFADD__(v250, 4716))
      {
        if (__OFSUB__(12, v103))
        {
LABEL_381:
          __break(1u);
          goto LABEL_382;
        }

        v105 = (14 - v68) / 12;
        v24 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v24)
        {
LABEL_384:
          __break(1u);
          goto LABEL_385;
        }

        if (__OFSUB__(v103, 1))
        {
LABEL_387:
          __break(1u);
          goto LABEL_388;
        }

        if (__OFADD__(v68 - 3, 12))
        {
LABEL_390:
          __break(1u);
          goto LABEL_391;
        }

        if ((v106 * 1461) >> 64 == (1461 * v106) >> 63)
        {
          v232 = v251;
          v110 = v68 + 9 - 12 * (((((v68 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 63) + ((((v68 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 1));
          v111 = 1461 * v106 / 4 + (((26215 * (153 * v110 + 2)) >> 17) + ((26215 * (153 * v110 + 2)) >> 31)) - 1402;
          v112 = v111 - 3 * ((v106 + 184) / 100) / 4 + 38;
          LOBYTE(v234) = v76;
          if (v76)
          {
            v112 = v111;
          }

          v242 = v112;
          v113 = _CalendarGregorian.relativeWeekday(fromJulianDay:)(v112 + 1);
          v87 = v252;
          v88 = v253 | ((v254 | (v255 << 16)) << 32);
          v114 = v256;
          if (v67 <= 1)
          {
LABEL_170:
            v117 = v286;
            if (v67)
            {
              if (v114)
              {
                v89 = 1;
              }

              else
              {
                v89 = v87 | (v88 << 8);
              }

              v90 = v242;
              v118 = v242 + v89;
              if (!__OFADD__(v242, v89))
              {
                goto LABEL_299;
              }

              __break(1u);
              goto LABEL_204;
            }

            v89 = v242;
            v90 = v232;
            v118 = v242 + v232;
            if (!__OFADD__(v242, v232))
            {
LABEL_299:
              v184 = v233;
LABEL_333:
              if ((v234 & 1) != 0 || v118 >= *(v184 + 56))
              {
                goto LABEL_338;
              }

              v193 = &v250;
LABEL_336:
              v118 = _s10Foundation18_CalendarGregorianC9julianDay20usingJulianReference18resolvedComponentsSiSb_AA012ResolvedDateJ0OtAA0cB5ErrorOYKF(1, v193, v245);
              if (v117)
              {
LABEL_337:
                memcpy(v247, __dst, 0x11BuLL);
                result = outlined destroy of DateComponents(v247);
                v108 = v245[0];
                v107 = v245[1];
                v109 = v245[2];
                goto LABEL_154;
              }

LABEL_338:
              v210 = __src[14] * 3600.0 + 0.0;
              if (LOBYTE(__src[15]))
              {
                v210 = 0.0;
              }

              v211 = __src[16] * 60.0;
              if (LOBYTE(__src[17]))
              {
                v211 = -0.0;
              }

              v212 = v210 + v211;
              if (!LOBYTE(__src[19]))
              {
                v212 = v212 + __src[18];
              }

              if ((__src[21] & 1) == 0)
              {
                v212 = v212 + __src[20] / 1000000000.0;
              }

              v201 = (v118 + -2451910.5) * 86400.0 + -43200.0 + v212;
              v213 = swift_getObjectType();
              *v247 = v201;
              LOBYTE(v245[0]) = 1;
              LOBYTE(v243) = 0;
              v203 = (*(v60 + 56))(v247, v245, &v243, v213);
              goto LABEL_347;
            }

            __break(1u);
LABEL_174:
            v11 = v88 << 8;
            if (v85)
            {
              v121 = 0;
LABEL_205:
              v117 = v286;
              v87 = v87 | (v88 << 8);
              if ((v121 - v86) <= 0x7FFFFFFFFFFFFFFELL)
              {
                v130 = v121 - v86 + 1;
              }

              else
              {
                v130 = v121 - v86 + 8;
              }

              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_309:
                v188 = v66;
                v189 = v87;
                v190 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v68, v188);
                v191 = v189 + ((((37 * (v190 - v130)) >> 8) + (((v190 - v130 - ((37 * (v190 - v130)) >> 8)) & 0xFE) >> 1)) >> 2) + 1;
                v192 = 7 * v191;
                if ((v191 * 7) >> 64 != (7 * v191) >> 63)
                {
LABEL_418:
                  __break(1u);
                  goto LABEL_419;
                }

                v24 = __OFADD__(v130, v192);
                v89 = v130 + v192;
                v117 = v286;
                if (v24)
                {
LABEL_421:
                  __break(1u);
                  goto LABEL_422;
                }

                goto LABEL_311;
              }

              v90 = ((v87 - 1) * 7) >> 64;
              v131 = 7 * (v87 - 1);
              if (v90 != v131 >> 63)
              {
LABEL_406:
                __break(1u);
                goto LABEL_407;
              }

              v24 = __OFADD__(v130, v131);
              v89 = v130 + v131;
              if (!v24)
              {
LABEL_311:
                v8 = v233;
                v118 = v242 + v89;
                if (__OFADD__(v242, v89))
                {
LABEL_398:
                  __break(1u);
                  goto LABEL_399;
                }

                goto LABEL_312;
              }

              __break(1u);
              goto LABEL_213;
            }

LABEL_204:
            v8 = v233;
            v224 = v87;
            v232 = v88;
            v129 = v86;
            v121 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v89 | (v90 << 8));
            LOBYTE(v87) = v224;
            v88 = v232;
            v86 = v129;
            goto LABEL_205;
          }

          v86 = v113;
          v115 = v257 | ((v258 | (v259 << 16)) << 32);
          v85 = v260;
          if (v67 != 2)
          {
            if (v67 == 3)
            {
              if (v260)
              {
                v116 = 0;
                goto LABEL_284;
              }

LABEL_283:
              v170 = v87;
              v171 = v86;
              v116 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v114 | (v115 << 8));
              v86 = v171;
              LOBYTE(v87) = v170;
LABEL_284:
              v117 = v286;
              v172 = v116 - v86;
              v173 = v116 - v86 + 1;
              if (*(v8 + 152) == 1)
              {
                if (!*(v8 + 96))
                {
                  goto LABEL_294;
                }

                v174 = *(v8 + 104);
                v222 = v86;
                v230 = v87;
                v175 = swift_getObjectType();
                v176 = *(v174 + 344);
                swift_unknownObjectRetain();
                v177 = v176(v175, v174);
                swift_unknownObjectRelease();
                v86 = v222;
                LOBYTE(v87) = v230;
                v117 = v286;
              }

              else
              {
                v177 = *(v8 + 144);
              }

              if (7 - v86 < v177)
              {
                v173 = v172 + 8;
              }

LABEL_294:
              if ((v87 & 1) == 0)
              {
                v182 = v232 - 1;
                if (__OFSUB__(v232, 1))
                {
LABEL_411:
                  __break(1u);
                  goto LABEL_412;
                }

                v183 = 7 * v182;
                if ((v182 * 7) >> 64 != (7 * v182) >> 63)
                {
LABEL_414:
                  __break(1u);
                  goto LABEL_415;
                }

                v24 = __OFADD__(v173, v183);
                v173 += v183;
                if (v24)
                {
LABEL_417:
                  __break(1u);
                  goto LABEL_418;
                }
              }

              v118 = v242 + v173;
              if (__OFADD__(v242, v173))
              {
                goto LABEL_397;
              }

              goto LABEL_299;
            }

            if (v260)
            {
              v128 = 0;
            }

            else
            {
              v178 = v252;
              v66 = v113;
              v179 = v253 | ((v254 | (v255 << 16)) << 32);
              v128 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v256 | (v115 << 8));
              v88 = v179;
              v86 = v66;
              v87 = v178;
            }

            v126 = v87 | (v88 << 8);
            v68 = v128 - v86;
            v130 = v128 - v86 + 1;
            if (*(v8 + 152) == 1)
            {
              if (!*(v8 + 96))
              {
                goto LABEL_358;
              }

              v180 = *(v8 + 104);
              v223 = v86;
              v181 = swift_getObjectType();
              v231 = *(v180 + 344);
              swift_unknownObjectRetain();
              v66 = v231(v181, v180);
              swift_unknownObjectRelease();
              v86 = v223;
            }

            else
            {
              v66 = *(v8 + 144);
            }

            v117 = v286;
            if (7 - v86 < v66)
            {
              v130 = v68 + 8;
            }

            v185 = v126 - 1;
            if (!__OFSUB__(v126, 1))
            {
              goto LABEL_304;
            }

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
            goto LABEL_369;
          }

LABEL_194:
          v126 = v88 << 8;
          if (v85)
          {
            v127 = 0;
LABEL_275:
            v117 = v286;
            v87 = v87 | (v88 << 8);
            if ((v127 - v86) <= 0x7FFFFFFFFFFFFFFELL)
            {
              v168 = v127 - v86 + 1;
            }

            else
            {
              v168 = v127 - v86 + 8;
            }

            if ((v126 & 0x8000000000000000) != 0)
            {
              v205 = v66;
              v206 = v87;
              v207 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v68, v205);
              v208 = v206 + ((((37 * (v207 - v168)) >> 8) + (((v207 - v168 - ((37 * (v207 - v168)) >> 8)) & 0xFE) >> 1)) >> 2) + 1;
              v209 = 7 * v208;
              if ((v208 * 7) >> 64 != (7 * v208) >> 63)
              {
LABEL_420:
                __break(1u);
                goto LABEL_421;
              }

              v24 = __OFADD__(v168, v209);
              v114 = v168 + v209;
              v117 = v286;
              if (v24)
              {
LABEL_423:
                __break(1u);
                goto LABEL_424;
              }

              goto LABEL_332;
            }

            v115 = ((v87 - 1) * 7) >> 64;
            v169 = 7 * (v87 - 1);
            if (v115 != v169 >> 63)
            {
LABEL_408:
              __break(1u);
              goto LABEL_409;
            }

            v24 = __OFADD__(v168, v169);
            v114 = v168 + v169;
            if (!v24)
            {
LABEL_332:
              v184 = v233;
              v118 = v242 + v114;
              if (__OFADD__(v242, v114))
              {
LABEL_402:
                __break(1u);
                goto LABEL_403;
              }

              goto LABEL_333;
            }

            __break(1u);
            goto LABEL_283;
          }

LABEL_274:
          v8 = v233;
          v229 = v87;
          v232 = v88;
          v167 = v86;
          v127 = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v114 | (v115 << 8));
          LOBYTE(v87) = v229;
          v88 = v232;
          v86 = v167;
          goto LABEL_275;
        }
      }

      goto LABEL_153;
    case 0xD:
      v54 = a3 / 1000000000.0;
      v37 = v16 + 0.0;
      goto LABEL_69;
    default:
      goto LABEL_70;
  }
}

uint64_t CalendarCache.current.getter()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 8);
  v2 = *&v1[4]._os_unfair_lock_opaque;
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v1 + 8);
  if (!v2)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v18 = static LocaleCache.cache;
    v19 = qword_1ED4404B0;
    LocaleCache._currentAndCache.getter();
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 200))(&v18, ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = v18;
    if (v18 != 7 && v18)
    {
      v7 = type metadata accessor for _CalendarICU();
      v8 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v9 = type metadata accessor for _CalendarICU;
    }

    else
    {
      v7 = type metadata accessor for _CalendarGregorian();
      v8 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v9 = type metadata accessor for _CalendarGregorian;
    }

    v10 = lazy protocol witness table accessor for type _CalendarICU and conformance _CalendarICU(v8, v9);
    v17 = v6;
    v16[0] = 0;
    v16[1] = 0;
    v18 = static LocaleCache.cache;
    v19 = qword_1ED4404B0;
    *&v18 = LocaleCache._currentAndCache.getter();
    *(&v18 + 1) = v11;
    v14 = 0;
    v15 = 1;
    v12 = (*(v10 + 16))(&v17, v16, &v18, 0, 1, 0, 1, &v14, v7, v10);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v1 + 8);
    partial apply for closure #2 in CalendarCache.current.getter(&v1[4], &v18);
    os_unfair_lock_unlock(v1 + 8);
    swift_unknownObjectRelease();
    return v18;
  }

  return v2;
}

void Calendar.locale.getter(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(v10, ObjectType, v3);
  v6 = v10[0];
  if (v10[0])
  {
    v7 = v10[1];
  }

  else
  {
    if (one-time initialization token for cache != -1)
    {
      v5 = swift_once();
    }

    v8 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v8 + 48));
    partial apply for closure #1 in LocaleCache.fixed(_:)((v8 + 16), v9);
    os_unfair_lock_unlock((v8 + 48));
    v6 = v9[0];
    v7 = v9[1];
  }

  *a1 = v6;
  a1[1] = v7;
}

char *orderedComponents #1 (_:) in _CalendarGregorian.dateComponents(_:from:to:)(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    v2[v6 + 32] = 1;
  }

LABEL_12:
  if ((v1 & 0x1000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v2[v8 + 32] = 12;
    if ((v1 & 0x200) == 0)
    {
LABEL_14:
      if ((v1 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v2[v10 + 32] = 9;
  if ((v1 & 4) == 0)
  {
LABEL_15:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v2);
  }

  *(v2 + 2) = v12 + 1;
  v2[v12 + 32] = 2;
  if ((v1 & 0x800) == 0)
  {
LABEL_16:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v2[v14 + 32] = 11;
  if ((v1 & 0x400) == 0)
  {
LABEL_17:
    if ((v1 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v2[v16 + 32] = 10;
  if ((v1 & 8) == 0)
  {
LABEL_18:
    if ((v1 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v18 = *(v2 + 2);
  v17 = *(v2 + 3);
  if (v18 >= v17 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v2);
  }

  *(v2 + 2) = v18 + 1;
  v2[v18 + 32] = 3;
  if ((v1 & 0x40000) == 0)
  {
LABEL_19:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v2[v20 + 32] = 18;
  if ((v1 & 0x80) == 0)
  {
LABEL_20:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_61:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v2[v22 + 32] = 7;
  if ((v1 & 0x100) == 0)
  {
LABEL_21:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_66:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v24 = *(v2 + 2);
  v23 = *(v2 + 3);
  if (v24 >= v23 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v2);
  }

  *(v2 + 2) = v24 + 1;
  v2[v24 + 32] = 8;
  if ((v1 & 0x10) == 0)
  {
LABEL_22:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v2[v26 + 32] = 4;
  if ((v1 & 0x20) == 0)
  {
LABEL_23:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v2[v28 + 32] = 5;
  if ((v1 & 0x40) == 0)
  {
LABEL_24:
    if ((v1 & 0x2000) == 0)
    {
      return v2;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v30 = *(v2 + 2);
  v29 = *(v2 + 3);
  if (v30 >= v29 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v2);
  }

  *(v2 + 2) = v30 + 1;
  v2[v30 + 32] = 6;
  if ((v1 & 0x2000) != 0)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v32 = *(v2 + 2);
    v31 = *(v2 + 3);
    if (v32 >= v31 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v2);
    }

    *(v2 + 2) = v32 + 1;
    v2[v32 + 32] = 13;
  }

  return v2;
}

void _CalendarGregorian.dateComponents(_:from:to:)(uint64_t *a1@<X0>, double *a2@<X1>, double *a3@<X2>, void *a4@<X8>)
{
  v5 = 0;
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = *a3;
  v10 = *a2;
  if ((*a1 & 0x2000) == 0)
  {
    goto LABEL_15;
  }

  __src[0] = *a2;
  v82 = v8;
  v11 = specialized static Date.subsecondsOffsetInNanoScale(_:_:)(__src, &v82);
  v5 = v11;
  if (v11 < 1000000000)
  {
    if (v7 != v8)
    {
      if (v7 >= v8)
      {
        goto LABEL_5;
      }

LABEL_11:
      v10 = ceil(v7);
      v12 = v8 < v7;
      if (v8 != v7)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_8:
    v10 = v7;
    v12 = v8 < v7;
    if (v8 != v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v5 = v11 - 125000000;
  if (v7 == v8)
  {
    goto LABEL_8;
  }

  if (v7 >= v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v10 = floor(v7);
  v12 = v8 < v7;
  if (v8 != v7)
  {
LABEL_12:
    if (v12)
    {
      v9 = ceil(v8);
    }

    else
    {
      v9 = floor(v8);
    }

    goto LABEL_15;
  }

LABEL_9:
  v9 = v8;
LABEL_15:
  LOBYTE(__src[5]) = 1;
  __src[6] = 0.0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0.0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0.0;
  LOBYTE(__src[11]) = 1;
  __src[12] = 0.0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0.0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0.0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0.0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0.0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0.0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0.0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0.0;
  LOBYTE(__src[27]) = 1;
  __src[28] = 0.0;
  LOBYTE(__src[29]) = 1;
  __src[30] = 0.0;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[33]) = 1;
  __src[32] = 0.0;
  __src[34] = 0.0;
  LOBYTE(__src[35]) = 1;
  *(&__src[35] + 1) = 514;
  memset(__src, 0, 40);
  v82 = 0.0;
  v83 = 0.0;
  DateComponents.timeZone.setter(&v82);
  __src[4] = 0.0;
  LOBYTE(__src[5]) = 1;
  __src[6] = 0.0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0.0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0.0;
  LOBYTE(__src[11]) = 1;
  __src[14] = 0.0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0.0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0.0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0.0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0.0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0.0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0.0;
  LOBYTE(__src[27]) = 1;
  __src[30] = 0.0;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[33]) = 1;
  __src[32] = 0.0;
  __src[34] = 0.0;
  LOBYTE(__src[35]) = 1;
  __src[12] = 0.0;
  LOBYTE(__src[13]) = 1;
  v82 = *&v6;
  v13 = orderedComponents #1 (_:) in _CalendarGregorian.dateComponents(_:from:to:)(&v82);
  v14 = v13;
  v81 = *(v13 + 2);
  if (!v81)
  {

LABEL_123:
    memcpy(a4, __src, 0x11BuLL);
    return;
  }

  v74 = a4;
  v15 = 0;
  v80 = v13 + 32;
  v16 = 0x7FFFFFFFLL;
  if (v7 >= v8)
  {
    v16 = 0xFFFFFFFF80000000;
  }

  _ = v16;
  *&v17._time = 134349570;
  v77 = v13;
  v78 = v5;
  v18 = v79;
  __8 = v5;
  while (v15 < *(v14 + 2))
  {
    v24 = v80[v15++];
    if (((1 << v24) & 0x43DFF) == 0)
    {
      if (((1 << v24) & 0x3C000) == 0)
      {
        __src[26] = 0.0;
        LOBYTE(__src[27]) = 0;
      }

      goto LABEL_22;
    }

    if (v9 == v10)
    {
      *&v23 = 0.0;
      if (v24 == 13)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((v24 - 1) < 0xC)
      {
        goto LABEL_46;
      }

      if (v24 > 13)
      {
        if (v24 != 18)
        {
          goto LABEL_133;
        }

LABEL_46:
        *&v38 = 0.0;
        if (v10 < v9)
        {
          v23 = 1;
        }

        else
        {
          *&v23 = NAN;
        }

        while (1)
        {
          while (1)
          {
            v89 = v24;
            v88 = v10;
            v87 = *(v18 + 112);
            swift_unknownObjectRetain();
            _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(&v89, &v88, v23, &v87, &v82, &v90, v39, v40);
            swift_unknownObjectRelease();
            v17._time = v90;
            v41 = v90 < v10;
            if (v10 < v9)
            {
              v41 = v10 < v90;
            }

            if (!v41)
            {
              v82 = v10;
              v83 = v90;
              v84 = 0;
              v85 = 0.0;
              v86 = 0x80;
              lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
              swift_willThrowTypedImpl();
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v44 = type metadata accessor for Logger();
              __swift_project_value_buffer(v44, static _CalendarGregorian.logger);
              v45 = Logger.logObject.getter();
              v46 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v45, v46))
              {
                v47 = swift_slowAlloc();
                *&v48 = COERCE_DOUBLE(swift_slowAlloc());
                v82 = *&v48;
                *v47 = 134349570;
                *(v47 + 4) = v10;
                *(v47 + 12) = 2050;
                *(v47 + 14) = v8;
                *(v47 + 22) = 2082;
                LOBYTE(v87) = v24;
                v49 = Calendar.Component.debugDescription.getter();
                v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v82);

                *(v47 + 24) = v51;
                v52 = v46;
                v53 = v45;
                v54 = "Not advancing in dateComponents(from:start:end:). start: %{public}f end: %{public}f component: %{public}s";
                goto LABEL_120;
              }

LABEL_121:

              LOBYTE(v82) = v24;
              v93.value = _;
              v93.is_nil = 0;
              DateComponents.setValue(_:for:)(v93, &v82);
              v14 = v77;
              goto LABEL_22;
            }

            if (v90 == v9)
            {
              v10 = v90;
              goto LABEL_112;
            }

            if (v10 >= v9)
            {
              break;
            }

            if (v9 < v90)
            {
              goto LABEL_80;
            }

            v38 = v23;
            v23 *= 2;
            if (v23 < 0)
            {
LABEL_59:
              v82 = *&v24;
              v83 = v10;
              v84 = 0;
              v85 = v9;
              v86 = 0;
              lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
              swift_willThrowTypedImpl();
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v68 = type metadata accessor for Logger();
              __swift_project_value_buffer(v68, static _CalendarGregorian.logger);
              v45 = Logger.logObject.getter();
              v69 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v45, v69))
              {
                v47 = swift_slowAlloc();
                *&v48 = COERCE_DOUBLE(swift_slowAlloc());
                v82 = *&v48;
                *v47 = 134349570;
                *(v47 + 4) = v10;
                *(v47 + 12) = 2050;
                *(v47 + 14) = v8;
                *(v47 + 22) = 2082;
                LOBYTE(v87) = v24;
                v70 = Calendar.Component.debugDescription.getter();
                v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v82);

                *(v47 + 24) = v72;
                v52 = v69;
                v53 = v45;
                v54 = "Overflowing in dateComponents(from:start:end:). start: %{public}f. end: %{public}f. component: %{public}s";
LABEL_120:
                _os_log_impl(&dword_18075C000, v53, v52, v54, v47, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v48);
                v73 = v48;
                v5 = __8;
                MEMORY[0x1865D2690](v73, -1, -1);
                MEMORY[0x1865D2690](v47, -1, -1);
              }

              goto LABEL_121;
            }
          }

          if (v90 < v9)
          {
            break;
          }

          v38 = v23;
          v23 *= 2;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }
        }

LABEL_80:
        v55 = v38;
        v56 = v23;
        while (v10 < v9)
        {
          v57 = v56 - v55;
          v58 = __OFSUB__(v56, v55);
          if (__OFSUB__(v56, v55))
          {
            goto LABEL_128;
          }

          if (v57 <= 1)
          {
            v23 = v55;
            goto LABEL_111;
          }

          v23 = v56;
          v38 = v55;
LABEL_92:
          if (v58)
          {
            goto LABEL_125;
          }

          v59 = v57;
          v60 = v38 + v57 / 2;
          if (__OFADD__(v38, v57 / 2))
          {
            goto LABEL_126;
          }

          v89 = v24;
          v88 = v10;
          v87 = *(v79 + 112);
          swift_unknownObjectRetain();
          _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(&v89, &v88, v38 + v59 / 2, &v87, &v82, &v90, v61, v62);
          swift_unknownObjectRelease();
          v17._time = v90;
          if (v90 == v9)
          {
            v23 = v38 + v59 / 2;
            v10 = v90;
            v18 = v79;
            v5 = __8;
            goto LABEL_112;
          }

          v63 = v9 < v90;
          if (v10 >= v9)
          {
            v63 = v90 < v9;
          }

          if (v63)
          {
            v23 = v38 + v59 / 2;
          }

          else
          {
            v38 += v59 / 2;
          }

          if (v63)
          {
            v56 = v60;
          }

          else
          {
            v55 = v60;
          }
        }

        if (__OFSUB__(v38, v23))
        {
          goto LABEL_127;
        }

        if (v38 - v23 >= 2)
        {
          v57 = v23 - v38;
          v58 = __OFSUB__(v23, v38);
          goto LABEL_92;
        }

        v23 = v38;
LABEL_111:
        v89 = v24;
        v88 = v10;
        v18 = v79;
        v87 = *(v79 + 112);
        swift_unknownObjectRetain();
        _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(&v89, &v88, v23, &v87, &v82, &v90, v64, v65);
        v5 = __8;
        swift_unknownObjectRelease();
        v10 = v90;
LABEL_112:
        v14 = v77;
        if (v24 != 13)
        {
          goto LABEL_21;
        }

LABEL_27:
        *&v25 = v5 + v23;
        v26 = __OFADD__(v23, v5);
        v27 = v78;
        *&v28 = v23 - v78;
        v29 = __OFSUB__(v23, v78);
        if (v8 >= v7)
        {
          v27 = v5;
        }

        else
        {
          v26 = v29;
        }

        v78 = v27;
        if (v26)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          __swift_project_value_buffer(v30, static _CalendarGregorian.logger);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *&v34 = COERCE_DOUBLE(swift_slowAlloc());
            v82 = *&v34;
            *v33 = 134349570;
            *(v33 + 4) = v7;
            *(v33 + 12) = 2050;
            *(v33 + 14) = v8;
            *(v33 + 22) = 2082;
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F6365736F6E616ELL, 0xEA0000000000646ELL, &v82);

            *(v33 + 24) = v35;
            _os_log_impl(&dword_18075C000, v31, v32, "Overflowing in dateComponents(from:start:end:). start: %{public}f. end: %{public}f. component: %{public}s", v33, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v34);
            v36 = v34;
            v5 = __8;
            MEMORY[0x1865D2690](v36, -1, -1);
            MEMORY[0x1865D2690](v33, -1, -1);
          }

          v14 = v77;
          if (*&v23 == NAN)
          {
            v37 = 0.0;
          }

          else
          {
            v37 = *&v23;
          }

          __src[20] = v37;
          LOBYTE(__src[21]) = v23 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          if (v8 < v7)
          {
            v25 = v28;
          }

          v42 = *&v25 == 0x7FFFFFFFFFFFFFFFLL;
          if (v25 == NAN)
          {
            v25 = 0.0;
          }

          __src[20] = v25;
          LOBYTE(__src[21]) = v42;
        }

        goto LABEL_22;
      }

      if (v24)
      {
        v43 = (v9 - v10) * 1000000000.0;
        if (v43 >= 2147483650.0)
        {
          v23 = 0x7FFFFFFFLL;
        }

        else if (v43 <= -2147483650.0)
        {
          *&v23 = NAN;
        }

        else
        {
          if (COERCE_UNSIGNED_INT64(fabs((v9 - v10) * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_130;
          }

          if (v43 <= -9.22337204e18)
          {
            goto LABEL_131;
          }

          if (v43 >= 9.22337204e18)
          {
            goto LABEL_132;
          }

          v23 = v43;
        }

        v89 = 13;
        v88 = v10;
        v87 = *(v18 + 112);
        swift_unknownObjectRetain();
        _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(&v89, &v88, v23, &v87, &v82, &v90, v66, v67);
        swift_unknownObjectRelease();
        v10 = v90;
        v14 = v77;
        goto LABEL_27;
      }

      LOBYTE(v87) = 0;
      v82 = v10;
      v19 = _CalendarGregorian.dateComponent(_:from:)(&v87, v17);
      LOBYTE(v87) = 0;
      v82 = v9;
      v21 = _CalendarGregorian.dateComponent(_:from:)(&v87, v20);
      v22 = __OFSUB__(v21, v19);
      v23 = v21 - v19;
      if (v22)
      {
        goto LABEL_129;
      }
    }

LABEL_21:
    LOBYTE(v82) = v24;
    v92.value = v23;
    v92.is_nil = 0;
    DateComponents.setValue(_:for:)(v92, &v82);
LABEL_22:
    if (v15 == v81)
    {

      a4 = v74;
      goto LABEL_123;
    }
  }

  __break(1u);
LABEL_125:
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
}