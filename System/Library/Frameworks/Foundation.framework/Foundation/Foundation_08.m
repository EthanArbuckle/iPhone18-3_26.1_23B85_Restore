void createProtectedTemporaryFile(at:inPath:options:variant:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, _DWORD *a7@<X8>)
{
  *&v284 = a5;
  v283 = a4;
  v297 = *MEMORY[0x1E69E9840];
  v12 = *(a3 + 8);
  v288 = *a3;
  LODWORD(v286) = *(a3 + 16);
  getpid();
  v285 = a6;
  v287 = v7;
  v282 = a7;
  if (_foundation_sandbox_check())
  {
    if (one-time initialization token for compatibility2 != -1)
    {
      goto LABEL_275;
    }

    goto LABEL_3;
  }

  Path = String._deletingLastPathComponent()(a1, a2);
  v41 = Path;
  v42 = v40;
  *&v291[0] = Path;
  *(&v291[0] + 1) = v40;
  if ((v40 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v43 = Path & 0xFFFFFFFFFFFFLL;
  }

  v281 = v42;
  if (v43)
  {
    v44 = specialized BidirectionalCollection.last.getter(v41, v42);
    if (!v45)
    {
      __break(1u);
      goto LABEL_339;
    }

    if (v44 != 47 || v45 != 0xE100000000000000)
    {
      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v46 = v286;
      if ((v77 & 1) == 0)
      {
        MEMORY[0x1865CB0E0](47, 0xE100000000000000);
        v42 = *(&v291[0] + 1);
        v41 = *&v291[0];
      }

      goto LABEL_19;
    }
  }

  v46 = v286;
LABEL_19:
  v47 = [objc_opt_self() processInfo];
  [v47 processIdentifier];

  lazy protocol witness table accessor for type Int32 and conformance Int32();
  v48 = String.init<A>(_:radix:uppercase:)();
  v50 = v49;
  *&v295 = v41;
  *(&v295 + 1) = v42;
  v280 = v42;

  MEMORY[0x1865CB0E0](0x736F6E2E7461642ELL, 0xEB00000000636E79);

  MEMORY[0x1865CB0E0](v48, v50);

  MEMORY[0x1865CB0E0](0x5858585858582ELL, 0xE700000000000000);

  v51 = v42;
  a1 = v295;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v52 = HIBYTE(*(&v295 + 1)) & 0xFLL;
  }

  else
  {
    v52 = v295 & 0xFFFFFFFFFFFFLL;
  }

  v53 = 8;
  while (1)
  {
    v54 = v52;
    if ((v51 & 0x1000000000000000) != 0)
    {
      v54 = String.UTF8View._foreignCount()();
    }

    v55 = 3 * v54;
    if ((v54 * 3) >> 64 != (3 * v54) >> 63)
    {
      __break(1u);
      goto LABEL_216;
    }

    if (v55 < -1)
    {
      break;
    }

    v56 = v55 + 1;
    outlined copy of PathOrURL(v288, v12, v46);

    if (v55 < 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v59 = &v272 - v58;
      if (String._fileSystemRepresentation(into:)(&v272 - v58, v56, a1, v51))
      {
        v60 = v59;
      }

      else
      {
        v60 = 0;
      }

      a2 = v12;
      v61 = v287;
      closure #1 in createTemporaryFile(at:inPath:prefix:options:variant:)(v60, v288, v12, v286, v284, a6, v283, &v292);
      if (v61)
      {
        swift_willThrow();
        goto LABEL_44;
      }

      v287 = 0;
      v62 = *(&v292 + 1);
      a2 = v292;
      v63 = v293;
      v46 = v286;
      outlined consume of PathOrURL(v288, v12, v286);

      if (v63)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v279 = swift_slowAlloc();
      v64 = v288;
      v278 = v12;
      outlined copy of PathOrURL(v288, v12, v46);

      v65 = v56;
      a2 = v278;
      v66 = v287;
      specialized closure #1 in String.withMutableFileSystemRepresentation<A>(_:)(v279, v65, a1, v51, v64, v278, v46, v284, &v295, a6, v283);
      v287 = v66;
      v67 = &v297;
      if (v66)
      {
        goto LABEL_277;
      }

      MEMORY[0x1865D2690](v279, -1, -1);
      outlined consume of PathOrURL(v64, a2, v46);

      v62 = *(&v295 + 1);
      a2 = v295;
      v63 = *v296;
      if (*v296)
      {
LABEL_38:

        v68 = 0uLL;
LABEL_42:
        v71 = v282;
        *v282 = a2;
        *(v71 + 1) = v62;
        *(v71 + 2) = v63;
        *(v71 + 6) = v68;
        return;
      }
    }

    --v53;
    a6 = v285;
    if (!v53)
    {

      isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v73 = @"NSCocoaErrorDomain";
      v74 = v73;
      if (!isTaggedPointer)
      {
        goto LABEL_60;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v73);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v76 = v287;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v287 = v76;

            goto LABEL_180;
          }

LABEL_60:
          LOBYTE(v292) = 0;
          *&v295 = 0;
          LOBYTE(v290[0]) = 0;
          LOBYTE(v289) = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            if (!v295)
            {
LABEL_176:

              goto LABEL_180;
            }

            if (v289 == 1)
            {
              if (v292)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_180:
              v180 = objc_allocWithZone(NSError);
              v181 = String._bridgeToObjectiveCImpl()();

              a2 = _NativeDictionary.bridged()();
              v182 = [v180 initWithDomain:v181 code:512 userInfo:a2];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v183 = [v182 domain];
              if (!v183)
              {
                goto LABEL_194;
              }

              v184 = v183;
              v185 = _objc_isTaggedPointer(v183);
              v186 = v184;
              a2 = v186;
              if ((v185 & 1) == 0)
              {
                goto LABEL_186;
              }

              v187 = _objc_getTaggedPointerTag(v186);
              if (v187)
              {
                if (v187 != 22)
                {
                  if (v187 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v187);
                    v188 = v287;
                    v189 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v101 = v190;
                    v287 = v188;

                    goto LABEL_232;
                  }

LABEL_186:
                  LOBYTE(v292) = 0;
                  *&v295 = 0;
                  LOBYTE(v290[0]) = 0;
                  LOBYTE(v289) = 0;
                  v191 = __CFStringIsCF();
                  if (v191)
                  {
                    if (v295)
                    {
                      if (v289 == 1)
                      {
                        if (v292)
                        {
                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                        }

                        else
                        {
                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        }

                        v198 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_230:
                        v189 = v198;
                        v101 = v199;
LABEL_231:

LABEL_232:
                        v214 = v74;
                        a1 = v214;
                        if (!isTaggedPointer)
                        {
                          goto LABEL_237;
                        }

                        v215 = _objc_getTaggedPointerTag(v214);
                        if (v215)
                        {
                          if (v215 != 22)
                          {
                            if (v215 == 2)
                            {
                              a2 = &v272;
                              MEMORY[0x1EEE9AC00](v215);
                              v216 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v218 = v217;

LABEL_266:
                              if (v189 == v216 && v101 == v218)
                              {
                              }

                              else
                              {
                                LOBYTE(v100) = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v100 & 1) == 0)
                                {
                                  __break(1u);
LABEL_279:
                                  __break(1u);
                                  goto LABEL_280;
                                }
                              }

                              swift_willThrow();

                              return;
                            }

LABEL_237:
                            LOBYTE(v292) = 0;
                            *&v295 = 0;
                            LOBYTE(v290[0]) = 0;
                            LOBYTE(v289) = 0;
                            v219 = __CFStringIsCF();
                            if (v219)
                            {
                              v216 = v295;
                              if (!v295)
                              {

                                v218 = 0xE000000000000000;
                                goto LABEL_266;
                              }

                              if (v289 == 1)
                              {
                                if (v292)
                                {
                                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                }

                                else
                                {
                                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                }

                                v225 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                goto LABEL_265;
                              }

                              if (v290[0])
                              {
                                if (v292 != 1)
                                {
                                  v219 = [a1 lengthOfBytesUsingEncoding_];
                                }

                                a2 = &v272;
                                MEMORY[0x1EEE9AC00](v219);
                                v227 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                v218 = v228;
                                v229 = HIBYTE(v228) & 0xF;
                                if ((v228 & 0x2000000000000000) == 0)
                                {
                                  v229 = v227 & 0xFFFFFFFFFFFFLL;
                                }

                                if (v229)
                                {
                                  v216 = v227;

                                  goto LABEL_266;
                                }
                              }
                            }

                            else
                            {
                              a2 = a1;
                              v220 = String.init(_nativeStorage:)();
                              if (v221)
                              {
                                v216 = v220;
                                v218 = v221;

                                goto LABEL_266;
                              }

                              *&v295 = [a2 length];
                              if (!v295)
                              {

                                v216 = 0;
                                v218 = 0xE000000000000000;
                                goto LABEL_266;
                              }
                            }

                            v225 = String.init(_cocoaString:)();
LABEL_265:
                            v216 = v225;
                            v218 = v226;
                            goto LABEL_266;
                          }

                          v222 = [a1 UTF8String];
                          if (!v222)
                          {
                            goto LABEL_341;
                          }

                          v223 = String.init(utf8String:)(v222);
                          if (!v224)
                          {
                            __break(1u);
                            goto LABEL_248;
                          }
                        }

                        else
                        {
LABEL_248:
                          LOWORD(v290[0]) = 0;
                          _CFIndirectTaggedPointerStringGetContents();
                          v223 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                          if (!v224)
                          {
                            [a1 mutableCopy];
                            _bridgeAnyObjectToAny(_:)();

                            swift_unknownObjectRelease();
                            swift_dynamicCast();
                            v218 = *(&v292 + 1);
                            v216 = v292;
                            goto LABEL_266;
                          }
                        }

                        v216 = v223;
                        v218 = v224;

                        goto LABEL_266;
                      }

                      if (v290[0])
                      {
                        if (v292 != 1)
                        {
                          v191 = [a2 lengthOfBytesUsingEncoding_];
                        }

                        MEMORY[0x1EEE9AC00](v191);
                        v200 = v287;
                        v201 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v101 = v202;
                        v287 = v200;
                        v203 = HIBYTE(v202) & 0xF;
                        if ((v202 & 0x2000000000000000) == 0)
                        {
                          v203 = v201 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v203)
                        {
                          v189 = v201;
                          goto LABEL_200;
                        }
                      }

LABEL_229:
                      v198 = String.init(_cocoaString:)();
                      goto LABEL_230;
                    }
                  }

                  else
                  {
                    v192 = a2;
                    v193 = String.init(_nativeStorage:)();
                    if (v194)
                    {
                      v189 = v193;
                      v101 = v194;

                      goto LABEL_232;
                    }

                    *&v295 = [v192 length];
                    if (v295)
                    {
                      goto LABEL_229;
                    }
                  }

LABEL_194:
                  v189 = 0;
                  v101 = 0xE000000000000000;
                  goto LABEL_232;
                }

                v195 = [a2 UTF8String];
                if (!v195)
                {
                  goto LABEL_342;
                }

                v196 = String.init(utf8String:)(v195);
                if (!v197)
                {
                  __break(1u);
                  goto LABEL_198;
                }
              }

              else
              {
LABEL_198:
                LOWORD(v290[0]) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v196 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v197)
                {
                  [a2 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v101 = *(&v292 + 1);
                  v189 = v292;
                  goto LABEL_231;
                }
              }

              v189 = v196;
              v101 = v197;
LABEL_200:

              goto LABEL_231;
            }

            if (v290[0])
            {
              if (v292 != 1)
              {
                IsCF = [(__CFString *)v74 lengthOfBytesUsingEncoding:4];
              }

              MEMORY[0x1EEE9AC00](IsCF);
              v176 = v287;
              v177 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v287 = v176;
              v179 = HIBYTE(v178) & 0xF;
              if ((v178 & 0x2000000000000000) == 0)
              {
                v179 = v177 & 0xFFFFFFFFFFFFLL;
              }

              if (v179)
              {
                goto LABEL_176;
              }
            }
          }

          else
          {
            v85 = v74;
            String.init(_nativeStorage:)();
            if (v86 || (*&v295 = [(__CFString *)v85 length], !v295))
            {

              goto LABEL_180;
            }
          }

          String.init(_cocoaString:)();
          goto LABEL_180;
        }

        v117 = [(__CFString *)v74 UTF8String];
        if (!v117)
        {
          goto LABEL_340;
        }

        String.init(utf8String:)(v117);
        if (v118)
        {
          goto LABEL_176;
        }

        __break(1u);
      }

      LOWORD(v290[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v119)
      {
        [(__CFString *)v74 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_180;
      }

      goto LABEL_176;
    }
  }

  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    swift_once();
LABEL_3:
    if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
    {
      v13 = type metadata accessor for _BridgedURL();
      v14 = &protocol witness table for _BridgedURL;
    }

    else
    {
      v13 = type metadata accessor for _SwiftURL();
      v14 = &protocol witness table for _SwiftURL;
    }

    v15 = v14[7];

    v15(a1, a2, 0, v13, v14);
    v16 = (v14[56])(v13, v14);
    v18 = v17;
    swift_unknownObjectRelease();
    v19 = [objc_opt_self() defaultManager];
    ObjectType = swift_getObjectType();
    v21 = (*(v18 + 432))(ObjectType, v18);
    *&v295 = 0;
    v22 = [v19 URLForDirectory:99 inDomain:1 appropriateForURL:v21 create:1 error:&v295];

    v23 = v295;
    if (v22)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)(v22, &v295);
      v24 = v23;

      v25 = *(&v295 + 1);
      v26 = swift_getObjectType();
      v27 = (*(v25 + 248))(0, v26, v25);
      v29 = v28;
      swift_unknownObjectRelease();
      v290[0] = v27;
      v290[1] = v29;
      v30 = String._bridgeToObjectiveCImpl()();

      v283 = _NSDataWritingOptionsForRelocatedAtomicWrite(v283, v30);
      swift_unknownObjectRelease();
      v31 = String._lastPathComponent.getter(a1, a2);
      v33 = String._appendingPathComponent(_:)(v31, v32, v27, v29);
      v35 = v34;

      a2 = v288;
      v36 = v286;
      outlined copy of PathOrURL(v288, v12, v286);
      v37 = v285;

      v38 = v287;
      specialized String.withFileSystemRepresentation<A>(_:)(v33, v35, v283, v33, v35, v290, a2, v12, &v295, v36, v284, v37);
      if (v38)
      {

        outlined consume of PathOrURL(a2, v12, v36);

        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        return;
      }

      v287 = 0;
      v70 = a2;
      LODWORD(a2) = v295;
      v281 = v16;
      v62 = *(&v295 + 1);
      v63 = *v296;
      v284 = *&v296[8];

      outlined consume of PathOrURL(v70, v12, v36);

      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();
      v68 = v284;
      goto LABEL_42;
    }

    if (v295)
    {
      v69 = v295;
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v69 = _nilObjCError;
      v78 = _nilObjCError;
    }

    swift_willThrow();
    if (!v285)
    {
LABEL_66:
      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    *&v295 = v69;

    v79 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_66;
    }

    v80 = v292;
    v286 = [v292 code];
    v282 = v80;
    v81 = [v80 userInfo];
    v281 = v16;
    v283 = v69;
    if (!v81)
    {
LABEL_99:
      v83 = MEMORY[0x1E69E7CC8];
      goto LABEL_100;
    }

    a1 = v81;
    swift_unknownObjectRetain();
    v82 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v82)
    {
      v83 = v82;
      goto LABEL_85;
    }

    v87 = [a1 count];
    if (!v87)
    {

      goto LABEL_99;
    }

    v88 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v83 = static _DictionaryStorage.allocate(capacity:)();
    v90 = *(v83 + 48);
    v89 = *(v83 + 56);

    v91 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v90, v89, a1, v88);
    if (v91 < 0 || v88 < v91)
    {
      goto LABEL_336;
    }

    *(v83 + 16) = v91;
    if (v91)
    {
      v92 = v91 - 1;
      v93 = v83 + 64;
      a2 = 1;
      do
      {
        while (1)
        {
          if ((*(v93 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v92))
          {
            goto LABEL_76;
          }

          v98 = (*(v83 + 48) + 16 * v92);
          v99 = *v98;
          v100 = v98[1];

          v101 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v100);
          v12 = v102;

          if ((v12 & 1) == 0)
          {
            break;
          }

          v103 = *(v83 + 48) + 16 * v92;

          outlined destroy of String(v103);
          v104 = __swift_destroy_boxed_opaque_existential_1(*(v83 + 56) + 32 * v92);
          v105 = *(v83 + 16);
          v106 = __OFSUB__(v105, 1);
          v107 = v105 - 1;
          if (v106)
          {
            goto LABEL_279;
          }

          *(v83 + 16) = v107;

LABEL_76:
          if (--v92 < 0)
          {
            goto LABEL_84;
          }
        }

        *(v93 + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v101;
        if (v92 < v101)
        {
          *(*(v83 + 48) + 16 * v101) = *(*(v83 + 48) + 16 * v92);
          v94 = *(v83 + 56);
          v95 = (v94 + 32 * v92);
          v96 = v95[1];
          v97 = (v94 + 32 * v101);
          *v97 = *v95;
          v97[1] = v96;
          goto LABEL_76;
        }

        if (v101 == v92)
        {
          goto LABEL_76;
        }

        v108 = *(v83 + 48);
        v109 = (v108 + 16 * v101);
        v110 = (v108 + 16 * v92);
        v111 = *v109;
        v112 = v109[1];
        v113 = v110[1];
        *v109 = *v110;
        v109[1] = v113;
        *v110 = v111;
        v110[1] = v112;
        v114 = *(v83 + 56);
        v115 = (v114 + 32 * v101);
        v116 = (v114 + 32 * v92);
        outlined init with take of Any(v115, &v295);
        outlined init with take of Any(v116, v115);
        outlined init with take of Any(&v295, v116);
      }

      while ((v92 & 0x8000000000000000) == 0);
    }

LABEL_84:

LABEL_85:

LABEL_100:
    v120 = 0;
    v287 = v83;
    v121 = (v83 + 64);
    v122 = 1 << *(v83 + 32);
    if (v122 < 64)
    {
      v123 = ~(-1 << v122);
    }

    else
    {
      v123 = -1;
    }

    v124 = v123 & *(v83 + 64);
    v125 = (v122 + 63) >> 6;
    v46 = MEMORY[0x1E69E7CC8];
LABEL_106:
    if (!v124)
    {
      if (v125 <= v120 + 1)
      {
        v128 = v120 + 1;
      }

      else
      {
        v128 = v125;
      }

      v129 = v128 - 1;
      while (1)
      {
        v127 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          break;
        }

        if (v127 >= v125)
        {
          v124 = 0;
          v293 = 0u;
          v294 = 0u;
          v292 = 0u;
          goto LABEL_116;
        }

        v124 = v121[v127];
        ++v120;
        if (v124)
        {
          goto LABEL_115;
        }
      }

      __break(1u);
      goto LABEL_167;
    }

    v127 = v120;
LABEL_115:
    v130 = __clz(__rbit64(v124));
    v124 &= v124 - 1;
    v131 = v130 | (v127 << 6);
    v132 = (*(v287 + 48) + 16 * v131);
    v12 = *v132;
    v133 = v132[1];
    outlined init with copy of Any(*(v287 + 56) + 32 * v131, v291);
    *&v292 = v12;
    *(&v292 + 1) = v133;
    outlined init with take of Any(v291, &v293);

    v129 = v127;
LABEL_116:
    v295 = v292;
    *v296 = v293;
    *&v296[16] = v294;
    a1 = *(&v292 + 1);
    if (*(&v292 + 1))
    {
      v288 = v129;
      a2 = v295;
      outlined init with take of Any(v296, &v292);
      v101 = v46;
      LOBYTE(v100) = swift_isUniquelyReferenced_nonNull_native();
      v289 = v46;
      v135 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a1);
      v136 = *(v101 + 16);
      v137 = (v134 & 1) == 0;
      v138 = v136 + v137;
      if (__OFADD__(v136, v137))
      {
        continue;
      }

      v12 = v134;
      if (*(v101 + 24) >= v138)
      {
        if (v100)
        {
          if ((v134 & 1) == 0)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v279 = v101;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v144 = static _DictionaryStorage.copy(original:)();
          v145 = v279;
          v101 = v144;
          if (*(v279 + 2))
          {
            v146 = (v144 + 64);
            v147 = v279 + 64;
            v148 = ((1 << *(v101 + 32)) + 63) >> 6;
            v273 = v279 + 64;
            if (v101 != v279 || v146 >= &v147[8 * v148])
            {
              memmove(v146, v147, 8 * v148);
              v145 = v279;
            }

            v149 = 0;
            *(v101 + 16) = *(v145 + 2);
            v150 = 1 << v145[32];
            if (v150 < 64)
            {
              v151 = ~(-1 << v150);
            }

            else
            {
              v151 = -1;
            }

            v152 = v151 & *(v145 + 8);
            v153 = (v150 + 63) >> 6;
            v274 = v153;
            if (!v152)
            {
              goto LABEL_136;
            }

            while (1)
            {
              v278 = (v152 - 1) & v152;
              v154 = __clz(__rbit64(v152)) | (v149 << 6);
              v155 = v279;
              while (1)
              {
                v275 = 16 * v154;
                v158 = *(v155 + 7);
                v159 = (*(v155 + 6) + 16 * v154);
                v161 = *v159;
                v160 = v159[1];
                v276 = v161;
                v280 = v160;
                v277 = 32 * v154;
                outlined init with copy of Any(v158 + 32 * v154, v291);
                v162 = (*(v101 + 48) + v275);
                v163 = v280;
                *v162 = v276;
                v162[1] = v163;
                outlined init with take of Any(v291, (*(v101 + 56) + v277));

                v153 = v274;
                v152 = v278;
                if (v278)
                {
                  break;
                }

LABEL_136:
                v156 = v149;
                v155 = v279;
                do
                {
                  v149 = v156 + 1;
                  if (__OFADD__(v156, 1))
                  {
                    goto LABEL_337;
                  }

                  if (v149 >= v153)
                  {
                    goto LABEL_143;
                  }

                  v157 = *&v273[8 * v149];
                  ++v156;
                }

                while (!v157);
                v278 = (v157 - 1) & v157;
                v154 = __clz(__rbit64(v157)) | (v149 << 6);
              }
            }
          }

LABEL_143:

          if ((v12 & 1) == 0)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v138, v100);
        v101 = v289;
        v139 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a1);
        if ((v12 & 1) != (v140 & 1))
        {
          goto LABEL_224;
        }

        v135 = v139;
        if ((v12 & 1) == 0)
        {
LABEL_124:
          *(v101 + 8 * (v135 >> 6) + 64) |= 1 << v135;
          v141 = (*(v101 + 48) + 16 * v135);
          *v141 = a2;
          v141[1] = a1;
          outlined init with take of Any(&v292, (*(v101 + 56) + 32 * v135));
          v142 = *(v101 + 16);
          v106 = __OFADD__(v142, 1);
          v143 = v142 + 1;
          if (v106)
          {
            goto LABEL_274;
          }

          *(v101 + 16) = v143;
          goto LABEL_105;
        }
      }

      v126 = (*(v101 + 56) + 32 * v135);
      __swift_destroy_boxed_opaque_existential_1(v126);
      outlined init with take of Any(&v292, v126);
LABEL_105:
      v120 = v288;
      v46 = v101;
      goto LABEL_106;
    }

    break;
  }

  v164 = _objc_isTaggedPointer(@"NSUserStringVariant");
  v165 = @"NSUserStringVariant";
  v51 = v165;
  if (!v164)
  {
    goto LABEL_150;
  }

  v166 = _objc_getTaggedPointerTag(v165);
  switch(v166)
  {
    case 0:
      goto LABEL_161;
    case 0x16:
      v171 = [v51 UTF8String];
      if (!v171)
      {
        goto LABEL_343;
      }

      v172 = String.init(utf8String:)(v171);
      if (v173)
      {
LABEL_162:
        a2 = v172;
        a1 = v173;

        goto LABEL_221;
      }

      __break(1u);
LABEL_161:
      LOWORD(v291[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v172 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v173)
      {
        [v51 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        a1 = *(&v292 + 1);
        a2 = v292;
        goto LABEL_221;
      }

      goto LABEL_162;
    case 2:
      MEMORY[0x1EEE9AC00](v166);
      a2 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      a1 = v167;

      goto LABEL_221;
  }

LABEL_150:
  LOBYTE(v292) = 0;
  *&v295 = 0;
  LOBYTE(v291[0]) = 0;
  LOBYTE(v289) = 0;
  v168 = __CFStringIsCF();
  if (!v168)
  {
    v121 = v51;
    v169 = String.init(_nativeStorage:)();
    if (v170)
    {
      a2 = v169;
      a1 = v170;

      goto LABEL_221;
    }

LABEL_167:
    *&v295 = [v121 length];
    if (!v295)
    {

      a2 = 0;
      a1 = 0xE000000000000000;
      goto LABEL_221;
    }

    goto LABEL_168;
  }

  if (!v295)
  {

    a2 = 0;
    a1 = 0xE000000000000000;
    goto LABEL_221;
  }

  if (v289 != 1)
  {
    if ((v291[0] & 1) == 0)
    {
      goto LABEL_168;
    }

    if (v292 == 1)
    {
      MEMORY[0x1EEE9AC00](v168);
LABEL_217:
      v205 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      a1 = v206;
      v207 = HIBYTE(v206) & 0xF;
      if ((v206 & 0x2000000000000000) == 0)
      {
        v207 = v205 & 0xFFFFFFFFFFFFLL;
      }

      if (v207)
      {
        a2 = v205;

        goto LABEL_221;
      }

LABEL_168:
      a2 = String.init(_cocoaString:)();
      a1 = v174;
      goto LABEL_221;
    }

LABEL_216:
    v204 = [v51 lengthOfBytesUsingEncoding_];
    MEMORY[0x1EEE9AC00](v204);
    goto LABEL_217;
  }

  if (v292)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  a2 = String.init<A>(_immortalCocoaString:count:encoding:)();
  a1 = v175;
LABEL_221:
  *&v296[8] = MEMORY[0x1E69E6158];
  *&v295 = v284;
  *(&v295 + 1) = v285;
  outlined init with take of Any(&v295, &v292);
  v101 = v46;
  LOBYTE(v12) = swift_isUniquelyReferenced_nonNull_native();
  v289 = v46;
  v104 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a1);
  v209 = *(v46 + 16);
  v210 = (v208 & 1) == 0;
  v106 = __OFADD__(v209, v210);
  v67 = (v209 + v210);
  if (v106)
  {
    __break(1u);
LABEL_277:
    MEMORY[0x1865D2690](*(v67 - 32), -1, -1);
LABEL_44:

    outlined consume of PathOrURL(v288, a2, v286);

    return;
  }

  LOBYTE(v100) = v208;
  if (*(v46 + 24) >= v67)
  {
    goto LABEL_225;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, v12);
  v101 = v289;
  v104 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a1);
  if ((v100 & 1) == (v211 & 1))
  {
LABEL_226:
    if ((v100 & 1) == 0)
    {
LABEL_296:
      specialized _NativeDictionary._insert(at:key:value:)(v104, a2, a1, &v292, v101);
LABEL_297:
      v250 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v251 = @"NSCocoaErrorDomain";
      v252 = v251;
      if ((v250 & 1) == 0)
      {
        goto LABEL_302;
      }

      v253 = _objc_getTaggedPointerTag(v251);
      if (v253)
      {
        if (v253 != 22)
        {
          if (v253 == 2)
          {
            MEMORY[0x1EEE9AC00](v253);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_330;
          }

LABEL_302:
          LOBYTE(v292) = 0;
          *&v295 = 0;
          LOBYTE(v291[0]) = 0;
          LOBYTE(v289) = 0;
          v254 = __CFStringIsCF();
          if (v254)
          {
            if (!v295)
            {
LABEL_327:

              goto LABEL_330;
            }

            if (v289 == 1)
            {
              if (v292)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_330;
            }

            if (v291[0])
            {
              if (v292 != 1)
              {
                v254 = [(__CFString *)v252 lengthOfBytesUsingEncoding:4];
              }

              MEMORY[0x1EEE9AC00](v254);
              v260 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v262 = HIBYTE(v261) & 0xF;
              if ((v261 & 0x2000000000000000) == 0)
              {
                v262 = v260 & 0xFFFFFFFFFFFFLL;
              }

              if (v262)
              {
                goto LABEL_327;
              }
            }
          }

          else
          {
            v255 = v252;
            String.init(_nativeStorage:)();
            if (v256 || (*&v295 = [(__CFString *)v255 length], !v295))
            {

              goto LABEL_330;
            }
          }

          String.init(_cocoaString:)();
LABEL_330:
          v263 = objc_allocWithZone(NSError);
          v264 = String._bridgeToObjectiveCImpl()();

          v265 = [v263 initWithDomain:v264 code:v286 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v266 = [v265 domain];
          v267 = static String._unconditionallyBridgeFromObjectiveC(_:)(v266);
          v269 = v268;

          if (v267 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v269 == v270)
          {

LABEL_334:
            swift_willThrow();
            swift_unknownObjectRelease();

            return;
          }

          v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v271)
          {
            goto LABEL_334;
          }

          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
        }

        v257 = [(__CFString *)v252 UTF8String];
        if (!v257)
        {
          goto LABEL_344;
        }

        String.init(utf8String:)(v257);
        if (v258)
        {
          goto LABEL_327;
        }

        __break(1u);
      }

      LOWORD(v291[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v259)
      {
        [(__CFString *)v252 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_330;
      }

      goto LABEL_327;
    }

LABEL_227:
    v212 = v104;

    v213 = (*(v101 + 56) + 32 * v212);
    __swift_destroy_boxed_opaque_existential_1(v213);
    outlined init with take of Any(&v292, v213);
    goto LABEL_297;
  }

LABEL_224:
  v104 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_225:
  if (v12)
  {
    goto LABEL_226;
  }

LABEL_280:
  *&v284 = v104;
  v230 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v231 = static _DictionaryStorage.copy(original:)();
  v101 = v231;
  v279 = v230;
  if (!*(v230 + 16))
  {
LABEL_295:

    v104 = v284;
    if ((v100 & 1) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_227;
  }

  v232 = (v231 + 64);
  v233 = 1 << *(v101 + 32);
  v285 = v279 + 64;
  v234 = (v233 + 63) >> 6;
  if (v101 != v279 || v232 >= &v285[8 * v234])
  {
    memmove(v232, v285, 8 * v234);
  }

  v235 = 0;
  v236 = v279;
  *(v101 + 16) = *(v279 + 2);
  v237 = 1 << v236[32];
  v238 = *(v236 + 8);
  v239 = -1;
  if (v237 < 64)
  {
    v239 = ~(-1 << v237);
  }

  v288 = v239 & v238;
  v280 = (v237 + 63) >> 6;
  while (v288)
  {
    v240 = __clz(__rbit64(v288));
    v288 &= v288 - 1;
LABEL_294:
    v243 = v240 | (v235 << 6);
    v244 = 16 * v243;
    v245 = *(v279 + 7);
    v246 = (*(v279 + 6) + 16 * v243);
    v247 = v246[1];
    v287 = *v246;
    v248 = 32 * v243;
    outlined init with copy of Any(v245 + 32 * v243, v291);
    v249 = (*(v101 + 48) + v244);
    *v249 = v287;
    v249[1] = v247;
    outlined init with take of Any(v291, (*(v101 + 56) + v248));
  }

  v241 = v235;
  while (1)
  {
    v235 = v241 + 1;
    if (__OFADD__(v241, 1))
    {
      break;
    }

    if (v235 >= v280)
    {
      goto LABEL_295;
    }

    v242 = *&v285[8 * v235];
    ++v241;
    if (v242)
    {
      v240 = __clz(__rbit64(v242));
      v288 = (v242 - 1) & v242;
      goto LABEL_294;
    }
  }

LABEL_339:
  __break(1u);
LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
}

uint64_t protocol witness for _URLProtocol.path(percentEncoded:) in conformance _BridgedURL(char a1)
{
  if (_foundation_swift_url_feature_enabled())
  {

    return _BridgedURL.absolutePath(percentEncoded:)(a1 & 1)._countAndFlagsBits;
  }

  else
  {

    return _BridgedURL.relativePath(percentEncoded:)(a1 & 1)._countAndFlagsBits;
  }
}

Swift::String __swiftcall _BridgedURL.absolutePath(percentEncoded:)(Swift::Bool percentEncoded)
{
  v45 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
  v5 = [v4 absoluteURL];
  if (v5)
  {
    v6 = v5;
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v8;
        v9 = v6;
        _BridgedNSSwiftURL.convertingFileReference()();
        v11 = v10;

LABEL_18:
        v27 = swift_getObjectType();
        v19 = (v11[28])(percentEncoded, v27, v11);
        v21 = v28;
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      v25 = objc_allocWithZone(ObjectType);
      *&v25[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v6;
      v38.receiver = v25;
      v23 = v6;
      v24 = objc_msgSendSuper2(&v38, sel_init, v38.receiver, ObjectType, v39.receiver, v39.super_class);
    }

    else
    {
      v22 = objc_allocWithZone(ObjectType);
      *&v22[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v6;
      v39.receiver = v22;
      v23 = v6;
      v24 = objc_msgSendSuper2(&v39, sel_init, v38.receiver, v38.super_class, v39.receiver, ObjectType);
    }

    v26 = v24;
    _BridgedURL.convertingFileReference()();

    v11 = &protocol witness table for _BridgedURL;
    goto LABEL_18;
  }

  v12 = [v4 _cfurl];
  v13 = _CFURLCopyPath();
  if (!v13)
  {

LABEL_15:
    v19 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_19;
  }

  v14 = v13;
  isTaggedPointer = _objc_isTaggedPointer(v13);
  v16 = v14;
  v17 = v16;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_12;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v16);
  if (!TaggedPointerTag)
  {
    goto LABEL_25;
  }

  if (TaggedPointerTag == 22)
  {
    v29 = [v17 UTF8String];
    if (!v29)
    {
      __break(1u);
      goto LABEL_34;
    }

    v34 = String.init(utf8String:)(v29);
    if (v35)
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_25:
    v42 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v35)
    {
      [v17 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v19 = v40;
      v21 = v41;
LABEL_31:

      goto LABEL_32;
    }

LABEL_26:
    v19 = v34;
    v21 = v35;

LABEL_32:
    goto LABEL_19;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_12:
    LOBYTE(v40) = 0;
    v44 = 0;
    LOBYTE(v42) = 0;
    v43 = 0;
    if (__CFStringIsCF())
    {
      v19 = v44;

      v21 = 0xE000000000000000;
      goto LABEL_19;
    }

    v31 = v17;
    v32 = String.init(_nativeStorage:)();
    if (v33)
    {
      v19 = v32;
      v21 = v33;

      goto LABEL_19;
    }

    if (![v31 length])
    {

      goto LABEL_15;
    }

    v19 = String.init(_cocoaString:)();
    v21 = v36;
    goto LABEL_31;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v19 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v21 = v20;

LABEL_19:
  v29 = v19;
  v30 = v21;
LABEL_34:
  result._object = v30;
  result._countAndFlagsBits = v29;
  return result;
}

Swift::String __swiftcall _BridgedURL.relativePath(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = [*(v1 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) _cfurl];
  v3 = _CFURLCopyPath();
  if (!v3)
  {

    goto LABEL_10;
  }

  v4 = v3;
  isTaggedPointer = _objc_isTaggedPointer(v3);
  v6 = v4;
  v7 = v6;
  if (!isTaggedPointer)
  {
    goto LABEL_30;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v22)
    {
      v23 = v21;
      v24 = v22;

LABEL_23:
      v12 = v24;
      v13 = v23;
      goto LABEL_26;
    }

    [v7 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v23 = v27;
    v24 = v28;
LABEL_22:

    goto LABEL_23;
  }

  if (TaggedPointerTag == 22)
  {
    v13 = [v7 UTF8String];
    if (v13)
    {
      v13 = String.init(utf8String:)(v13);
      if (v12)
      {
        v19 = v13;
        v20 = v12;

        v13 = v19;
        v12 = v20;
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_30:
    if (__CFStringIsCF())
    {

LABEL_10:
      v13 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_26;
    }

    v14 = v7;
    v15 = String.init(_nativeStorage:)();
    if (v16)
    {
      v17 = v15;
      v18 = v16;

      v12 = v18;
      v13 = v17;
      goto LABEL_26;
    }

    if (![v14 length])
    {

      goto LABEL_10;
    }

    v23 = String.init(_cocoaString:)();
    v24 = v25;
    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v11 = v10;

  v12 = v11;
  v13 = v9;
LABEL_26:
  result._object = v12;
  result._countAndFlagsBits = v13;
  return result;
}

unint64_t _NSDataWritingOptionsForRelocatedAtomicWrite(uint64_t a1, void *a2)
{
  v2 = a1;
  v9[3] = *MEMORY[0x1E69E9840];
  if (((a1 & 0xF0000000) - 0x10000000) >> 28 >= 5)
  {
    v3 = [a2 stringByDeletingLastPathComponent];
    if (![(NSString *)v3 length])
    {
      v3 = [+[NSFileManager defaultManager](NSFileManager currentDirectoryPath];
    }

    v4 = [(NSString *)v3 fileSystemRepresentation];
    if (!v4 || (v8 = 0, v9[1] = 0, v9[2] = 0, v9[0] = 0x4000000000000005, getattrlist(v4, v9, &v8, 8uLL, 1u)) || HIDWORD(v8) == -1)
    {
      v5 = v2 & 0xFFFFFFFF0FFFFFFFLL;
    }

    else
    {
      v5 = v2 & 0xFFFFFFFF0FFFFFFFLL;
      if (SHIDWORD(v8) <= 2)
      {
        if (HIDWORD(v8) == 1)
        {
          v6 = 0x20000000;
          return v6 | v5;
        }

        if (HIDWORD(v8) == 2)
        {
          v6 = 805306368;
          return v6 | v5;
        }
      }

      else
      {
        switch(HIDWORD(v8))
        {
          case 3:
            v6 = 0x40000000;
            return v6 | v5;
          case 4:
            v6 = 0x10000000;
            return v6 | v5;
          case 7:
            v6 = 1342177280;
            return v6 | v5;
        }
      }
    }

    v6 = 0;
    return v6 | v5;
  }

  return v2;
}

unint64_t String._appendingPathComponent(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    v15 = String._compressingSlashes()();
    object = v15._object;
    countAndFlagsBits = v15._countAndFlagsBits;
LABEL_8:
    v12 = String._droppingTrailingSlashes.getter(countAndFlagsBits, object);

    return v12;
  }

  if ((specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #0 of String._appendingPathComponent(_:), a3, a4) & 1) == 0)
  {

    MEMORY[0x1865CB0E0](47, 0xE100000000000000);

    MEMORY[0x1865CB0E0](a1, a2);

    v16 = String._compressingSlashes()();

    countAndFlagsBits = v16._countAndFlagsBits;
    object = v16._object;
    goto LABEL_8;
  }

  v8 = String._compressingSlashes()();
  v9 = String._droppingTrailingSlashes.getter(v8._countAndFlagsBits, v8._object);
  v11 = v10;

  MEMORY[0x1865CB0E0](v9, v11);

  return a3;
}

uint64_t outlined copy of PathOrURL(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  v48 = a7;
  v59 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v36 = a5;
    v13 = a6;
    v14 = a4;
    v15 = a3;
    v20 = String.UTF8View._foreignCount()();
    a3 = v15;
    a4 = v14;
    a6 = v13;
    a5 = v36;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21 = 3 * v20;
  if ((v20 * 3) >> 64 == (3 * v20) >> 63)
  {
    if (v21 < -1)
    {
      __break(1u);
    }

    v42 = a3;
    v43 = a4;
    v44 = a6;
    v45 = v12;
    v41 = a9;
    a9 = a11;
    v14 = v21 + 1;
    LOBYTE(v15) = a10;
    v13 = a5;

    v47 = a8;
    outlined copy of PathOrURL(v48, a8, a10 & 1);
    v46 = a12;

    if (v21 < 1024)
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
    v40 = swift_slowAlloc();

    outlined copy of PathOrURL(v48, v47, v15 & 1);

    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v40, v14, a1, a2, v42, v43, v13, v44, &v54, v48, v47, v15 & 1, a9, v46);
    MEMORY[0x1865D2690](v40, -1, -1);

    outlined consume of PathOrURL(v48, v47, v15 & 1);
    if (v45)
    {
    }

    v30 = v54;
    v31 = v55;
    v32 = v56;
    v34 = v57;
    v33 = v58;
    goto LABEL_15;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v24 = &v39 - v23;
  if (String._fileSystemRepresentation(into:)(&v39 - v23, v14, a1, a2))
  {
    v37 = a9;
    v38 = v46;
    v25 = v15 & 1;
    v26 = v24;
  }

  else
  {
    v37 = a9;
    v38 = v46;
    v25 = v15 & 1;
    v26 = 0;
  }

  v27 = v45;
  v28 = v47;
  closure #1 in createProtectedTemporaryFile(at:inPath:options:variant:)(v26, v42, v43, v13, v44, v48, v47, v25, &v49, v37, v38);
  if (v27)
  {
    swift_willThrow();

    outlined consume of PathOrURL(v48, v28, v15 & 1);
  }

  v30 = v49;
  v31 = v50;
  v32 = v51;
  v34 = v52;
  v33 = v53;

  outlined consume of PathOrURL(v48, v47, v15 & 1);

LABEL_15:
  v35 = v41;
  *v41 = v30;
  v35[1] = v31;
  v35[2] = v32;
  v35[3] = v34;
  v35[4] = v33;
  return result;
}

uint64_t closure #1 in createProtectedTemporaryFile(at:inPath:options:variant:)@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, id a6@<X5>, unint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v154[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v22 = @"NSCocoaErrorDomain";
    v23 = v22;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v22);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_97;
          }

          goto LABEL_16;
        }

        v37 = [(__CFString *)v23 UTF8String];
        if (!v37)
        {
          __break(1u);
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }

        String.init(utf8String:)(v37);
        if (v38)
        {
          goto LABEL_17;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v39)
      {
        goto LABEL_17;
      }

      [(__CFString *)v23 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_97;
    }

LABEL_16:
    LOBYTE(v152) = 0;
    v154[0] = 0;
    if (__CFStringIsCF())
    {
LABEL_17:

      goto LABEL_97;
    }

    v33 = v23;
    String.init(_nativeStorage:)();
    if (!v34 && (v154[0] = [(__CFString *)v33 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_97:
    v60 = objc_allocWithZone(NSError);
    v61 = String._bridgeToObjectiveCImpl()();

    a6 = [v60 initWithDomain:v61 code:514 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v62 = [a6 domain];
    if (!v62)
    {
LABEL_107:
      v45 = 0;
      a7 = 0xE000000000000000;
      goto LABEL_118;
    }

    v63 = v62;
    v64 = _objc_isTaggedPointer(v62);
    v65 = v63;
    v66 = v65;
    if ((v64 & 1) == 0)
    {
      goto LABEL_103;
    }

    v67 = _objc_getTaggedPointerTag(v65);
    if (v67)
    {
      if (v67 != 22)
      {
        if (v67 == 2)
        {
          MEMORY[0x1EEE9AC00](v67);
          v45 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          a7 = v68;

LABEL_118:
          v76 = v23;
          v40 = v76;
          if (!isTaggedPointer)
          {
            goto LABEL_123;
          }

          v77 = _objc_getTaggedPointerTag(v76);
          if (!v77)
          {
            goto LABEL_130;
          }

          if (v77 != 22)
          {
            if (v77 == 2)
            {
              MEMORY[0x1EEE9AC00](v77);
              v78 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v80 = v79;

              goto LABEL_136;
            }

LABEL_123:
            v154[0] = 0;
            if (__CFStringIsCF())
            {
              v78 = v154[0];

              v80 = 0xE000000000000000;
            }

            else
            {
              v81 = v40;
              v82 = String.init(_nativeStorage:)();
              if (v83)
              {
                v78 = v82;
                v80 = v83;
              }

              else
              {
                v154[0] = [(__CFString *)v81 length];
                if (v154[0])
                {
                  v78 = String.init(_cocoaString:)();
                  v80 = v87;
                }

                else
                {

                  v78 = 0;
                  v80 = 0xE000000000000000;
                }
              }
            }

LABEL_136:
            if (v45 == v78 && a7 == v80)
            {
            }

            else
            {
              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v43 & 1) == 0)
              {
                __break(1u);
                goto LABEL_141;
              }
            }

            return swift_willThrow();
          }

          v84 = [(__CFString *)v40 UTF8String];
          if (v84)
          {
            v85 = String.init(utf8String:)(v84);
            if (v86)
            {
LABEL_131:
              v78 = v85;
              v80 = v86;

              goto LABEL_136;
            }

            __break(1u);
LABEL_130:
            _CFIndirectTaggedPointerStringGetContents();
            v85 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v86)
            {
              [(__CFString *)v40 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v78 = v152;
              v80 = v153;
              goto LABEL_136;
            }

            goto LABEL_131;
          }

          goto LABEL_219;
        }

LABEL_103:
        LOBYTE(v152) = 0;
        v154[0] = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_107;
        }

        v69 = v66;
        v70 = String.init(_nativeStorage:)();
        if (v71)
        {
          v45 = v70;
          a7 = v71;

          goto LABEL_118;
        }

        v154[0] = [v69 length];
        if (!v154[0])
        {

          goto LABEL_107;
        }

        v45 = String.init(_cocoaString:)();
        a7 = v75;
LABEL_117:

        goto LABEL_118;
      }

      v72 = [v66 UTF8String];
      if (!v72)
      {
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
        goto LABEL_222;
      }

      v73 = String.init(utf8String:)(v72);
      if (v74)
      {
LABEL_112:
        v45 = v73;
        a7 = v74;

        goto LABEL_117;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v73 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v74)
    {
      [v66 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v45 = v152;
      a7 = v153;
      goto LABEL_117;
    }

    goto LABEL_112;
  }

  v18 = _NSOpenFileDescriptor_Protected(a1, 2562, a2, 438);
  if ((v18 & 0x80000000) == 0)
  {
    *a9 = v18;
    *(a9 + 8) = a3;
    *(a9 + 16) = a4;
    v19 = a5[1];
    *(a9 + 24) = *a5;
    *(a9 + 32) = v19;
  }

  v25 = a11;
  v26 = MEMORY[0x1865CA7A0]();
  v27 = *a5;
  v28 = a5[1];

  cleanupTemporaryDirectory(at:)(v27, v28);

  if ((a8 & 1) == 0)
  {
    if (v26 > 27)
    {
      if (v26 <= 62)
      {
        if (v26 != 28)
        {
          if (v26 == 30)
          {
            v36 = 642;
            goto LABEL_77;
          }

          goto LABEL_76;
        }
      }

      else
      {
        if (v26 == 63)
        {
          v36 = 514;
          goto LABEL_77;
        }

        if (v26 != 69)
        {
          if (v26 == 102)
          {
            v31 = 0;
            v32 = 512;
            goto LABEL_204;
          }

LABEL_76:
          v36 = 512;
LABEL_77:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_225;
          }

          v51 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v52 = @"NSPOSIXErrorDomain";
          v53 = v52;
          v149 = v36;
          v150 = v51;
          if (v51)
          {
            v54 = _objc_getTaggedPointerTag(v52);
            if (v54)
            {
              if (v54 != 22)
              {
                if (v54 == 2)
                {
                  MEMORY[0x1EEE9AC00](v54);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_159;
                }

                goto LABEL_83;
              }

              v57 = [(__CFString *)v53 UTF8String];
              if (!v57)
              {
LABEL_222:
                __break(1u);
                goto LABEL_223;
              }

              String.init(utf8String:)(v57);
              if (v58)
              {
                goto LABEL_84;
              }

              __break(1u);
            }

            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v59)
            {
              goto LABEL_84;
            }

            [(__CFString *)v53 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_159;
          }

LABEL_83:
          LOBYTE(v152) = 0;
          v154[0] = 0;
          if (__CFStringIsCF())
          {
LABEL_84:

            goto LABEL_159;
          }

          v55 = v53;
          String.init(_nativeStorage:)();
          if (!v56 && (v154[0] = [(__CFString *)v55 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_159:
          v105 = POSIXErrorCode.rawValue.getter();
          v106 = objc_allocWithZone(NSError);
          v107 = String._bridgeToObjectiveCImpl()();

          v31 = [v106 initWithDomain:v107 code:v105 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v108 = [v31 domain];
          if (!v108)
          {
LABEL_176:
            v114 = 0;
            v116 = 0xE000000000000000;
            goto LABEL_180;
          }

          v109 = v108;
          v110 = _objc_isTaggedPointer(v108);
          v111 = v109;
          v112 = v111;
          if ((v110 & 1) == 0)
          {
            goto LABEL_165;
          }

          v113 = _objc_getTaggedPointerTag(v111);
          if (v113)
          {
            if (v113 != 22)
            {
              if (v113 == 2)
              {
                MEMORY[0x1EEE9AC00](v113);
                v114 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v116 = v115;

                goto LABEL_180;
              }

LABEL_165:
              LOBYTE(v152) = 0;
              v154[0] = 0;
              if (__CFStringIsCF())
              {
                v114 = v154[0];

                v116 = 0xE000000000000000;
                goto LABEL_180;
              }

              v117 = v112;
              v118 = String.init(_nativeStorage:)();
              if (v119)
              {
                v114 = v118;
                v116 = v119;

                goto LABEL_180;
              }

              v154[0] = [v117 length];
              if (!v154[0])
              {

                goto LABEL_176;
              }

              v114 = String.init(_cocoaString:)();
              v116 = v123;
LABEL_179:

LABEL_180:
              v124 = v53;
              v125 = v124;
              if (!v150)
              {
                goto LABEL_185;
              }

              v126 = _objc_getTaggedPointerTag(v124);
              if (v126)
              {
                if (v126 != 22)
                {
                  if (v126 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v126);
                    v127 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v129 = v128;

LABEL_198:
                    v25 = a11;
LABEL_199:
                    if (v114 == v127 && v116 == v129)
                    {
                    }

                    else
                    {
                      v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v137 & 1) == 0)
                      {
                        goto LABEL_217;
                      }
                    }

                    v32 = v149;
LABEL_204:

                    URL.init(_fileManagerFailableFileURLWithPath:)(a6, a7, v154);
                    outlined consume of PathOrURL(a6, a7, 0);
                    v139 = v154[0];
                    v138 = v154[1];
                    v140 = String._bridgeToObjectiveCImpl()();
                    if (v139)
                    {
                      ObjectType = swift_getObjectType();
                      v142 = (*(v138 + 432))(ObjectType, v138);
                      swift_unknownObjectRelease();
                      if (v31)
                      {
                        goto LABEL_206;
                      }
                    }

                    else
                    {
                      v142 = 0;
                      if (v31)
                      {
LABEL_206:
                        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                        v143 = v31;
                        v144 = _getErrorEmbeddedNSError<A>(_:)();

                        if (v144)
                        {
                        }

                        else
                        {
                          swift_allocError();
                          *v147 = v143;
                        }

                        v145 = _swift_stdlib_bridgeErrorToNSError();
                        if (v25)
                        {
                          goto LABEL_213;
                        }

                        goto LABEL_210;
                      }
                    }

                    v145 = 0;
                    if (v25)
                    {
LABEL_213:
                      v146 = String._bridgeToObjectiveCImpl()();
                      goto LABEL_214;
                    }

LABEL_210:
                    v146 = 0;
LABEL_214:
                    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    return swift_willThrow();
                  }

LABEL_185:
                  v154[0] = 0;
                  if (__CFStringIsCF())
                  {
                    v127 = v154[0];

                    v129 = 0xE000000000000000;
                  }

                  else
                  {
                    v130 = v125;
                    v131 = String.init(_nativeStorage:)();
                    if (v132)
                    {
                      v127 = v131;
                      v129 = v132;
                    }

                    else
                    {
                      v154[0] = [(__CFString *)v130 length];
                      if (v154[0])
                      {
                        v127 = String.init(_cocoaString:)();
                        v129 = v136;
                      }

                      else
                      {

                        v127 = 0;
                        v129 = 0xE000000000000000;
                      }
                    }
                  }

                  goto LABEL_198;
                }

                v133 = [(__CFString *)v125 UTF8String];
                if (!v133)
                {
LABEL_223:
                  __break(1u);
                  goto LABEL_224;
                }

                v134 = String.init(utf8String:)(v133);
                v25 = a11;
                if (v135)
                {
LABEL_193:
                  v127 = v134;
                  v129 = v135;

                  goto LABEL_199;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              v134 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              v25 = a11;
              if (!v135)
              {
                [(__CFString *)v125 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v127 = v152;
                v129 = v153;
                goto LABEL_199;
              }

              goto LABEL_193;
            }

            v120 = [v112 UTF8String];
            if (!v120)
            {
LABEL_224:
              __break(1u);
              goto LABEL_225;
            }

            v121 = String.init(utf8String:)(v120);
            if (v122)
            {
LABEL_173:
              v114 = v121;
              v116 = v122;

              goto LABEL_179;
            }

            __break(1u);
          }

          _CFIndirectTaggedPointerStringGetContents();
          v121 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v122)
          {
            [v112 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v114 = v152;
            v116 = v153;
            goto LABEL_179;
          }

          goto LABEL_173;
        }
      }

      v36 = 640;
      goto LABEL_77;
    }

    if (v26 > 12)
    {
      if (v26 != 13)
      {
        if (v26 == 17)
        {
          v36 = 516;
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }

    else if (v26 != 1)
    {
      if (v26 == 2)
      {
        v36 = 4;
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    v36 = 513;
    goto LABEL_77;
  }

  if (v26 <= 27)
  {
    if (v26 > 12)
    {
      if (v26 != 13)
      {
        if (v26 == 17)
        {
          v35 = 516;
          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

    else if (v26 != 1)
    {
      if (v26 == 2)
      {
        v35 = 4;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v35 = 513;
    goto LABEL_61;
  }

  if (v26 <= 62)
  {
    if (v26 != 28)
    {
      if (v26 == 30)
      {
        v35 = 642;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

LABEL_55:
    v35 = 640;
    goto LABEL_61;
  }

  switch(v26)
  {
    case '?':
      v35 = 514;
      goto LABEL_61;
    case 'E':
      goto LABEL_55;
    case 'f':
      swift_unknownObjectRetain();
      v29 = 0;
      v30 = 512;
      goto LABEL_149;
  }

LABEL_60:
  v35 = 512;
LABEL_61:
  swift_unknownObjectRetain();
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    v40 = @"NSPOSIXErrorDomain";
    v41 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v42 = @"NSPOSIXErrorDomain";
    v43 = v42;
    v151 = v35;
    if (!v41)
    {
      goto LABEL_67;
    }

    v44 = _objc_getTaggedPointerTag(v42);
    if (!v44)
    {
LABEL_74:
      v45 = a11;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v50)
      {
        goto LABEL_75;
      }

LABEL_141:
      [v43 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_144:
      v88 = POSIXErrorCode.rawValue.getter();
      v89 = objc_allocWithZone(NSError);
      v90 = String._bridgeToObjectiveCImpl()();

      v29 = [v89 initWithDomain:v90 code:v88 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v91 = [v29 domain];
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)(v91);
      v94 = v93;

      if (v92 == static String._unconditionallyBridgeFromObjectiveC(_:)(v40) && v94 == v95)
      {

        v25 = v45;
LABEL_148:
        v30 = v151;
LABEL_149:
        v97 = swift_getObjectType();
        (*(a7 + 240))(v97, a7);
        v98 = String._bridgeToObjectiveCImpl()();

        v99 = (*(a7 + 432))(v97, a7);
        outlined consume of PathOrURL(a6, a7, 1);
        if (v29)
        {
          v154[0] = v29;
          lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
          v100 = v29;
          v101 = _getErrorEmbeddedNSError<A>(_:)();

          if (v101)
          {
          }

          else
          {
            swift_allocError();
            *v104 = v100;
          }

          v102 = _swift_stdlib_bridgeErrorToNSError();
          if (v25)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v102 = 0;
          if (v25)
          {
LABEL_156:
            v103 = String._bridgeToObjectiveCImpl()();
            goto LABEL_157;
          }
        }

        v103 = 0;
LABEL_157:
        [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
        swift_unknownObjectRelease();

        return swift_willThrow();
      }

      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = v45;
      if (v96)
      {
        goto LABEL_148;
      }

      __break(1u);
LABEL_217:
      __break(1u);
    }

    if (v44 != 22)
    {
      if (v44 == 2)
      {
        v45 = a11;
        MEMORY[0x1EEE9AC00](v44);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_144;
      }

LABEL_67:
      v154[0] = 0;
      if (__CFStringIsCF())
      {
        v45 = a11;
      }

      else
      {
        v45 = a11;
        v46 = v43;
        String.init(_nativeStorage:)();
        if (!v47 && (v154[0] = [v46 length]) != 0)
        {
          String.init(_cocoaString:)();
        }

        else
        {
        }
      }

      goto LABEL_144;
    }

    v48 = [v43 UTF8String];
    if (v48)
    {
      v45 = a11;
      String.init(utf8String:)(v48);
      if (v49)
      {
LABEL_75:

        goto LABEL_144;
      }

      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_221;
  }

LABEL_225:
  _StringGuts.grow(_:)(22);

  v148 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v148);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _getTransformerRegistry()
{
  result = _transformerRegistry;
  if (!_transformerRegistry)
  {
    _transformerRegistry = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
    v1 = objc_alloc_init(_NSNegateBooleanTransformer);
    [_transformerRegistry setObject:v1 forKey:@"NSNegateBoolean"];

    v2 = objc_alloc_init(_NSIsNilTransformer);
    [_transformerRegistry setObject:v2 forKey:@"NSIsNil"];

    v3 = objc_alloc_init(_NSIsNotNilTransformer);
    [_transformerRegistry setObject:v3 forKey:@"NSIsNotNil"];

    v4 = [(NSValueTransformer *)[_NSUnarchiveFromDataTransformer alloc] _initForFoundationOnly];
    [_transformerRegistry setObject:v4 forKey:@"NSUnarchiveFromData"];

    v5 = [(NSValueTransformer *)[_NSKeyedUnarchiveFromDataTransformer alloc] _initForFoundationOnly];
    [_transformerRegistry setObject:v5 forKey:@"NSKeyedUnarchiveFromData"];

    v6 = objc_alloc_init(NSSecureUnarchiveFromDataTransformer);
    [_transformerRegistry setObject:v6 forKey:@"NSSecureUnarchiveFromData"];

    return _transformerRegistry;
  }

  return result;
}

uint64_t _NSCoderGetTrustRestrictions()
{
  if (qword_1ED43F580 != -1)
  {
    dispatch_once(&qword_1ED43F580, &__block_literal_global_5);
  }

  return dword_1ED43F57C;
}

uint64_t _NSSortFunctionOne(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = *(*a3 + 16);
  if (v6)
  {
    return v6(*(v5 + 8), sel_compareObject_toObject_, *(a3[1] + 8 * v3), *(a3[1] + 8 * v4));
  }

  v8 = (*v5 + 16 * v3);
  v9 = (v5 + 40);
  if (*v8 == _NSNullCompare)
  {
    v9 = &selRef_compare_;
  }

  return _NSCompareObject(v8[1], *(*v5 + 16 * v4 + 8), *v8, *v9, *(v5 + 32), *(v5 + 33));
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _LocaleICU.language.getter@<X0>(uint64_t *a1@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(v29, 0, 96);
  outlined destroy of Locale.Language.Components(v29);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v3 = 0;
  v4 = 0;
  if (Language > 0)
  {
    v28[Language] = 0;
    v3 = MEMORY[0x1865CAEB0](v28);
    v4 = v5;
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

  if (v4)
  {
    v25 = v3;
    v14 = String.lowercased()();
    object = v14._object;
    countAndFlagsBits = v14._countAndFlagsBits;
    v15 = v4;
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_15:
    v7 = 0;
    v17 = 0;
    v18 = 0;
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_16:
    v11 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_17;
  }

  countAndFlagsBits = 0;
  v25 = 0;
  object = 0;
  v15 = 0;
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_12:

  String.init<A>(_:)();
  v16 = String._capitalized()();
  v17 = v16._countAndFlagsBits;
  v18 = v16._object;

  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = String.uppercased()();
  v20 = v19._countAndFlagsBits;
  v21 = v19._object;
LABEL_17:
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  result = outlined consume of Locale.LanguageCode?(0, 0);
  *a1 = v25;
  a1[1] = v15;
  a1[2] = countAndFlagsBits;
  a1[3] = object;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v17;
  a1[7] = v18;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v20;
  a1[11] = v21;
  return result;
}

id String.init(utf8String:)(uint64_t a1)
{
  result = MEMORY[0x1865CAEB0]();
  if (!v3)
  {
    result = [objc_allocWithZone(NSString) initWithUTF8String_];
    if (result)
    {
      v4 = result;
      isTaggedPointer = _objc_isTaggedPointer(result);
      v6 = v4;
      v7 = v6;
      if (!isTaggedPointer)
      {
LABEL_8:
        if (__CFStringIsCF())
        {

          return 0;
        }

        v10 = v7;
        v11 = String.init(_nativeStorage:)();
        if (v12)
        {
          v13 = v11;

          return v13;
        }

        if (![v10 length])
        {

          return 0;
        }

        v18 = String.init(_cocoaString:)();
        goto LABEL_23;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v6);
      if (!TaggedPointerTag)
      {
        _CFIndirectTaggedPointerStringGetContents();
        v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v17)
        {
          v18 = v16;
        }

        else
        {
          [v7 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v18 = v19;
        }

LABEL_23:

        return v18;
      }

      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v9;
        }

        goto LABEL_8;
      }

      result = [v7 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)();
        if (v14)
        {
          v15 = result;

          return v15;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t _NSXPCSerializationCreateObjectInDictionaryForGenericKey(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___NSXPCSerializationCreateObjectInDictionaryForGenericKey_block_invoke;
  v6[3] = &unk_1E69FAA58;
  v6[4] = v7;
  v6[5] = &v8;
  v6[6] = a3;
  v6[7] = a4;
  if (_iterateDictionaryKeysAndValues(a1, a2, v6))
  {
    v4 = *(v9 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v4 & 1;
}

void sub_1807D7EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 56), 8);
  _Unwind_Resume(a1);
}

uint64_t type metadata instantiation function for BufferView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t storeEnumTagSinglePayload for UUID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t CharacterSet.init(charactersIn:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = String._bridgeToObjectiveCImpl()();
  v3 = CFCharacterSetCreateWithCharactersInString(0, v2);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = 0;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized BidirectionalCollection<>._trimmingCharacters(in:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v58 = a1;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v6 = (a2 >> 59) & 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = 4 * v5;
  v55 = v6;
  v8 = 0;
  if (v5)
  {
    v9 = 4 << v6;
    v56 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v57 = a3 & 0xFFFFFFFFFFFFFFLL;
    v10 = 15;
    do
    {
      v11 = v10 & 0xC;
      v12 = (v10 & 1) == 0 || v11 == v9;
      v13 = v12;
      if (v12)
      {
        v14 = v10;
        if (v11 == v9)
        {
          v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v10, a2, a3);
        }

        v15 = v14 >> 16;
        if (v14 >> 16 >= v5)
        {
          goto LABEL_137;
        }

        if ((v14 & 1) == 0)
        {
          v15 = _StringGuts.scalarAlignSlow(_:)(v14, a2, a3) >> 16;
        }
      }

      else
      {
        v15 = v10 >> 16;
        if (v10 >> 16 >= v5)
        {
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
          goto LABEL_145;
        }
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          v59 = a2;
          v60 = v57;
          v17 = &v59 + v15;
        }

        else
        {
          v16 = v56;
          if ((a2 & 0x1000000000000000) == 0)
          {
            v16 = _StringObject.sharedUTF8.getter();
          }

          v17 = (v16 + v15);
        }

        v18 = *v17;
        if (*v17 < 0)
        {
          v22 = (__clz(v18 ^ 0xFF) - 24);
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              v18 = ((v18 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
            }

            else
            {
              v18 = ((v18 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3F;
            }
          }

          else if (v22 != 1)
          {
            v18 = v17[1] & 0x3F | ((v18 & 0x1F) << 6);
          }
        }
      }

      if (!CFCharacterSetIsLongCharacterMember(*(v58 + 16), v18))
      {
        break;
      }

      if (v13)
      {
        if (v11 == v9)
        {
          v10 = _StringGuts._slowEnsureMatchingEncoding(_:)(v10, a2, a3);
          if (v5 <= v10 >> 16)
          {
            goto LABEL_138;
          }
        }

        else if (v5 <= v10 >> 16)
        {
          goto LABEL_138;
        }

        if ((v10 & 1) == 0)
        {
          v10 = v10 & 0xC | _StringGuts.scalarAlignSlow(_:)(v10, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else if (v5 <= v10 >> 16)
      {
        goto LABEL_139;
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v10 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v19 = v10 >> 16;
        if ((a3 & 0x2000000000000000) != 0)
        {
          v59 = a2;
          v60 = v57;
          v21 = *(&v59 + v19);
        }

        else
        {
          v20 = v56;
          if ((a2 & 0x1000000000000000) == 0)
          {
            v20 = _StringObject.sharedUTF8.getter();
          }

          v21 = *(v20 + v19);
        }

        v23 = v21;
        v24 = __clz(v21 ^ 0xFF) - 24;
        if (v23 >= 0)
        {
          LOBYTE(v24) = 1;
        }

        v10 = ((v19 + v24) << 16) | 5;
      }

      v8 = v10 >> 14;
    }

    while (v10 >> 14 < v7);
  }

  v9 = v55;
  v25 = 11;
  if (v55)
  {
    v25 = 7;
  }

  if (v8 == v7)
  {
    return String.UnicodeScalarView.subscript.getter();
  }

  v26 = _StringGuts.validateInclusiveScalarIndex(_:)(v25 | (v5 << 16), a2, a3);
  if (v26 < 0x4000)
  {
    goto LABEL_144;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
LABEL_145:
    v27 = v9;
    v26 = String.UnicodeScalarView._foreignIndex(before:)();
    v9 = v26;
    if (v8 >= v26 >> 14)
    {
      goto LABEL_146;
    }
  }

  else
  {
    v27 = v26 >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v59 = a2;
      v60 = a3 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v59 + v27 - 1) & 0xC0) == 0x80)
      {
        v33 = -2;
        do
        {
          v34 = *(&v59 + v27 + v33--) & 0xC0;
        }

        while (v34 == 128);
        v32 = v33 + 1;
      }

      else
      {
        v32 = -1;
      }

      v27 = v55;
      goto LABEL_76;
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_149;
    }

    v28 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      v29 = v28 + v27;
      if ((*(v29 - 1) & 0xC0) == 0x80)
      {
        v30 = -2;
        do
        {
          v31 = *(v29 + v30--) & 0xC0;
        }

        while (v31 == 128);
        v27 = v9;
        v32 = v30 + 1;
      }

      else
      {
        v27 = v9;
        v32 = -1;
      }

LABEL_76:
      v9 = (v26 + (v32 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v8 < v9 >> 14)
      {
        break;
      }

LABEL_146:
      if (v7 >= v8)
      {
        return String.UnicodeScalarView.subscript.getter();
      }

      __break(1u);
LABEL_149:
      v53 = v9;
      v54 = v26;
      v28 = _StringObject.sharedUTF8.getter();
      v26 = v54;
      v9 = v53;
    }
  }

  v35 = 4 << v27;
  while (1)
  {
    v36 = v9 & 0xC;
    v37 = (v9 & 1) == 0 || v36 == v35;
    v38 = v37;
    if (v37)
    {
      v39 = v9;
      if (v36 == v35)
      {
        v39 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a2, a3);
      }

      v7 = v39 >> 16;
      if (v39 >> 16 >= v5)
      {
        goto LABEL_140;
      }

      if ((v39 & 1) == 0)
      {
        v7 = _StringGuts.scalarAlignSlow(_:)(v39, a2, a3) >> 16;
      }
    }

    else
    {
      v7 = v9 >> 16;
      if (v9 >> 16 >= v5)
      {
        goto LABEL_141;
      }
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v42 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v59 = a2;
        v60 = a3 & 0xFFFFFFFFFFFFFFLL;
        v41 = &v59 + v7;
      }

      else
      {
        v40 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v40 = _StringObject.sharedUTF8.getter();
        }

        v41 = (v40 + v7);
      }

      v42 = *v41;
      if (*v41 < 0)
      {
        v51 = (__clz(v42 ^ 0xFF) - 24);
        if (v51 > 2)
        {
          if (v51 == 3)
          {
            v42 = ((v42 & 0xF) << 12) | ((v41[1] & 0x3F) << 6) | v41[2] & 0x3F;
          }

          else
          {
            v42 = ((v42 & 0xF) << 18) | ((v41[1] & 0x3F) << 12) | ((v41[2] & 0x3F) << 6) | v41[3] & 0x3F;
          }
        }

        else if (v51 != 1)
        {
          v42 = v41[1] & 0x3F | ((v42 & 0x1F) << 6);
        }
      }
    }

    result = CFCharacterSetIsLongCharacterMember(*(v58 + 16), v42);
    if (!result)
    {
      break;
    }

    if (v38)
    {
      if (v36 == v35)
      {
        v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a2, a3);
        if (v5 < v9 >> 16)
        {
          goto LABEL_143;
        }
      }

      else if (v5 < v9 >> 16)
      {
        goto LABEL_143;
      }

      if ((v9 & 1) == 0)
      {
        v9 = v9 & 0xC | _StringGuts.scalarAlignSlow(_:)(v9, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else if (v5 < v9 >> 16)
    {
      goto LABEL_142;
    }

    if (v9 < 0x4000)
    {
      __break(1u);
      goto LABEL_136;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UnicodeScalarView._foreignIndex(before:)();
    }

    else
    {
      v44 = v9 >> 16;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v59 = a2;
        v60 = a3 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v58 + v44 + 7) & 0xC0) != 0x80)
        {
          goto LABEL_121;
        }

        v49 = -2;
        do
        {
          v50 = *(&v59 + v44 + v49--) & 0xC0;
        }

        while (v50 == 128);
        v48 = v49 + 1;
      }

      else
      {
        v45 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v45 = _StringObject.sharedUTF8.getter();
        }

        if ((*(v45 + v44 - 1) & 0xC0) != 0x80)
        {
LABEL_121:
          v48 = -1;
          goto LABEL_122;
        }

        v46 = -2;
        do
        {
          v47 = *(v45 + v44 + v46--) & 0xC0;
        }

        while (v47 == 128);
        v48 = v46 + 1;
      }

LABEL_122:
      v9 = (v9 + (v48 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
    }
  }

  if (v8 <= v9 >> 14)
  {
    v52 = _StringGuts.validateScalarIndex(_:)(v9, a2, a3);
    if ((a3 & 0x1000000000000000) != 0)
    {
      String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      _StringGuts.fastUTF8ScalarLength(startingAt:)(v52 >> 16);
    }

    return String.UnicodeScalarView.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t StringProtocol.trimmingCharacters(in:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v7 = *v6;
  (*(v8 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v4);
  v9 = String.init<A>(_:)();
  specialized BidirectionalCollection<>._trimmingCharacters(in:)(v7, v9, v10);

  return String.init(_:)();
}

unint64_t _StringGuts.validateInclusiveScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateInclusiveSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

void _NSXPCInterfaceMethodInfoDealloc(uint64_t a1, id *a2)
{
  if (a2)
  {

    free(a2);
  }
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

uint64_t getEnumTagSinglePayload for UUID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id NSString._toCustomAnyHashable()()
{
  isTaggedPointer = _objc_isTaggedPointer(v0);
  v2 = v0;
  v3 = v2;
  if (!isTaggedPointer)
  {
LABEL_6:
    if (!__CFStringIsCF())
    {
      v5 = v3;
      String.init(_nativeStorage:)();
      if (!v6 && [v5 length])
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      return AnyHashable.init<A>(_:)();
    }

    goto LABEL_17;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v2);
  if (!TaggedPointerTag)
  {
    goto LABEL_12;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return AnyHashable.init<A>(_:)();
    }

    goto LABEL_6;
  }

  result = [v3 UTF8String];
  if (result)
  {
    String.init(utf8String:)(result);
    if (v8)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_12:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v9)
    {
      [v3 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      return AnyHashable.init<A>(_:)();
    }

LABEL_17:

    return AnyHashable.init<A>(_:)();
  }

  __break(1u);
  return result;
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSString()
{
  v1 = *v0;
  NSString._toCustomAnyHashable()();
}

char *_sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So16NSURLResourceKeya_ypTt3g5Tf4xxnn_nTm(char *result, uint64_t a2, id a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2)
  {
    v8 = result;
    result = [a3 _getObjects_andKeys_count_];
    if ((a4 & 0x8000000000000000) == 0)
    {
      if (!a4)
      {
        return a4;
      }

      result = a5(0);
      v9 = v8 - 8;
      v10 = a4;
      do
      {
        if (v10 > a4)
        {
          __break(1u);
          goto LABEL_13;
        }

        v16 = *&v9[8 * v10];
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *&v9[8 * v10--] = v15;
      }

      while (v10);
      v11 = (a2 + 8 * a4 - 8);
      v12 = (a2 + 32 * a4 - 32);
      v13 = a4;
      while (v13 <= a4)
      {
        --v13;
        v14 = *v11--;
        v16 = v14;
        swift_unknownObjectRetain();
        swift_dynamicCast();
        result = outlined init with take of Any(&v15, v12);
        v12 -= 2;
        if (!v13)
        {
          return a4;
        }
      }

LABEL_13:
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(void *a1, uint64_t *a2)
{
  v70 = *MEMORY[0x1E69E9840];

  type metadata accessor for NSFileAttributeKey(0);
  if (v4 == MEMORY[0x1E69E6158])
  {
    swift_unknownObjectRetain();
    result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (result)
    {
      goto LABEL_46;
    }

    result = [a1 count];
    if (!result)
    {
LABEL_62:
      v7 = MEMORY[0x1E69E7CC8];
LABEL_63:
      *a2 = v7;
      return result;
    }

    v40 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v41 = *(v7 + 48);
    v42 = *(v7 + 56);

    v43 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v41, v42, a1, v40);
    if (v43 < 0 || v40 < v43)
    {
LABEL_66:
      __break(1u);
    }

    *(v7 + 16) = v43;
    if (!v43)
    {
      goto LABEL_61;
    }

    v44 = v43 - 1;
    v45 = v7 + 64;
    while (1)
    {
      while (1)
      {
        if ((*(v45 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44))
        {
          goto LABEL_53;
        }

        v50 = (*(v7 + 48) + 16 * v44);
        v51 = *v50;
        v52 = v50[1];

        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          break;
        }

        v56 = *(v7 + 48) + 16 * v44;

        outlined destroy of String(v56);
        __swift_destroy_boxed_opaque_existential_1(*(v7 + 56) + 32 * v44);
        v57 = *(v7 + 16);
        v58 = __OFSUB__(v57, 1);
        v59 = v57 - 1;
        if (v58)
        {
          goto LABEL_64;
        }

        *(v7 + 16) = v59;

LABEL_53:
        if (--v44 < 0)
        {
          goto LABEL_61;
        }
      }

      *(v45 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      if (v44 < v53)
      {
        *(*(v7 + 48) + 16 * v53) = *(*(v7 + 48) + 16 * v44);
        v46 = *(v7 + 56);
        v47 = (v46 + 32 * v44);
        v48 = v47[1];
        v49 = (v46 + 32 * v53);
        *v49 = *v47;
        v49[1] = v48;
        goto LABEL_53;
      }

      if (v53 == v44)
      {
        goto LABEL_53;
      }

      v60 = *(v7 + 48);
      v61 = (v60 + 16 * v53);
      v62 = (v60 + 16 * v44);
      v63 = *v61;
      v64 = v61[1];
      v65 = v62[1];
      *v61 = *v62;
      v61[1] = v65;
      *v62 = v63;
      v62[1] = v64;
      v66 = *(v7 + 56);
      v67 = (v66 + 32 * v53);
      v68 = (v66 + 32 * v44);
      outlined init with take of Any(v67, v69);
      outlined init with take of Any(v68, v67);
      outlined init with take of Any(v69, v68);
      if (v44 < 0)
      {
        goto LABEL_61;
      }
    }
  }

  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  swift_unknownObjectRetain();
  result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (result)
  {
LABEL_46:
    v7 = result;
    goto LABEL_63;
  }

  result = [a1 count];
  if (!result)
  {
    goto LABEL_62;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);

  v10 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So18NSFileAttributeKeya_ypTt3g5Tf4xxnn_n(v8, v9, a1, v6);
  if (v10 < 0 || v6 < v10)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v7 + 16) = v10;
  if (!v10)
  {
    goto LABEL_61;
  }

  v11 = v10 - 1;
  v12 = v7 + 64;
  while (1)
  {
    if ((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
    {
      goto LABEL_9;
    }

    v17 = *(*(v7 + 48) + 8 * v11);
    isTaggedPointer = _objc_isTaggedPointer(v17);
    v19 = v17;
    v20 = v19;
    if (!isTaggedPointer)
    {
      goto LABEL_16;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v19);
    if (TaggedPointerTag)
    {
      break;
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v25)
    {
      goto LABEL_26;
    }

    [v20 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
LABEL_31:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v26 = Hasher._finalize()();

    v27 = -1 << *(v7 + 32);
    v28 = v26 & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) != 0)
    {
      v30 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_41;
    }

    v31 = 0;
    v32 = (63 - v27) >> 6;
    do
    {
      if (++v29 == v32 && (v31 & 1) != 0)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v33 = v29 == v32;
      if (v29 == v32)
      {
        v29 = 0;
      }

      v31 |= v33;
      v34 = *(v12 + 8 * v29);
    }

    while (v34 == -1);
    v30 = __clz(__rbit64(~v34)) + (v29 << 6);
LABEL_41:
    *(v12 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    if (v11 < v30)
    {
      *(*(v7 + 48) + 8 * v30) = *(*(v7 + 48) + 8 * v11);
      v13 = *(v7 + 56);
      v14 = (v13 + 32 * v11);
      v15 = v14[1];
      v16 = (v13 + 32 * v30);
      *v16 = *v14;
      v16[1] = v15;
LABEL_9:
      if (--v11 < 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v30 == v11)
      {
        goto LABEL_9;
      }

      v35 = *(v7 + 48);
      v36 = *(v35 + 8 * v30);
      *(v35 + 8 * v30) = *(v35 + 8 * v11);
      *(v35 + 8 * v11) = v36;
      v37 = *(v7 + 56);
      v38 = (v37 + 32 * v30);
      v39 = (v37 + 32 * v11);
      outlined init with take of Any(v38, v69);
      outlined init with take of Any(v39, v38);
      outlined init with take of Any(v69, v39);
      if (v11 < 0)
      {
LABEL_61:

        goto LABEL_63;
      }
    }
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_31;
    }

LABEL_16:
    *&v69[0] = 0;
    if (__CFStringIsCF())
    {
      if (!*&v69[0])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v22 = v20;
      String.init(_nativeStorage:)();
      if (v23 || (*&v69[0] = [v22 length]) == 0)
      {

        goto LABEL_31;
      }
    }

    String.init(_cocoaString:)();
    goto LABEL_31;
  }

  result = [v20 UTF8String];
  if (!result)
  {
    goto LABEL_67;
  }

  result = String.init(utf8String:)(result);
  if (v24)
  {
LABEL_26:

    goto LABEL_31;
  }

  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

id _FileManagerImpl.url(for:in:appropriateFor:create:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v166 = a5;
  v174 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a3)
  {
    if (a2 != 8)
    {
LABEL_16:
      v164 = v12;
      _SearchPathURLs(for:in:expandTilde:)(a1, a2, 1, &v172);
      v30 = v172;
      if (a2 != 1032)
      {
        goto LABEL_21;
      }

LABEL_17:
      v31 = *(v30 + 16);
      if (v31)
      {
        v165 = *(v30 + 16 + 16 * v31);
        swift_unknownObjectRetain();

        if ((a4 & 1) == 0)
        {
          goto LABEL_191;
        }

        v158 = v11;
        v159 = 1;
        a2 = 1032;
LABEL_24:
        v163 = v5;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          goto LABEL_205;
        }

        v33 = Strong;
        v34 = v165;
        ObjectType = swift_getObjectType();
        v36 = *(*(&v165 + 1) + 240);
        v161 = v34;
        v162 = ObjectType;
        v160 = *(&v165 + 1);
        v37 = v36();
        v39 = v38;
        v40 = [objc_opt_self() standardUserDefaults];
        v41 = [v40 BOOLForKey_];

        swift_unknownObjectRelease();
        if (!v41 || (v157 = v37, v42 = [v33 fileExistsAtPath_], swift_unknownObjectRelease(), (v42 & 1) != 0))
        {

          goto LABEL_183;
        }

        Logger.init()();

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v51, v52))
        {

          (*(v158 + 8))(v14, v164);
LABEL_182:

LABEL_183:
          v167 = MEMORY[0x1E69E7CC8];
          if (a2 == 1)
          {
            v173 = MEMORY[0x1E69E6530];
            *&v172 = 448;
            v142 = @"NSFilePosixPermissions";
          }

          else
          {
            if (!v159)
            {
LABEL_188:
              v144 = swift_unknownObjectWeakLoadStrong();
              if (!v144)
              {
                goto LABEL_205;
              }

              v145 = v144;
              v146 = (*(v160 + 432))(v162);
              type metadata accessor for NSFileAttributeKey(0);
              lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();
              v147 = _NativeDictionary.bridged()();
              *&v172 = 0;
              v148 = [v145 createDirectoryAtURL:v146 withIntermediateDirectories:1 attributes:v147 error:&v172];

              swift_unknownObjectRelease();
              if ((v148 & 1) == 0)
              {
                if (v172)
                {
                  v172;
                  goto LABEL_196;
                }

                if (one-time initialization token for _nilObjCError == -1)
                {
LABEL_195:
                  v149 = _nilObjCError;
                  goto LABEL_196;
                }

LABEL_198:
                swift_once();
                goto LABEL_195;
              }

              result = v172;
LABEL_191:
              *v166 = v165;
              return result;
            }

            v143 = MEMORY[0x1E69E6530];
            v173 = MEMORY[0x1E69E6530];
            *&v172 = 493;
            specialized Dictionary.subscript.setter(&v172, @"NSFilePosixPermissions");
            v173 = v143;
            *&v172 = 0;
            specialized Dictionary.subscript.setter(&v172, @"NSFileOwnerAccountID");
            v173 = v143;
            *&v172 = 80;
            v142 = @"NSFileGroupOwnerAccountID";
          }

          specialized Dictionary.subscript.setter(&v172, v142);
          goto LABEL_188;
        }

        v155 = v52;
        v53 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v171 = v154;
        v156 = v53;
        *v53 = 136315394;
        v54 = [objc_opt_self() mainBundle];
        v55 = [v54 bundleIdentifier];

        v56 = v158;
        if (!v55)
        {
          v63 = 0xE600000000000000;
          v64 = 0x296C6C756E28;
          goto LABEL_181;
        }

        isTaggedPointer = _objc_isTaggedPointer(v55);
        v58 = v55;
        v59 = v58;
        if (!isTaggedPointer)
        {
LABEL_65:
          LOBYTE(v167) = 0;
          *&v172 = 0;
          LOBYTE(v169) = 0;
          v170 = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            v69 = v59;
            v70 = v172;
            if (!v172)
            {

              v64 = 0;
              v63 = 0xE000000000000000;
              goto LABEL_181;
            }

            if (v170 == 1)
            {
              if (v167)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v132 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_179;
            }

            if (v169)
            {
              v152[0] = v69;
              if (v167 == 1)
              {
                v153 = v152;
                MEMORY[0x1EEE9AC00](IsCF);
                v152[-4] = v69;
                v152[-3] = &v172;
                LODWORD(v150) = 1536;
                v151 = v70;
              }

              else
              {
                v134 = [v69 lengthOfBytesUsingEncoding_];
                v153 = v152;
                MEMORY[0x1EEE9AC00](v134);
                v152[-4] = v69;
                v152[-3] = &v172;
                LODWORD(v150) = 134217984;
                v151 = v135;
              }

              v136 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v63 = v137;
              v138 = HIBYTE(v137) & 0xF;
              if ((v137 & 0x2000000000000000) == 0)
              {
                v138 = v136 & 0xFFFFFFFFFFFFLL;
              }

              if (v138)
              {
                v153 = v136;
                v69 = v152[0];

                goto LABEL_180;
              }
            }
          }

          else
          {
            v158 = v56;
            v103 = v59;
            v104 = String.init(_nativeStorage:)();
            if (v105)
            {
              v63 = v105;
              v106 = v104;

              v64 = v106;
              v56 = v158;
              goto LABEL_181;
            }

            v69 = v59;
            *&v172 = [v103 length];
            if (!v172)
            {

              v64 = 0;
              v63 = 0xE000000000000000;
              v56 = v158;
              goto LABEL_181;
            }

            v56 = v158;
          }

          v132 = String.init(_cocoaString:)();
LABEL_179:
          v153 = v132;
          v63 = v133;
          goto LABEL_180;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v58);
        if (!TaggedPointerTag)
        {
          v169 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v130 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v69 = v59;
          if (v131)
          {
            v63 = v131;
            v153 = v130;
          }

          else
          {
            [v59 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v63 = v168;
            v153 = v167;
          }

          goto LABEL_180;
        }

        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            v152[1] = v152;
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v150 = v59;
            v153 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v61 = v59;
            v63 = v62;

            v64 = v153;
LABEL_181:
            v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, &v171);

            v140 = v156;
            *(v156 + 1) = v139;
            *(v140 + 6) = 2080;
            *(v140 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v39, &v171);
            _os_log_impl(&dword_18075C000, v51, v155, "*** Application: %s just recreated special folder: %s", v140, 0x16u);
            v141 = v154;
            swift_arrayDestroy();
            MEMORY[0x1865D2690](v141, -1, -1);
            MEMORY[0x1865D2690](v140, -1, -1);

            (*(v56 + 8))(v14, v164);
            goto LABEL_182;
          }

          goto LABEL_65;
        }

        v69 = v59;
        v128 = [v59 UTF8String];
        if (v128)
        {
          v153 = String.init(utf8String:)(v128);
          if (v129)
          {
            v63 = v129;

LABEL_180:
            v64 = v153;
            goto LABEL_181;
          }

LABEL_204:
          __break(1u);
          goto LABEL_205;
        }

LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

LABEL_28:

      v43 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v44 = @"NSCocoaErrorDomain";
      v45 = v44;
      if (v43)
      {
        v46 = _objc_getTaggedPointerTag(v44);
        if (v46)
        {
          if (v46 != 22)
          {
            if (v46 == 2)
            {
              MEMORY[0x1EEE9AC00](v46);
              v150 = v45;
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_78;
            }

            goto LABEL_33;
          }

          v65 = [(__CFString *)v45 UTF8String];
          if (!v65)
          {
            __break(1u);
LABEL_201:
            __break(1u);
            goto LABEL_202;
          }

          String.init(utf8String:)(v65);
          if (v66)
          {
            goto LABEL_55;
          }

          __break(1u);
        }

        LOWORD(v171) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v67)
        {
          [(__CFString *)v45 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_78;
        }

        goto LABEL_55;
      }

LABEL_33:
      LOBYTE(v167) = 0;
      *&v172 = 0;
      LOBYTE(v171) = 0;
      LOBYTE(v169) = 0;
      v47 = __CFStringIsCF();
      if (!v47)
      {
        v49 = v45;
        String.init(_nativeStorage:)();
        if (v50 || (*&v172 = [(__CFString *)v49 length], !v172))
        {

          goto LABEL_78;
        }

        goto LABEL_77;
      }

      v48 = v172;
      if (v172)
      {
        if (v169 == 1)
        {
          if (v167)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_78:
          v76 = objc_allocWithZone(NSError);
          v77 = String._bridgeToObjectiveCImpl()();

          v78 = [v76 initWithDomain:v77 code:256 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v79 = [v78 domain];
          if (!v79)
          {
            goto LABEL_92;
          }

          v80 = v79;
          v81 = _objc_isTaggedPointer(v79);
          v82 = v80;
          v83 = v82;
          if ((v81 & 1) == 0)
          {
LABEL_84:
            LOBYTE(v167) = 0;
            *&v172 = 0;
            LOBYTE(v171) = 0;
            LOBYTE(v169) = 0;
            v88 = __CFStringIsCF();
            if (v88)
            {
              v89 = v172;
              if (v172)
              {
                if (v169 == 1)
                {
                  if (v167)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v96 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_116;
                }

                if (v171)
                {
                  if (v167 == 1)
                  {
                    MEMORY[0x1EEE9AC00](v88);
                    v152[-4] = v83;
                    v152[-3] = &v172;
                    LODWORD(v150) = 1536;
                    v151 = v89;
                  }

                  else
                  {
                    v98 = [v83 lengthOfBytesUsingEncoding_];
                    MEMORY[0x1EEE9AC00](v98);
                    v152[-4] = v83;
                    v152[-3] = &v172;
                    LODWORD(v150) = 134217984;
                    v151 = v99;
                  }

                  v100 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v87 = v101;
                  v102 = HIBYTE(v101) & 0xF;
                  if ((v101 & 0x2000000000000000) == 0)
                  {
                    v102 = v100 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v102)
                  {
                    v85 = v100;
                    goto LABEL_98;
                  }
                }

LABEL_115:
                v96 = String.init(_cocoaString:)();
LABEL_116:
                v85 = v96;
                v87 = v97;
                goto LABEL_117;
              }
            }

            else
            {
              v90 = v83;
              v91 = String.init(_nativeStorage:)();
              if (v92)
              {
                v85 = v91;
                v87 = v92;

                goto LABEL_118;
              }

              *&v172 = [v90 length];
              if (v172)
              {
                goto LABEL_115;
              }
            }

LABEL_92:
            v85 = 0;
            v87 = 0xE000000000000000;
            goto LABEL_118;
          }

          v84 = _objc_getTaggedPointerTag(v82);
          if (v84)
          {
            if (v84 != 22)
            {
              if (v84 == 2)
              {
                MEMORY[0x1EEE9AC00](v84);
                v150 = v83;
                v85 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v87 = v86;

LABEL_118:
                v107 = v45;
                v108 = v107;
                if (!v43)
                {
                  goto LABEL_123;
                }

                v109 = _objc_getTaggedPointerTag(v107);
                if (!v109)
                {
                  goto LABEL_134;
                }

                if (v109 != 22)
                {
                  if (v109 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v109);
                    v150 = v108;
                    v110 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v112 = v111;

LABEL_152:
                    if (v85 == v110 && v87 == v112)
                    {
                    }

                    else
                    {
                      v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v127 & 1) == 0)
                      {
                        __break(1u);
                        goto LABEL_198;
                      }
                    }

                    return swift_willThrow();
                  }

LABEL_123:
                  LOBYTE(v167) = 0;
                  *&v172 = 0;
                  LOBYTE(v171) = 0;
                  LOBYTE(v169) = 0;
                  v113 = __CFStringIsCF();
                  if (v113)
                  {
                    v110 = v172;
                    if (!v172)
                    {

                      v112 = 0xE000000000000000;
                      goto LABEL_152;
                    }

                    if (v169 == 1)
                    {
                      if (v167)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v120 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_151;
                    }

                    if (v171)
                    {
                      if (v167 == 1)
                      {
                        MEMORY[0x1EEE9AC00](v113);
                        v152[-4] = v108;
                        v152[-3] = &v172;
                        LODWORD(v150) = 1536;
                        v151 = v110;
                      }

                      else
                      {
                        v122 = [(__CFString *)v108 lengthOfBytesUsingEncoding:4];
                        MEMORY[0x1EEE9AC00](v122);
                        v152[-4] = v108;
                        v152[-3] = &v172;
                        LODWORD(v150) = 134217984;
                        v151 = v123;
                      }

                      v124 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v112 = v125;
                      v126 = HIBYTE(v125) & 0xF;
                      if ((v125 & 0x2000000000000000) == 0)
                      {
                        v126 = v124 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v126)
                      {
                        v110 = v124;

                        goto LABEL_152;
                      }
                    }
                  }

                  else
                  {
                    v114 = v108;
                    v115 = String.init(_nativeStorage:)();
                    if (v116)
                    {
                      v110 = v115;
                      v112 = v116;

                      goto LABEL_152;
                    }

                    *&v172 = [(__CFString *)v114 length];
                    if (!v172)
                    {

                      v110 = 0;
                      v112 = 0xE000000000000000;
                      goto LABEL_152;
                    }
                  }

                  v120 = String.init(_cocoaString:)();
LABEL_151:
                  v110 = v120;
                  v112 = v121;
                  goto LABEL_152;
                }

                v117 = [(__CFString *)v108 UTF8String];
                if (v117)
                {
                  v118 = String.init(utf8String:)(v117);
                  if (v119)
                  {
LABEL_135:
                    v110 = v118;
                    v112 = v119;

                    goto LABEL_152;
                  }

                  __break(1u);
LABEL_134:
                  LOWORD(v171) = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v118 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v119)
                  {
                    [(__CFString *)v108 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v110 = v167;
                    v112 = v168;
                    goto LABEL_152;
                  }

                  goto LABEL_135;
                }

                goto LABEL_201;
              }

              goto LABEL_84;
            }

            v93 = [v83 UTF8String];
            if (!v93)
            {
LABEL_202:
              __break(1u);
              goto LABEL_203;
            }

            v94 = String.init(utf8String:)(v93);
            if (v95)
            {
LABEL_97:
              v85 = v94;
              v87 = v95;
LABEL_98:

LABEL_117:
              goto LABEL_118;
            }

            __break(1u);
          }

          LOWORD(v171) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v94 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v95)
          {
            [v83 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v85 = v167;
            v87 = v168;
            goto LABEL_117;
          }

          goto LABEL_97;
        }

        if (v171)
        {
          if (v167 == 1)
          {
            MEMORY[0x1EEE9AC00](v47);
            v152[-4] = v45;
            v152[-3] = &v172;
            LODWORD(v150) = 1536;
            v151 = v48;
          }

          else
          {
            v71 = [(__CFString *)v45 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v71);
            v152[-4] = v45;
            v152[-3] = &v172;
            LODWORD(v150) = 134217984;
            v151 = v72;
          }

          v73 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v75 = HIBYTE(v74) & 0xF;
          if ((v74 & 0x2000000000000000) == 0)
          {
            v75 = v73 & 0xFFFFFFFFFFFFLL;
          }

          if (v75)
          {

            goto LABEL_78;
          }
        }

LABEL_77:
        String.init(_cocoaString:)();
        goto LABEL_78;
      }

LABEL_55:

      goto LABEL_78;
    }

LABEL_15:
    v164 = v12;
    _SearchPathURLs(for:in:expandTilde:)(a1, 1032, 1, &v172);
    v30 = v172;
    goto LABEL_17;
  }

  v15 = a3[1];
  if (a1 == 102)
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = swift_getObjectType();
      v19 = *(v15 + 432);
      swift_unknownObjectRetain();
      v20 = v19(v18, v15);
      *&v172 = 0;
      v21 = [v17 _URLForTrashingItemAtURL_create_error_];

      v22 = v172;
      if (v21)
      {
LABEL_5:
        static URL._unconditionallyBridgeFromObjectiveC(_:)(v21, &v172);
        v23 = v22;

        result = swift_unknownObjectRelease();
        *v166 = v172;
        return result;
      }

LABEL_13:
      if (v22)
      {
        v22;
LABEL_196:
        swift_willThrow();
        return swift_unknownObjectRelease();
      }

      if (one-time initialization token for _nilObjCError == -1)
      {
        goto LABEL_195;
      }

      goto LABEL_198;
    }

    goto LABEL_205;
  }

  if (a2 == 8)
  {
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    goto LABEL_16;
  }

  if (a1 != 99)
  {
    v164 = v12;
    a2 = 1;
    _SearchPathURLs(for:in:expandTilde:)(a1, 1, 1, &v172);
    v30 = v172;
LABEL_21:
    if (*(v30 + 16))
    {
      v165 = *(v30 + 32);
      swift_unknownObjectRetain();

      if ((a4 & 1) == 0)
      {
        goto LABEL_191;
      }

      v158 = v11;
      v159 = 0;
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = swift_getObjectType();
    v28 = *(v15 + 432);
    swift_unknownObjectRetain();
    v29 = v28(v27, v15);
    *&v172 = 0;
    v21 = [v26 _URLForReplacingItemAtURL_error_];

    v22 = v172;
    if (v21)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_205:
  LODWORD(v151) = 0;
  v150 = 55;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(unint64_t *a1, void (*a2)(uint64_t))
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

id specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  isTaggedPointer = _objc_isTaggedPointer(a1);
  v3 = a1;
  v4 = v3;
  if (!isTaggedPointer)
  {
LABEL_6:
    if (!__CFStringIsCF())
    {
      v6 = v4;
      String.init(_nativeStorage:)();
      if (!v7 && [v6 length])
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v3);
  if (!TaggedPointerTag)
  {
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v10)
    {
      [v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_19:
      Hasher.init(_seed:)();
      String.hash(into:)();
      v11 = Hasher._finalize()();

      return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v4, v11);
    }

    goto LABEL_6;
  }

  result = [v4 UTF8String];
  if (result)
  {
    String.init(utf8String:)(result);
    if (v9)
    {
LABEL_7:

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

{
  isTaggedPointer = _objc_isTaggedPointer(a1);
  v3 = a1;
  v4 = v3;
  if (!isTaggedPointer)
  {
LABEL_6:
    if (!__CFStringIsCF())
    {
      v6 = v4;
      String.init(_nativeStorage:)();
      if (!v7 && [v6 length])
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v3);
  if (!TaggedPointerTag)
  {
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v10)
    {
      [v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_19:
      Hasher.init(_seed:)();
      String.hash(into:)();
      v11 = Hasher._finalize()();

      return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v4, v11);
    }

    goto LABEL_6;
  }

  result = [v4 UTF8String];
  if (result)
  {
    String.init(utf8String:)(result);
    if (v9)
    {
LABEL_7:

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey()
{
  result = lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (!lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey)
  {
    type metadata accessor for NSFileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey);
  }

  return result;
}

id specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v38 = v2 + 64;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v5 = a1;
  v37 = ~v3;
  while (1)
  {
    v6 = *(*(v2 + 48) + 8 * v4);
    isTaggedPointer = _objc_isTaggedPointer(v6);
    v8 = v6;
    v9 = v8;
    if (!isTaggedPointer)
    {
      goto LABEL_8;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v8);
    if (TaggedPointerTag)
    {
      break;
    }

    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v18)
    {
      goto LABEL_17;
    }

    [v9 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v11 = v39;
    v13 = v40;
LABEL_22:
    v20 = _objc_isTaggedPointer(v5);
    v21 = v5;
    v22 = v21;
    if (!v20)
    {
      goto LABEL_27;
    }

    v23 = _objc_getTaggedPointerTag(v21);
    switch(v23)
    {
      case 0:
        _CFIndirectTaggedPointerStringGetContents();
        result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v30)
        {
          [v22 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v26 = v40;
          if (v11 != v39)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        goto LABEL_36;
      case 0x16:
        result = [v22 UTF8String];
        if (!result)
        {
          goto LABEL_55;
        }

        result = String.init(utf8String:)(result);
        if (!v30)
        {
          goto LABEL_54;
        }

LABEL_36:
        v31 = result;
        v26 = v30;

        if (v11 != v31)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 2:
        MEMORY[0x1EEE9AC00](v23);
        v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v26 = v25;

        goto LABEL_43;
    }

LABEL_27:
    LOBYTE(v39) = 0;
    if (__CFStringIsCF())
    {

      v26 = 0xE000000000000000;
      if (v11)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v27 = v22;
      v28 = String.init(_nativeStorage:)();
      if (v29)
      {
        v24 = v28;
        v26 = v29;

        goto LABEL_43;
      }

      if (![v27 length])
      {

        v24 = 0;
        v26 = 0xE000000000000000;
LABEL_43:
        v5 = a1;
        v2 = v36;
        if (v11 != v24)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v5 = a1;
      v2 = v36;
      v32 = String.init(_cocoaString:)();
      v26 = v33;
      if (v11 != v32)
      {
        goto LABEL_47;
      }
    }

LABEL_46:
    if (v13 == v26)
    {

      return v4;
    }

LABEL_47:
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      v4 = (v4 + 1) & v37;
      if ((*(v38 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
      {
        continue;
      }
    }

    return v4;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v13 = v12;

      goto LABEL_22;
    }

LABEL_8:
    LOBYTE(v39) = 0;
    if (__CFStringIsCF())
    {

LABEL_12:
      v11 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_22;
    }

    v14 = v9;
    v15 = String.init(_nativeStorage:)();
    if (v16)
    {
      v11 = v15;
      v13 = v16;

      goto LABEL_22;
    }

    if (![v14 length])
    {

      goto LABEL_12;
    }

    v11 = String.init(_cocoaString:)();
    v13 = v19;
    goto LABEL_22;
  }

  result = [v9 UTF8String];
  if (!result)
  {
    goto LABEL_53;
  }

  result = String.init(utf8String:)(result);
  if (v18)
  {
LABEL_17:
    v11 = result;
    v13 = v18;

    goto LABEL_22;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

id specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  v57 = *MEMORY[0x1E69E9840];
  v13 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v52 = a5;
    v50 = a6;
    v51 = a7;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = v14 + 64;
    v54 = v14;
    v53 = v13;
    while (1)
    {
      if (!v20)
      {
        v25 = v16;
        while (1)
        {
          v16 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
          }

          if (v16 >= v21)
          {
            break;
          }

          v26 = v17[v16];
          ++v25;
          if (v26)
          {
            v24 = __clz(__rbit64(v26));
            v55 = (v26 - 1) & v26;
            goto LABEL_15;
          }
        }

        if (a2)
        {
          v49 = 1 << *(v13 + 32);
          if (v49 >= 64)
          {
            bzero(v17, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v17 = -1 << v49;
          }

          *(v13 + 16) = 0;
        }

        goto LABEL_51;
      }

      v24 = __clz(__rbit64(v20));
      v55 = (v20 - 1) & v20;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 56);
      v29 = *(*(v13 + 48) + 8 * v27);
      v30 = (v28 + 32 * v27);
      if (a2)
      {
        outlined init with take of Any(v30, v56);
      }

      else
      {
        outlined init with copy of Any(v30, v56);
        v31 = v29;
      }

      isTaggedPointer = _objc_isTaggedPointer(v29);
      v33 = v29;
      v34 = v33;
      if (!isTaggedPointer)
      {
        goto LABEL_23;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v33);
      if (TaggedPointerTag)
      {
        break;
      }

      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v40)
      {
        goto LABEL_24;
      }

      [v34 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_36:
      Hasher.init(_seed:)();
      String.hash(into:)();
      v41 = Hasher._finalize()();

      v15 = v54;
      v42 = -1 << *(v54 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v22 + 8 * (v43 >> 6))) != 0)
      {
        v23 = __clz(__rbit64((-1 << v43) & ~*(v22 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        do
        {
          if (++v44 == v46 && (v45 & 1) != 0)
          {
            goto LABEL_53;
          }

          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v22 + 8 * v44);
        }

        while (v48 == -1);
        v23 = __clz(__rbit64(~v48)) + (v44 << 6);
      }

      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v54 + 48) + 8 * v23) = v34;
      outlined init with take of Any(v56, (*(v54 + 56) + 32 * v23));
      ++*(v54 + 16);
      v13 = v53;
      v20 = v55;
    }

    if (TaggedPointerTag == 22)
    {
      result = [v34 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }

      result = String.init(utf8String:)(result);
      if (!v39)
      {
        goto LABEL_55;
      }

LABEL_24:

      goto LABEL_36;
    }

    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_36;
    }

LABEL_23:
    if (__CFStringIsCF())
    {
      goto LABEL_24;
    }

    v36 = v34;
    String.init(_nativeStorage:)();
    if (!v37 && [v36 length])
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

    goto LABEL_36;
  }

LABEL_51:

  *v11 = v15;
  return result;
}

void *_NSPathComponents(_WORD *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (a2)
  {
    if (a2 >= 1 && *a1 == 47)
    {
      v5 = 1;
      [v4 addObject:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", a1, 1)}];
    }

    else
    {
      v5 = 0;
    }

    if (v5 < a2)
    {
      while (1)
      {
        while (1)
        {
          v6 = &a1[v5];
          if (*v6 != 47)
          {
            break;
          }

          if (++v5 == a2)
          {
            goto LABEL_18;
          }
        }

        if (v5 >= a2)
        {
          break;
        }

        v7 = 0;
        while (v6[v7] != 47)
        {
          ++v7;
          if (v5 + v7 >= a2)
          {
            goto LABEL_17;
          }
        }

        [v4 addObject:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:")}];
        v5 += v7;
        if (v5 >= a2)
        {
          goto LABEL_18;
        }
      }

LABEL_17:
      [v4 addObject:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:")}];
LABEL_18:
      if (a2 >= 2)
      {
        v8 = &a1[a2];
        v10 = *(v8 - 1);
        v9 = v8 - 1;
        if (v10 == 47)
        {
          [v4 addObject:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", v9, 1)}];
        }
      }
    }
  }

  return v4;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UUID()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

void *URL.appendingPathComponent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 344))(v12, a1, a2, ObjectType, v7);
  v11 = v12[0];
  if (v12[0])
  {
    v7 = v12[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v11 = v8;
  }

  *a3 = v11;
  a3[1] = v7;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV8ArgumentOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE17LocalizationValueV14FormatArgumentVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18ReflectionInternal15GenericArgumentOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16ICUDateFormatterC17AttributePositionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14NSCalendarUnitVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo5iovecVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18ReflectionInternal4TypeVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySny19CollectionsInternal9BigStringV5IndexVGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySny10Foundation16AttributedStringV5IndexVGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 80 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentO9component_Si9multitudetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16UDateFormatFieldVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleV8LanguageVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation10MorphologyV7PronounVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t URLComponents._URLComponents.hasAuthority.getter()
{
  if (*(v0 + 80))
  {
    goto LABEL_40;
  }

  if ((*(v0 + 12) & 1) != 0 && *v0 && (*(*v0 + 120) & 1) == 0)
  {
    v3 = String.subscript.getter();
    MEMORY[0x1865CAE80](v3);

    goto LABEL_40;
  }

  if (*(v0 + 96))
  {
    v1 = *(v0 + 13);
    if ((v1 & 1) != 0 && *v0 && (*(*v0 + 144) & 1) == 0)
    {
      v4 = String.subscript.getter();
      v8 = v7;
      if ((v4 ^ v5) >> 14)
      {
        v9 = v4;
        v10 = v5;
        v11 = v6;
        _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v4, v5, v6, v7, 10);
        if ((v12 & 0x100) != 0)
        {
          specialized _parseInteger<A, B>(ascii:radix:)(v9, v10, v11, v8, 10);
          v27 = v26;

          if ((v27 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v13 = v12;

          if ((v13 & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
      }
    }

    if (!*(v0 + 48))
    {
      v2 = *(v0 + 10);
      if ((v2 & 1) != 0 && *v0 && (*(*v0 + 72) & 1) == 0)
      {
        v28 = String.subscript.getter();
        MEMORY[0x1865CAE80](v28);

        goto LABEL_40;
      }

      if (*(v0 + 64))
      {
        goto LABEL_14;
      }

      v14 = *(v0 + 11);
      if ((v14 & 1) != 0 && *v0 && (*(*v0 + 96) & 1) == 0)
      {
        v29 = String.subscript.getter();
        MEMORY[0x1865CAE80](v29);

LABEL_14:

        goto LABEL_40;
      }

      if ((v1 & 1) != 0 && *v0 && (*(*v0 + 144) & 1) == 0)
      {
        v15 = String.subscript.getter();
        v19 = v18;
        if (!((v15 ^ v16) >> 14))
        {

          if ((v2 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_31:
          if (*v0 && (*(*v0 + 72) & 1) == 0)
          {
LABEL_44:
            v30 = String.subscript.getter();
            MEMORY[0x1865CAE80](v30);

            goto LABEL_41;
          }

LABEL_33:
          if (v14 & 1) == 0 || !*v0 || (*(*v0 + 96))
          {
            return 0;
          }

          goto LABEL_44;
        }

        v20 = v15;
        v21 = v16;
        v22 = v17;
        _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v15, v16, v17, v18, 10);
        if ((v23 & 0x100) != 0)
        {
          specialized _parseInteger<A, B>(ascii:radix:)(v20, v21, v22, v19, 10);
        }

        v24 = v23;

        if ((v24 & 1) == 0)
        {
          return 1;
        }
      }

      if ((v2 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

LABEL_40:

LABEL_41:

  return 1;
}

uint64_t URLComponents._URLComponents.percentEncodedUser.getter()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    if ((*(v0 + 10) & 1) != 0 && *v0 && (*(*v0 + 72) & 1) == 0)
    {
      v2 = String.subscript.getter();
      v1 = MEMORY[0x1865CAE80](v2);

      goto LABEL_13;
    }

    if (!*(v0 + 64))
    {
      if (*(v0 + 11) & 1) == 0 || !*v0 || (*(*v0 + 96))
      {
        v1 = 0;
        goto LABEL_13;
      }

      v4 = String.subscript.getter();
      MEMORY[0x1865CAE80](v4);
    }

    v1 = 0;
  }

LABEL_13:

  return v1;
}

uint64_t URLComponents._URLComponents.encodedHost.getter()
{
  if (!*(v0 + 80))
  {
    if ((*(v0 + 12) & 1) != 0 && *v0 && (*(*v0 + 120) & 1) == 0)
    {
      v12 = String.subscript.getter();
      v1 = MEMORY[0x1865CAE80](v12);

      goto LABEL_27;
    }

    if ((*(v0 + 96) & 1) == 0)
    {
LABEL_26:
      v1 = 0;
      goto LABEL_27;
    }

    if ((*(v0 + 13) & 1) != 0 && *v0 && (*(*v0 + 144) & 1) == 0)
    {
      v2 = String.subscript.getter();
      v6 = v5;
      if (!((v2 ^ v3) >> 14))
      {

        if (*(v0 + 48))
        {
          goto LABEL_26;
        }

LABEL_15:
        if ((*(v0 + 10) & 1) != 0 && *v0 && (*(*v0 + 72) & 1) == 0)
        {
          v13 = String.subscript.getter();
          MEMORY[0x1865CAE80](v13);
        }

        else
        {
          if (!*(v0 + 64))
          {
            if (*(v0 + 11) & 1) == 0 || !*v0 || (*(*v0 + 96))
            {
              v1 = 0;
              goto LABEL_27;
            }

            v15 = String.subscript.getter();
            MEMORY[0x1865CAE80](v15);
          }
        }

        goto LABEL_26;
      }

      v7 = v2;
      v8 = v3;
      v9 = v4;
      _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v2, v3, v4, v5, 10);
      if ((v10 & 0x100) != 0)
      {
        specialized _parseInteger<A, B>(ascii:radix:)(v7, v8, v9, v6, 10);
      }

      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (*(v0 + 48))
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v1 = *(v0 + 72);
LABEL_27:

  return v1;
}

uint64_t URLComponents._URLComponents.port.getter()
{
  if (*(v0 + 96) != 1)
  {
    return *(v0 + 88);
  }

  if (*(v0 + 13) & 1) == 0 || !*v0 || (*(*v0 + 144))
  {
    return 0;
  }

  v2 = String.subscript.getter();
  v6 = v5;
  if (!((v2 ^ v3) >> 14))
  {

    return 0;
  }

  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v2, v3, v4, v5, 10);
  if ((v11 & 0x100) != 0)
  {
    v10 = specialized _parseInteger<A, B>(ascii:radix:)(v7, v8, v9, v6, 10);
  }

  v12 = v10;
  v13 = v11;

  if (v13)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t __NSOperationQueueGetOperations(uint64_t a1, void *a2, char a3)
{
  os_unfair_lock_lock((a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    do
    {
      if ((a3 & 1) != 0 || object_getClass(v6) != _NSBarrierOperation)
      {
        ++v7;
        [a2 addObject:v6];
      }

      v6 = v6[2];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock((a1 + 8));
  return v7;
}

uint64_t _SwiftURL.isFileURL.getter()
{
  if (*(v0 + 48))
  {
    return 1;
  }

  if (*(*(v0 + 16) + 48))
  {
    if (!*(v0 + 24))
    {
      return 0;
    }

    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 136))(ObjectType, v2);
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v5 = String.subscript.getter();
    MEMORY[0x1865CAE80](v5);
  }

  v6 = String.lowercased()();

  if (one-time initialization token for fileSchemeUTF8 != -1)
  {
    swift_once();
  }

  v7 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v6._countAndFlagsBits, v6._object);

  return v7 & 1;
}

void *specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(void *(*a1)(__int128 *__return_ptr, void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return xmmword_1812187D0;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v9[0] = a3;
    v9[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    result = a1(&v10, v9, HIBYTE(a4) & 0xF);
    if (v4)
    {
      return result;
    }

    return v10;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v6 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  result = a1(&v10, v6, v7);
  if (!v4)
  {
    return v10;
  }

  return result;
}

id partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  return specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)(a1, a2, *(v3 + 24), *(v3 + 32), a3);
}

{
  result = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SRyAIGTt2B5(a1, a2, *(v3 + 24), *(v3 + 32));
  *a3 = result;
  a3[1] = v6;
  return result;
}

{
  return partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)(a1, a2, a3);
}

{
  result = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_SRyAIGTt2B5(a1, a2, *(v3 + 24), *(v3 + 32));
  *a3 = result;
  a3[1] = v6;
  return result;
}

id _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA46450LL10utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SRyAIGTt2B5(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v13[0] = isStackAllocationSafe;
  v13[1] = a2;
  if (a2 < 0)
  {
    __break(1u);
  }

  v7 = isStackAllocationSafe;
  if (a2 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    return sub_1807DD8D4(&v11 - v8, a2, v7, a2, a3, a4);
  }

  else
  {
    v10 = swift_slowAlloc();
    specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v10, a2, v13, a3, a4, &v12);
    MEMORY[0x1865D2690](v10, -1, -1);
    return v12;
  }
}

id sub_1807DD8D4(char *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (!a3 || !a4)
  {
    v9 = 0;
    return _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCs5SliceVySryAHGG_Tt1B5(0, v9, a1, v6, a6);
  }

  v27 = a6;
  v9 = 0;
  LOBYTE(v10) = 0;
  v11 = 0;
  v12 = &a3[a4];
  v13 = a5 + 56;
  v14 = a3;
  while (1)
  {
    v18 = *v14++;
    v17 = v18;
    if (v18 == 37)
    {
      break;
    }

    if (v11 > 0)
    {
      goto LABEL_16;
    }

    a1[v9] = v17;
    v19 = __OFADD__(v9++, 1);
    if (v19)
    {
      goto LABEL_105;
    }

LABEL_9:
    a3 = v14;
    if (v14 == v12)
    {
      goto LABEL_98;
    }
  }

  result = 0;
  if (v11 || v14 == v12)
  {
    return result;
  }

  v17 = *v14;
  if (v17 == 37)
  {
    return 0;
  }

  v14 = a3 + 2;
  v11 = 2;
LABEL_16:
  result = 0;
  switch(v17)
  {
    case '0':
      v16 = 0;
      if (v11 == 1)
      {
        break;
      }

      if (v11 != 2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    case '1':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = 16;
        goto LABEL_7;
      }

      v16 = 1;
      break;
    case '2':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = 32;
        goto LABEL_7;
      }

      v16 = 2;
      break;
    case '3':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = 48;
        goto LABEL_7;
      }

      v16 = 3;
      break;
    case '4':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = 64;
        goto LABEL_7;
      }

      v16 = 4;
      break;
    case '5':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = 80;
        goto LABEL_7;
      }

      v16 = 5;
      break;
    case '6':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = 96;
        goto LABEL_7;
      }

      v16 = 6;
      break;
    case '7':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = 112;
        goto LABEL_7;
      }

      v16 = 7;
      break;
    case '8':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = 0x80;
        goto LABEL_7;
      }

      v16 = 8;
      break;
    case '9':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = -112;
        goto LABEL_7;
      }

      v16 = 9;
      break;
    case 'A':
    case 'a':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = -96;
LABEL_7:
        LOBYTE(v10) = v16;
LABEL_8:
        --v11;
        goto LABEL_9;
      }

      v16 = 10;
      break;
    case 'B':
    case 'b':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = -80;
        goto LABEL_7;
      }

      v16 = 11;
      break;
    case 'C':
    case 'c':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = -64;
        goto LABEL_7;
      }

      v16 = 12;
      break;
    case 'D':
    case 'd':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = -48;
        goto LABEL_7;
      }

      v16 = 13;
      break;
    case 'E':
    case 'e':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = -32;
        goto LABEL_7;
      }

      v16 = 14;
      break;
    case 'F':
    case 'f':
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_8;
        }

        LOBYTE(v16) = -16;
        goto LABEL_7;
      }

      v16 = 15;
      break;
    default:
      return result;
  }

  v10 = v16 + v10;
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_103;
  }

  if (!*(a5 + 16) || (v20 = MEMORY[0x1865CD020](*(a5 + 40), v10, 1), v21 = -1 << *(a5 + 32), v22 = v20 & ~v21, ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
  {
LABEL_89:
    a1[v9] = v10;
    v19 = __OFADD__(v9++, 1);
    if (v19)
    {
      goto LABEL_104;
    }

    LOBYTE(v10) = 0;
    goto LABEL_8;
  }

  v23 = ~v21;
  while (*(*(a5 + 48) + v22) != v10)
  {
    v22 = (v22 + 1) & v23;
    if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v9, 2))
  {
    goto LABEL_106;
  }

  if (v9 + 2 < v9)
  {
    goto LABEL_107;
  }

  v24 = byte_1812DB9F0[v10 >> 4];
  v25 = &a1[v9];
  if (!a1)
  {
    v25 = 0;
  }

  *v25 = 37;
  v25[1] = v24;
  v25[2] = v17;
  v19 = __OFADD__(v9, 3);
  v9 += 3;
  if (!v19)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_98:
  if (!v11)
  {
    v6 = a2;
    a6 = v27;
    if (v9 < 0)
    {
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      JUMPOUT(0x1807DDCF4);
    }

    return _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCs5SliceVySryAHGG_Tt1B5(0, v9, a1, v6, a6);
  }

  return 0;
}

id _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCs5SliceVySryAHGG_Tt1B5(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = a2;
  v63 = *MEMORY[0x1E69E9840];
  if (a5 <= 2348810495)
  {
    if (a5 > 6)
    {
      if (a5 != 7)
      {
        if (a5 != 10)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }
    }

    else if (a5 != 1)
    {
      if (a5 != 4)
      {
        goto LABEL_35;
      }

      if (!__OFADD__(a1, a2 - a1))
      {
        v10 = a2 - a1;
        if (a2 < a1)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (a3)
        {
          v12 = &a3[a1];
        }

        else
        {
          v12 = 0;
        }

        if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of makeString #2 <A>(buffer:) in String.init<A>(bytes:encoding:), v12, v10))
        {
          v13 = v10 < 3;
          v10 -= 3;
          if (v13)
          {
            __break(1u);
            goto LABEL_126;
          }

          if (v12)
          {
            v12 += 3;
          }

          else
          {
            v12 = 0;
          }
        }

        result = static String._tryFromUTF8(_:)();
        if (v15)
        {
          return result;
        }

        result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v12, v10);
        if (v16)
        {
          return result;
        }

        return 0;
      }

LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    a4 = a2 - a1;
    v7 = a2;
    if (!__OFADD__(a1, a2 - a1))
    {
      v6 = a2 - a1;
      if (a2 >= a1)
      {
        v5 = a5;
        if (a3)
        {
          v9 = &a3[a1];
        }

        else
        {
          v9 = 0;
        }

        result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(v9, a2 - a1);
        if (v31)
        {
          return result;
        }

        if (one-time initialization token for compatibility1 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_124;
      }

      goto LABEL_119;
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (a5 <= 2483028223)
  {
    if (a5 == 2348810496)
    {
      goto LABEL_46;
    }

    if (a5 != 2415919360)
    {
      goto LABEL_35;
    }

LABEL_25:
    *&v59 = a5;
    v17 = specialized Endianness.init(_:)(&v59);
    if (!__OFADD__(a1, v10 - a1))
    {
      if (v10 >= a1)
      {
        v18 = v17;
        if (v9)
        {
          v19 = &v9[a1];
        }

        else
        {
          v19 = 0;
        }

        closure #2 in String.init<A>(bytes:encoding:)(v19, v10 - a1, v18, closure #1 in closure #2 in String.init<A>(bytes:encoding:), &v59);
        if (*(&v59 + 1))
        {
          return v59;
        }

        *&v59 = a1;
        *(&v59 + 1) = v10;
        v60 = v9;
        v61 = a4;
        v62 = v18;
        result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5UTF16O_AA0I13EndianAdaptorVys5SliceVySrys5UInt8VGGGTt0t1g5(&v59);
        if (v20)
        {
          return result;
        }

        return 0;
      }

      goto LABEL_116;
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (a5 == 2483028224)
  {
    goto LABEL_25;
  }

  if (a5 == 2550137088 || a5 == 2617245952)
  {
LABEL_46:
    *&v59 = a5;
    v28 = specialized Endianness.init(_:)(&v59);
    if (!__OFADD__(a1, v10 - a1))
    {
      if (v10 >= a1)
      {
        v29 = v28;
        if (v9)
        {
          v30 = &v9[a1];
        }

        else
        {
          v30 = 0;
        }

        closure #2 in String.init<A>(bytes:encoding:)(v30, v10 - a1, v29, closure #1 in closure #3 in String.init<A>(bytes:encoding:), &v59);
        if (*(&v59 + 1))
        {
          return v59;
        }

        *&v59 = a1;
        *(&v59 + 1) = v10;
        v60 = v9;
        v61 = a4;
        v62 = v29;
        result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5UTF32O_AA0I13EndianAdaptorVys5SliceVySrys5UInt8VGGGTt0t1g5();
        if (v33)
        {
          return result;
        }

        return 0;
      }

      goto LABEL_117;
    }

    goto LABEL_115;
  }

LABEL_35:
  if (__OFADD__(a1, a2 - a1))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v5 = a2 - a1;
  if (a2 < a1)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    swift_once();
LABEL_60:
    if ((static String.compatibility1 & 1) == 0)
    {
      return 0;
    }

    if (v10 == a1)
    {
      v32 = MEMORY[0x1E69E7CC0];
LABEL_73:
      v36 = [objc_allocWithZone(NSString) initWithBytes:v32 + 4 length:v32[2] encoding:v5];
      if (v36)
      {
        v37 = v36;
        isTaggedPointer = _objc_isTaggedPointer(v36);
        v39 = v37;
        v40 = v39;
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
                v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_112:

                return v42;
              }

              goto LABEL_81;
            }

            result = [v40 UTF8String];
            if (!result)
            {
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

            result = String.init(utf8String:)(result);
            if (!v55)
            {
LABEL_130:
              __break(1u);
              return result;
            }

            v42 = result;
          }

          else
          {
            _CFIndirectTaggedPointerStringGetContents();
            v56 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v57)
            {
              [v40 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();

              return v58;
            }

            v42 = v56;
          }

          goto LABEL_111;
        }

LABEL_81:
        *&v59 = 0;
        if (__CFStringIsCF())
        {
          v42 = v59;
          if (!v59)
          {

            goto LABEL_112;
          }
        }

        else
        {
          v52 = v40;
          v53 = String.init(_nativeStorage:)();
          if (v54)
          {
            v42 = v53;

            goto LABEL_112;
          }

          *&v59 = [v52 length];
          if (!v59)
          {

            v42 = 0;
            goto LABEL_112;
          }
        }

        v42 = String.init(_cocoaString:)();
LABEL_111:

        goto LABEL_112;
      }

      return 0;
    }

    v34 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(a4, 0);
    v32 = v34;
    v35 = 0;
    if (v7 != a1)
    {
      if (v6 >= a4)
      {
        v35 = a4;
      }

      else
      {
        v35 = v6;
      }

      memcpy(v34 + 4, v9, v35);
    }

    if (v35 == a4)
    {
      goto LABEL_73;
    }

LABEL_126:
    __break(1u);
  }

  if (a3)
  {
    v21 = &a3[a1];
  }

  else
  {
    v21 = 0;
  }

  result = [objc_allocWithZone(NSString) initWithBytes:v21 length:v5 encoding:a5];
  if (result)
  {
    v22 = result;
    v23 = _objc_isTaggedPointer(result);
    v24 = v22;
    v25 = v24;
    if (!v23)
    {
LABEL_65:
      *&v59 = 0;
      if (__CFStringIsCF())
      {

        return 0;
      }

      v43 = v25;
      v44 = String.init(_nativeStorage:)();
      if (v45)
      {
        v46 = v44;

        return v46;
      }

      if (![v43 length])
      {

        return 0;
      }

      v51 = String.init(_cocoaString:)();
      goto LABEL_107;
    }

    v26 = _objc_getTaggedPointerTag(v24);
    if (!v26)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v49 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v50)
      {
        v51 = v49;
      }

      else
      {
        [v25 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v51 = v58;
      }

LABEL_107:

      return v51;
    }

    if (v26 != 22)
    {
      if (v26 == 2)
      {
        MEMORY[0x1EEE9AC00](v26);
        v27 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v27;
      }

      goto LABEL_65;
    }

    result = [v25 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v47)
      {
        v48 = result;

        return v48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_129;
  }

  return result;
}