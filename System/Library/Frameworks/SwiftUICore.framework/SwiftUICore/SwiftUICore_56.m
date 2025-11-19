void CodableAccessibilityAttachmentStorage.VBase.init(from:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LinkDestination.Configuration?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v150 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v151 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v152 = 0u;
  *(a2 + 34) = -1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 58) = -1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 82) = -1;
  *(a2 + 80) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  _s7SwiftUI43CodableAccessibilityDataSeriesConfigurationVSgWOi0_(v159);
  memcpy((a2 + 144), v159, 0x108uLL);
  v9 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v10 = *(v9 + 52);
  v11 = type metadata accessor for LinkDestination.Configuration(0);
  v148 = *(v11 - 8);
  v149 = v11;
  v12 = *(v148 + 56);
  v155 = v10;
  v146 = v12;
  v147 = v148 + 56;
  (v12)(a2 + v10, 1, 1);
  v154 = *(v9 + 56);
  *(a2 + v154) = 0;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v13 < v14)
  {
    v142 = 0;
    v153 = 0;
    v143 = 1;
    v144 = 1;
    while (1)
    {
      v23 = *(a1 + 24);
      if (v23)
      {
        v24 = *(a1 + 32);
        if (v13 < v24)
        {
          goto LABEL_15;
        }

        if (v24 < v13)
        {
          goto LABEL_179;
        }

        *(a1 + 24) = 0;
      }

      v23 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_180;
      }

      if (v23 <= 7)
      {
        goto LABEL_179;
      }

LABEL_15:
      v25 = v23 >> 3;
      if (v23 >> 3 <= 5)
      {
        if (v23 >> 3 <= 2)
        {
          if (v25 == 1)
          {
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v56 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_180;
            }

            v15 = v56;
            if (v56 < 0)
            {
              goto LABEL_207;
            }

            v57 = *(a1 + 8);
            if (v14 < v57 + v56)
            {
              goto LABEL_179;
            }

            v160 = v14;
            *(a1 + 8) = v57 + v56;
            if (v56)
            {
              v58 = v57 - [*a1 bytes];
              v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;
              if (__OFADD__(v58, v15))
              {
                goto LABEL_224;
              }

              if (v58 + v15 < v58)
              {
                goto LABEL_229;
              }

              v62 = v59;
              v15 = Data._Representation.subscript.getter();
              v64 = v63;
              outlined consume of Data._Representation(v62, v61);
            }

            else
            {
              v64 = 0xC000000000000000;
            }

            static String.Encoding.utf8.getter();
            v119 = String.init(data:encoding:)();
            if (!v120)
            {
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
              outlined consume of Data._Representation(v15, v64);
              goto LABEL_180;
            }

            v121 = v119;
            v122 = v120;
            outlined consume of Data._Representation(v15, v64);

            *a2 = v121;
            *(a2 + 8) = v122;
            v153 = v122;
            goto LABEL_155;
          }

          if (v25 == 2)
          {
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v49 = *(a1 + 40);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
            }

            v51 = *(v49 + 2);
            v50 = *(v49 + 3);
            if (v51 >= v50 >> 1)
            {
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
            }

            *(v49 + 2) = v51 + 1;
            *&v49[8 * v51 + 32] = v14;
            *(a1 + 40) = v49;
            v15 = a1;
            v52 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_180;
            }

            if (v52 < 0)
            {
              goto LABEL_210;
            }

            v53 = *(a1 + 8) + v52;
            if (v14 < v53)
            {
              goto LABEL_179;
            }

            *(a1 + 16) = v53;
            _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0C18ResolvedStyledTextV_AA0dL0VTt1g5(a1, v158);
            v15 = *(a1 + 40);
            if (!*(v15 + 16))
            {
              goto LABEL_218;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v54 = *(v15 + 16);
              if (!v54)
              {
                goto LABEL_220;
              }
            }

            else
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              v54 = *(v15 + 16);
              if (!v54)
              {
                goto LABEL_220;
              }
            }

            v55 = v54 - 1;
            v14 = *(v15 + 8 * v55 + 32);
            *(v15 + 16) = v55;
            *(a1 + 40) = v15;
            *(a1 + 16) = v14;
            v19 = *(&v158[0] + 1);
            v18 = *&v158[0];
            LODWORD(v160) = LOWORD(v158[1]);
            v20 = BYTE2(v158[1]) != 0;
            v22 = a2 + 32;
            v21 = *(a2 + 32);
LABEL_7:
            outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(*(v22 - 16), *(v22 - 8), v21 | (*(v22 + 2) << 16));
            *(v22 - 16) = v18;
            *(v22 - 8) = v19;
            *(v22 + 2) = v20;
            *v22 = v160;
            goto LABEL_8;
          }
        }

        else
        {
          switch(v25)
          {
            case 3uLL:
              if ((v23 & 7) != 2)
              {
                goto LABEL_179;
              }

              v87 = *(a1 + 40);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
              }

              v89 = *(v87 + 2);
              v88 = *(v87 + 3);
              if (v89 >= v88 >> 1)
              {
                v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v87);
              }

              *(v87 + 2) = v89 + 1;
              *&v87[8 * v89 + 32] = v14;
              *(a1 + 40) = v87;
              v15 = a1;
              v90 = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                goto LABEL_180;
              }

              if (v90 < 0)
              {
                goto LABEL_211;
              }

              v91 = *(a1 + 8) + v90;
              if (v14 < v91)
              {
                goto LABEL_179;
              }

              *(a1 + 16) = v91;
              _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0C18ResolvedStyledTextV_AA0dL0VTt1g5(a1, v158);
              v15 = *(a1 + 40);
              if (!*(v15 + 16))
              {
                goto LABEL_215;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v92 = *(v15 + 16);
                if (!v92)
                {
                  goto LABEL_221;
                }
              }

              else
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                v92 = *(v15 + 16);
                if (!v92)
                {
                  goto LABEL_221;
                }
              }

              v93 = v92 - 1;
              v14 = *(v15 + 8 * v93 + 32);
              *(v15 + 16) = v93;
              *(a1 + 40) = v15;
              *(a1 + 16) = v14;
              v19 = *(&v158[0] + 1);
              v18 = *&v158[0];
              LODWORD(v160) = LOWORD(v158[1]);
              v20 = BYTE2(v158[1]) != 0;
              v22 = a2 + 56;
              v21 = *(a2 + 56);
              goto LABEL_7;
            case 4uLL:
              if ((v23 & 7) != 2)
              {
                goto LABEL_179;
              }

              v65 = *(a1 + 40);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
              }

              v67 = *(v65 + 2);
              v66 = *(v65 + 3);
              if (v67 >= v66 >> 1)
              {
                v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v65);
              }

              *(v65 + 2) = v67 + 1;
              *&v65[8 * v67 + 32] = v14;
              *(a1 + 40) = v65;
              v15 = a1;
              v68 = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                goto LABEL_180;
              }

              if (v68 < 0)
              {
                goto LABEL_214;
              }

              v69 = *(a1 + 8) + v68;
              if (v14 < v69)
              {
                goto LABEL_179;
              }

              *(a1 + 16) = v69;
              _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0C18ResolvedStyledTextV_AA0dL0VTt1g5(a1, v158);
              v15 = *(a1 + 40);
              if (!*(v15 + 16))
              {
                goto LABEL_216;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v16 = *(v15 + 16);
                if (!v16)
                {
                  goto LABEL_222;
                }
              }

              else
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                v16 = *(v15 + 16);
                if (!v16)
                {
                  goto LABEL_222;
                }
              }

              v17 = v16 - 1;
              v14 = *(v15 + 8 * v17 + 32);
              *(v15 + 16) = v17;
              *(a1 + 40) = v15;
              *(a1 + 16) = v14;
              v19 = *(&v158[0] + 1);
              v18 = *&v158[0];
              LODWORD(v160) = LOWORD(v158[1]);
              v20 = BYTE2(v158[1]) != 0;
              v22 = a2 + 80;
              v21 = *(a2 + 80);
              goto LABEL_7;
            case 5uLL:
              if ((v23 & 7) != 2)
              {
                goto LABEL_179;
              }

              v27 = *(a1 + 40);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
              }

              v29 = *(v27 + 2);
              v28 = *(v27 + 3);
              if (v29 >= v28 >> 1)
              {
                v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
              }

              *(v27 + 2) = v29 + 1;
              *&v27[8 * v29 + 32] = v14;
              *(a1 + 40) = v27;
              v15 = a1;
              v30 = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                goto LABEL_180;
              }

              if (v30 < 0)
              {
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
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
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                __break(1u);
                __break(1u);
LABEL_235:
                __break(1u);
LABEL_236:
                __break(1u);
LABEL_237:
                __break(1u);
                do
                {
                  __break(1u);
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  v136 = *(v15 + 16);
                  if (v136)
                  {
                    goto LABEL_201;
                  }

                  __break(1u);
                  v15 = *(a1 + 40);
                  if (!*(v15 + 16))
                  {
                    goto LABEL_235;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  }

                  v136 = *(v15 + 16);
                  if (v136)
                  {
                    goto LABEL_201;
                  }

                  __break(1u);
                  v15 = *(a1 + 40);
                  if (!*(v15 + 16))
                  {
                    goto LABEL_236;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  }

                  v136 = *(v15 + 16);
                  if (v136)
                  {
                    goto LABEL_201;
                  }

                  __break(1u);
                  v15 = *(a1 + 40);
                  if (!*(v15 + 16))
                  {
                    goto LABEL_237;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  }

                  v136 = *(v15 + 16);
                  if (v136)
                  {
                    goto LABEL_201;
                  }

                  __break(1u);
                  v15 = *(a1 + 40);
                }

                while (!*(v15 + 16));
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                }

                v136 = *(v15 + 16);
                if (v136)
                {
LABEL_201:
                  v137 = v136 - 1;
                  v138 = *(v15 + 8 * v137 + 32);
                  *(v15 + 16) = v137;

                  *(a1 + 40) = v15;
                  *(a1 + 16) = v138;
                  goto LABEL_181;
                }

                __break(1u);
                return;
              }

              v31 = *(a1 + 8) + v30;
              if (v14 < v31)
              {
                goto LABEL_179;
              }

              *(a1 + 16) = v31;
              _s7SwiftUI30AccessibilityNullableOptionSetV4fromACyxGAA15ProtobufDecoderVz_tKcfCAA0C10VisibilityV_Tt1g5(a1, v158);
              v15 = *(a1 + 40);
              if (!*(v15 + 16))
              {
                goto LABEL_217;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v32 = *(v15 + 16);
                if (!v32)
                {
                  goto LABEL_223;
                }
              }

              else
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                v32 = *(v15 + 16);
                if (!v32)
                {
                  goto LABEL_223;
                }
              }

              v143 = 0;
              v33 = v32 - 1;
              v14 = *(v15 + 8 * v33 + 32);
              *(v15 + 16) = v33;
              *(a1 + 40) = v15;
              *(a1 + 16) = v14;
              v142 = *&v158[0];
              goto LABEL_8;
          }
        }
      }

      else if (v23 >> 3 > 8)
      {
        switch(v25)
        {
          case 9uLL:
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v101 = *a1;
            v160 = *(a1 + 16);
            v145 = *(a1 + 40);
            v102 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_180;
            }

            v15 = v102;
            if (v102 < 0)
            {
              goto LABEL_212;
            }

            v103 = *(a1 + 8);
            if (v160 < v103 + v102)
            {
              goto LABEL_179;
            }

            *(a1 + 8) = v103 + v102;
            v104 = v101;

            v141 = v104;
            if (v15)
            {
              v105 = v103 - [v104 bytes];
              v106 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v108 = v107;
              if (__OFADD__(v105, v15))
              {
                goto LABEL_226;
              }

              if (v105 + v15 < v105)
              {
                goto LABEL_231;
              }

              v109 = v106;
              v140 = Data._Representation.subscript.getter();
              v111 = v110;
              v112 = v108;
              v113 = v111;
              outlined consume of Data._Representation(v109, v112);
            }

            else
            {
              v140 = 0;
              v113 = 0xC000000000000000;
            }

            type metadata accessor for PropertyListDecoder();
            swift_allocObject();
            PropertyListDecoder.init()();

            dispatch thunk of PropertyListDecoder.userInfo.setter();
            type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [CodableAccessibilityDataSeriesConfiguration], &type metadata for CodableAccessibilityDataSeriesConfiguration, MEMORY[0x1E69E62F8]);
            lazy protocol witness table accessor for type [CodableAccessibilityDataSeriesConfiguration] and conformance <A> [A]();
            v129 = v140;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            if (!*(*&v158[0] + 16))
            {

              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();

              outlined consume of Data._Representation(v129, v113);

              goto LABEL_180;
            }

            memcpy(v156, (*&v158[0] + 32), sizeof(v156));
            outlined init with copy of CodableAccessibilityDataSeriesConfiguration(v156, v158);

            outlined consume of Data._Representation(v129, v113);

            memcpy(v157, v156, sizeof(v157));
            _ViewInputs.base.modify(v157, v130);
            memcpy(v158, (a2 + 144), 0x108uLL);
            outlined destroy of AccessibilityValueStorage?(v158, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration);
            memcpy((a2 + 144), v157, 0x108uLL);
            goto LABEL_155;
          case 0xAuLL:
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v72 = *a1;
            v160 = *(a1 + 16);
            v145 = *(a1 + 40);
            v73 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_180;
            }

            v15 = v73;
            if (v73 < 0)
            {
              goto LABEL_208;
            }

            v74 = *(a1 + 8);
            if (v160 < v74 + v73)
            {
              goto LABEL_179;
            }

            *(a1 + 8) = v74 + v73;
            v75 = v72;

            v141 = v75;
            if (v15)
            {
              v76 = v74 - [v75 bytes];
              v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v79 = v78;
              if (__OFADD__(v76, v15))
              {
                goto LABEL_225;
              }

              if (v76 + v15 < v76)
              {
                goto LABEL_230;
              }

              v80 = v77;
              v81 = Data._Representation.subscript.getter();
              v82 = v80;
              v84 = v83;
              v85 = v79;
              v86 = v81;
              outlined consume of Data._Representation(v82, v85);
            }

            else
            {
              v86 = 0;
              v84 = 0xC000000000000000;
            }

            type metadata accessor for PropertyListDecoder();
            swift_allocObject();
            v123 = PropertyListDecoder.init()();

            dispatch thunk of PropertyListDecoder.userInfo.setter();
            type metadata accessor for [LinkDestination.Configuration](0);
            lazy protocol witness table accessor for type [AccessibilityNodeAttachment.Kind?] and conformance <A> [A](&lazy protocol witness table cache variable for type [LinkDestination.Configuration] and conformance <A> [A], type metadata accessor for [LinkDestination.Configuration], lazy protocol witness table accessor for type LinkDestination.Configuration and conformance LinkDestination.Configuration);
            v139 = v123;
            v140 = v86;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            v14 = v160;
            if (!*(*&v158[0] + 16))
            {

              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();

              outlined consume of Data._Representation(v140, v84);

              goto LABEL_180;
            }

            v124 = v150;
            outlined init with copy of AccessibilityNodeAttachment.Storage(*&v158[0] + ((*(v148 + 80) + 32) & ~*(v148 + 80)), v150, type metadata accessor for LinkDestination.Configuration);

            outlined consume of Data._Representation(v140, v84);

            v146(v124, 0, 1, v149);
            outlined assign with take of AccessibilityNodeAttachment.Storage(v124, a2 + v155, type metadata accessor for LinkDestination.Configuration?);
            goto LABEL_8;
          case 0xBuLL:
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v34 = *a1;
            v160 = *(a1 + 16);
            v35 = *(a1 + 48);
            v141 = *(a1 + 40);
            v145 = v35;
            v36 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_180;
            }

            v15 = v36;
            if (v36 < 0)
            {
              goto LABEL_213;
            }

            v37 = *(a1 + 8);
            if (v160 < v37 + v36)
            {
              goto LABEL_179;
            }

            *(a1 + 8) = v37 + v36;
            v38 = v34;

            v140 = v38;
            if (v15)
            {
              v39 = v37 - [v38 bytes];
              v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v42 = v41;
              if (__OFADD__(v39, v15))
              {
                goto LABEL_227;
              }

              if (v39 + v15 < v39)
              {
                goto LABEL_228;
              }

              v43 = v40;
              v44 = Data._Representation.subscript.getter();
              v46 = v45;
              v47 = v42;
              v48 = v46;
              outlined consume of Data._Representation(v43, v47);
            }

            else
            {
              v44 = 0;
              v48 = 0xC000000000000000;
            }

            type metadata accessor for PropertyListDecoder();
            swift_allocObject();
            PropertyListDecoder.init()();

            dispatch thunk of PropertyListDecoder.userInfo.setter();
            type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [AccessibilityCustomAttributes], &type metadata for AccessibilityCustomAttributes, MEMORY[0x1E69E62F8]);
            lazy protocol witness table accessor for type [AccessibilityCustomAttributes] and conformance <A> [A]();
            v125 = v44;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            if (!*(*&v158[0] + 16))
            {

              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();

              outlined consume of Data._Representation(v44, v48);

              goto LABEL_180;
            }

            v126 = v48;
            v127 = *(*&v158[0] + 32);

            outlined consume of Data._Representation(v125, v126);

            v128 = v154;

            *(a2 + v128) = v127;
LABEL_155:
            v14 = v160;
            goto LABEL_8;
        }
      }

      else
      {
        switch(v25)
        {
          case 6uLL:
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v94 = *(a1 + 40);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
            }

            v96 = *(v94 + 2);
            v95 = *(v94 + 3);
            if (v96 >= v95 >> 1)
            {
              v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v94);
            }

            *(v94 + 2) = v96 + 1;
            *&v94[8 * v96 + 32] = v14;
            *(a1 + 40) = v94;
            v15 = a1;
            v97 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_180;
            }

            if (v97 < 0)
            {
              goto LABEL_209;
            }

            v98 = *(a1 + 8) + v97;
            if (v14 < v98)
            {
              goto LABEL_179;
            }

            *(a1 + 16) = v98;
            _s7SwiftUI30AccessibilityNullableOptionSetV4fromACyxGAA15ProtobufDecoderVz_tKcfCAA0c5TraitF0V_Tt1g5(a1, v158);
            v15 = *(a1 + 40);
            if (!*(v15 + 16))
            {
              goto LABEL_219;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v99 = *(v15 + 16);
              if (!v99)
              {
                goto LABEL_178;
              }
            }

            else
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              v99 = *(v15 + 16);
              if (!v99)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }
            }

            v144 = 0;
            v100 = v99 - 1;
            v14 = *(v15 + 8 * v100 + 32);
            *(v15 + 16) = v100;
            *(a1 + 40) = v15;
            *(a1 + 16) = v14;
            v152 = v158[0];
            goto LABEL_8;
          case 7uLL:
            v70 = v23 & 7;
            if (v70 == 5)
            {
              v133 = *(a1 + 8);
              if (v14 < (v133 + 1))
              {
                goto LABEL_179;
              }

              v134 = *v133;
              *(a1 + 8) = v133 + 1;
              v132 = v134;
            }

            else
            {
              if (v70 == 2)
              {
                v15 = a1;
                v131 = ProtobufDecoder.decodeVarint()();
                if (v2)
                {
                  goto LABEL_180;
                }

                if (v131 < 0)
                {
                  goto LABEL_233;
                }

                v71 = *(a1 + 8);
                if (v14 < v71 + v131)
                {
                  goto LABEL_179;
                }

                *(a1 + 24) = 57;
                *(a1 + 32) = v71 + v131;
              }

              else
              {
                if (v70 != 1)
                {
                  goto LABEL_179;
                }

                v71 = *(a1 + 8);
              }

              if (v14 < (v71 + 1))
              {
                goto LABEL_179;
              }

              v132 = *v71;
              *(a1 + 8) = v71 + 1;
            }

            *(a2 + 112) = v132;
            *(a2 + 120) = 0;
            goto LABEL_8;
          case 8uLL:
            if ((v23 & 7) == 2)
            {
              v15 = a1;
              v116 = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                goto LABEL_180;
              }

              if (v116 < 0)
              {
                goto LABEL_232;
              }

              v26 = *(a1 + 8);
              if (v14 < v26 + v116)
              {
                goto LABEL_179;
              }

              *(a1 + 24) = 65;
              *(a1 + 32) = v26 + v116;
            }

            else
            {
              if ((v23 & 7) != 1)
              {
                goto LABEL_179;
              }

              v26 = *(a1 + 8);
            }

            v117 = v26 + 1;
            if (v14 < (v26 + 1))
            {
              goto LABEL_179;
            }

            v118 = *v26;
            *(a1 + 8) = v117;
            *(a2 + 128) = v118;
            *(a2 + 136) = 0;
            goto LABEL_8;
        }
      }

      v114 = v23 & 7;
      if (v114 > 1)
      {
        if (v114 == 2)
        {
          v15 = a1;
          v135 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_180;
          }

          if (v135 < 0)
          {
            goto LABEL_234;
          }

          v115 = *(a1 + 8) + v135;
          if (v14 < v115)
          {
            goto LABEL_179;
          }
        }

        else
        {
          if (v114 != 5)
          {
            goto LABEL_179;
          }

          v115 = *(a1 + 8) + 4;
          if (v14 < v115)
          {
            goto LABEL_179;
          }
        }
      }

      else
      {
        if ((v23 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_180;
          }

          goto LABEL_8;
        }

        if (v114 != 1)
        {
          goto LABEL_179;
        }

        v115 = *(a1 + 8) + 8;
        if (v14 < v115)
        {
          goto LABEL_179;
        }
      }

      *(a1 + 8) = v115;
LABEL_8:
      v13 = *(a1 + 8);
      if (v13 >= v14)
      {
        *(a1 + 24) = 0;
        if ((v143 | v144))
        {
          goto LABEL_179;
        }

        *(a2 + 84) = v142;
        *(a2 + 96) = v152;
        return;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_179:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_180:

LABEL_181:
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(*(a2 + 16), *(a2 + 24), *(a2 + 32) | (*(a2 + 34) << 16));
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(*(a2 + 40), *(a2 + 48), *(a2 + 56) | (*(a2 + 58) << 16));
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(*(a2 + 64), *(a2 + 72), *(a2 + 80) | (*(a2 + 82) << 16));
  memcpy(v158, (a2 + 144), 0x108uLL);
  outlined destroy of AccessibilityValueStorage?(v158, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration);
  outlined destroy of CodableAccessibilityAttachmentStorage(a2 + v155, type metadata accessor for LinkDestination.Configuration?);
}

double _s7SwiftUI43CodableAccessibilityDataSeriesConfigurationVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_18D34F1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0C18ResolvedStyledTextV_AA0dL0VTt1g5(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    goto LABEL_56;
  }

  v37 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 16711680;
  while (1)
  {
    v10 = a1[3];
    if (v10)
    {
      v11 = a1[4];
      if (v5 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v5)
      {
        goto LABEL_57;
      }

      a1[3] = 0;
    }

    v10 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_62;
    }

    if (v10 < 8)
    {
      goto LABEL_57;
    }

LABEL_11:
    if (v10 >> 3 == 3)
    {
      break;
    }

    if (v10 >> 3 == 2)
    {
      if ((v10 & 7) != 2)
      {
        goto LABEL_57;
      }

      v12 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v3 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v3 >= v13 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v3 + 1, 1, v12);
      }

      *(v12 + 2) = v3 + 1;
      *&v12[8 * v3 + 32] = v6;
      a1[5] = v12;
      v14 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_62;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = a1[1] + v14;
        if (v6 < v15)
        {
          goto LABEL_57;
        }

        a1[2] = v15;
        v16 = CodableResolvedStyledText.init(from:)(a1);
        v17 = a1[5];
        if (!*(v17 + 2))
        {
          goto LABEL_69;
        }

        v18 = v16;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = *(v17 + 2);
          if (!v19)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v19 = *(v17 + 2);
          if (!v19)
          {
            goto LABEL_71;
          }
        }

        v20 = v19 - 1;
        v6 = *&v17[8 * v20 + 32];
        *(v17 + 2) = v20;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
        v9 = 0;
        a1[5] = v17;
        a1[2] = v6;
        v7 = v18;
        LOBYTE(v35[0]) = 0;
        goto LABEL_4;
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      __break(1u);
      do
      {
        __break(1u);
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v32 = *(v3 + 16);
        if (v32)
        {
          goto LABEL_66;
        }

        __break(1u);
        v3 = a1[5];
      }

      while (!*(v3 + 16));
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v32 = *(v3 + 16);
        if (v32)
        {
LABEL_66:
          v33 = v32 - 1;
          v34 = *(v3 + 8 * v33 + 32);
          *(v3 + 16) = v33;
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
          a1[5] = v3;
          a1[2] = v34;
          return;
        }
      }

      else
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v32 = *(v3 + 16);
        if (v32)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
      return;
    }

    v28 = v10 & 7;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v30 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_62;
        }

        if (v30 < 0)
        {
          goto LABEL_72;
        }

        v29 = a1[1] + v30;
        if (v6 < v29)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v28 != 5)
        {
          goto LABEL_57;
        }

        v29 = a1[1] + 4;
        if (v6 < v29)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_62;
        }

        goto LABEL_4;
      }

      if (v28 != 1)
      {
        goto LABEL_57;
      }

      v29 = a1[1] + 8;
      if (v6 < v29)
      {
        goto LABEL_57;
      }
    }

    a1[1] = v29;
LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      a1[3] = 0;
      if (BYTE2(v9) != 255)
      {
        v31 = v37;
        *v37 = v7;
        v31[1] = v8;
        *(v31 + 8) = v9;
        *(v31 + 18) = BYTE2(v9) & 1;
        return;
      }

LABEL_57:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
      return;
    }
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_61;
  }

  v21 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
  }

  v3 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v3 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v3 + 1, 1, v21);
  }

  *(v21 + 2) = v3 + 1;
  *&v21[8 * v3 + 32] = v6;
  a1[5] = v21;
  v23 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_62;
  }

  if (v23 < 0)
  {
    goto LABEL_68;
  }

  v24 = a1[1] + v23;
  if (v6 >= v24)
  {
    a1[2] = v24;
    AccessibilityText.init(from:)(a1, v35);
    v25 = a1[5];
    if (!*(v25 + 2))
    {
      goto LABEL_70;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = *(v25 + 2);
      if (!v26)
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    }

    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
    v26 = *(v25 + 2);
    if (v26)
    {
LABEL_36:
      v27 = v26 - 1;
      v6 = *&v25[8 * v27 + 32];
      *(v25 + 2) = v27;
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
      a1[5] = v25;
      a1[2] = v6;
      v7 = v35[0];
      v8 = v35[1];
      v9 = v36 | 0x10000;
      goto LABEL_4;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v7 = 0;
    v8 = 0;
    a1[3] = 0;
    v9 = 16711680;
    goto LABEL_57;
  }

LABEL_61:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_62:
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
}

void AccessibilityText.init(from:)(unint64_t a1@<X0>, void *a2@<X8>)
{
  LOBYTE(v3) = v2;
  v47 = a2;
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    v49 = 0;
    v9 = 0;
    LOBYTE(v10) = 0;
    v11 = 0xE000000000000000;
LABEL_4:
    *(a1 + 24) = 0;
    v12 = v49;
    v13 = v47;
    *v47 = v9;
    v13[1] = v11;
    *(v13 + 16) = v10 & 1;
    *(v13 + 17) = v12;
    return;
  }

  v49 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0xE000000000000000;
  while (1)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 32);
      if (v7 < v17)
      {
        goto LABEL_15;
      }

      if (v17 < v7)
      {
        goto LABEL_64;
      }

      *(a1 + 24) = 0;
    }

    v16 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_65;
    }

    if (v16 < 8)
    {
      goto LABEL_64;
    }

LABEL_15:
    v18 = v16 >> 3;
    if (v16 >> 3 == 3)
    {
      if ((v16 & 7) != 0)
      {
        if ((v16 & 7) != 2)
        {
          goto LABEL_64;
        }

        v32 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
LABEL_65:
          outlined consume of AccessibilityText.Storage(v9, v11, v10 & 1);
          return;
        }

        if (v32 < 0)
        {
          goto LABEL_74;
        }

        v33 = *(a1 + 8) + v32;
        if (v8 < v33)
        {
          goto LABEL_64;
        }

        *(a1 + 24) = 24;
        *(a1 + 32) = v33;
      }

      v34 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_65;
      }

      v49 = v34 != 0;
      goto LABEL_8;
    }

    if (v18 == 2)
    {
      break;
    }

    if (v18 == 1)
    {
      if ((v16 & 7) != 2)
      {
        goto LABEL_64;
      }

      v19 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_65;
      }

      v3 = v19;
      if (v19 < 0)
      {
        goto LABEL_69;
      }

      v20 = *(a1 + 8);
      if (v8 < v20 + v19)
      {
LABEL_64:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of AccessibilityText.Storage(v9, v11, v10 & 1);
        return;
      }

      v46 = v11;
      *(a1 + 8) = v20 + v19;
      if (v19)
      {
        v21 = *a1;
        v22 = v20 - [v21 bytes];
        v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v24;
        if (__OFADD__(v22, v3))
        {
          goto LABEL_72;
        }

        if (v22 + v3 < v22)
        {
          goto LABEL_73;
        }

        v25 = v23;
        v3 = Data._Representation.subscript.getter();
        v27 = v26;
        outlined consume of Data._Representation(v25, v11);
      }

      else
      {
        v27 = 0xC000000000000000;
      }

      static String.Encoding.utf8.getter();
      v37 = String.init(data:encoding:)();
      if (!v38)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of AccessibilityText.Storage(v9, v46, v10 & 1);
        outlined consume of Data._Representation(v3, v27);
        return;
      }

      v39 = v37;
      v40 = v38;
      outlined consume of Data._Representation(v3, v27);
      outlined consume of AccessibilityText.Storage(v9, v46, v10 & 1);
      v10 = 0;
      v9 = v39;
      v11 = v40;
      goto LABEL_7;
    }

    v35 = v16 & 7;
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v41 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_65;
        }

        if (v41 < 0)
        {
          goto LABEL_75;
        }

        v36 = *(a1 + 8) + v41;
        if (v8 < v36)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v35 != 5)
        {
          goto LABEL_64;
        }

        v36 = *(a1 + 8) + 4;
        if (v8 < v36)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_63;
    }

    if ((v16 & 7) != 0)
    {
      if (v35 != 1)
      {
        goto LABEL_64;
      }

      v36 = *(a1 + 8) + 8;
      if (v8 < v36)
      {
        goto LABEL_64;
      }

LABEL_63:
      *(a1 + 8) = v36;
      goto LABEL_8;
    }

    ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_65;
    }

LABEL_8:
    v7 = *(a1 + 8);
    if (v7 >= v8)
    {
      goto LABEL_4;
    }
  }

  if ((v16 & 7) != 2)
  {
    goto LABEL_64;
  }

  v3 = *(a1 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
  }

  v29 = *(v3 + 16);
  v28 = *(v3 + 24);
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v3);
  }

  *(v3 + 16) = v29 + 1;
  *(v3 + 8 * v29 + 32) = v8;
  *(a1 + 40) = v3;
  v30 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_65;
  }

  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = *(a1 + 8) + v30;
    if (v8 < v31)
    {
      goto LABEL_64;
    }

    *(a1 + 16) = v31;
    CodableAttributedString.init(from:)(a1, &v50);
    v3 = *(a1 + 40);
    if (!*(v3 + 16))
    {
      goto LABEL_70;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = *(v3 + 16);
      if (!v14)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v14 = *(v3 + 16);
      if (!v14)
      {
        goto LABEL_71;
      }
    }

    v15 = v14 - 1;
    v8 = *(v3 + 8 * v15 + 32);
    *(v3 + 16) = v15;
    outlined consume of AccessibilityText.Storage(v9, v11, v10 & 1);
    v11 = 0;
    *(a1 + 40) = v3;
    *(a1 + 16) = v8;
    v10 = 1;
    v9 = v50;
LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  __break(1u);
  v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v45 = *(v44 + 2);
  if (v45)
  {
    v42 = v45 - 1;
    v43 = *&v44[8 * v42 + 32];
    *(v44 + 2) = v42;
    outlined consume of AccessibilityText.Storage(v10, v11, v3 & 1);
    *(a1 + 40) = v44;
    *(a1 + 16) = v43;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CodableAttributedString.Range.init(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ResolvableTextSegmentAttribute.Value?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v340 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v354 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357);
  v353 = &v340 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v355 = &v340 - v10;
  v11 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v359 = &v340 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = 0uLL;
  v371 = MEMORY[0x1E69E7CC8];
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 48);
  v365 = *a1;
  v366 = v13;
  v367 = v14;
  v368 = *(a1 + 32);
  v369 = v15;
  v358 = ProtobufDecoder.preferredBundleLanguage.getter();
  v17 = v16;
  v364 = 0;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  if (v18 >= v19)
  {
    v374 = 0;
    v360 = 0;
LABEL_4:
    *(a1 + 24) = 0;
    if (v17)
    {
      v20 = v17;
      v21 = *MEMORY[0x1E696A518];
      *&v367 = MEMORY[0x1E69E6158];
      *&v365 = v358;
      *(&v365 + 1) = v20;
      outlined init with take of Any(&v365, v363);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v362 = v371;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v21, isUniquelyReferenced_nonNull_native);
      v371 = v362;
    }

    if (__OFADD__(v360, v374))
    {
      goto LABEL_284;
    }

    result = swift_beginAccess();
    if (v364)
    {
      v24 = one-time initialization token for resolvableTextSegment;
      v25 = v364;
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = static NSAttributedStringKey.resolvableTextSegment;
      v27 = v371;
      if (*(v371 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.resolvableTextSegment), (v29 & 1) != 0))
      {
        outlined init with copy of Any(*(v27 + 56) + 32 * v28, &v365);
        v30 = v357;
        v31 = swift_dynamicCast();
        v32 = v354;
        (*(v354 + 56))(v7, v31 ^ 1u, 1, v30);
        if ((*(v32 + 48))(v7, 1, v30) != 1)
        {
          v33 = v353;
          outlined init with take of ResolvableTextSegmentAttribute.Value(v7, v353, type metadata accessor for ResolvableTextSegmentAttribute.Value);
          v34 = v30;
          v35 = *(v30 + 20);

          *(v33 + v35) = v25;
          v367 = v34;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v365);
          outlined init with copy of ResolvableTextSegmentAttribute.Value(v33, boxed_opaque_existential_1, type metadata accessor for ResolvableTextSegmentAttribute.Value);
          outlined init with take of Any(&v365, v363);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v361 = v371;
          v371 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v26, v37);

          v371 = v361;

          result = outlined destroy of ResolvableTextSegmentAttribute.Value?(v33, type metadata accessor for ResolvableTextSegmentAttribute.Value);
          goto LABEL_291;
        }
      }

      else
      {
        v30 = v357;
        (*(v354 + 56))(v7, 1, 1, v357);
      }

      outlined destroy of ResolvableTextSegmentAttribute.Value?(v7, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
      v367 = v30;
      v336 = __swift_allocate_boxed_opaque_existential_1(&v365);
      static ResolvableTextSegmentAttribute.legacySegment(resolvableAttributeKey:length:)(v25, v374, v336);
      outlined init with take of Any(&v365, v363);
      v337 = swift_isUniquelyReferenced_nonNull_native();
      v361 = v371;
      v371 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v26, v337);

      v371 = v361;
    }

LABEL_291:
    v338 = v371;
    *a2 = v370;
    *(a2 + 16) = v338;
    return result;
  }

  v360 = 0;
  v374 = 0;
  v346 = *MEMORY[0x1E69DB720];
  v345 = "peechAttributeIPANotation";
  v344 = "extAttributeContext";
  v351 = @"UIAccessibilityTokenDurationTimeMMSS";
  v350 = "UIAccessibilityTokenLink";
  v343 = "peechAttributeSpellOut";
  v342 = "nouncementPriority";
  v349 = "extAttributeHeadingLevel";
  v348 = "peechAttributePunctuation";
  v352 = *MEMORY[0x1E69DB5F0];
  v347 = "peechAttributePitch";
  v356 = v7;
  while (1)
  {
    v39 = *(a1 + 24);
    if (v39)
    {
      v40 = *(a1 + 32);
      if (v18 < v40)
      {
        goto LABEL_25;
      }

      if (v40 < v18)
      {
        goto LABEL_283;
      }

      *(a1 + 24) = 0;
    }

    v39 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
LABEL_286:

LABEL_287:
    }

    if (v39 < 8)
    {
LABEL_283:

LABEL_284:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      goto LABEL_285;
    }

LABEL_25:
    switch(v39 >> 3)
    {
      case 1uLL:
        if ((v39 & 7) == 0)
        {
          goto LABEL_32;
        }

        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        v41 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v41 < 0)
        {
          goto LABEL_321;
        }

        v42 = *(a1 + 8) + v41;
        if (v19 < v42)
        {
          goto LABEL_283;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v42;
LABEL_32:
        v43 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v43 < 0)
        {
          goto LABEL_304;
        }

        v360 = v43;
        *&v370 = v43;
        goto LABEL_18;
      case 2uLL:
        if ((v39 & 7) == 0)
        {
          goto LABEL_184;
        }

        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        v221 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v221 < 0)
        {
          goto LABEL_322;
        }

        v222 = *(a1 + 8) + v221;
        if (v19 < v222)
        {
          goto LABEL_283;
        }

        *(a1 + 24) = 16;
        *(a1 + 32) = v222;
LABEL_184:
        v223 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v223 < 0)
        {
          goto LABEL_303;
        }

        v374 = v223;
        *(&v370 + 1) = v223;
        goto LABEL_18;
      case 3uLL:
        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        v198 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v198 + 2) + 1, 1, v198);
        }

        v200 = *(v198 + 2);
        v199 = *(v198 + 3);
        if (v200 >= v199 >> 1)
        {
          v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v199 > 1), v200 + 1, 1, v198);
        }

        *(v198 + 2) = v200 + 1;
        *&v198[8 * v200 + 32] = v19;
        *(a1 + 40) = v198;
        v201 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v201 < 0)
        {
          goto LABEL_300;
        }

        v202 = *(a1 + 8) + v201;
        if (v19 < v202)
        {
          goto LABEL_283;
        }

        *(a1 + 16) = v202;
        v203 = *(a1 + 48);
        swift_bridgeObjectRetain_n();
        v204 = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA19CodablePlatformFontV_Tt0g503_s7a4UI15cd9V21decodef42MessagexyKAA0c9DecodableG0RzAA0c9Encodableu18RzlFx10Foundation4k11VKXEfU_AA19lmN5V_TG5SDys17CodingUserInfoKeyVypGTf1cn_n(a1, v203);

        if (!*(*(a1 + 40) + 16))
        {
          goto LABEL_309;
        }

        v205 = specialized Array._customRemoveLast()();
        v341 = v17;
        if (!v205)
        {
          v205 = specialized Array.remove(at:)(*(*(a1 + 40) + 16) - 1);
        }

        v153 = a2;
        *(a1 + 16) = v205;
        if (one-time initialization token for kitFont != -1)
        {
          swift_once();
        }

        v206 = static NSAttributedStringKey.kitFont;
        type metadata accessor for CTFontRef(0);
        v367 = v207;
        *&v365 = v204;
        outlined init with take of Any(&v365, v363);
        v208 = v204;
        v209 = swift_isUniquelyReferenced_nonNull_native();
        v210 = v371;
        v362 = v371;
        v371 = 0x8000000000000000;
        v211 = specialized __RawDictionaryStorage.find<A>(_:)(v206);
        v213 = v212;
        v214 = *(v210 + 16);
        v215 = (v212 & 1) == 0;
        if (__OFADD__(v214, v215))
        {
          goto LABEL_315;
        }

        v216 = v211;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v209, v214 + v215, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_174;
        }

        v217 = specialized __RawDictionaryStorage.find<A>(_:)(v206);
        if ((v213 & 1) != (v218 & 1))
        {
          goto LABEL_329;
        }

        v216 = v217;
LABEL_174:
        v219 = v362;
        if (v213)
        {
          v220 = (v362[7] + 32 * v216);
          __swift_destroy_boxed_opaque_existential_1(v220);
          outlined init with take of Any(v363, v220);
        }

        else
        {
          v362[(v216 >> 6) + 8] |= 1 << v216;
          *(v219[6] + 8 * v216) = v206;
          outlined init with take of Any(v363, (v219[7] + 32 * v216));
          v310 = v206;

          v311 = v219[2];
          v102 = __OFADD__(v311, 1);
          v312 = v311 + 1;
          if (v102)
          {
            goto LABEL_325;
          }

          v219[2] = v312;
        }

        v7 = v356;
        v371 = v219;

        goto LABEL_271;
      case 4uLL:
        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        v116 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 2) + 1, 1, v116);
        }

        v118 = *(v116 + 2);
        v117 = *(v116 + 3);
        if (v118 >= v117 >> 1)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v116);
        }

        *(v116 + 2) = v118 + 1;
        *&v116[8 * v118 + 32] = v19;
        *(a1 + 40) = v116;
        v119 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v119 < 0)
        {
          goto LABEL_302;
        }

        v120 = *(a1 + 8) + v119;
        if (v19 < v120)
        {
          goto LABEL_283;
        }

        *(a1 + 16) = v120;
        specialized Color.Resolved.init(from:)(a1);
        if (!*(*(a1 + 40) + 16))
        {
          goto LABEL_308;
        }

        v125 = v121;
        v126 = v122;
        v127 = v123;
        v128 = v124;
        v129 = specialized Array._customRemoveLast()();
        if (!v129)
        {
          v129 = specialized Array.remove(at:)(*(*(a1 + 40) + 16) - 1);
        }

        *(a1 + 16) = v129;
        if (one-time initialization token for kitForegroundColor != -1)
        {
          swift_once();
        }

        v130 = static NSAttributedStringKey.kitForegroundColor;
        if (one-time initialization token for cache != -1)
        {
          swift_once();
        }

        specialized ObjectCache.subscript.getter(specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), v125, v126, v127, v128);
        v132 = v131;
        *&v367 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject));
        *&v365 = v132;
        outlined init with take of Any(&v365, v363);
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v134 = v371;
        v362 = v371;
        v371 = 0x8000000000000000;
        v135 = specialized __RawDictionaryStorage.find<A>(_:)(v130);
        v137 = v136;
        v138 = *(v134 + 16);
        v139 = (v136 & 1) == 0;
        if (__OFADD__(v138, v139))
        {
          goto LABEL_313;
        }

        v140 = v135;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v133, v138 + v139, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_108;
        }

        v141 = specialized __RawDictionaryStorage.find<A>(_:)(v130);
        if ((v137 & 1) != (v142 & 1))
        {
          goto LABEL_329;
        }

        v140 = v141;
LABEL_108:
        v143 = v362;
        if (v137)
        {
          v144 = (v362[7] + 32 * v140);
          __swift_destroy_boxed_opaque_existential_1(v144);
          outlined init with take of Any(v363, v144);
        }

        else
        {
          v362[(v140 >> 6) + 8] |= 1 << v140;
          *(v143[6] + 8 * v140) = v130;
          outlined init with take of Any(v363, (v143[7] + 32 * v140));
          v307 = v143[2];
          v102 = __OFADD__(v307, 1);
          v308 = v307 + 1;
          if (v102)
          {
            goto LABEL_326;
          }

          v143[2] = v308;
          v309 = v130;
        }

        goto LABEL_274;
      case 5uLL:
        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        v145 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 2) + 1, 1, v145);
        }

        v147 = *(v145 + 2);
        v146 = *(v145 + 3);
        if (v147 >= v146 >> 1)
        {
          v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v146 > 1), v147 + 1, 1, v145);
        }

        *(v145 + 2) = v147 + 1;
        *&v145[8 * v147 + 32] = v19;
        *(a1 + 40) = v145;
        v148 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v148 < 0)
        {
          goto LABEL_301;
        }

        v149 = *(a1 + 8) + v148;
        if (v19 < v149)
        {
          goto LABEL_283;
        }

        *(a1 + 16) = v149;
        v150 = specialized CodableNSParagraphStyle.init(from:)(a1);
        v341 = v17;
        v151 = *(a1 + 40);
        if (!*(v151 + 2))
        {
          goto LABEL_310;
        }

        v152 = v150;
        v153 = a2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v154 = *(v151 + 2);
          if (!v154)
          {
            goto LABEL_314;
          }
        }

        else
        {
          v151 = specialized _ArrayBuffer._consumeAndCreateNew()(v151);
          v154 = *(v151 + 2);
          if (!v154)
          {
            goto LABEL_314;
          }
        }

        v155 = v154 - 1;
        v156 = *&v151[8 * v155 + 32];
        *(v151 + 2) = v155;
        *(a1 + 40) = v151;
        *(a1 + 16) = v156;
        if (one-time initialization token for kitParagraphStyle != -1)
        {
          swift_once();
        }

        v157 = static NSAttributedStringKey.kitParagraphStyle;
        *&v367 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSParagraphStyle));
        *&v365 = v152;
        outlined init with take of Any(&v365, v363);
        v158 = v152;
        v159 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v371;
        v362 = v371;
        v371 = 0x8000000000000000;
        v161 = specialized __RawDictionaryStorage.find<A>(_:)(v157);
        v163 = v162;
        v164 = *(v160 + 16);
        v165 = (v162 & 1) == 0;
        if (__OFADD__(v164, v165))
        {
          goto LABEL_316;
        }

        v166 = v161;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v159, v164 + v165, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v167 = specialized __RawDictionaryStorage.find<A>(_:)(v157);
          if ((v163 & 1) != (v168 & 1))
          {
            goto LABEL_329;
          }

          v166 = v167;
        }

        v169 = v362;
        if (v163)
        {
          v170 = (v362[7] + 32 * v166);
          __swift_destroy_boxed_opaque_existential_1(v170);
          outlined init with take of Any(v363, v170);
        }

        else
        {
          v362[(v166 >> 6) + 8] |= 1 << v166;
          *(v169[6] + 8 * v166) = v157;
          outlined init with take of Any(v363, (v169[7] + 32 * v166));
          v313 = v157;

          v314 = v169[2];
          v102 = __OFADD__(v314, 1);
          v315 = v314 + 1;
          if (v102)
          {
            goto LABEL_328;
          }

          v169[2] = v315;
        }

        v7 = v356;
        v371 = v169;

LABEL_271:
        a2 = v153;
        v17 = v341;
        goto LABEL_18;
      case 6uLL:
        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_286;
        }

        v226 = specialized CodableTextAttachment.init(from:)(a1);
        v341 = v17;
        v227 = *(a1 + 40);
        if (!*(v227 + 2))
        {
          goto LABEL_305;
        }

        v228 = v226;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v229 = *(v227 + 2);
          if (!v229)
          {
            goto LABEL_306;
          }
        }

        else
        {
          v227 = specialized _ArrayBuffer._consumeAndCreateNew()(v227);
          v229 = *(v227 + 2);
          if (!v229)
          {
            goto LABEL_306;
          }
        }

        v230 = v229 - 1;
        v231 = *&v227[8 * v230 + 32];
        *(v227 + 2) = v230;
        *(a1 + 40) = v227;
        *(a1 + 16) = v231;
        if (one-time initialization token for kitAttachment != -1)
        {
          swift_once();
        }

        v232 = static NSAttributedStringKey.kitAttachment;
        *&v367 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextAttachment));
        *&v365 = v228;
        outlined init with take of Any(&v365, v363);
        v233 = v228;
        v234 = swift_isUniquelyReferenced_nonNull_native();
        v235 = v371;
        v362 = v371;
        v371 = 0x8000000000000000;
        v236 = specialized __RawDictionaryStorage.find<A>(_:)(v232);
        v238 = v237;
        v239 = *(v235 + 16);
        v240 = (v237 & 1) == 0;
        if (__OFADD__(v239, v240))
        {
          goto LABEL_307;
        }

        v241 = v236;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v234, v239 + v240, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v242 = specialized __RawDictionaryStorage.find<A>(_:)(v232);
          if ((v238 & 1) != (v243 & 1))
          {
            goto LABEL_329;
          }

          v241 = v242;
        }

        v244 = v362;
        if (v238)
        {
          v245 = (v362[7] + 32 * v241);
          __swift_destroy_boxed_opaque_existential_1(v245);
          outlined init with take of Any(v363, v245);
        }

        else
        {
          v362[(v241 >> 6) + 8] |= 1 << v241;
          *(v244[6] + 8 * v241) = v232;
          outlined init with take of Any(v363, (v244[7] + 32 * v241));
          v304 = v244[2];
          v102 = __OFADD__(v304, 1);
          v305 = v304 + 1;
          if (v102)
          {
            goto LABEL_324;
          }

          v244[2] = v305;
          v306 = v232;
        }

        v371 = v244;

        v17 = v341;
        goto LABEL_275;
      case 7uLL:
        if (one-time initialization token for kitBaselineOffset != -1)
        {
          v324 = v39;
          swift_once();
          v39 = v324;
        }

        *&v363[0] = v39;
        v87 = static NSAttributedStringKey.kitBaselineOffset;
        v88 = ProtobufDecoder.doubleField(_:)(v363);
        if (v89)
        {
          goto LABEL_294;
        }

        *&v367 = MEMORY[0x1E69E7DE0];
        *&v365 = v88;
        outlined init with take of Any(&v365, v363);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v91 = v371;
        v362 = v371;
        v371 = 0x8000000000000000;
        v92 = specialized __RawDictionaryStorage.find<A>(_:)(v87);
        v94 = v93;
        v95 = *(v91 + 16);
        v96 = (v93 & 1) == 0;
        if (__OFADD__(v95, v96))
        {
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
          __break(1u);
LABEL_329:
          type metadata accessor for NSAttributedStringKey(0);
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          JUMPOUT(0x18D352630);
        }

        v97 = v92;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v90, v95 + v96, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v98 = specialized __RawDictionaryStorage.find<A>(_:)(v87);
          if ((v94 & 1) != (v99 & 1))
          {
            goto LABEL_329;
          }

          v97 = v98;
        }

        v100 = v362;
        if (v94)
        {
          goto LABEL_14;
        }

        v362[(v97 >> 6) + 8] |= 1 << v97;
        *(v100[6] + 8 * v97) = v87;
        outlined init with take of Any(v363, (v100[7] + 32 * v97));
        v101 = v100[2];
        v102 = __OFADD__(v101, 1);
        v103 = v101 + 1;
        if (v102)
        {
          goto LABEL_319;
        }

        goto LABEL_153;
      case 8uLL:
        if (one-time initialization token for kitKern != -1)
        {
          v325 = v39;
          swift_once();
          v39 = v325;
        }

        *&v363[0] = v39;
        v87 = static NSAttributedStringKey.kitKern;
        v104 = ProtobufDecoder.doubleField(_:)(v363);
        if (v105)
        {
          goto LABEL_294;
        }

        *&v367 = MEMORY[0x1E69E7DE0];
        *&v365 = v104;
        outlined init with take of Any(&v365, v363);
        v106 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v371;
        v362 = v371;
        v371 = 0x8000000000000000;
        v108 = specialized __RawDictionaryStorage.find<A>(_:)(v87);
        v110 = v109;
        v111 = *(v107 + 16);
        v112 = (v109 & 1) == 0;
        if (__OFADD__(v111, v112))
        {
          goto LABEL_297;
        }

        v97 = v108;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v106, v111 + v112, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_85;
        }

        v113 = specialized __RawDictionaryStorage.find<A>(_:)(v87);
        if ((v110 & 1) != (v114 & 1))
        {
          goto LABEL_329;
        }

        v97 = v113;
LABEL_85:
        v100 = v362;
        if (v110)
        {
          goto LABEL_14;
        }

        v362[(v97 >> 6) + 8] |= 1 << v97;
        *(v100[6] + 8 * v97) = v87;
        outlined init with take of Any(v363, (v100[7] + 32 * v97));
        v115 = v100[2];
        v102 = __OFADD__(v115, 1);
        v103 = v115 + 1;
        if (!v102)
        {
          goto LABEL_153;
        }

        goto LABEL_318;
      case 9uLL:
        if (one-time initialization token for kitTracking != -1)
        {
          v326 = v39;
          swift_once();
          v39 = v326;
        }

        *&v363[0] = v39;
        v87 = static NSAttributedStringKey.kitTracking;
        v181 = ProtobufDecoder.doubleField(_:)(v363);
        if (v182)
        {
LABEL_294:
          v339 = v364;

          goto LABEL_287;
        }

        *&v367 = MEMORY[0x1E69E7DE0];
        *&v365 = v181;
        outlined init with take of Any(&v365, v363);
        v183 = swift_isUniquelyReferenced_nonNull_native();
        v184 = v371;
        v362 = v371;
        v371 = 0x8000000000000000;
        v185 = specialized __RawDictionaryStorage.find<A>(_:)(v87);
        v187 = v186;
        v188 = *(v184 + 16);
        v189 = (v186 & 1) == 0;
        if (__OFADD__(v188, v189))
        {
          goto LABEL_298;
        }

        v97 = v185;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v183, v188 + v189, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v190 = specialized __RawDictionaryStorage.find<A>(_:)(v87);
          if ((v187 & 1) != (v191 & 1))
          {
            goto LABEL_329;
          }

          v97 = v190;
        }

        v100 = v362;
        if (v187)
        {
LABEL_14:
          v38 = (v100[7] + 32 * v97);
          __swift_destroy_boxed_opaque_existential_1(v38);
          outlined init with take of Any(v363, v38);
        }

        else
        {
          v362[(v97 >> 6) + 8] |= 1 << v97;
          *(v100[6] + 8 * v97) = v87;
          outlined init with take of Any(v363, (v100[7] + 32 * v97));
          v192 = v100[2];
          v102 = __OFADD__(v192, 1);
          v103 = v192 + 1;
          if (v102)
          {
            goto LABEL_320;
          }

LABEL_153:
          v100[2] = v103;
        }

        v7 = v356;
        v371 = v100;
LABEL_16:

LABEL_17:
        v2 = 0;
LABEL_18:
        v18 = *(a1 + 8);
        v19 = *(a1 + 16);
        if (v18 >= v19)
        {
          goto LABEL_4;
        }

        break;
      case 0xAuLL:
        if ((v39 & 7) == 0)
        {
          goto LABEL_139;
        }

        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        v176 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v176 < 0)
        {
          goto LABEL_323;
        }

        v177 = *(a1 + 8) + v176;
        if (v19 < v177)
        {
          goto LABEL_283;
        }

        *(a1 + 24) = 80;
        *(a1 + 32) = v177;
LABEL_139:
        v178 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (one-time initialization token for kitStrikethroughStyle != -1)
        {
          v335 = v178;
          swift_once();
          v178 = v335;
        }

        v76 = -(v178 & 1) ^ (v178 >> 1);
        v77 = static NSAttributedStringKey.kitStrikethroughStyle;
LABEL_143:
        v179 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        *&v367 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber));
        *&v365 = v179;
        outlined init with take of Any(&v365, v363);
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v362 = v371;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v77, v180);
        v371 = v362;
        v2 = 0;
        goto LABEL_18;
      case 0xBuLL:
        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        specialized ProtobufDecoder.decodeMessage<A>()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (one-time initialization token for kitStrikethroughStyle != -1)
        {
          v331 = v69;
          v332 = v70;
          v333 = v71;
          v334 = v72;
          swift_once();
          v72 = v334;
          v71 = v333;
          v70 = v332;
          v69 = v331;
        }

        v73 = static NSAttributedStringKey.kitStrikethroughStyle;
        goto LABEL_226;
      case 0xCuLL:
        *&v365 = v39;
        v74 = ProtobufDecoder.intField(_:)(&v365);
        if (v75)
        {
          goto LABEL_286;
        }

        v76 = v74;
        if (one-time initialization token for kitUnderlineStyle != -1)
        {
          swift_once();
        }

        v77 = static NSAttributedStringKey.kitUnderlineStyle;
        goto LABEL_143;
      case 0xDuLL:
        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        specialized ProtobufDecoder.decodeMessage<A>()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (one-time initialization token for kitUnderlineColor != -1)
        {
          v327 = v69;
          v328 = v70;
          v329 = v71;
          v330 = v72;
          swift_once();
          v72 = v330;
          v71 = v329;
          v70 = v328;
          v69 = v327;
        }

        v73 = static NSAttributedStringKey.kitUnderlineColor;
LABEL_226:
        if (one-time initialization token for cache != -1)
        {
          v320 = v69;
          v321 = v70;
          v322 = v71;
          v323 = v72;
          swift_once();
          v72 = v323;
          v71 = v322;
          v70 = v321;
          v69 = v320;
        }

        specialized ObjectCache.subscript.getter(specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), v69, v70, v71, v72);
        v270 = v269;
        *&v367 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject));
        *&v365 = v270;
        outlined init with take of Any(&v365, v363);
        v271 = swift_isUniquelyReferenced_nonNull_native();
        v362 = v371;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v73, v271);
        v371 = v362;
        v2 = 0;
        goto LABEL_18;
      case 0xEuLL:
        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(&v365);
        if (v2)
        {
          goto LABEL_286;
        }

        v272 = *&v367;
        v273 = v368;
        v274 = specialized static CoreColor.platformColor(resolvedColor:)(*&v365, *(&v365 + 1), *(&v365 + 2), *(&v365 + 3));
        if (!v274)
        {
          goto LABEL_17;
        }

        v275 = v274;
        v276 = CoreMakeNSShadow(v274, *&v273, *(&v273 + 1), v272);
        if (!v276)
        {

          goto LABEL_17;
        }

        v277 = v276;
        if (one-time initialization token for kitShadow != -1)
        {
          swift_once();
        }

        v278 = static NSAttributedStringKey.kitShadow;
        *&v367 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject));
        *&v365 = v277;
        outlined init with take of Any(&v365, v363);
        v279 = v277;
        v280 = swift_isUniquelyReferenced_nonNull_native();
        v362 = v371;
        v371 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v278, v280);

        goto LABEL_253;
      case 0xFuLL:
        v193 = v39;

        *&v365 = v193;
        v194 = ProtobufDecoder.dataField(_:)(&v365);
        if (v2)
        {
          goto LABEL_285;
        }

        v53 = v194;
        v54 = v195;
        static String.Encoding.utf8.getter();
        v196 = String.init(data:encoding:)();
        if (!v197)
        {
          goto LABEL_293;
        }

        v17 = v197;
        v358 = v196;
        outlined consume of Data._Representation(v53, v54);
        goto LABEL_17;
      case 0x10uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K12DateIntervalV_Ttg5Tf0nnns_n(a1, v39, &v370, &v364);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x11uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K12AbsoluteDateV_Ttg5Tf0nnns_n(a1, v39, &v370, &v364);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x12uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K11CurrentDateV_Ttg5Tf0nnns_n(a1, v39, &v370, &v364);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x13uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K5TimerV_Ttg5Tf0nnns_n(a1, v39, &v370, &v364);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x15uLL:
        *&v365 = v39;
        v82 = ProtobufDecoder.BOOLField(_:)(&v365);
        if (v83)
        {
          goto LABEL_286;
        }

        v84 = v82;
        v85 = 0xD000000000000029;
        v86 = &v370 + 1;
        goto LABEL_240;
      case 0x16uLL:
        *&v365 = v39;
        v281 = ProtobufDecoder.BOOLField(_:)(&v365);
        if (v282)
        {
          goto LABEL_286;
        }

        v84 = v281;
        v85 = 0xD000000000000026;
        v86 = &v371;
LABEL_240:
        v47 = MEMORY[0x193ABEC20](v85, *(v86 - 32) | 0x8000000000000000);
        *&v367 = MEMORY[0x1E69E6370];
        LOBYTE(v365) = v84;
        goto LABEL_251;
      case 0x17uLL:
        *&v365 = v39;
        v44 = ProtobufDecoder.doubleField(_:)(&v365);
        if (v45)
        {
          goto LABEL_286;
        }

        v46 = v44;
        v47 = MEMORY[0x193ABEC20](0xD000000000000023, v349 | 0x8000000000000000);
        *&v367 = MEMORY[0x1E69E63B0];
        *&v365 = v46;
        goto LABEL_251;
      case 0x18uLL:
        *&v365 = v39;
        v78 = ProtobufDecoder.dataField(_:)(&v365);
        if (v2)
        {
          goto LABEL_286;
        }

        v53 = v78;
        v54 = v79;
        static String.Encoding.utf8.getter();
        v80 = String.init(data:encoding:)();
        if (!v81)
        {
          goto LABEL_292;
        }

        v57 = v80;
        v58 = v81;
        outlined consume of Data._Representation(v53, v54);
        v59 = 0xD000000000000032;
        v60 = &v369;
        goto LABEL_132;
      case 0x19uLL:
        *&v365 = v39;
        v51 = ProtobufDecoder.dataField(_:)(&v365);
        if (v2)
        {
          goto LABEL_286;
        }

        v53 = v51;
        v54 = v52;
        static String.Encoding.utf8.getter();
        v55 = String.init(data:encoding:)();
        if (!v56)
        {
          goto LABEL_292;
        }

        v57 = v55;
        v58 = v56;
        outlined consume of Data._Representation(v53, v54);
        v59 = 0xD000000000000026;
        v60 = &v368;
        goto LABEL_132;
      case 0x1AuLL:
        *&v365 = v39;
        v171 = ProtobufDecoder.dataField(_:)(&v365);
        if (v2)
        {
          goto LABEL_286;
        }

        v53 = v171;
        v54 = v172;
        static String.Encoding.utf8.getter();
        v173 = String.init(data:encoding:)();
        if (!v174)
        {
          goto LABEL_292;
        }

        v57 = v173;
        v58 = v174;
        outlined consume of Data._Representation(v53, v54);
        v59 = 0xD000000000000029;
        v60 = &v368 + 8;
LABEL_132:
        v175 = *(v60 - 32) | 0x8000000000000000;
        goto LABEL_250;
      case 0x1BuLL:
        *&v365 = v39;
        v48 = ProtobufDecoder.uintField(_:)(&v365);
        if (v49)
        {
          goto LABEL_286;
        }

        v50 = v48;
        v47 = MEMORY[0x193ABEC20](0xD000000000000028, v350 | 0x8000000000000000);
        *&v367 = MEMORY[0x1E69E6810];
        *&v365 = v50;
        goto LABEL_251;
      case 0x1CuLL:
        *&v365 = v39;
        v290 = ProtobufDecoder.dataField(_:)(&v365);
        if (v2)
        {
          goto LABEL_286;
        }

        v53 = v290;
        v54 = v291;
        static String.Encoding.utf8.getter();
        v292 = String.init(data:encoding:)();
        if (!v293)
        {
          goto LABEL_292;
        }

        v57 = v292;
        v58 = v293;
        outlined consume of Data._Representation(v53, v54);
        v175 = v345 | 0x8000000000000000;
        v59 = 0xD000000000000023;
LABEL_250:
        v47 = MEMORY[0x193ABEC20](v59, v175);
        *&v367 = MEMORY[0x1E69E6158];
        *&v365 = v57;
        *(&v365 + 1) = v58;
LABEL_251:
        outlined init with take of Any(&v365, v363);
        goto LABEL_252;
      case 0x1DuLL:
        *&v365 = v39;
        v283 = ProtobufDecoder.dataField(_:)(&v365);
        if (v2)
        {
          goto LABEL_286;
        }

        v53 = v283;
        v54 = v284;
        static String.Encoding.utf8.getter();
        v285 = String.init(data:encoding:)();
        if (!v286)
        {
          goto LABEL_292;
        }

        v287 = v285;
        v288 = v286;
        outlined consume of Data._Representation(v53, v54);
        if (one-time initialization token for coreAXLabel != -1)
        {
          swift_once();
        }

        v289 = static NSAttributedStringKey.coreAXLabel;
        *&v367 = MEMORY[0x1E69E6158];
        *&v365 = v287;
        *(&v365 + 1) = v288;
        outlined init with take of Any(&v365, v363);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v362 = v371;
        v68 = v289;
        goto LABEL_246;
      case 0x1EuLL:
        *&v365 = v39;
        v61 = ProtobufDecoder.dataField(_:)(&v365);
        if (v2)
        {
          goto LABEL_286;
        }

        v53 = v61;
        v54 = v62;
        static String.Encoding.utf8.getter();
        v63 = String.init(data:encoding:)();
        if (v64)
        {
          v65 = v63;
          v66 = v64;
          outlined consume of Data._Representation(v53, v54);
          *&v367 = MEMORY[0x1E69E6158];
          *&v365 = v65;
          *(&v365 + 1) = v66;
          outlined init with take of Any(&v365, v363);
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v362 = v371;
          v68 = v346;
LABEL_246:
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v68, v67);
          v371 = v362;
          goto LABEL_17;
        }

LABEL_292:

LABEL_293:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v53, v54);
LABEL_285:

      case 0x1FuLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K15CLKTextProviderV_Ttg5Tf0nnns_n(a1, v39, &v370, &v364);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x20uLL:
        *&v365 = v39;
        v224 = ProtobufDecoder.BOOLField(_:)(&v365);
        if (v225)
        {
          goto LABEL_286;
        }

        *&v367 = MEMORY[0x1E69E6370];
        LOBYTE(v365) = v224;
        outlined init with take of Any(&v365, v363);
        v47 = v351;
LABEL_252:
        v294 = swift_isUniquelyReferenced_nonNull_native();
        v362 = v371;
        v371 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v47, v294);

        goto LABEL_253;
      case 0x21uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K8ProgressV_Ttg5Tf0nnns_n(a1, v39, &v370, &v364);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x22uLL:
        v295 = *(a1 + 16);
        v372[0] = *a1;
        v372[1] = v295;
        v372[2] = *(a1 + 32);
        v373 = *(a1 + 48);
        *&v363[0] = v39;
        outlined init with copy of ProtobufDecoder(v372, &v365);
        v296 = ProtobufDecoder.dataField(_:)(v363);
        if (v2)
        {

          outlined destroy of ProtobufDecoder(v372);
        }

        v298 = v296;
        v299 = v297;
        _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA30ResolvableTextSegmentAttributeO5ValueV_Tt1B5(v355);
        outlined consume of Data._Representation(v298, v299);
        outlined destroy of ProtobufDecoder(v372);
        if (one-time initialization token for resolvableTextSegment != -1)
        {
          swift_once();
        }

        v300 = static NSAttributedStringKey.resolvableTextSegment;
        v367 = v357;
        v301 = __swift_allocate_boxed_opaque_existential_1(&v365);
        v302 = v355;
        outlined init with copy of ResolvableTextSegmentAttribute.Value(v355, v301, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        outlined init with take of Any(&v365, v363);
        v303 = swift_isUniquelyReferenced_nonNull_native();
        v362 = v371;
        v371 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v300, v303);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v302, type metadata accessor for ResolvableTextSegmentAttribute.Value);
LABEL_253:
        v371 = v362;
        goto LABEL_16;
      case 0x23uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA18TimeDataFormattingO_Ttg5Tf0nnns_n(a1, v39, &v370, &v364);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x24uLL:
        if ((v39 & 7) != 2)
        {
          goto LABEL_283;
        }

        v246 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v246 + 2) + 1, 1, v246);
        }

        v248 = *(v246 + 2);
        v247 = *(v246 + 3);
        if (v248 >= v247 >> 1)
        {
          v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v247 > 1), v248 + 1, 1, v246);
        }

        *(v246 + 2) = v248 + 1;
        *&v246[8 * v248 + 32] = v19;
        *(a1 + 40) = v246;
        v249 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (v249 < 0)
        {
          goto LABEL_299;
        }

        v250 = *(a1 + 8) + v249;
        if (v19 < v250)
        {
          goto LABEL_283;
        }

        *(a1 + 16) = v250;
        v251 = specialized CodableAdaptiveImageGlyph.init(from:)(a1);
        v252 = *(a1 + 40);
        if (!*(v252 + 2))
        {
          goto LABEL_311;
        }

        v253 = v251;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v254 = *(v252 + 2);
          if (!v254)
          {
            goto LABEL_312;
          }
        }

        else
        {
          v252 = specialized _ArrayBuffer._consumeAndCreateNew()(v252);
          v254 = *(v252 + 2);
          if (!v254)
          {
            goto LABEL_312;
          }
        }

        v255 = v254 - 1;
        v256 = *&v252[8 * v255 + 32];
        *(v252 + 2) = v255;
        *(a1 + 40) = v252;
        *(a1 + 16) = v256;
        *&v367 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph));
        *&v365 = v253;
        outlined init with take of Any(&v365, v363);
        v257 = v253;
        v258 = swift_isUniquelyReferenced_nonNull_native();
        v259 = v371;
        v362 = v371;
        v371 = 0x8000000000000000;
        v260 = specialized __RawDictionaryStorage.find<A>(_:)(v352);
        v262 = v261;
        v263 = *(v259 + 16);
        v264 = (v261 & 1) == 0;
        if (__OFADD__(v263, v264))
        {
          goto LABEL_317;
        }

        v265 = v260;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v258, v263 + v264, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v266 = specialized __RawDictionaryStorage.find<A>(_:)(v352);
          if ((v262 & 1) != (v267 & 1))
          {
            goto LABEL_329;
          }

          v265 = v266;
        }

        v143 = v362;
        if (v262)
        {
          v268 = (v362[7] + 32 * v265);
          __swift_destroy_boxed_opaque_existential_1(v268);
          outlined init with take of Any(v363, v268);
        }

        else
        {
          v362[(v265 >> 6) + 8] |= 1 << v265;
          v316 = v352;
          *(v143[6] + 8 * v265) = v352;
          outlined init with take of Any(v363, (v143[7] + 32 * v265));
          v317 = v316;

          v318 = v143[2];
          v102 = __OFADD__(v318, 1);
          v319 = v318 + 1;
          if (v102)
          {
            goto LABEL_327;
          }

          v143[2] = v319;
        }

LABEL_274:
        v371 = v143;

LABEL_275:
        v7 = v356;
        goto LABEL_18;
      default:
        *&v365 = v39;
        ProtobufDecoder.skipField(_:)(&v365);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
    }
  }
}

uint64_t outlined destroy of ResolvableStringAttribute?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t _s7SwiftUI30AccessibilityNullableOptionSetV4fromACyxGAA15ProtobufDecoderVz_tKcfCAA0c5TraitF0V_Tt1g5@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v8;
    a2[1] = v7;
    return result;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_13;
      }

      if (v9 < v5)
      {
        goto LABEL_43;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v10 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v12 = v3[1] + result;
        if (v6 < v12)
        {
          goto LABEL_43;
        }

        v3[3] = 16;
        v3[4] = v12;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = result;
      goto LABEL_6;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v10 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v13 = v3[1] + result;
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_43;
        }

        v13 = v3[1] + 4;
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v10 != 1)
      {
        goto LABEL_43;
      }

      v13 = v3[1] + 8;
    }

    if (v6 < v13)
    {
      goto LABEL_43;
    }

    v3[1] = v13;
LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_21:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v8 = result;
    goto LABEL_6;
  }

  if (v10 != 2)
  {
    goto LABEL_43;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v11 = v3[1] + result;
    if (v6 < v11)
    {
      goto LABEL_43;
    }

    v3[3] = 8;
    v3[4] = v11;
    goto LABEL_21;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_18D35294C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t outlined init with take of CodableAccessibilityAttachmentStorage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t closure #1 in ContentTransition.NamedTransition.init(from:)@<X0>(unint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
LABEL_36:
    v3[3] = 0;
    *a2 = v7;
    return result;
  }

  v7 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_34;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_34:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v9 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v11 = v3[1] + result;
        if (v6 < v11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_34;
        }

        v11 = v3[1] + 4;
        if (v6 < v11)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_34;
      }

      v11 = v3[1] + 8;
      if (v6 < v11)
      {
        goto LABEL_34;
      }

LABEL_3:
      v3[1] = v11;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_36;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_18:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v7 = result != 0;
    goto LABEL_4;
  }

  if (v9 != 2)
  {
    goto LABEL_34;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = v3[1] + result;
    if (v6 < v10)
    {
      goto LABEL_34;
    }

    v3[3] = 8;
    v3[4] = v10;
    goto LABEL_18;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t ContentTransition.Style.init(from:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
LABEL_59:
    v3[3] = 0;
    *a2 = v7;
    return result;
  }

  v7 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_12;
      }

      if (v8 < v5)
      {
        goto LABEL_57;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_57:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_12:
    v9 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) > 1)
      {
        if (v9 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          v10 = v3[1] + result;
          if (v6 < v10)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_57;
          }

          v10 = v3[1] + 4;
          if (v6 < v10)
          {
            goto LABEL_57;
          }
        }

LABEL_3:
        v7 = 2;
LABEL_4:
        v3[1] = v10;
        goto LABEL_5;
      }

      if ((result & 7) != 0)
      {
        if (v9 != 1)
        {
          goto LABEL_57;
        }

        v10 = v3[1] + 8;
        if (v6 < v10)
        {
          goto LABEL_57;
        }

        goto LABEL_3;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = 2;
      goto LABEL_5;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v9 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v10 = v3[1] + result;
          if (v6 < v10)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_57;
          }

          v10 = v3[1] + 4;
          if (v6 < v10)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_4;
      }

      if ((result & 7) != 0)
      {
        if (v9 != 1)
        {
          goto LABEL_57;
        }

        v10 = v3[1] + 8;
        if (v6 < v10)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      goto LABEL_5;
    }

    if ((result & 7) > 1)
    {
      break;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_57;
      }

      v10 = v3[1] + 8;
      goto LABEL_44;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v7 = 1;
LABEL_5:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_59;
    }
  }

  if (v9 != 2)
  {
    if (v9 != 5)
    {
      goto LABEL_57;
    }

    v10 = v3[1] + 4;
    goto LABEL_44;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = v3[1] + result;
LABEL_44:
    if (v6 < v10)
    {
      goto LABEL_57;
    }

    v7 = 1;
    goto LABEL_4;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

unint64_t closure #5 in DisplayList.Content.Value.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      result = a1[3];
      if (result)
      {
        v11 = a1[4];
        if (v5 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v5)
        {
          goto LABEL_58;
        }

        a1[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (result < 8)
      {
        goto LABEL_58;
      }

LABEL_11:
      v12 = result & 7;
      if (result >> 3 == 2)
      {
        if (v12 != 2)
        {
          goto LABEL_58;
        }

        v23 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
        }

        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        if (v25 >= v24 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
        }

        *(v23 + 2) = v25 + 1;
        *&v23[8 * v25 + 32] = v6;
        a1[5] = v23;
        v26 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v26 < 0)
        {
          goto LABEL_67;
        }

        v27 = a1[1] + v26;
        if (v6 < v27)
        {
LABEL_58:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
        }

        a1[2] = v27;
        specialized CGPoint.init(from:)(a1);
        v30 = a1[5];
        if (!*(v30 + 16))
        {
          goto LABEL_69;
        }

        v8 = v28;
        v9 = v29;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v31 = *(v30 + 16);
          if (!v31)
          {
            goto LABEL_55;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          v30 = result;
          v31 = *(result + 16);
          if (!v31)
          {
LABEL_55:
            __break(1u);
            break;
          }
        }

        v32 = v31 - 1;
        v6 = *(v30 + 8 * v32 + 32);
        *(v30 + 16) = v32;
        a1[5] = v30;
        a1[2] = v6;
        goto LABEL_4;
      }

      if (result >> 3 == 1)
      {
        if (v12 != 2)
        {
          goto LABEL_58;
        }

        v13 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v15 >= v14 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
        }

        *(v13 + 2) = v15 + 1;
        *&v13[8 * v15 + 32] = v6;
        a1[5] = v13;
        v16 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v16 < 0)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          __break(1u);
          do
          {
            __break(1u);
            a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v34 = *(a2 + 2);
            if (v34)
            {
              goto LABEL_65;
            }

            __break(1u);
            a2 = a1[5];
          }

          while (!*(a2 + 2));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v34 = *(a2 + 2);
            if (v34)
            {
LABEL_65:
              v35 = v34 - 1;
              v36 = *&a2[8 * v35 + 32];
              *(a2 + 2) = v35;

              a1[5] = a2;
              a1[2] = v36;
              return result;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            a2 = result;
            v34 = *(result + 16);
            if (v34)
            {
              goto LABEL_65;
            }
          }

          __break(1u);
          return result;
        }

        v17 = a1[1] + v16;
        if (v6 < v17)
        {
          goto LABEL_58;
        }

        a1[2] = v17;
        v18 = CodableResolvedStyledText.init(from:)(a1);
        v19 = a1[5];
        if (!*(v19 + 2))
        {
          goto LABEL_68;
        }

        v20 = v18;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = *(v19 + 2);
          if (!v21)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v21 = *(v19 + 2);
          if (!v21)
          {
            goto LABEL_70;
          }
        }

        v22 = v21 - 1;
        v6 = *&v19[8 * v22 + 32];
        *(v19 + 2) = v22;

        a1[5] = v19;
        a1[2] = v6;
        v7 = v20;
        goto LABEL_4;
      }

      if ((result & 7) > 1)
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v33 = a1[1] + result;
          if (v6 < v33)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_58;
          }

          v33 = a1[1] + 4;
          if (v6 < v33)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          goto LABEL_4;
        }

        if (v12 != 1)
        {
          goto LABEL_58;
        }

        v33 = a1[1] + 8;
        if (v6 < v33)
        {
          goto LABEL_58;
        }
      }

      a1[1] = v33;
LABEL_4:
      v5 = a1[1];
      if (v5 >= v6)
      {
        a1[3] = 0;
        if (!v7)
        {
          goto LABEL_57;
        }

        *a2 = v7;
        *(a2 + 1) = v8;
        *(a2 + 2) = v9;
        return result;
      }
    }
  }

  a1[3] = 0;
LABEL_57:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t CodableResolvedStyledText.init(from:)(void *a1)
{
  v180 = *MEMORY[0x1E69E9840];
  v142 = 1;
  v141 = 1;
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  LODWORD(v140) = static Text.Sizing.standard;
  v4 = qword_1ED5372E8;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    a1[3] = 0;
    v18 = v4;

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v7 = 0;
    LOBYTE(v5) = 1;
    v9 = 0;
    v10 = 1.0;
    LOBYTE(v6) = 1;
    v11 = 0;
    v29 = 1;
    v12 = 0;
    v30 = 2;
    v13 = 0;
    v14 = 0.0;
    v15 = 0;
    v16 = 1.0;
LABEL_6:
    *&v170 = v19;
    BYTE8(v170) = v5;
    *(&v170 + 9) = *v148;
    HIDWORD(v170) = *&v148[3];
    *&v171 = v20;
    BYTE8(v171) = v6;
    BYTE9(v171) = v29;
    BYTE10(v171) = v21;
    BYTE11(v171) = v22;
    BYTE12(v171) = v23;
    *(&v171 + 13) = v146;
    HIBYTE(v171) = v147;
    *&v172 = v10;
    *(&v172 + 1) = v9;
    *&v173 = v11;
    *(&v173 + 1) = v12;
    *&v174 = v13;
    *(&v174 + 1) = v14;
    LOBYTE(v175) = v24;
    BYTE1(v175) = v25;
    WORD3(v175) = v145;
    *(&v175 + 2) = v144;
    *(&v175 + 1) = v15;
    *&v176 = v16;
    BYTE8(v176) = v140;
    HIDWORD(v176) = *&v143[3];
    *(&v176 + 9) = *v143;
    *&v177 = v18;
    *(&v177 + 1) = v30;
    *&v178 = v26;
    *(&v178 + 1) = v27;
    v179 = v28;
    outlined destroy of TextLayoutProperties(&v170);

    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();

    return v7;
  }

  v133 = qword_1ED5372E8;

  v139 = 0;
  v135 = 0;
  v136 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v134 = 0uLL;
  v137 = 0;
  v7 = 0;
  v8 = 0;
  v128 = 0;
  v9 = 0;
  v10 = 1.0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0.0;
  v15 = 0;
  v16 = 1.0;
  v126 = 0;
  v127 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v129 = 1;
  v138 = 2;
  v124 = 0;
  v125 = 0;
  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  while (1)
  {
    v33 = a1[3];
    if (v33)
    {
      v34 = a1[4];
      if (v6 < v34)
      {
        goto LABEL_16;
      }

      if (v34 < v6)
      {
        goto LABEL_139;
      }

      a1[3] = 0;
    }

    v33 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_140;
    }

    if (v33 < 8)
    {
      goto LABEL_139;
    }

LABEL_16:
    v35 = v33 >> 3;
    if (v33 >> 3 <= 5)
    {
      break;
    }

    if (v33 >> 3 <= 7)
    {
      if (v35 == 6)
      {
        if ((v33 & 7) != 2)
        {
          goto LABEL_150;
        }

        v6 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        }

        v2 = *(v6 + 16);
        v54 = *(v6 + 24);
        if (v2 >= v54 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v2 + 1, 1, v6);
        }

        *(v6 + 16) = v2 + 1;
        *(v6 + 8 * v2 + 32) = v5;
        a1[5] = v6;
        v55 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_155;
        }

        if (v55 < 0)
        {
          goto LABEL_177;
        }

        v56 = a1[1] + v55;
        if (v5 < v56)
        {
          goto LABEL_154;
        }

        a1[2] = v56;
        ContentTransition.init(from:)(a1, &v149);
        v6 = a1[5];
        if (!*(v6 + 16))
        {
          goto LABEL_186;
        }

        v115 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v57 = *(v6 + 16);
          if (!v57)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v57 = *(v6 + 16);
          if (!v57)
          {
            goto LABEL_194;
          }
        }

        v116 = v8;
        v118 = v7;
        v58 = v57 - 1;
        v5 = *(v6 + 8 * v58 + 32);
        *(v6 + 16) = v58;
        a1[5] = v6;
        a1[2] = v5;
        v59 = v149;
        v60 = v17;
        v61 = BYTE12(v149);
        v2 = DWORD2(v149);
        v114 = BYTE13(v149);
        v62 = BYTE14(v149);
        v63 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
        }

        v65 = *(v63 + 2);
        v64 = *(v63 + 3);
        if (v65 >= v64 >> 1)
        {
          v1 = 0;
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v63);
        }

        *(v63 + 2) = v65 + 1;
        v66 = &v63[16 * v65];
        *(v66 + 4) = v59;
        v67 = v2 | (v61 << 32);
        v17 = v63;
        *(v66 + 10) = v67;
        v66[44] = BYTE4(v67);
        v66[45] = v114;
        v66[46] = v62;
        v8 = v116;
        v7 = v118;
        goto LABEL_9;
      }

      if (v35 == 7)
      {
        if ((v33 & 7) != 0)
        {
          if ((v33 & 7) != 2)
          {
            goto LABEL_139;
          }

          v39 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
LABEL_140:
            *&v170 = v139;
            BYTE8(v170) = v142;
            *(&v170 + 9) = *v148;
            HIDWORD(v170) = *&v148[3];
            *&v171 = v136;
            BYTE8(v171) = v141;
            BYTE9(v171) = v129;
            BYTE10(v171) = v130;
            BYTE11(v171) = v131;
            BYTE12(v171) = BYTE4(v131);
            *(&v171 + 13) = v146;
            HIBYTE(v171) = v147;
            *&v172 = v10;
            *(&v172 + 1) = v9;
            *&v173 = v11;
            *(&v173 + 1) = v12;
            *&v174 = v13;
            *(&v174 + 1) = v14;
            LOBYTE(v175) = v132;
            BYTE1(v175) = BYTE4(v132);
            *(&v175 + 2) = v144;
            WORD3(v175) = v145;
            *(&v175 + 1) = v15;
            *&v176 = v16;
            BYTE8(v176) = v140;
            *(&v176 + 9) = *v143;
            HIDWORD(v176) = *&v143[3];
            *&v177 = v133;
            *(&v177 + 1) = v138;
            v178 = v134;
            v179 = v137;
            outlined destroy of TextLayoutProperties(&v170);
          }

          else
          {
            if (v39 < 0)
            {
              goto LABEL_195;
            }

            v40 = a1[1] + v39;
            if (v5 >= v40)
            {
              a1[3] = 56;
              a1[4] = v40;
              goto LABEL_41;
            }

LABEL_139:
            *&v170 = v139;
            BYTE8(v170) = v142;
            *(&v170 + 9) = *v148;
            HIDWORD(v170) = *&v148[3];
            *&v171 = v136;
            BYTE8(v171) = v141;
            BYTE9(v171) = v129;
            BYTE10(v171) = v130;
            BYTE11(v171) = v131;
            BYTE12(v171) = BYTE4(v131);
            *(&v171 + 13) = v146;
            HIBYTE(v171) = v147;
            *&v172 = v10;
            *(&v172 + 1) = v9;
            *&v173 = v11;
            *(&v173 + 1) = v12;
            *&v174 = v13;
            *(&v174 + 1) = v14;
            LOBYTE(v175) = v132;
            BYTE1(v175) = BYTE4(v132);
            *(&v175 + 2) = v144;
            WORD3(v175) = v145;
            *(&v175 + 1) = v15;
            *&v176 = v16;
            BYTE8(v176) = v140;
            HIDWORD(v176) = *&v143[3];
            *(&v176 + 9) = *v143;
            *&v177 = v133;
            *(&v177 + 1) = v138;
            v178 = v134;
            v179 = v137;
            outlined destroy of TextLayoutProperties(&v170);
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
          }

          goto LABEL_157;
        }

LABEL_41:
        v41 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_140;
        }

        v128 = v41;
        goto LABEL_9;
      }

      goto LABEL_112;
    }

    if (v35 == 8)
    {
      if ((v33 & 7) != 2)
      {
        goto LABEL_150;
      }

      v6 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
      }

      v2 = *(v6 + 16);
      v71 = *(v6 + 24);
      if (v2 >= v71 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v2 + 1, 1, v6);
      }

      *(v6 + 16) = v2 + 1;
      *(v6 + 8 * v2 + 32) = v5;
      a1[5] = v6;
      v72 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
LABEL_162:

        *&v170 = v139;
        BYTE8(v170) = v142;
        *(&v170 + 9) = *v148;
        HIDWORD(v170) = *&v148[3];
        *&v171 = v136;
        BYTE8(v171) = v141;
        BYTE9(v171) = v129;
        BYTE10(v171) = v130;
        BYTE11(v171) = v131;
        BYTE12(v171) = BYTE4(v131);
        *(&v171 + 13) = v146;
        HIBYTE(v171) = v147;
        *&v172 = v10;
        *(&v172 + 1) = v9;
        *&v173 = v11;
        *(&v173 + 1) = v12;
        *&v174 = v13;
        *(&v174 + 1) = v14;
        LOBYTE(v175) = v132;
        BYTE1(v175) = BYTE4(v132);
        *(&v175 + 2) = v144;
        WORD3(v175) = v145;
        *(&v175 + 1) = v15;
        *&v176 = v16;
        BYTE8(v176) = v140;
        *(&v176 + 9) = *v143;
        HIDWORD(v176) = *&v143[3];
        *&v177 = v133;
        *(&v177 + 1) = v138;
        v178 = v134;
        v179 = v137;
        outlined destroy of TextLayoutProperties(&v170);

        return v7;
      }

      if (v72 < 0)
      {
        goto LABEL_179;
      }

      v73 = a1[1] + v72;
      if (v5 < v73)
      {
        goto LABEL_150;
      }

      a1[2] = v73;
      v74 = CodableResolvedStyledText.init(from:)(a1);
      v6 = a1[5];
      if (!*(v6 + 16))
      {
        goto LABEL_188;
      }

      v75 = v74;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v76 = *(v6 + 16);
        if (!v76)
        {
          goto LABEL_191;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v76 = *(v6 + 16);
        if (!v76)
        {
          goto LABEL_191;
        }
      }

      v77 = v76 - 1;
      v5 = *(v6 + 8 * v77 + 32);
      *(v6 + 16) = v77;

      a1[5] = v6;
      a1[2] = v5;
      v8 = v75;
      goto LABEL_111;
    }

    if (v35 == 9)
    {
      if ((v33 & 7) != 2)
      {
        goto LABEL_150;
      }

      v6 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
      }

      v2 = *(v6 + 16);
      v45 = *(v6 + 24);
      if (v2 >= v45 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v2 + 1, 1, v6);
      }

      *(v6 + 16) = v2 + 1;
      *(v6 + 8 * v2 + 32) = v5;
      a1[5] = v6;
      v46 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_162;
      }

      if (v46 < 0)
      {
        goto LABEL_178;
      }

      v47 = a1[1] + v46;
      if (v5 < v47)
      {
LABEL_150:
        *&v170 = v139;
        BYTE8(v170) = v142;
        *(&v170 + 9) = *v148;
        HIDWORD(v170) = *&v148[3];
        *&v171 = v136;
        BYTE8(v171) = v141;
        BYTE9(v171) = v129;
        BYTE10(v171) = v130;
        BYTE11(v171) = v131;
        BYTE12(v171) = BYTE4(v131);
        *(&v171 + 13) = v146;
        HIBYTE(v171) = v147;
        *&v172 = v10;
        *(&v172 + 1) = v9;
        *&v173 = v11;
        *(&v173 + 1) = v12;
        *&v174 = v13;
        *(&v174 + 1) = v14;
        LOBYTE(v175) = v132;
        BYTE1(v175) = BYTE4(v132);
        *(&v175 + 2) = v144;
        WORD3(v175) = v145;
        *(&v175 + 1) = v15;
        *&v176 = v16;
        BYTE8(v176) = v140;
        HIDWORD(v176) = *&v143[3];
        *(&v176 + 9) = *v143;
        *&v177 = v133;
        *(&v177 + 1) = v138;
        v178 = v134;
        v179 = v137;
        outlined destroy of TextLayoutProperties(&v170);
LABEL_151:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_156;
      }

      a1[2] = v47;
      v48 = CodableResolvedStyledText.init(from:)(a1);
      v6 = a1[5];
      if (!*(v6 + 16))
      {
        goto LABEL_189;
      }

      v49 = v48;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v50 = *(v6 + 16);
        if (!v50)
        {
          goto LABEL_193;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v50 = *(v6 + 16);
        if (!v50)
        {
          goto LABEL_193;
        }
      }

      v51 = v50 - 1;
      v5 = *(v6 + 8 * v51 + 32);
      *(v6 + 16) = v51;

      a1[5] = v6;
      a1[2] = v5;
      v7 = v49;
LABEL_111:
      v1 = 0;
      goto LABEL_9;
    }

LABEL_112:
    v78 = v33 & 7;
    if (v78 > 1)
    {
      if (v78 == 2)
      {
        v80 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_140;
        }

        if (v80 < 0)
        {
          goto LABEL_196;
        }

        v79 = a1[1] + v80;
        if (v5 < v79)
        {
          goto LABEL_139;
        }
      }

      else
      {
        if (v78 != 5)
        {
          goto LABEL_139;
        }

        v79 = a1[1] + 4;
        if (v5 < v79)
        {
          goto LABEL_139;
        }
      }
    }

    else
    {
      if ((v33 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_140;
        }

        goto LABEL_9;
      }

      if (v78 != 1)
      {
        goto LABEL_139;
      }

      v79 = a1[1] + 8;
      if (v5 < v79)
      {
        goto LABEL_139;
      }
    }

    a1[1] = v79;
LABEL_9:
    v6 = a1[1];
    if (v6 >= v5)
    {
      a1[3] = 0;
      LOBYTE(v5) = v142;
      LOBYTE(v6) = v141;
      a1 = v135;
      if (!v135)
      {
        v28 = v137;
        v27 = *(&v134 + 1);
        v26 = v134;
        v18 = v133;
        v30 = v138;
        v19 = v139;
        v24 = v132;
        v25 = BYTE4(v132);
        v22 = v131;
        v23 = BYTE4(v131);
        v29 = v129;
        v21 = v130;
        v20 = v136;
        goto LABEL_6;
      }

      v115 = v17;
      *&v170 = v139;
      BYTE8(v170) = v142;
      *(&v170 + 9) = *v148;
      HIDWORD(v170) = *&v148[3];
      *&v171 = v136;
      BYTE8(v171) = v141;
      BYTE9(v171) = v129;
      BYTE10(v171) = v130;
      BYTE11(v171) = v131;
      BYTE12(v171) = BYTE4(v131);
      *(&v171 + 13) = v146;
      HIBYTE(v171) = v147;
      *&v172 = v10;
      *(&v172 + 1) = v9;
      *&v173 = v11;
      *(&v173 + 1) = v12;
      *&v174 = v13;
      *(&v174 + 1) = v14;
      LOBYTE(v2) = BYTE4(v132);
      LOBYTE(v175) = v132;
      BYTE1(v175) = BYTE4(v132);
      WORD3(v175) = v145;
      *(&v175 + 2) = v144;
      *(&v175 + 1) = v15;
      *&v176 = v16;
      BYTE8(v176) = v140;
      HIDWORD(v176) = *&v143[3];
      *(&v176 + 9) = *v143;
      *&v177 = v133;
      *(&v177 + 1) = v138;
      v178 = v134;
      v179 = v137;
      v81 = one-time initialization token for isArchived;
      v140 = v135;
      if (v81 != -1)
      {
        goto LABEL_197;
      }

      goto LABEL_144;
    }
  }

  if (v33 >> 3 > 2)
  {
    if (v35 == 3)
    {
      if ((v33 & 7) != 2)
      {
        goto LABEL_150;
      }

      v6 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
      }

      v2 = *(v6 + 16);
      v68 = *(v6 + 24);
      if (v2 >= v68 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v2 + 1, 1, v6);
      }

      *(v6 + 16) = v2 + 1;
      *(v6 + 8 * v2 + 32) = v5;
      a1[5] = v6;
      v69 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_155;
      }

      if (v69 < 0)
      {
        goto LABEL_180;
      }

      v70 = a1[1] + v69;
      if (v5 < v70)
      {
LABEL_154:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_155:
        *&v170 = v139;
        BYTE8(v170) = v142;
        *(&v170 + 9) = *v148;
        HIDWORD(v170) = *&v148[3];
        *&v171 = v136;
        BYTE8(v171) = v141;
        BYTE9(v171) = v129;
        BYTE10(v171) = v130;
        BYTE11(v171) = v131;
        BYTE12(v171) = BYTE4(v131);
        *(&v171 + 13) = v146;
        HIBYTE(v171) = v147;
        *&v172 = v10;
        *(&v172 + 1) = v9;
        *&v173 = v11;
        *(&v173 + 1) = v12;
        *&v174 = v13;
        *(&v174 + 1) = v14;
        LOBYTE(v175) = v132;
        BYTE1(v175) = BYTE4(v132);
        *(&v175 + 2) = v144;
        WORD3(v175) = v145;
        *(&v175 + 1) = v15;
        *&v176 = v16;
        BYTE8(v176) = v140;
        *(&v176 + 9) = *v143;
        HIDWORD(v176) = *&v143[3];
        *&v177 = v133;
        *(&v177 + 1) = v138;
        v178 = v134;
        v179 = v137;
        outlined destroy of TextLayoutProperties(&v170);
LABEL_156:

LABEL_157:

        return v7;
      }

      a1[2] = v70;
      v149 = 0u;
      v150 = 0u;
      closure #1 in EdgeInsets.init(from:)(&v149, a1, v169);
      v6 = a1[5];
      if (!*(v6 + 16))
      {
        goto LABEL_185;
      }

      v122 = *(&v149 + 1);
      v123 = v149;
      v120 = *(&v150 + 1);
      v121 = v150;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v31 = *(v6 + 16);
        if (!v31)
        {
          goto LABEL_190;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v31 = *(v6 + 16);
        if (!v31)
        {
          goto LABEL_190;
        }
      }

      goto LABEL_8;
    }

    if (v35 == 5)
    {
      *&v170 = v139;
      BYTE8(v170) = v142;
      *(&v170 + 9) = *v148;
      HIDWORD(v170) = *&v148[3];
      *&v171 = v136;
      BYTE8(v171) = v141;
      BYTE9(v171) = v129;
      BYTE10(v171) = v130;
      BYTE11(v171) = v131;
      BYTE12(v171) = BYTE4(v131);
      *(&v171 + 13) = v146;
      HIBYTE(v171) = v147;
      *&v172 = v10;
      *(&v172 + 1) = v9;
      *&v173 = v11;
      *(&v173 + 1) = v12;
      *&v174 = v13;
      *(&v174 + 1) = v14;
      LOBYTE(v175) = v132;
      BYTE1(v175) = BYTE4(v132);
      *(&v175 + 2) = v144;
      WORD3(v175) = v145;
      *(&v175 + 1) = v15;
      *&v176 = v16;
      BYTE8(v176) = v140;
      HIDWORD(v176) = *&v143[3];
      *(&v176 + 9) = *v143;
      *&v177 = v133;
      *(&v177 + 1) = v138;
      v178 = v134;
      v179 = v137;
      v42 = v33;
      outlined destroy of TextLayoutProperties(&v170);
      if ((v42 & 7) != 2)
      {
        goto LABEL_151;
      }

      ProtobufDecoder.beginMessage()();
      if (v1)
      {
        goto LABEL_156;
      }

      TextLayoutProperties.init(from:)(a1, &v149);
      v6 = a1[5];
      if (!*(v6 + 16))
      {
        goto LABEL_182;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v43 = *(v6 + 16);
        if (!v43)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v43 = *(v6 + 16);
        if (!v43)
        {
          goto LABEL_183;
        }
      }

      v44 = v43 - 1;
      v5 = *(v6 + 8 * v44 + 32);
      *(v6 + 16) = v44;
      a1[5] = v6;
      a1[2] = v5;
      v139 = v149;
      *v148 = *(&v149 + 9);
      *&v148[3] = HIDWORD(v149);
      v136 = v150;
      v129 = BYTE9(v150);
      v130 = BYTE10(v150);
      LOBYTE(v131) = BYTE11(v150);
      BYTE4(v131) = BYTE12(v150);
      v147 = HIBYTE(v150);
      v146 = *(&v150 + 13);
      v10 = v151;
      v9 = v152;
      v11 = v153;
      v12 = v154;
      v13 = v155;
      v14 = v156;
      LOBYTE(v132) = v157;
      BYTE4(v132) = v158;
      v145 = v160;
      v144 = v159;
      v15 = v161;
      v16 = v162;
      LODWORD(v140) = v163;
      *&v143[3] = *&v164[3];
      *v143 = *v164;
      v138 = v166;
      v133 = v165;
      v134 = v167;
      v137 = v168;
      v142 = BYTE8(v149);
      v141 = BYTE8(v150);
      goto LABEL_9;
    }

    goto LABEL_112;
  }

  if (v35 == 1)
  {
    if ((v33 & 7) != 2)
    {
      goto LABEL_150;
    }

    ProtobufDecoder.beginMessage()();
    if (v1)
    {
      goto LABEL_155;
    }

    CodableAttributedString.init(from:)(a1, &v149);
    v6 = a1[5];
    if (!*(v6 + 16))
    {
      goto LABEL_181;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v52 = *(v6 + 16);
      if (!v52)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v52 = *(v6 + 16);
      if (!v52)
      {
        goto LABEL_184;
      }
    }

    v53 = v52 - 1;
    v5 = *(v6 + 8 * v53 + 32);
    *(v6 + 16) = v53;

    a1[5] = v6;
    a1[2] = v5;
    v135 = v149;
    goto LABEL_9;
  }

  if (v35 != 2)
  {
    goto LABEL_112;
  }

  if ((v33 & 7) != 2)
  {
    goto LABEL_150;
  }

  v6 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
  }

  v2 = *(v6 + 16);
  v36 = *(v6 + 24);
  if (v2 >= v36 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v2 + 1, 1, v6);
  }

  *(v6 + 16) = v2 + 1;
  *(v6 + 8 * v2 + 32) = v5;
  a1[5] = v6;
  v37 = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    goto LABEL_155;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = a1[1] + v37;
    if (v5 < v38)
    {
      goto LABEL_154;
    }

    a1[2] = v38;
    v149 = 0u;
    v150 = 0u;
    closure #1 in EdgeInsets.init(from:)(&v149, a1, v169);
    v6 = a1[5];
    if (!*(v6 + 16))
    {
      goto LABEL_187;
    }

    v126 = *(&v149 + 1);
    v127 = v149;
    v124 = *(&v150 + 1);
    v125 = v150;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = *(v6 + 16);
      if (!v31)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v31 = *(v6 + 16);
      if (!v31)
      {
        goto LABEL_192;
      }
    }

LABEL_8:
    v1 = 0;
    v32 = v31 - 1;
    v5 = *(v6 + 8 * v32 + 32);
    *(v6 + 16) = v32;
    a1[5] = v6;
    a1[2] = v5;
    goto LABEL_9;
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
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
LABEL_196:
  __break(1u);
LABEL_197:
  swift_once();
LABEL_144:
  v119 = v7;
  v82 = static ArchivedViewInput.Value.isArchived;
  v83 = HIBYTE(static ArchivedViewInput.Value.isArchived);
  if ((v2 & 1) != 0 || (v128 & 0xD8) != 0 || v138 != 2)
  {
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v7 = swift_allocObject();
    *(v7 + 416) = MEMORY[0x1E69E7CC0];
    *(v7 + 424) = 0u;
    *(v7 + 440) = 0u;
    *(v7 + 456) = 0u;
    *(v7 + 472) = 0u;
    *(v7 + 488) = 512;
    v117 = v8;
    if ((v5 & 1) != 0 || v139 != 1)
    {
      v87 = NSAttributedString.replacingLineBreakModes(_:)(0);
      v88 = v87;
    }

    else
    {
      v87 = v140;
      v88 = a1;
    }

    v89 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v90 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v89 setDelegate_];
    [v89 setUsesFontLeading_];
    v91 = v89;
    v92 = v87;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v91, v88, v169);
    v93 = v169[3];
    *(v7 + 528) = v169[2];
    *(v7 + 544) = v93;
    *(v7 + 560) = v169[4];
    v94 = v169[1];
    *(v7 + 496) = v169[0];
    *(v7 + 512) = v94;
    *(v7 + 576) = v90;
    *(v7 + 352) = 0u;
    *(v7 + 368) = 0u;
    *(v7 + 384) = 0;
    *(v7 + 392) = 0x8000000000000000;
    *(v7 + 400) = 0;
    v95 = MEMORY[0x1E69E7CC0];
    *(v7 + 408) = MEMORY[0x1E69E7CC0];
    *(v7 + 200) = 0;
    *(v7 + 208) = 1;
    *(v7 + 216) = v88;
    *(v7 + 224) = v127;
    *(v7 + 232) = v126;
    *(v7 + 240) = v125;
    *(v7 + 248) = v124;
    *(v7 + 256) = v82;
    *(v7 + 257) = v83;
    *(v7 + 260) = v128;
    *(v7 + 264) = v95;
    *(v7 + 272) = v115;
    v96 = v177;
    *(v7 + 112) = v176;
    *(v7 + 128) = v96;
    *(v7 + 144) = v178;
    *(v7 + 160) = v179;
    v97 = v173;
    *(v7 + 48) = v172;
    *(v7 + 64) = v97;
    v98 = v175;
    *(v7 + 80) = v174;
    *(v7 + 96) = v98;
    v99 = v171;
    *(v7 + 16) = v170;
    *(v7 + 32) = v99;
    *(v7 + 312) = 0u;
    *(v7 + 328) = 0u;
    *(v7 + 280) = 0u;
    *(v7 + 296) = 0u;
    *(v7 + 344) = 1;
    *(v7 + 168) = v123;
    *(v7 + 176) = v122;
    *(v7 + 184) = v121;
    *(v7 + 192) = v120;
    swift_beginAccess();
    v100 = *(v7 + 97);
    v101 = v90;
    outlined init with copy of TextLayoutProperties(&v170, &v149);

    v102 = _TextContainer(v100);
    [v102 setLineFragmentPadding_];
    [v91 setTextContainer_];
    if ((v128 & 0xC0) != 0)
    {
      _NSTextLayoutManagerRequiresCTLine(v91);
    }

    outlined destroy of TextLayoutProperties(&v170);
    v85 = v140;

    v8 = v117;
  }

  else
  {
    type metadata accessor for ResolvedStyledText.StringDrawing();
    v7 = swift_allocObject();
    v84 = 1;
    v85 = v140;
    if ((v137 & 1) == 0)
    {
      if (NSAttributedString.isDynamic.getter())
      {
        v84 = v82 & 1;
      }

      else
      {
        v84 = 0;
      }

      a1 = v135;
    }

    LOBYTE(v169[0]) = v6 & 1;
    *(v7 + 352) = 0;
    *(v7 + 360) = v140;
    *(v7 + 368) = v139;
    *(v7 + 376) = v5 & 1;
    *(v7 + 384) = v136;
    *(v7 + 392) = v6 & 1;
    *(v7 + 400) = v10;
    *(v7 + 408) = v15;
    *(v7 + 416) = v16;
    *(v7 + 424) = v84;
    *(v7 + 425) = v14 != 0.0;
    *(v7 + 426) = 0;
    v103 = MEMORY[0x1E69E7CC0];
    *(v7 + 432) = MEMORY[0x1E69E7CC0];
    *(v7 + 200) = 0;
    *(v7 + 208) = 1;
    LOBYTE(v149) = 1;
    *(v7 + 216) = a1;
    *(v7 + 224) = v127;
    *(v7 + 232) = v126;
    *(v7 + 240) = v125;
    *(v7 + 248) = v124;
    *(v7 + 256) = v82;
    *(v7 + 257) = v83;
    *(v7 + 258) = 0;
    *(v7 + 260) = v128;
    *(v7 + 264) = v103;
    *(v7 + 272) = v115;
    v104 = v171;
    *(v7 + 16) = v170;
    *(v7 + 32) = v104;
    v105 = v172;
    v106 = v173;
    v107 = v175;
    *(v7 + 80) = v174;
    *(v7 + 96) = v107;
    *(v7 + 48) = v105;
    *(v7 + 64) = v106;
    v108 = v176;
    v109 = v177;
    v110 = v178;
    *(v7 + 160) = v179;
    *(v7 + 128) = v109;
    *(v7 + 144) = v110;
    *(v7 + 112) = v108;
    *(v7 + 312) = 0u;
    *(v7 + 328) = 0u;
    *(v7 + 280) = 0u;
    *(v7 + 296) = 0u;
    *(v7 + 344) = 1;
    *(v7 + 168) = v123;
    *(v7 + 176) = v122;
    *(v7 + 184) = v121;
    *(v7 + 192) = v120;
    v111 = v140;
  }

  if (v8)
  {

    ResolvedStyledText.smallerSizeVariant.setter(v112);
  }

  if (v119)
  {

    ResolvedStyledText.largerSizeVariant.setter(v113);
  }

  return v7;
}

id specialized CodableNSParagraphStyle.init(from:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v3 setHorizontalAlignment_];
  [v3 setLineBreakMode_];
  [v3 setLineBreakStrategy_];
  [v3 setAllowsDefaultTighteningForTruncation_];
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v60 = *(a1 + 32);
  [v3 setCompositionLanguage_];
  if (v4 >= v6)
  {
    *(a1 + 24) = 0;
    return v3;
  }

  v61 = 0;
  HIDWORD(v7) = DWORD1(v60);
  v8 = v60;
  LODWORD(v60) = 1;
LABEL_3:
  v9 = v5;
  while (v9)
  {
    if (v4 >= v8)
    {
      if (v8 < v4)
      {
        goto LABEL_172;
      }

      *(a1 + 24) = 0;
      break;
    }

    v5 = v9;
LABEL_12:
    v10 = v9 & 7;
    switch(v9 >> 3)
    {
      case 1uLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_168;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v55 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v55 < 0)
        {
          goto LABEL_197;
        }

        v8 = (*(a1 + 8) + v55);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v8;
        v5 = 8;
LABEL_168:
        v56 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        LODWORD(v60) = 0;
        v61 = v56;
        v4 = *(a1 + 8);
        if (v4 < v6)
        {
          goto LABEL_3;
        }

        *(a1 + 24) = 0;
        goto LABEL_176;
      case 2uLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_19;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v11 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v11 < 0)
        {
          goto LABEL_186;
        }

        v8 = (*(a1 + 8) + v11);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 16;
        *(a1 + 32) = v8;
        v5 = 16;
LABEL_19:
        v12 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v12 < 0)
        {
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
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
          JUMPOUT(0x18D355C18);
        }

        v13 = 0;
        [v3 setLineBreakMode_];
LABEL_152:
        v1 = v13;
        goto LABEL_153;
      case 3uLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_56;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v21 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v21 < 0)
        {
          goto LABEL_188;
        }

        v8 = (*(a1 + 8) + v21);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 24;
        *(a1 + 32) = v8;
        v5 = 24;
LABEL_56:
        v22 = ProtobufDecoder.decodeVarint()();
        v13 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setLineBreakStrategy_];
        goto LABEL_152;
      case 4uLL:
        if (v10 == 5)
        {
          v40 = *(a1 + 8);
          if (v6 < (v40 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v41 = *v40;
          *(a1 + 8) = v40 + 1;
          v35 = v41;
        }

        else
        {
          if (v10 == 2)
          {
            v34 = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_173;
            }

            if (v34 < 0)
            {
              goto LABEL_195;
            }

            v20 = *(a1 + 8);
            v8 = v20 + v34;
            if (v6 < v20 + v34)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 33;
            *(a1 + 32) = v8;
            v5 = 33;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v20 = *(a1 + 8);
          }

          if (v6 < (v20 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v35 = *v20;
          *(a1 + 8) = v20 + 1;
        }

        [v3 setLineSpacing_];
        goto LABEL_152;
      case 5uLL:
        if (v10 == 5)
        {
          v52 = *(a1 + 8);
          if (v6 < (v52 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v53 = *v52;
          *(a1 + 8) = v52 + 1;
          v47 = v53;
        }

        else
        {
          if (v10 == 2)
          {
            v46 = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_173;
            }

            if (v46 < 0)
            {
              goto LABEL_194;
            }

            v29 = *(a1 + 8);
            v8 = v29 + v46;
            if (v6 < v29 + v46)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 41;
            *(a1 + 32) = v8;
            v5 = 41;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v29 = *(a1 + 8);
          }

          if (v6 < (v29 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v47 = *v29;
          *(a1 + 8) = v29 + 1;
        }

        [v3 setLineHeightMultiple_];
        goto LABEL_152;
      case 6uLL:
        if (v10 == 5)
        {
          v50 = *(a1 + 8);
          if (v6 < (v50 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v51 = *v50;
          *(a1 + 8) = v50 + 1;
          v43 = v51;
        }

        else
        {
          if (v10 == 2)
          {
            v42 = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_173;
            }

            if (v42 < 0)
            {
              goto LABEL_192;
            }

            v28 = *(a1 + 8);
            v8 = v28 + v42;
            if (v6 < v28 + v42)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 49;
            *(a1 + 32) = v8;
            v5 = 49;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v28 = *(a1 + 8);
          }

          if (v6 < (v28 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v43 = *v28;
          *(a1 + 8) = v28 + 1;
        }

        [v3 setMaximumLineHeight_];
        goto LABEL_152;
      case 7uLL:
        if (v10 == 5)
        {
          v44 = *(a1 + 8);
          if (v6 < (v44 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v45 = *v44;
          *(a1 + 8) = v44 + 1;
          v37 = v45;
        }

        else
        {
          if (v10 == 2)
          {
            v36 = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_173;
            }

            if (v36 < 0)
            {
              goto LABEL_191;
            }

            v23 = *(a1 + 8);
            v8 = v23 + v36;
            if (v6 < v23 + v36)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 57;
            *(a1 + 32) = v8;
            v5 = 57;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v23 = *(a1 + 8);
          }

          if (v6 < (v23 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v37 = *v23;
          *(a1 + 8) = v23 + 1;
        }

        [v3 setMinimumLineHeight_];
        goto LABEL_152;
      case 8uLL:
        if (v10 == 2)
        {
          v33 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_173;
          }

          if (v33 < 0)
          {
            goto LABEL_189;
          }

          v24 = *(a1 + 8);
          v8 = v24 + v33;
          if (v6 < v24 + v33)
          {
            goto LABEL_172;
          }

          *(a1 + 24) = 69;
          *(a1 + 32) = v8;
          v5 = 69;
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_172;
          }

          v24 = *(a1 + 8);
        }

        if (v6 < (v24 + 1))
        {
          goto LABEL_172;
        }

        LODWORD(v7) = *v24;
        *(a1 + 8) = v24 + 1;
        v13 = v1;
        [v3 setHyphenationFactor_];
        goto LABEL_152;
      case 9uLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_44;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v18 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v18 < 0)
        {
          goto LABEL_184;
        }

        v8 = (*(a1 + 8) + v18);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 72;
        *(a1 + 32) = v8;
        v5 = 72;
LABEL_44:
        v19 = ProtobufDecoder.decodeVarint()();
        v13 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setAllowsDefaultTighteningForTruncation_];
        goto LABEL_152;
      case 0xAuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_75;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v26 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v26 < 0)
        {
          goto LABEL_187;
        }

        v8 = (*(a1 + 8) + v26);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 80;
        *(a1 + 32) = v8;
        v5 = 80;
LABEL_75:
        v27 = ProtobufDecoder.decodeVarint()();
        v13 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setBaseWritingDirection_];
        goto LABEL_152;
      case 0xBuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_36;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v16 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v16 < 0)
        {
          goto LABEL_183;
        }

        v8 = (*(a1 + 8) + v16);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 88;
        *(a1 + 32) = v8;
        v5 = 88;
LABEL_36:
        v17 = ProtobufDecoder.decodeVarint()();
        v13 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setSpansAllLines_];
        goto LABEL_152;
      case 0xCuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_28;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v14 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v14 < 0)
        {
          goto LABEL_190;
        }

        v8 = (*(a1 + 8) + v14);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 96;
        *(a1 + 32) = v8;
        v5 = 96;
LABEL_28:
        v15 = ProtobufDecoder.decodeVarint()();
        v13 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 &selRef_boundingRect + 7];
        goto LABEL_152;
      case 0xDuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_91;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v30 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

        if (v30 < 0)
        {
          goto LABEL_185;
        }

        v8 = (*(a1 + 8) + v30);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 104;
        *(a1 + 32) = v8;
        v5 = 104;
LABEL_91:
        v31 = ProtobufDecoder.decodeVarint()();
        v13 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setBaselineIntervalType_];
        goto LABEL_152;
      case 0xEuLL:
        if (v10 == 5)
        {
          v48 = *(a1 + 8);
          if (v6 < (v48 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v49 = *v48;
          *(a1 + 8) = v48 + 1;
          v39 = v49;
        }

        else
        {
          if (v10 == 2)
          {
            v38 = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_173;
            }

            if (v38 < 0)
            {
              goto LABEL_193;
            }

            v25 = *(a1 + 8);
            v8 = v25 + v38;
            if (v6 < v25 + v38)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 113;
            *(a1 + 32) = v8;
            v5 = 113;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v25 = *(a1 + 8);
          }

          if (v6 < (v25 + 1))
          {
            goto LABEL_172;
          }

          v13 = v1;
          v39 = *v25;
          *(a1 + 8) = v25 + 1;
        }

        [v3 setBaselineInterval_];
        goto LABEL_152;
      default:
        if ((v9 & 7) > 1)
        {
          if (v10 == 2)
          {
            v54 = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_173;
            }

            if (v54 < 0)
            {
              goto LABEL_196;
            }

            v32 = *(a1 + 8) + v54;
          }

          else
          {
            if (v10 != 5)
            {
              goto LABEL_172;
            }

            v32 = *(a1 + 8) + 4;
          }

          if (v6 < v32)
          {
            goto LABEL_172;
          }

          goto LABEL_161;
        }

        if ((v9 & 7) != 0)
        {
          if (v10 != 1)
          {
            goto LABEL_172;
          }

          v32 = *(a1 + 8) + 8;
          if (v6 < v32)
          {
            goto LABEL_172;
          }

LABEL_161:
          *(a1 + 8) = v32;
          goto LABEL_153;
        }

        ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_173;
        }

LABEL_153:
        v4 = *(a1 + 8);
        v9 = v5;
        if (v4 >= v6)
        {
          *(a1 + 24) = 0;
          if ((v60 & 1) == 0)
          {
LABEL_176:
            v58 = 2;
            if (v61 == 1)
            {
              v58 = 3;
            }

            if (v61 == 2)
            {
              v59 = 4;
            }

            else
            {
              v59 = v58;
            }

            [v3 setHorizontalAlignment_];
            [v3 setFullyJustified_];
          }

          return v3;
        }

        break;
    }
  }

  v9 = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    goto LABEL_173;
  }

  if (v9 >= 8)
  {
    v5 = 0;
    goto LABEL_12;
  }

LABEL_172:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_173:

  return v3;
}

void TextLayoutProperties.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v119) = 1;
  v149 = 1;
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  v5 = v150;
  v118 = static Text.Sizing.standard;
  v6 = qword_1ED5372E8;
  v7 = v119;
  v8 = v149;
  v156 = v119;
  v154 = v149;
  v9 = a1[1];
  v10 = a1[2];

  if (v9 >= v10)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    LOBYTE(v12) = 0;
    v18 = 0.0;
    v19 = 1.0;
    v17 = 0.0;
    v16 = 0.0;
    v27 = 1;
    v15 = 0.0;
    v13 = 0.0;
    v14 = 1.0;
    goto LABEL_6;
  }

  v11 = 0;
  v12 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 1;
  v13 = 0.0;
  v14 = 1.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 1.0;
  while (2)
  {
    v31 = a1[3];
    if (!v31)
    {
      goto LABEL_20;
    }

    v32 = a1[4];
    if (v9 >= v32)
    {
      if (v32 < v9)
      {
        goto LABEL_212;
      }

      a1[3] = 0;
LABEL_20:
      v31 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_213;
      }

      if (v31 <= 7)
      {
        goto LABEL_212;
      }
    }

    switch(v31 >> 3)
    {
      case 1uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_29;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v33 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v33 < 0)
        {
          goto LABEL_227;
        }

        v34 = a1[1] + v33;
        if (v10 < v34)
        {
          goto LABEL_212;
        }

        a1[3] = 8;
        a1[4] = v34;
LABEL_29:
        v35 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v35 == 1)
        {
          v112 = 0;
        }

        else if (v35 == 3)
        {
          v112 = 2;
        }

        else
        {
          v112 = 1;
        }

        goto LABEL_15;
      case 2uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_73;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v56 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v56 < 0)
        {
          goto LABEL_224;
        }

        v57 = a1[1] + v56;
        if (v10 < v57)
        {
          goto LABEL_212;
        }

        a1[3] = 16;
        a1[4] = v57;
LABEL_73:
        v58 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        v113 = -(v58 & 1) ^ (v58 >> 1);
        v156 = 0;
        goto LABEL_15;
      case 3uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_101;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v68 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v68 < 0)
        {
          goto LABEL_221;
        }

        v69 = a1[1] + v68;
        if (v10 < v69)
        {
          goto LABEL_212;
        }

        a1[3] = 24;
        a1[4] = v69;
LABEL_101:
        v70 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        v114 = -(v70 & 1) ^ (v70 >> 1);
        v154 = 0;
        goto LABEL_15;
      case 4uLL:
        v64 = v31 & 7;
        if (v64 == 5)
        {
          v98 = a1[1];
          if (v10 < (v98 + 1))
          {
            goto LABEL_212;
          }

          v99 = *v98;
          a1[1] = v98 + 1;
          v19 = v99;
        }

        else
        {
          if (v64 == 2)
          {
            v92 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_213;
            }

            if (v92 < 0)
            {
              goto LABEL_236;
            }

            v65 = a1[1];
            if (v10 < v65 + v92)
            {
              goto LABEL_212;
            }

            a1[3] = 33;
            a1[4] = v65 + v92;
          }

          else
          {
            if (v64 != 1)
            {
              goto LABEL_212;
            }

            v65 = a1[1];
          }

          if (v10 < (v65 + 1))
          {
            goto LABEL_212;
          }

          v19 = *v65;
          a1[1] = v65 + 1;
        }

        goto LABEL_15;
      case 5uLL:
        v43 = v31 & 7;
        if (v43 == 5)
        {
          v93 = a1[1];
          if (v10 < (v93 + 1))
          {
            goto LABEL_212;
          }

          v94 = *v93;
          a1[1] = v93 + 1;
          v18 = v94;
        }

        else
        {
          if (v43 == 2)
          {
            v90 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_213;
            }

            if (v90 < 0)
            {
              goto LABEL_231;
            }

            v44 = a1[1];
            if (v10 < v44 + v90)
            {
              goto LABEL_212;
            }

            a1[3] = 41;
            a1[4] = v44 + v90;
          }

          else
          {
            if (v43 != 1)
            {
              goto LABEL_212;
            }

            v44 = a1[1];
          }

          if (v10 < (v44 + 1))
          {
            goto LABEL_212;
          }

          v18 = *v44;
          a1[1] = v44 + 1;
        }

        goto LABEL_15;
      case 7uLL:
        v59 = v31 & 7;
        if (v59 == 5)
        {
          v95 = a1[1];
          if (v10 < (v95 + 1))
          {
            goto LABEL_212;
          }

          v96 = *v95;
          a1[1] = v95 + 1;
          v17 = v96;
        }

        else
        {
          if (v59 == 2)
          {
            v91 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_213;
            }

            if (v91 < 0)
            {
              goto LABEL_232;
            }

            v60 = a1[1];
            if (v10 < v60 + v91)
            {
              goto LABEL_212;
            }

            a1[3] = 57;
            a1[4] = v60 + v91;
          }

          else
          {
            if (v59 != 1)
            {
              goto LABEL_212;
            }

            v60 = a1[1];
          }

          if (v10 < (v60 + 1))
          {
            goto LABEL_212;
          }

          v17 = *v60;
          a1[1] = v60 + 1;
        }

        goto LABEL_15;
      case 8uLL:
        v71 = v31 & 7;
        if (v71 == 5)
        {
          v101 = a1[1];
          if (v10 < (v101 + 1))
          {
            goto LABEL_212;
          }

          v102 = *v101;
          a1[1] = v101 + 1;
          v16 = v102;
        }

        else
        {
          if (v71 == 2)
          {
            v97 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_213;
            }

            if (v97 < 0)
            {
              goto LABEL_233;
            }

            v72 = a1[1];
            if (v10 < v72 + v97)
            {
              goto LABEL_212;
            }

            a1[3] = 65;
            a1[4] = v72 + v97;
          }

          else
          {
            if (v71 != 1)
            {
              goto LABEL_212;
            }

            v72 = a1[1];
          }

          if (v10 < (v72 + 1))
          {
            goto LABEL_212;
          }

          v16 = *v72;
          a1[1] = v72 + 1;
        }

        goto LABEL_15;
      case 9uLL:
        v73 = v31 & 7;
        if (v73 == 5)
        {
          v103 = a1[1];
          if (v10 < (v103 + 1))
          {
            goto LABEL_212;
          }

          v104 = *v103;
          a1[1] = v103 + 1;
          v15 = v104;
        }

        else
        {
          if (v73 == 2)
          {
            v100 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_213;
            }

            if (v100 < 0)
            {
              goto LABEL_234;
            }

            v74 = a1[1];
            if (v10 < v74 + v100)
            {
              goto LABEL_212;
            }

            a1[3] = 73;
            a1[4] = v74 + v100;
          }

          else
          {
            if (v73 != 1)
            {
              goto LABEL_212;
            }

            v74 = a1[1];
          }

          if (v10 < (v74 + 1))
          {
            goto LABEL_212;
          }

          v15 = *v74;
          a1[1] = v74 + 1;
        }

        goto LABEL_15;
      case 0xAuLL:
        v83 = v31 & 7;
        if (v83 == 5)
        {
          v106 = a1[1];
          if (v10 < (v106 + 1))
          {
            goto LABEL_212;
          }

          v107 = *v106;
          a1[1] = v106 + 1;
          v13 = v107;
        }

        else
        {
          if (v83 == 2)
          {
            v105 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_213;
            }

            if (v105 < 0)
            {
              goto LABEL_235;
            }

            v84 = a1[1];
            if (v10 < v84 + v105)
            {
              goto LABEL_212;
            }

            a1[3] = 81;
            a1[4] = v84 + v105;
          }

          else
          {
            if (v83 != 1)
            {
              goto LABEL_212;
            }

            v84 = a1[1];
          }

          if (v10 < (v84 + 1))
          {
            goto LABEL_212;
          }

          v13 = *v84;
          a1[1] = v84 + 1;
        }

        goto LABEL_15;
      case 0xBuLL:
        v119 = v31;
        v82 = ProtobufDecoder.doubleField(_:)(&v119);
        if (v2)
        {
          goto LABEL_213;
        }

        v14 = v82;
        goto LABEL_15;
      case 0xCuLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_47;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v39 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v39 < 0)
        {
          goto LABEL_222;
        }

        v40 = a1[1] + v39;
        if (v10 < v40)
        {
          goto LABEL_212;
        }

        a1[3] = 96;
        a1[4] = v40;
LABEL_47:
        v41 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        v42 = v41 == 2;
        if (v41 == 3)
        {
          v42 = 2;
        }

        v115 = v42;
        goto LABEL_15;
      case 0xDuLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_85;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v61 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v61 < 0)
        {
          goto LABEL_228;
        }

        v62 = a1[1] + v61;
        if (v10 < v62)
        {
          goto LABEL_212;
        }

        a1[3] = 104;
        a1[4] = v62;
LABEL_85:
        v63 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        LOBYTE(v116) = v63 != 0;
        goto LABEL_15;
      case 0xEuLL:
        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v5 = v6;
        v6 = v11;
        v45 = a1[5];
        v46 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
        }

        v48 = *(v45 + 2);
        v47 = *(v45 + 3);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
          v49 = v48 + 1;
          v45 = v109;
        }

        *(v45 + 2) = v49;
        *&v45[8 * v48 + 32] = v10;
        a1[5] = v45;
        v50 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          LOBYTE(v12) = v46;
LABEL_218:
          v110 = v118;
          v6 = v5;
          v5 = v150;
LABEL_214:
          v119 = v113;
          v120 = v156;
          *v121 = *(v5 + 18);
          *&v121[3] = *(v5 + 21);
          v122 = v114;
          v123 = v154;
          v124 = v112;
          v125 = v115;
          v126 = v116;
          v127 = v111;
          v128 = *(v5 + 7);
          v129 = v153;
          v130 = v19;
          v131 = v18;
          v132 = 0;
          v133 = v17;
          v134 = v16;
          v135 = v15;
          v136 = BYTE4(v116);
          v137 = v117;
          v138 = *(v5 + 7);
          v139 = v151;
          v140 = v13;
          v141 = v14;
          v142 = v110;
          *&v143[3] = *(v5 + 3);
          *v143 = *v5;
          v144 = v6;
          v145 = 2;
          v146 = 0;
          v147 = 0;
          v148 = v12;
          outlined destroy of TextLayoutProperties(&v119);
          return;
        }

        if (v50 < 0)
        {
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
          __break(1u);
          JUMPOUT(0x18D35695CLL);
        }

        LOBYTE(v12) = v46;
        v51 = a1[1] + v50;
        if (v10 < v51)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_218;
        }

        a1[2] = v51;
        ContentTransition.Style.init(from:)(a1, &v119);
        v52 = a1[5];
        if (!*(v52 + 2))
        {
          goto LABEL_220;
        }

        LOBYTE(v12) = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v53 = *(v52 + 2);
          if (!v53)
          {
            goto LABEL_211;
          }

          goto LABEL_66;
        }

        v52 = specialized _ArrayBuffer._consumeAndCreateNew()(v52);
        v53 = *(v52 + 2);
        if (!v53)
        {
LABEL_211:
          __break(1u);
LABEL_212:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_213:
          v110 = v118;
          goto LABEL_214;
        }

LABEL_66:
        v54 = v53 - 1;
        v55 = *&v52[8 * v54 + 32];
        *(v52 + 2) = v54;
        a1[5] = v52;
        a1[2] = v55;
        v111 = v119;
        v12 = v46;
        v11 = v6;
        v6 = v5;
        v5 = v150;
LABEL_15:
        v9 = a1[1];
        v10 = a1[2];
        if (v9 < v10)
        {
          continue;
        }

        v7 = v156;
        v8 = v154;
        v25 = BYTE4(v116);
        v26 = v117;
        v22 = v115;
        v23 = v116;
        v20 = v113;
        v21 = v114;
        v24 = v111;
        v27 = v112;
LABEL_6:
        a1[3] = 0;
        *a2 = v20;
        *(a2 + 8) = v7;
        *(a2 + 9) = *v155;
        *(a2 + 12) = *&v155[3];
        *(a2 + 16) = v21;
        *(a2 + 24) = v8;
        *(a2 + 25) = v27;
        *(a2 + 26) = v22;
        *(a2 + 27) = v23;
        *(a2 + 28) = v24;
        *(a2 + 29) = v152;
        *(a2 + 31) = v153;
        *(a2 + 32) = v19;
        *(a2 + 40) = v18;
        *(a2 + 48) = 0;
        *(a2 + 56) = v17;
        *(a2 + 64) = v16;
        *(a2 + 72) = v15;
        *(a2 + 80) = v25;
        *(a2 + 81) = v26;
        *(a2 + 86) = v151;
        *(a2 + 82) = *&v150[7];
        *(a2 + 88) = v13;
        *(a2 + 96) = v14;
        *(a2 + 104) = v118;
        *(a2 + 108) = *&v150[3];
        *(a2 + 105) = *v150;
        *(a2 + 112) = v6;
        *(a2 + 120) = 2;
        *(a2 + 128) = 0;
        *(a2 + 136) = 0;
        *(a2 + 144) = v12;
        return;
      case 0x10uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_39;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v36 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v36 < 0)
        {
          goto LABEL_229;
        }

        v37 = a1[1] + v36;
        if (v10 < v37)
        {
          goto LABEL_212;
        }

        a1[3] = 128;
        a1[4] = v37;
LABEL_39:
        v38 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        v117 = v38 == 1;
        goto LABEL_15;
      case 0x11uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_7;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v75 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v75 < 0)
        {
          goto LABEL_225;
        }

        v76 = a1[1] + v75;
        if (v10 < v76)
        {
          goto LABEL_212;
        }

        a1[3] = 136;
        a1[4] = v76;
LABEL_7:
        v28 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        v29 = v11 & 0xFFFFFFFE;
        v30 = v11 | 1;
        goto LABEL_9;
      case 0x12uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_123;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v77 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v77 < 0)
        {
          goto LABEL_230;
        }

        v78 = a1[1] + v77;
        if (v10 < v78)
        {
          goto LABEL_212;
        }

        a1[3] = 144;
        a1[4] = v78;
LABEL_123:
        v79 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        v80 = v79;

        if (v80 == 2)
        {
          v81 = 2;
        }

        else
        {
          v81 = v80 == 1;
        }

        v118 = v81;
        v6 = MEMORY[0x1E69E7CC0];
        goto LABEL_15;
      case 0x13uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_148;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v88 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v88 < 0)
        {
          goto LABEL_226;
        }

        v89 = a1[1] + v88;
        if (v10 < v89)
        {
          goto LABEL_212;
        }

        a1[3] = 152;
        a1[4] = v89;
LABEL_148:
        v28 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        v29 = v11 & 0xFFFFFFFD;
        v30 = v11 | 2;
LABEL_9:
        if (v28)
        {
          v12 = v30;
        }

        else
        {
          v12 = v29;
        }

        if (v28)
        {
          v11 = v30;
        }

        else
        {
          v11 = v29;
        }

        goto LABEL_15;
      case 0x14uLL:
        if ((v31 & 7) == 0)
        {
          goto LABEL_140;
        }

        if ((v31 & 7) != 2)
        {
          goto LABEL_212;
        }

        v85 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        if (v85 < 0)
        {
          goto LABEL_223;
        }

        v86 = a1[1] + v85;
        if (v10 < v86)
        {
          goto LABEL_212;
        }

        a1[3] = 160;
        a1[4] = v86;
LABEL_140:
        v87 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_213;
        }

        BYTE4(v116) = v87 != 0;
        goto LABEL_15;
      default:
        v66 = v31 & 7;
        if (v66 > 1)
        {
          if (v66 == 2)
          {
            v108 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_213;
            }

            if (v108 < 0)
            {
              goto LABEL_237;
            }

            v67 = a1[1] + v108;
          }

          else
          {
            if (v66 != 5)
            {
              goto LABEL_212;
            }

            v67 = a1[1] + 4;
          }
        }

        else
        {
          if ((v31 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_213;
            }

            goto LABEL_15;
          }

          if (v66 != 1)
          {
            goto LABEL_212;
          }

          v67 = a1[1] + 8;
        }

        if (v10 < v67)
        {
          goto LABEL_212;
        }

        a1[1] = v67;
        goto LABEL_15;
    }
  }
}

uint64_t NamedImage.Cache.__deallocating_deinit()
{

  outlined destroy of NamedImage.Cache.Data(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t DisplayList.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = MEMORY[0x1E69E7CC0];
  if (v5 >= v6)
  {
LABEL_45:
    a1[3] = 0;
    result = DisplayList.init(_:)(v7, v35);
    v25 = WORD4(v35[0]);
    v26 = HIDWORD(v35[0]);
    *a2 = *&v35[0];
    *(a2 + 8) = v25;
    *(a2 + 12) = v26;
    return result;
  }

  while (1)
  {
    v8 = a1[3];
    if (v8)
    {
      v9 = a1[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_46;
      }

      a1[3] = 0;
    }

    v8 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (v8 < 8)
    {
LABEL_46:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }

LABEL_11:
    if ((v8 & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      v21 = v8 & 7;
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v23 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if (v23 < 0)
          {
            goto LABEL_52;
          }

          v22 = a1[1] + v23;
          if (v6 < v22)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v21 != 5)
          {
            goto LABEL_46;
          }

          v22 = a1[1] + 4;
          if (v6 < v22)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        if ((v8 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          goto LABEL_4;
        }

        if (v21 != 1)
        {
          goto LABEL_46;
        }

        v22 = a1[1] + 8;
        if (v6 < v22)
        {
          goto LABEL_46;
        }
      }

      a1[1] = v22;
      goto LABEL_4;
    }

    if ((v8 & 7) != 2)
    {
      goto LABEL_46;
    }

    v10 = a1[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    *&v10[8 * v12 + 32] = v6;
    a1[5] = v10;
    v13 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (v13 < 0)
    {
      break;
    }

    v14 = a1[1] + v13;
    if (v6 < v14)
    {
      goto LABEL_46;
    }

    a1[2] = v14;
    DisplayList.Item.init(from:)(a1, v35);
    v15 = a1[5];
    if (!*(v15 + 2))
    {
      goto LABEL_50;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = *(v15 + 2);
      if (!v16)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v16 = *(v15 + 2);
      if (!v16)
      {
        goto LABEL_51;
      }
    }

    v17 = v16 - 1;
    v6 = *&v15[8 * v17 + 32];
    *(v15 + 2) = v17;
    a1[5] = v15;
    a1[2] = v6;
    v33 = v35[2];
    *v34 = v36[0];
    *&v34[12] = *(v36 + 12);
    v31 = v35[0];
    v32 = v35[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v19 = *(v7 + 2);
    v18 = *(v7 + 3);
    if (v19 >= v18 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v7);
    }

    *(v7 + 2) = v19 + 1;
    v20 = &v7[80 * v19];
    *(v20 + 2) = v31;
    *(v20 + 92) = *&v34[12];
    *(v20 + 4) = v33;
    *(v20 + 5) = *v34;
    *(v20 + 3) = v32;
LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v29 = result;
  v30 = *(result + 16);
  if (v30)
  {
    v27 = v30 - 1;
    v28 = *(result + 8 * v27 + 32);
    *(result + 16) = v27;

    a1[5] = v29;
    a1[2] = v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Path.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = result;
  v67 = *MEMORY[0x1E69E9840];
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
    v8 = 0;
    v9 = 0;
    v11 = 0uLL;
    v64 = 6;
LABEL_81:
    v5[3] = 0;
    *a2 = v8;
    *(a2 + 8) = v11;
    *(a2 + 24) = v9;
    *(a2 + 32) = v64;
    return result;
  }

  v8 = 0;
  v9 = 0;
  v64 = 6;
  v10 = 0uLL;
  while (1)
  {
    result = v5[3];
    v63 = v10;
    if (result)
    {
      v12 = v5[4];
      if (v6 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v6)
      {
        goto LABEL_82;
      }

      v5[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
    }

    if (result < 8)
    {
      goto LABEL_82;
    }

LABEL_11:
    v13 = result >> 3;
    if (result >> 3 > 2)
    {
      break;
    }

    if (v13 == 1)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_82;
      }

      v31 = v5[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v3 = *(v31 + 2);
      v32 = *(v31 + 3);
      isa = (v3 + 1);
      if (v3 >= v32 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v3 + 1, 1, v31);
      }

      *(v31 + 2) = isa;
      *&v31[8 * v3 + 32] = v7;
      v5[5] = v31;
      v33 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
      }

      if (v33 < 0)
      {
        goto LABEL_100;
      }

      v34 = v5[1] + v33;
      if (v7 < v34)
      {
        goto LABEL_82;
      }

      v5[2] = v34;
      memset(v66, 0, sizeof(v66));
      closure #1 in EdgeInsets.init(from:)(v66, v5, &v65);
      v35 = v5[5];
      if (!*(v35 + 2))
      {
        goto LABEL_101;
      }

      v3 = *&v66[0];
      v62 = *(v66 + 8);
      isa = *(&v66[1] + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
      }

      v36 = *(v35 + 2);
      if (!v36)
      {
        goto LABEL_106;
      }

      v37 = v36 - 1;
      v7 = *&v35[8 * v37 + 32];
      *(v35 + 2) = v37;
      result = outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
      v64 = 0;
      v5[5] = v35;
      v5[2] = v7;
      goto LABEL_3;
    }

    if (v13 == 2)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_82;
      }

      v14 = v5[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      }

      v3 = *(v14 + 2);
      v15 = *(v14 + 3);
      isa = (v3 + 1);
      if (v3 >= v15 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v3 + 1, 1, v14);
      }

      *(v14 + 2) = isa;
      *&v14[8 * v3 + 32] = v7;
      v5[5] = v14;
      v16 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
      }

      if (v16 < 0)
      {
        goto LABEL_99;
      }

      v17 = v5[1] + v16;
      if (v7 < v17)
      {
        goto LABEL_82;
      }

      v5[2] = v17;
      memset(v66, 0, sizeof(v66));
      closure #1 in EdgeInsets.init(from:)(v66, v5, &v65);
      v18 = v5[5];
      if (!*(v18 + 2))
      {
        goto LABEL_102;
      }

      v3 = *&v66[0];
      v62 = *(v66 + 8);
      isa = *(&v66[1] + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      }

      v19 = *(v18 + 2);
      if (!v19)
      {
        goto LABEL_104;
      }

      v20 = v19 - 1;
      v7 = *&v18[8 * v20 + 32];
      *(v18 + 2) = v20;
      result = outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
      v5[5] = v18;
      v5[2] = v7;
      v64 = 1;
LABEL_3:
      v8 = v3;
      v9 = isa;
      v2 = 0;
      v11 = v62;
      goto LABEL_4;
    }

LABEL_37:
    v29 = result & 7;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        if (v29 != 5)
        {
          goto LABEL_82;
        }

        v30 = v5[1] + 4;
        goto LABEL_70;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_109;
      }

      v48 = v5[1] + result;
      if (v7 < v48)
      {
        goto LABEL_82;
      }

      v5[1] = v48;
      v11 = v63;
    }

    else
    {
      if ((result & 7) != 0)
      {
        if (v29 != 1)
        {
          goto LABEL_82;
        }

        v30 = v5[1] + 8;
LABEL_70:
        if (v7 < v30)
        {
          goto LABEL_82;
        }

        v5[1] = v30;
        v11 = v63;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
      }

      v11 = v63;
    }

LABEL_4:
    v6 = v5[1];
    v10 = v11;
    if (v6 >= v7)
    {
      goto LABEL_81;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_82;
      }

      v21 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
      }

      v22 = v21;
      if (v21 < 0)
      {
        goto LABEL_98;
      }

      v3 = v5[1];
      if (v7 < v3 + v21)
      {
LABEL_82:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v9, v64);
      }

      v23 = v8;
      v8 = v9;
      v5[1] = (v3 + v21);
      if (v21)
      {
        v9 = (v3 - [*v5 bytes]);
        v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        isa = v25;
        if (__OFADD__(v9, v22))
        {
          goto LABEL_107;
        }

        if (&v9[v22] < v9)
        {
          goto LABEL_108;
        }

        v26 = v24;
        v22 = Data._Representation.subscript.getter();
        v28 = v27;
        outlined consume of Data._Representation(v26, isa);
      }

      else
      {
        v28 = 0xC000000000000000;
      }

      isa = Data._bridgeToObjectiveC()().super.isa;
      v46 = RBPathMakeWithData();
      v3 = v47;
      outlined consume of Data._Representation(v22, v28);
      outlined consume of Path.Storage(v23, v63, *(&v63 + 1), v8, v64);

      type metadata accessor for Path.PathBox();
      result = swift_allocObject();
      v8 = result;
      v9 = 0;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 16) = 1;
      v11 = 0uLL;
      *(result + 24) = v46;
      *(result + 32) = v3;
      v64 = 5;
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  v38 = result;
  v39 = swift_allocObject();
  if ((v38 & 7) != 2)
  {
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v50 = *(&v63 + 1);
    v49 = v63;
    v51 = v8;
    v52 = v9;
LABEL_87:
    outlined consume of Path.Storage(v51, v49, v50, v52, v64);
    return swift_deallocUninitializedObject();
  }

  v40 = v9;
  v9 = v5[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v3 = *(v9 + 2);
  v41 = *(v9 + 3);
  isa = (v3 + 1);
  if (v3 >= v41 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v3 + 1, 1, v9);
  }

  *(v9 + 2) = isa;
  *&v9[8 * v3 + 32] = v7;
  v5[5] = v9;
  v42 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    v50 = *(&v63 + 1);
    v49 = v63;
    v51 = v8;
    v52 = v40;
    goto LABEL_87;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    isa = v40;
    v43 = v5[1] + v42;
    if (v7 < v43)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v50 = *(&v63 + 1);
      v49 = v63;
      v51 = v8;
      v52 = v40;
      goto LABEL_87;
    }

    v5[2] = v43;
    FixedRoundedRect.init(from:)(v5, v39 + 16);
    v9 = v5[5];
    if (!*(v9 + 2))
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v44 = *(v9 + 2);
    if (!v44)
    {
      goto LABEL_105;
    }

    v45 = v44 - 1;
    v7 = *&v9[8 * v45 + 32];
    *(v9 + 2) = v45;
    result = outlined consume of Path.Storage(v8, v63, *(&v63 + 1), v40, v64);
    v5[5] = v9;
    v9 = 0;
    v5[2] = v7;
    v11 = 0uLL;
    v64 = 2;
    v8 = v39;
    goto LABEL_4;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
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
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    __break(1u);
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v53 = v63;
    v54 = *(v3 + 16);
    if (v54)
    {
      goto LABEL_93;
    }

    __break(1u);
    v3 = v5[5];
  }

  while (!*(v3 + 16));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v53 = v63;
  v54 = *(v3 + 16);
  if (v54)
  {
LABEL_93:
    v55 = v54 - 1;
    v56 = *(v3 + 8 * v55 + 32);
    *(v3 + 16) = v55;
    result = outlined consume of Path.Storage(v8, v53, *(&v53 + 1), v9, v64);
    v5[5] = v3;
    v5[2] = v56;
    return result;
  }

  __break(1u);
  v60 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v57 = *(v60 + 2);
  if (!v57)
  {
    __break(1u);
  }

  v58 = v57 - 1;
  v59 = *&v60[8 * v58 + 32];
  *(v60 + 2) = v58;
  outlined consume of Path.Storage(v8, v63, *(&v63 + 1), isa, v64);
  v5[5] = v60;
  v5[2] = v59;
  return swift_deallocUninitializedObject();
}

unint64_t specialized Color.Resolved.init(from:)(unint64_t result)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v3 >= v4)
  {
LABEL_64:
    v2[3] = 0;
    return result;
  }

  while (1)
  {
    result = v2[3];
    if (result)
    {
      v5 = v2[4];
      if (v3 < v5)
      {
        goto LABEL_8;
      }

      if (v5 < v3)
      {
        goto LABEL_65;
      }

      v2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_65:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_8:
    v6 = result >> 3;
    v7 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v6 == 3)
    {
      if (v7 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v11 = v2[1];
        if (v4 < v11 + result)
        {
          goto LABEL_65;
        }

        v2[3] = 29;
        v2[4] = v11 + result;
      }

      else
      {
        if (v7 != 5)
        {
          goto LABEL_65;
        }

        v11 = v2[1];
      }

      v3 = v11 + 4;
      if (v4 < v11 + 4)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    if (v6 == 4)
    {
      if (v7 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v9 = v2[1];
        if (v4 < v9 + result)
        {
          goto LABEL_65;
        }

        v2[3] = 37;
        v2[4] = v9 + result;
      }

      else
      {
        if (v7 != 5)
        {
          goto LABEL_65;
        }

        v9 = v2[1];
      }

      v3 = v9 + 4;
      if (v4 < v9 + 4)
      {
        goto LABEL_65;
      }

LABEL_63:
      v2[1] = v3;
      if (v3 >= v4)
      {
        goto LABEL_64;
      }
    }

    else
    {
LABEL_19:
      if ((result & 7) > 1)
      {
        if (v7 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v3 = v2[1] + result;
        }

        else
        {
          if (v7 != 5)
          {
            goto LABEL_65;
          }

          v3 = v2[1] + 4;
        }

        goto LABEL_62;
      }

      if ((result & 7) != 0)
      {
        if (v7 != 1)
        {
          goto LABEL_65;
        }

        v3 = v2[1] + 8;
LABEL_62:
        if (v4 < v3)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        return result;
      }

      v3 = v2[1];
      if (v3 >= v4)
      {
        goto LABEL_64;
      }
    }
  }

  if (v6 == 1)
  {
    if (v7 == 2)
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      v10 = v2[1];
      if (v4 < v10 + result)
      {
        goto LABEL_65;
      }

      v2[3] = 13;
      v2[4] = v10 + result;
    }

    else
    {
      if (v7 != 5)
      {
        goto LABEL_65;
      }

      v10 = v2[1];
    }

    v3 = v10 + 4;
    if (v4 < v10 + 4)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  if (v6 != 2)
  {
    goto LABEL_19;
  }

  if (v7 != 2)
  {
    if (v7 != 5)
    {
      goto LABEL_65;
    }

    v8 = v2[1];
    goto LABEL_36;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v8 = v2[1];
    if (v4 < v8 + result)
    {
      goto LABEL_65;
    }

    v2[3] = 21;
    v2[4] = v8 + result;
LABEL_36:
    v3 = v8 + 4;
    if (v4 < v8 + 4)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

void type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>()
{
  if (!lazy cache variable for type metadata for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>)
  {
    type metadata accessor for CodableAccessibilityAttachmentStorage.V2(255);
    type metadata accessor for CodableAccessibilityAttachmentStorage.V3(255);
    v0 = type metadata accessor for CodableAccessibilityVersionStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>);
    }
  }
}

uint64_t CodableAccessibilityAttachmentStorage.V3.init(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v209 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v203 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v205 = &v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v210 = &v191 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v191 - v15;
  v17 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);
  v18 = (a2 + v17[6]);
  *v18 = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = xmmword_18DD85500;
  v215 = v18;
  v221 = v17[7];
  *(a2 + v221) = 0;
  v19 = a2 + v17[8];
  *v19 = 0;
  *(v19 + 8) = 0;
  v196 = v19;
  *(v19 + 16) = -1;
  v195 = v17[9];
  *(a2 + v195) = 0;
  v201 = v17[10];
  *(a2 + v201) = 7;
  v200 = v17[11];
  *(a2 + v200) = 8;
  v214 = v17[12];
  *(a2 + v214) = 0;
  v20 = (a2 + v17[13]);
  *v20 = 0;
  v20[1] = 0;
  v197 = v20;
  v202 = v17;
  v204 = v17[14];
  *(a2 + v204) = 2;
  v211 = v8;
  v21 = *(v8 + 56);
  v220 = v16;
  v213 = v7;
  v199 = v8 + 56;
  v198 = v21;
  v21(v16, 1, 1, v7);
  v229 = 1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (v22 >= v23)
  {
    v206 = 0uLL;
    v219 = 0;
    v208 = 0;
    v218 = 0;
    v207 = 0;
    v217 = 0;
    v216 = 0;
LABEL_4:
    v222 = v2;
    *(a1 + 24) = 0;
    v24 = v220;
    v25 = v210;
    outlined init with copy of AccessibilityNodeAttachment.Storage(v220, v210, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
    if ((*(v211 + 48))(v25, 1, v213) != 1)
    {
      outlined destroy of CodableAccessibilityAttachmentStorage(v24, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
      v27 = v203;
      outlined init with take of CodableAccessibilityAttachmentStorage(v25, v203, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase);
      result = outlined init with take of CodableAccessibilityAttachmentStorage(v27, a2, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase);
      v29 = v229;
      v30 = a2 + v202[5];
      v31 = v218;
      *v30 = v207;
      *(v30 + 8) = v31;
      v32 = v219;
      *(v30 + 16) = v208;
      *(v30 + 24) = v32;
      v33 = *(&v206 + 1);
      *(v30 + 32) = v206;
      *(v30 + 40) = v33;
      *(v30 + 48) = v29;
      return result;
    }

    outlined destroy of CodableAccessibilityAttachmentStorage(v25, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    v222 = swift_allocError();
    swift_willThrow();
    v26 = v24;
    goto LABEL_204;
  }

  v206 = 0uLL;
  v219 = 0;
  v208 = 0;
  v218 = 0;
  v207 = 0;
  v216 = 0;
  v217 = 0;
  v194 = 0;
  v193 = 0;
  v212 = a2;
  while (1)
  {
    v37 = *(a1 + 24);
    if (!v37)
    {
      goto LABEL_18;
    }

    v38 = *(a1 + 32);
    if (v22 >= v38)
    {
      break;
    }

LABEL_20:
    switch(v37 >> 3)
    {
      case 1uLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_202;
        }

        CodableAccessibilityAttachmentStorage.VBase.init(from:)(a1, v205);
        if (!*(*(a1 + 40) + 16))
        {
          goto LABEL_231;
        }

        v39 = specialized Array._customRemoveLast()();
        if (!v39)
        {
          v39 = specialized Array.remove(at:)(*(*(a1 + 40) + 16) - 1);
        }

        v23 = v39;
        v40 = v220;
        outlined destroy of CodableAccessibilityAttachmentStorage(v220, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
        *(a1 + 16) = v23;
        v41 = v205;
        v198(v205, 0, 1, v213);
        outlined init with take of CodableAccessibilityAttachmentStorage(v41, v40, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
        goto LABEL_13;
      case 2uLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v117 = *a1;
        v23 = *(a1 + 16);
        v118 = *(a1 + 48);
        v119 = ProtobufDecoder.decodeVarint()();
        v222 = v2;
        if (v2)
        {
          goto LABEL_220;
        }

        v120 = v119;
        if (v119 < 0)
        {
          goto LABEL_223;
        }

        v121 = *(a1 + 8);
        if (v23 < v121 + v119)
        {
          goto LABEL_206;
        }

        *(a1 + 8) = v121 + v119;
        v122 = v117;

        if (v120)
        {
          v191 = v118;
          v123 = v121 - [v122 bytes];
          v124 = v122;
          v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v127 = v126;
          if (__OFADD__(v123, v120))
          {
            goto LABEL_240;
          }

          if (v123 + v120 < v123)
          {
            goto LABEL_248;
          }

          v128 = v125;
          v129 = Data._Representation.subscript.getter();
          v192 = v130;
          v131 = v128;
          v132 = v129;
          outlined consume of Data._Representation(v131, v127);
          v122 = v124;
        }

        else
        {
          v132 = 0;
          v192 = 0xC000000000000000;
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [CodableAccessibilityValueStorage], &type metadata for CodableAccessibilityValueStorage, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [CodableAccessibilityValueStorage] and conformance <A> [A]();
        v2 = v222;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v2)
        {
          v222 = v2;

          v189 = v132;
          goto LABEL_213;
        }

        if (!*(v223 + 16))
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v222 = swift_allocError();
          swift_willThrow();

          v189 = v132;
LABEL_213:
          v190 = v192;
LABEL_219:
          outlined consume of Data._Representation(v189, v190);
LABEL_220:
          outlined destroy of CodableAccessibilityAttachmentStorage(v220, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
          goto LABEL_205;
        }

        outlined init with copy of CodableAccessibilityValueStorage(v223 + 32, &v224);

        outlined consume of Data._Representation(v132, v192);

        outlined assign with take of CodableAccessibilityValueStorage?(&v224, v215, &lazy cache variable for type metadata for CodableAccessibilityValueStorage?, &type metadata for CodableAccessibilityValueStorage);
        a2 = v212;
        goto LABEL_13;
      case 3uLL:
        if (!*(a2 + v221))
        {
          *(a2 + v221) = MEMORY[0x1E69E7CC0];
        }

        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v86 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86);
        }

        v88 = *(v86 + 2);
        v87 = *(v86 + 3);
        if (v88 >= v87 >> 1)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v86);
        }

        *(v86 + 2) = v88 + 1;
        *&v86[8 * v88 + 32] = v23;
        *(a1 + 40) = v86;
        v89 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        if (v89 < 0)
        {
          goto LABEL_224;
        }

        v90 = *(a1 + 8) + v89;
        if (v23 < v90)
        {
          goto LABEL_201;
        }

        *(a1 + 16) = v90;
        AccessibilityText.init(from:)(a1, &v224);
        v91 = *(a1 + 40);
        if (!*(v91 + 2))
        {
          goto LABEL_233;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v92 = *(v91 + 2);
          if (!v92)
          {
            goto LABEL_237;
          }
        }

        else
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
          v92 = *(v91 + 2);
          if (!v92)
          {
            goto LABEL_237;
          }
        }

        v93 = v92 - 1;
        v23 = *&v91[8 * v93 + 32];
        *(v91 + 2) = v93;
        *(a1 + 40) = v91;
        *(a1 + 16) = v23;
        v94 = v224;
        v95 = v225;
        LODWORD(v222) = v226;
        v96 = *(v212 + v221);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
        }

        v98 = *(v96 + 2);
        v97 = *(v96 + 3);
        if (v98 >= v97 >> 1)
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v96);
        }

        *(v96 + 2) = v98 + 1;
        v99 = &v96[24 * v98];
        *(v99 + 2) = v94;
        v99[48] = v95;
        v99[49] = v222;
        a2 = v212;
        *(v212 + v221) = v96;
        goto LABEL_13;
      case 4uLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v100 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 2) + 1, 1, v100);
        }

        v102 = *(v100 + 2);
        v101 = *(v100 + 3);
        if (v102 >= v101 >> 1)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v100);
        }

        *(v100 + 2) = v102 + 1;
        *&v100[8 * v102 + 32] = v23;
        *(a1 + 40) = v100;
        v103 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        if (v103 < 0)
        {
          goto LABEL_225;
        }

        v104 = *(a1 + 8) + v103;
        if (v23 < v104)
        {
          goto LABEL_201;
        }

        *(a1 + 16) = v104;
        AccessibilityActivationPoint.Location.init(from:)(a1, &v224);
        v105 = *(a1 + 40);
        if (!*(v105 + 2))
        {
          goto LABEL_232;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v106 = *(v105 + 2);
          if (!v106)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
          v106 = *(v105 + 2);
          if (!v106)
          {
            goto LABEL_235;
          }
        }

        v107 = v106 - 1;
        v23 = *&v105[8 * v107 + 32];
        *(v105 + 2) = v107;
        *(a1 + 40) = v105;
        *(a1 + 16) = v23;
        LOBYTE(v107) = v225;
        v108 = v196;
        *v196 = v224;
        *(v108 + 16) = v107;
        goto LABEL_13;
      case 5uLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v44 = *a1;
        v23 = *(a1 + 16);
        v45 = *(a1 + 48);
        v46 = ProtobufDecoder.decodeVarint()();
        v222 = v2;
        if (v2)
        {
          goto LABEL_220;
        }

        v47 = v46;
        if (v46 < 0)
        {
          goto LABEL_228;
        }

        v48 = *(a1 + 8);
        if (v23 < v48 + v46)
        {
          goto LABEL_206;
        }

        *(a1 + 8) = v48 + v46;
        v49 = v44;

        v192 = v49;
        if (v47)
        {
          v191 = v45;
          v50 = v48 - [v49 bytes];
          v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;
          if (__OFADD__(v50, v47))
          {
            goto LABEL_241;
          }

          if (v50 + v47 < v50)
          {
            goto LABEL_250;
          }

          v54 = v51;
          v55 = Data._Representation.subscript.getter();
          v56 = v54;
          v58 = v57;
          v59 = v53;
          v60 = v55;
          outlined consume of Data._Representation(v56, v59);
        }

        else
        {
          v60 = 0;
          v58 = 0xC000000000000000;
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [CodableAccessibilityCustomContentList], &type metadata for CodableAccessibilityCustomContentList, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [CodableAccessibilityCustomContentList] and conformance <A> [A]();
        v2 = v222;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v2)
        {
          v222 = v2;

          v189 = v60;
          v190 = v58;
          goto LABEL_219;
        }

        if (!*(v224 + 16))
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v222 = swift_allocError();
          swift_willThrow();

          v189 = v60;
          v190 = v58;
          goto LABEL_219;
        }

        v172 = *(v224 + 32);

        outlined consume of Data._Representation(v60, v58);

        a2 = v212;
        *(v212 + v195) = v172;
        v216 = v172;
        goto LABEL_13;
      case 6uLL:
        if ((v37 & 7) == 0)
        {
          goto LABEL_109;
        }

        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v133 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        if (v133 < 0)
        {
          goto LABEL_254;
        }

        v134 = *(a1 + 8) + v133;
        if (v23 < v134)
        {
          goto LABEL_201;
        }

        *(a1 + 24) = 48;
        *(a1 + 32) = v134;
LABEL_109:
        v135 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        v35 = 8;
        if (v135 < 8)
        {
          v35 = v135;
        }

        v36 = &v227;
        goto LABEL_12;
      case 7uLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v140 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        v77 = v140;
        if (v140 < 0)
        {
          goto LABEL_230;
        }

        v141 = *(a1 + 8);
        if (v23 < v141 + v140)
        {
          goto LABEL_201;
        }

        *(a1 + 8) = v141 + v140;
        if (v140)
        {
          v142 = v141 - [*a1 bytes];
          v143 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v145 = v144;
          if (__OFADD__(v142, v77))
          {
            goto LABEL_244;
          }

          if (v142 + v77 < v142)
          {
            goto LABEL_249;
          }

          v146 = v143;
          v77 = Data._Representation.subscript.getter();
          v85 = v147;
          outlined consume of Data._Representation(v146, v145);
          a2 = v212;
        }

        else
        {
          v85 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v183 = String.init(data:encoding:)();
        if (!v184)
        {
LABEL_207:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v222 = swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(v77, v85);
LABEL_203:
          v26 = v220;
LABEL_204:
          outlined destroy of CodableAccessibilityAttachmentStorage(v26, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
          goto LABEL_205;
        }

        v181 = v184;
        v207 = v183;
        outlined consume of Data._Representation(v77, v85);

        v218 = v181;
        v182 = &v224;
LABEL_184:
        *(v182 - 32) = v181;
        v2 = 0;
        goto LABEL_13;
      case 8uLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v109 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        v77 = v109;
        if (v109 < 0)
        {
          goto LABEL_227;
        }

        v110 = *(a1 + 8);
        if (v23 < v110 + v109)
        {
          goto LABEL_201;
        }

        *(a1 + 8) = v110 + v109;
        if (v109)
        {
          v111 = v110 - [*a1 bytes];
          v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;
          if (__OFADD__(v111, v77))
          {
            goto LABEL_242;
          }

          if (v111 + v77 < v111)
          {
            goto LABEL_246;
          }

          v115 = v112;
          v77 = Data._Representation.subscript.getter();
          v85 = v116;
          outlined consume of Data._Representation(v115, v114);
          a2 = v212;
        }

        else
        {
          v85 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v179 = String.init(data:encoding:)();
        if (!v180)
        {
          goto LABEL_207;
        }

        v181 = v180;
        v208 = v179;
        outlined consume of Data._Representation(v77, v85);

        v219 = v181;
        v182 = &v224 + 8;
        goto LABEL_184;
      case 9uLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v156 = *a1;
        v23 = *(a1 + 16);
        v157 = ProtobufDecoder.decodeVarint()();
        v222 = v2;
        if (v2)
        {
          goto LABEL_203;
        }

        v158 = v157;
        if (v157 < 0)
        {
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
          __break(1u);
          JUMPOUT(0x18D3595F0);
        }

        v159 = *(a1 + 8);
        if (v23 < v159 + v157)
        {
          goto LABEL_201;
        }

        *(a1 + 8) = v159 + v157;
        v160 = v156;

        v191 = v160;
        if (v158)
        {
          v161 = v160;
          v162 = v159 - [v161 bytes];
          v163 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v165 = v164;
          if (__OFADD__(v162, v158))
          {
            goto LABEL_239;
          }

          if (v162 + v158 < v162)
          {
            goto LABEL_247;
          }

          v166 = v163;
          v192 = Data._Representation.subscript.getter();
          v167 = v166;
          v169 = v168;
          outlined consume of Data._Representation(v167, v165);
          a2 = v212;
        }

        else
        {
          v192 = 0;
          v169 = 0xC000000000000000;
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [CodableAXChartDescriptor], &type metadata for CodableAXChartDescriptor, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [CodableAXChartDescriptor] and conformance <A> [A]();
        v2 = v222;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v2)
        {
          v222 = v2;
          goto LABEL_215;
        }

        if (*(v224 + 16))
        {
          v185 = v169;
          v186 = *(v224 + 32);

          outlined consume of Data._Representation(v192, v185);

          v187 = v214;

          *(a2 + v187) = v186;
          goto LABEL_13;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        v222 = swift_allocError();
        swift_willThrow();
LABEL_215:

        outlined destroy of CodableAccessibilityAttachmentStorage(v220, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
        outlined consume of Data._Representation(v192, v169);

LABEL_205:

        outlined destroy of AccessibilityValueStorage?(v215, &lazy cache variable for type metadata for CodableAccessibilityValueStorage?, &type metadata for CodableAccessibilityValueStorage);

      case 0xAuLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v76 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        v77 = v76;
        if (v76 < 0)
        {
          goto LABEL_226;
        }

        v78 = *(a1 + 8);
        if (v23 < v78 + v76)
        {
          goto LABEL_201;
        }

        *(a1 + 8) = v78 + v76;
        if (v76)
        {
          v79 = v78 - [*a1 bytes];
          v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;
          if (__OFADD__(v79, v77))
          {
            goto LABEL_243;
          }

          if (v79 + v77 < v79)
          {
            goto LABEL_251;
          }

          v83 = v80;
          v77 = Data._Representation.subscript.getter();
          v85 = v84;
          outlined consume of Data._Representation(v83, v82);
          a2 = v212;
        }

        else
        {
          v85 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v174 = String.init(data:encoding:)();
        if (!v175)
        {
          goto LABEL_207;
        }

        v176 = v174;
        v177 = v175;
        outlined consume of Data._Representation(v77, v85);

        v178 = v197;
        *v197 = v176;
        v178[1] = v177;
        v217 = v177;
        goto LABEL_13;
      case 0xBuLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v148 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v148 + 2) + 1, 1, v148);
        }

        v150 = *(v148 + 2);
        v149 = *(v148 + 3);
        if (v150 >= v149 >> 1)
        {
          v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, v148);
        }

        *(v148 + 2) = v150 + 1;
        *&v148[8 * v150 + 32] = v23;
        *(a1 + 40) = v148;
        v151 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        if (v151 < 0)
        {
          goto LABEL_222;
        }

        v152 = *(a1 + 8) + v151;
        if (v23 < v152)
        {
          goto LABEL_201;
        }

        *(a1 + 16) = v152;
        CodableAccessibilityUIKitTraits.init(from:)(a1, &v224);
        v153 = *(a1 + 40);
        if (!*(v153 + 2))
        {
          goto LABEL_234;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v154 = *(v153 + 2);
          if (!v154)
          {
            goto LABEL_236;
          }
        }

        else
        {
          v153 = specialized _ArrayBuffer._consumeAndCreateNew()(v153);
          v154 = *(v153 + 2);
          if (!v154)
          {
            goto LABEL_236;
          }
        }

        v155 = v154 - 1;
        v23 = *&v153[8 * v155 + 32];
        *(v153 + 2) = v155;
        *(a1 + 40) = v153;
        *(a1 + 16) = v23;
        v206 = v224;
        v229 = 0;
        goto LABEL_13;
      case 0xCuLL:
        if ((v37 & 7) == 0)
        {
          goto LABEL_8;
        }

        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v42 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        if (v42 < 0)
        {
          goto LABEL_253;
        }

        v43 = *(a1 + 8) + v42;
        if (v23 < v43)
        {
          goto LABEL_201;
        }

        *(a1 + 24) = 96;
        *(a1 + 32) = v43;
LABEL_8:
        v34 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        v35 = 7;
        if (v34 < 7)
        {
          v35 = v34;
        }

        v36 = &v228;
LABEL_12:
        *(a2 + *(v36 - 32)) = v35;
        goto LABEL_13;
      case 0xDuLL:
        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v61 = *a1;
        v23 = *(a1 + 16);
        v62 = ProtobufDecoder.decodeVarint()();
        v222 = v2;
        if (v2)
        {
          goto LABEL_220;
        }

        v63 = v62;
        if (v62 < 0)
        {
          goto LABEL_229;
        }

        v64 = *(a1 + 8);
        if (v23 < v64 + v62)
        {
LABEL_206:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v222 = swift_allocError();
          swift_willThrow();
          goto LABEL_220;
        }

        *(a1 + 8) = v64 + v62;
        v65 = v61;

        v192 = v65;
        if (v63)
        {
          v66 = v64 - [v65 bytes];
          v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v68;
          if (__OFADD__(v66, v63))
          {
            goto LABEL_238;
          }

          if (v66 + v63 < v66)
          {
            goto LABEL_245;
          }

          v70 = v67;
          v71 = Data._Representation.subscript.getter();
          v73 = v72;
          v74 = v69;
          v75 = v73;
          outlined consume of Data._Representation(v70, v74);
        }

        else
        {
          v71 = 0;
          v75 = 0xC000000000000000;
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for [AccessibilityChildBehaviorKind?]();
        lazy protocol witness table accessor for type [AccessibilityNodeAttachment.Kind?] and conformance <A> [A](&lazy protocol witness table cache variable for type [AccessibilityChildBehaviorKind?] and conformance <A> [A], type metadata accessor for [AccessibilityChildBehaviorKind?], lazy protocol witness table accessor for type AccessibilityChildBehaviorKind? and conformance <A> A?);
        v2 = v222;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v2)
        {
          v222 = v2;
LABEL_217:

          v189 = v71;
          v190 = v75;
          goto LABEL_219;
        }

        if (!*(v224 + 16))
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v222 = swift_allocError();
          swift_willThrow();
          goto LABEL_217;
        }

        v173 = *(v224 + 32);

        outlined consume of Data._Representation(v71, v75);

        a2 = v212;
        *(v212 + v204) = v173;
        goto LABEL_13;
      case 0xEuLL:
        if ((v37 & 7) == 0)
        {
          goto LABEL_119;
        }

        if ((v37 & 7) != 2)
        {
          goto LABEL_201;
        }

        v136 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        if (v136 < 0)
        {
          goto LABEL_252;
        }

        v137 = *(a1 + 8) + v136;
        if (v23 < v137)
        {
          goto LABEL_201;
        }

        *(a1 + 24) = 112;
        *(a1 + 32) = v137;
LABEL_119:
        v138 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

        if (v138 == 1)
        {
          v139 = 1;
        }

        else
        {
          v139 = 2;
        }

        if (!v138)
        {
          v139 = 0;
        }

        *(a2 + v204) = v139;
        goto LABEL_13;
      default:
        v170 = v37 & 7;
        if (v170 > 1)
        {
          if (v170 == 2)
          {
            v188 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
LABEL_202:
              v222 = v2;
              goto LABEL_203;
            }

            if (v188 < 0)
            {
              goto LABEL_255;
            }

            v171 = *(a1 + 8) + v188;
            if (v23 < v171)
            {
LABEL_201:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              v222 = swift_allocError();
              swift_willThrow();
              goto LABEL_203;
            }
          }

          else
          {
            if (v170 != 5)
            {
              goto LABEL_201;
            }

            v171 = *(a1 + 8) + 4;
            if (v23 < v171)
            {
              goto LABEL_201;
            }
          }

LABEL_194:
          *(a1 + 8) = v171;
          goto LABEL_13;
        }

        if ((v37 & 7) != 0)
        {
          if (v170 != 1)
          {
            goto LABEL_201;
          }

          v171 = *(a1 + 8) + 8;
          if (v23 < v171)
          {
            goto LABEL_201;
          }

          goto LABEL_194;
        }

        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_202;
        }

LABEL_13:
        v22 = *(a1 + 8);
        if (v22 >= v23)
        {
          goto LABEL_4;
        }

        break;
    }
  }

  if (v38 < v22)
  {
    goto LABEL_201;
  }

  *(a1 + 24) = 0;
LABEL_18:
  v37 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_202;
  }

  if (v37 < 8)
  {
    goto LABEL_201;
  }

  goto LABEL_20;
}