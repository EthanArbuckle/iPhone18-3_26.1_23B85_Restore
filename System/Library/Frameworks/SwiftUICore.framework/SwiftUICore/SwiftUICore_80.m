void _GraphInputs.hasWidgetMetadata.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t CodableAttributedString.Range.extent.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t CodableAttributedString.Range.attributes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CodableAttributedString.encode(to:)(uint64_t a1)
{
  v47 = a1;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = [*v1 string];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 0xE000000000000000;
  }

  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    static String.Encoding.utf8.getter();
    v40 = String.data(using:allowLossyConversion:)();
    v42 = v41;

    (*(v4 + 8))(v7, v3);
    if (v42 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      return swift_willThrow();
    }

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v40, v42);
    outlined consume of Data?(v40, v42);
  }

  v45 = v2;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v15 = one-time initialization token for resolvableTextSegment;
  v16 = v14;
  if (v15 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v46 = static NSAttributedStringKey.resolvableTextSegment;
    v17 = [v16 length];
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in static ResolvableTextSegmentAttribute.toggleAttributes(in:);
    *(v19 + 24) = v18;
    v53 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
    v54 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v52 = &block_descriptor_1;
    v20 = _Block_copy(&aBlock);
    v21 = v16;

    [v21 enumerateAttribute:v46 inRange:0 options:v17 usingBlock:{0, v20}];
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      break;
    }

    v48 = MEMORY[0x1E69E7CC0];
    v23 = [v21 &selRef_setTextGraphicsContextProviderClass_];

    v24 = swift_allocObject();
    *(v24 + 16) = &v48;
    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for closure #1 in CodableAttributedString.encode(to:);
    *(v25 + 24) = v24;
    v53 = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
    v54 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v52 = &block_descriptor_12_0;
    v26 = _Block_copy(&aBlock);

    [v21 enumerateAttributesInRange:0 options:v23 usingBlock:{0, v26}];
    _Block_release(v26);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      goto LABEL_28;
    }

    v27 = v45;
    v43 = v24;
    v44 = v21;
    v28 = v48;
    v29 = *(v48 + 16);

    v46 = v29;
    if (!v29)
    {
LABEL_20:
    }

    v30 = 0;
    v16 = (v28 + 48);
    v31 = v47;
    while (v30 < *(v28 + 16))
    {
      v32 = *(v16 - 1);
      v33 = *v16;
      v34 = *(v16 - 2);

      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      aBlock = v34;
      v50 = v32;
      v51 = v33;
      v35 = *(v31 + 8);
      v36 = *(v31 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      *&v36[8 * v38 + 32] = v35;
      v39 = v47;
      *(v47 + 24) = v36;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_25;
      }

      *(v39 + 8) = v35 + 1;
      CodableAttributedString.Range.encode(to:)(v39);

      if (!v27)
      {
        v31 = v39;
        ++v30;
        ProtobufEncoder.endLengthDelimited()();
        v16 += 3;
        if (v46 != v30)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t closure #1 in CodableAttributedString.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v9;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = (v9 + 24 * v12);
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a1;
  return result;
}

uint64_t CodableAttributedString.Range.encode(to:)(uint64_t a1)
{
  v247 = a1;
  v240 = type metadata accessor for String.Encoding();
  v2 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v234 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResolvableTextSegmentAttribute.Value?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v234 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + 1);
    v245 = *(v1 + 2);
    if (v7)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(v7);
    }

    v1 = v247;
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {
        ProtobufEncoder.encodeVarint(_:)(0x10uLL);
        ProtobufEncoder.encodeVarint(_:)(v8);
        v1 = v247;
      }

      v9 = *(v1 + 2);
      v10 = *(v1 + 24);
      v244 = (v1 + 24);
      v248 = *v1;
      *v249 = v9;
      *&v249[8] = v10;
      v241 = ProtobufEncoder.preferredBundleLanguage.getter();
      v242 = v11;
      v12 = v245;
      v13 = v245 + 64;
      v14 = 1 << *(v245 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v245 + 64);
      v17 = (v14 + 63) >> 6;
      v238 = (v2 + 8);

      v18 = 0;
      v243 = v6;
      while (1)
      {
        if (v16)
        {
          v21 = v18;
          goto LABEL_24;
        }

        if (v17 <= v18 + 1)
        {
          v22 = v18 + 1;
        }

        else
        {
          v22 = v17;
        }

        v23 = v22 - 1;
        do
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_330;
          }

          if (v21 >= v17)
          {
            v16 = 0;
            v18 = v23;
            memset(v249, 0, sizeof(v249));
            v248 = 0u;
            goto LABEL_25;
          }

          v16 = *(v13 + 8 * v21);
          ++v18;
        }

        while (!v16);
        v18 = v21;
LABEL_24:
        v24 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v25 = v24 | (v21 << 6);
        v26 = *(v12[6] + 8 * v25);
        outlined init with copy of Any(v12[7] + 32 * v25, &v256);
        *&v248 = v26;
        outlined init with take of Any(&v256, (&v248 + 8));
        v27 = v26;
LABEL_25:
        v258[0] = v248;
        v258[1] = *v249;
        v259 = *&v249[16];
        v28 = v248;
        if (!v248)
        {

          v224 = v242;
          if (!v242)
          {
            return result;
          }

          v225 = *(v247 + 2);
          v248 = *v247;
          *v249 = v225;
          *&v249[8] = *(v247 + 24);

          v226 = ProtobufEncoder.preferredBundleLanguage.getter();
          if (!v227)
          {

            v228 = v241;
            goto LABEL_323;
          }

          v228 = v241;
          if (v241 == v226 && v224 == v227)
          {
            swift_bridgeObjectRelease_n();
          }

          v229 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v229)
          {
          }

LABEL_323:
          if (!v228 && v224 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
          }

LABEL_330:
          ProtobufEncoder.encodeVarint(_:)(0x7AuLL);
          v230 = v239;
          static String.Encoding.utf8.getter();
          v231 = String.data(using:allowLossyConversion:)();
          v233 = v232;

          (*v238)(v230, v240);
          if (v233 >> 60 == 15)
          {
            lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
            swift_allocError();
            return swift_willThrow();
          }

          else
          {
            specialized Data._Representation.withUnsafeBytes<A>(_:)(v231, v233);
            return outlined consume of Data?(v231, v233);
          }
        }

        outlined init with take of Any((v258 + 8), &v256);
        LODWORD(v1) = GetAttributedStringKey(v28);
        type metadata accessor for _AttributedStringKey(0);
        switch(v1)
        {
          case 0:
          case 19:
          case 20:
            goto LABEL_13;
          case 1:
            __swift_project_boxed_opaque_existential_1(&v256, v257);
            v91 = _bridgeAnythingToObjectiveC<A>(_:)();
            v237 = specialized Color.Resolved.init(platformColor:)(v91);
            v236 = v92;
            if (v93)
            {
              goto LABEL_13;
            }

            v1 = v247;
            v94 = *(v247 + 1);
            v95 = *(v247 + 2);
            if (v94 >= v95)
            {
              v200 = v94 + 1;
              v97 = v244;
              if (__OFADD__(v94, 1))
              {
                goto LABEL_367;
              }

              if (v95 < v200)
              {
                v201 = ProtobufEncoder.growBufferSlow(to:)(v200);
                v1 = v247;
              }

              else
              {
                *(v247 + 1) = v200;
                v201 = (*v1 + v94);
              }

              *v201 = 34;
              v96 = *(v1 + 1);
            }

            else
            {
              *(*v247 + v94) = 34;
              v96 = v94 + 1;
              *(v1 + 1) = v94 + 1;
              v97 = v244;
            }

            v98 = *v97;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
            }

            v100 = *(v98 + 2);
            v99 = *(v98 + 3);
            v101 = v100 + 1;
            v1 = v247;
            if (v100 >= v99 >> 1)
            {
              v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1, v98);
              v101 = v100 + 1;
              v1 = v247;
              v98 = v206;
            }

            *(v98 + 2) = v101;
            *&v98[8 * v100 + 32] = v96;
            *v244 = v98;
            if (__OFADD__(v96, 1))
            {
              goto LABEL_348;
            }

            *(v1 + 1) = v96 + 1;
            v102 = v237;
            v12 = v245;
            v6 = v243;
            if ((v237 & 0x7FFFFFFF) != 0)
            {
              ProtobufEncoder.encodeVarint(_:)(0xDuLL);
              v1 = v247;
              v103 = *(v247 + 1);
              v104 = v103 + 4;
              if (__OFADD__(v103, 4))
              {
                goto LABEL_355;
              }

              if (*(v247 + 2) < v104)
              {
                v105 = ProtobufEncoder.growBufferSlow(to:)(v104);
              }

              else
              {
                *(v247 + 1) = v104;
                v105 = (*v1 + v103);
              }

              *v105 = v102;
            }

            v106 = HIDWORD(v102);
            if ((v106 & 0x7FFFFFFF) != 0)
            {
              ProtobufEncoder.encodeVarint(_:)(0x15uLL);
              v1 = v247;
              v107 = *(v247 + 1);
              v108 = v107 + 4;
              if (__OFADD__(v107, 4))
              {
                goto LABEL_356;
              }

              if (*(v247 + 2) < v108)
              {
                v109 = ProtobufEncoder.growBufferSlow(to:)(v108);
              }

              else
              {
                *(v247 + 1) = v108;
                v109 = (*v1 + v107);
              }

              *v109 = v106;
            }

            v110 = v236;
            if ((v236 & 0x7FFFFFFF) != 0)
            {
              ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
              v1 = v247;
              v111 = *(v247 + 1);
              v112 = v111 + 4;
              if (__OFADD__(v111, 4))
              {
                goto LABEL_357;
              }

              if (*(v247 + 2) < v112)
              {
                v113 = ProtobufEncoder.growBufferSlow(to:)(v112);
              }

              else
              {
                *(v247 + 1) = v112;
                v113 = (*v1 + v111);
              }

              *v113 = v110;
            }

            v114 = HIDWORD(v110);
            if (*&v114 != 1.0)
            {
              ProtobufEncoder.encodeVarint(_:)(0x25uLL);
              v1 = v247;
              v115 = *(v247 + 1);
              v116 = v115 + 4;
              if (__OFADD__(v115, 4))
              {
                goto LABEL_358;
              }

              if (*(v247 + 2) < v116)
              {
                v117 = ProtobufEncoder.growBufferSlow(to:)(v116);
              }

              else
              {
                *(v247 + 1) = v116;
                v117 = (*v1 + v115);
              }

              *v117 = v114;
            }

            ProtobufEncoder.endLengthDelimited()();

            goto LABEL_255;
          case 2:
            outlined init with copy of Any(&v256, &v248);
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSParagraphStyle);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v72 = v254;
            v73 = v247;
            ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
            v74 = *(v73 + 8);
            v1 = *(v73 + 24);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v237 = v72;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v77 = *(v1 + 2);
            v76 = *(v1 + 3);
            v78 = v247;
            if (v77 >= v76 >> 1)
            {
              v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v1);
              v78 = v247;
              v1 = v199;
            }

            *(v1 + 2) = v77 + 1;
            *&v1[8 * v77 + 32] = v74;
            *v244 = v1;
            if (__OFADD__(v74, 1))
            {
              goto LABEL_350;
            }

            v78[1] = v74 + 1;
            v79 = v237;
            v80 = v246;
            CodableNSParagraphStyle.encode(to:)(v78, v237);
            goto LABEL_167;
          case 3:
            type metadata accessor for CTFontRef(0);
            __swift_project_boxed_opaque_existential_1(&v256, v257);
            v128 = _bridgeAnythingToObjectiveC<A>(_:)();
            v129 = static CTFontRef.make(platformFont:)(v128);
            swift_unknownObjectRelease();
            if (!v129)
            {
              goto LABEL_264;
            }

            v1 = v247;
            v130 = *(v247 + 1);
            v131 = *(v247 + 2);
            if (v130 >= v131)
            {
              v195 = v130 + 1;
              if (__OFADD__(v130, 1))
              {
                goto LABEL_366;
              }

              if (v131 < v195)
              {
                v196 = ProtobufEncoder.growBufferSlow(to:)(v195);
                v1 = v247;
              }

              else
              {
                *(v247 + 1) = v195;
                v196 = (*v1 + v130);
              }

              *v196 = 26;
              v132 = *(v1 + 1);
            }

            else
            {
              *(*v247 + v130) = 26;
              v132 = v130 + 1;
              *(v1 + 1) = v130 + 1;
            }

            v1 = *v244;
            v133 = swift_isUniquelyReferenced_nonNull_native();
            v237 = v129;
            if ((v133 & 1) == 0)
            {
              v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
              v1 = v133;
            }

            v135 = *(v1 + 2);
            v134 = *(v1 + 3);
            v136 = v247;
            if (v135 >= v134 >> 1)
            {
              v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1, v1);
              v136 = v247;
              v1 = v133;
            }

            *(v1 + 2) = v135 + 1;
            *&v1[8 * v135 + 32] = v132;
            *v244 = v1;
            if (__OFADD__(v132, 1))
            {
              goto LABEL_343;
            }

            v236 = &v234;
            *(v136 + 8) = v132 + 1;
            *&v248 = v237;
            v137 = *(v136 + 32);
            MEMORY[0x1EEE9AC00](v133);
            *(&v234 - 2) = v137;
            *(&v234 - 1) = &v248;
            v139 = v138;

            v140 = v246;
            specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v139, partial apply for specialized closure #1 in ProtobufEncoder.encodeAttachedMessage<A, B>(_:for:));
            if (v140)
            {

              return __swift_destroy_boxed_opaque_existential_1(&v256);
            }

            ProtobufEncoder.endLengthDelimited()();

            __swift_destroy_boxed_opaque_existential_1(&v256);
            v246 = 0;
            goto LABEL_170;
          case 4:
            outlined init with copy of Any(&v256, &v248);
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextAttachment);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v145 = v254;
            v1 = v247;
            v146 = *(v247 + 1);
            v147 = *(v247 + 2);
            if (v146 >= v147)
            {
              v204 = v146 + 1;
              if (__OFADD__(v146, 1))
              {
                goto LABEL_368;
              }

              if (v147 < v204)
              {
                v205 = ProtobufEncoder.growBufferSlow(to:)(v204);
                v1 = v247;
              }

              else
              {
                *(v247 + 1) = v204;
                v205 = (*v1 + v146);
              }

              *v205 = 50;
              v148 = *(v1 + 1);
            }

            else
            {
              *(*v247 + v146) = 50;
              v148 = v146 + 1;
              *(v1 + 1) = v146 + 1;
            }

            v1 = *v244;
            v149 = swift_isUniquelyReferenced_nonNull_native();
            v237 = v145;
            if ((v149 & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v151 = *(v1 + 2);
            v150 = *(v1 + 3);
            v152 = v247;
            if (v151 >= v150 >> 1)
            {
              v207 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), v151 + 1, 1, v1);
              v152 = v247;
              v1 = v207;
            }

            *(v1 + 2) = v151 + 1;
            *&v1[8 * v151 + 32] = v148;
            *v244 = v1;
            if (__OFADD__(v148, 1))
            {
              goto LABEL_349;
            }

            *(v152 + 8) = v148 + 1;
            v79 = v237;
            v80 = v246;
            CodableTextAttachment.encode(to:)(v152, v237);
LABEL_167:
            if (v80)
            {

              goto LABEL_338;
            }

            v246 = 0;
            ProtobufEncoder.endLengthDelimited()();

            goto LABEL_169;
          case 5:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v86 = *&v254;
            if (*&v254 == 0.0)
            {
              goto LABEL_13;
            }

            v118 = fabs(*&v254);
            if (v118 >= 65536.0)
            {
              v119 = 57;
            }

            else
            {
              v119 = 61;
            }

            v1 = v247;
            ProtobufEncoder.encodeVarint(_:)(v119);
            if (v118 < 65536.0)
            {
              v89 = *(v1 + 1);
              v90 = v89 + 4;
              if (__OFADD__(v89, 4))
              {
                goto LABEL_360;
              }

              goto LABEL_184;
            }

            v175 = *(v1 + 1);
            v124 = v175 + 8;
            if (__OFADD__(v175, 8))
            {
              goto LABEL_361;
            }

            goto LABEL_244;
          case 6:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v86 = *&v254;
            if (*&v254 == 0.0)
            {
              goto LABEL_13;
            }

            v155 = fabs(*&v254);
            if (v155 >= 65536.0)
            {
              v156 = 65;
            }

            else
            {
              v156 = 69;
            }

            v1 = v247;
            ProtobufEncoder.encodeVarint(_:)(v156);
            if (v155 >= 65536.0)
            {
              v175 = *(v1 + 1);
              v124 = v175 + 8;
              if (__OFADD__(v175, 8))
              {
                goto LABEL_363;
              }

LABEL_244:
              if (*(v1 + 2) < v124)
              {
LABEL_270:
                v125 = ProtobufEncoder.growBufferSlow(to:)(v124);
LABEL_131:
                *v125 = v86;
              }

              else
              {
                *(v1 + 1) = v124;
                *(*v1 + v175) = v86;
              }
            }

            else
            {
              v89 = *(v1 + 1);
              v90 = v89 + 4;
              if (__OFADD__(v89, 4))
              {
                goto LABEL_362;
              }

LABEL_184:
              v157 = v86;
              if (*(v1 + 2) < v90)
              {
                *ProtobufEncoder.growBufferSlow(to:)(v90) = v157;
              }

              else
              {
                *(v1 + 1) = v90;
                *(*v1 + v89) = v157;
              }
            }

            goto LABEL_13;
          case 7:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v86 = *&v254;
            if (*&v254 == 0.0)
            {
              goto LABEL_13;
            }

            v87 = fabs(*&v254);
            if (v87 >= 65536.0)
            {
              v88 = 73;
            }

            else
            {
              v88 = 77;
            }

            v1 = v247;
            ProtobufEncoder.encodeVarint(_:)(v88);
            if (v87 < 65536.0)
            {
              v89 = *(v1 + 1);
              v90 = v89 + 4;
              if (__OFADD__(v89, 4))
              {
                goto LABEL_364;
              }

              goto LABEL_184;
            }

            v175 = *(v1 + 1);
            v124 = v175 + 8;
            if (__OFADD__(v175, 8))
            {
              goto LABEL_359;
            }

            goto LABEL_244;
          case 8:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v81 = v254;
            if (*&v254 == 0.0)
            {
              goto LABEL_211;
            }

            v1 = v247;
            v82 = *(v247 + 1);
            v153 = *(v247 + 2);
            if (v82 >= v153)
            {
              v214 = v82 + 1;
              if (__OFADD__(v82, 1))
              {
                goto LABEL_372;
              }

              if (v153 < v214)
              {
                v212 = ProtobufEncoder.growBufferSlow(to:)(v214);
              }

              else
              {
                v215 = v247;
                *(v247 + 1) = v214;
                v212 = (*v215 + v82);
              }

              v213 = 80;
LABEL_303:
              *v212 = v213;
              v12 = v245;
              v6 = v243;
            }

            else
            {
              v84 = *v247;
              v85 = 80;
LABEL_175:
              *(v84 + v82) = v85;
              *(v1 + 1) = v82 + 1;
            }

            v154 = (2 * v81) ^ (v81 >> 63);
LABEL_189:
            ProtobufEncoder.encodeVarint(_:)(v154);

            goto LABEL_255;
          case 9:
            __swift_project_boxed_opaque_existential_1(&v256, v257);
            v64 = _bridgeAnythingToObjectiveC<A>(_:)();
            v65 = specialized Color.Resolved.init(platformColor:)(v64);
            if (v67)
            {
              goto LABEL_13;
            }

            v1 = v247;
            v68 = *(v247 + 1);
            v69 = *(v247 + 2);
            if (v68 < v69)
            {
              v70 = *v247;
              v71 = 90;
              goto LABEL_155;
            }

            v197 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_370;
            }

            if (v69 < v197)
            {
              v217 = v65;
              v218 = v66;
              v219 = ProtobufEncoder.growBufferSlow(to:)(v68 + 1);
              v66 = v218;
              v12 = v245;
              v198 = v219;
              v65 = v217;
            }

            else
            {
              *(v247 + 1) = v197;
              v198 = (*v1 + v68);
            }

            *v198 = 90;
            goto LABEL_156;
          case 10:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v81 = v254;
            if (*&v254 == 0.0)
            {
              goto LABEL_211;
            }

            v1 = v247;
            v82 = *(v247 + 1);
            v83 = *(v247 + 2);
            if (v82 < v83)
            {
              v84 = *v247;
              v85 = 96;
              goto LABEL_175;
            }

            v210 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_371;
            }

            if (v83 < v210)
            {
              v212 = ProtobufEncoder.growBufferSlow(to:)(v210);
            }

            else
            {
              v211 = v247;
              *(v247 + 1) = v210;
              v212 = (*v211 + v82);
            }

            v213 = 96;
            goto LABEL_303;
          case 11:
            __swift_project_boxed_opaque_existential_1(&v256, v257);
            v141 = _bridgeAnythingToObjectiveC<A>(_:)();
            v65 = specialized Color.Resolved.init(platformColor:)(v141);
            if (v142)
            {
              goto LABEL_13;
            }

            v1 = v247;
            v68 = *(v247 + 1);
            v143 = *(v247 + 2);
            if (v68 >= v143)
            {
              v202 = v68 + 1;
              if (__OFADD__(v68, 1))
              {
                goto LABEL_369;
              }

              if (v143 < v202)
              {
                v220 = v65;
                v221 = v66;
                v222 = ProtobufEncoder.growBufferSlow(to:)(v68 + 1);
                v66 = v221;
                v12 = v245;
                v203 = v222;
                v65 = v220;
              }

              else
              {
                *(v247 + 1) = v202;
                v203 = (*v1 + v68);
              }

              *v203 = 106;
            }

            else
            {
              v70 = *v247;
              v71 = 106;
LABEL_155:
              *(v70 + v68) = v71;
              *(v1 + 1) = v68 + 1;
            }

LABEL_156:
            v144 = v246;
            specialized ProtobufEncoder.encodeMessage<A>(_:)(*&v65, *(&v65 + 1), *&v66, *(&v66 + 1));
            v246 = v144;
            if (!v144)
            {
              goto LABEL_13;
            }

            goto LABEL_334;
          case 12:
            outlined init with copy of Any(&v256, &v248);
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v52 = v254;
            Offset = CoreShadowGetOffset();
            v55 = v54;
            BlurRadius = CoreShadowGetBlurRadius(v52);
            v57 = CoreShadowGetPlatformColor(v52, 0);
            v58 = v57;
            if (Offset < 0.0 || v55 < 0.0)
            {
              v59 = v57;
              v58 = v52;
LABEL_218:

LABEL_219:
              v28 = v52;
              v52 = v58;
LABEL_220:

              goto LABEL_265;
            }

            if (BlurRadius < 0.0)
            {
              v59 = v52;
              goto LABEL_218;
            }

            if (!v57)
            {
              v59 = v28;
              v58 = v52;
              goto LABEL_219;
            }

            v170 = v57;
            v171 = specialized Color.Resolved.init(platformColor:)(v170);
            v237 = v172;
            v174 = v173;

            if (v174)
            {
              v6 = v243;
              goto LABEL_220;
            }

            v235 = HIDWORD(v171);
            v186 = v237;
            v236 = HIDWORD(v237);
            v187 = v247;
            ProtobufEncoder.encodeVarint(_:)(0x72uLL);
            *&v248 = __PAIR64__(v235, v171);
            *(&v248 + 1) = __PAIR64__(v236, v186);
            *v249 = 2143289344;
            *&v249[8] = BlurRadius;
            *&v249[16] = Offset;
            v250 = v55;
            v251 = 1056964608;
            v252 = 0;
            v237 = *(v187 + 8);
            v1 = *(v187 + 24);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v189 = *(v1 + 2);
            v188 = *(v1 + 3);
            v190 = v247;
            if (v189 >= v188 >> 1)
            {
              v216 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1, v1);
              v190 = v247;
              v1 = v216;
            }

            *(v1 + 2) = v189 + 1;
            v191 = v237;
            *&v1[8 * v189 + 32] = v237;
            *v244 = v1;
            if (__OFADD__(v191, 1))
            {
              goto LABEL_365;
            }

            *(v190 + 8) = v191 + 1;
            v192 = v246;
            ResolvedShadowStyle.encode(to:)(v190);
            v6 = v243;
            v246 = v192;
            if (v192)
            {

LABEL_334:

              return __swift_destroy_boxed_opaque_existential_1(&v256);
            }

            ProtobufEncoder.endLengthDelimited()();

LABEL_264:
LABEL_265:
            __swift_destroy_boxed_opaque_existential_1(&v256);
            v12 = v245;
            continue;
          case 13:

            outlined init with take of Any(&v256, &v248);
            if (swift_dynamicCast())
            {

              v241 = v254;
              v242 = v255;
            }

            continue;
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 21:
          case 33:
            outlined init with copy of Any(&v256, &v254);
            type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
            if ((swift_dynamicCast() & 1) == 0)
            {
              memset(v249, 0, sizeof(v249));
              v248 = 0u;
            }

            if (one-time initialization token for resolvableTextSegment == -1)
            {
              if (!v12[2])
              {
                goto LABEL_267;
              }
            }

            else
            {
              swift_once();
              if (!v12[2])
              {
                goto LABEL_267;
              }
            }

            v29 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.resolvableTextSegment);
            if (v30)
            {
              outlined init with copy of Any(v12[7] + 32 * v29, v253);
              v31 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
              v32 = swift_dynamicCast();
              (*(*(v31 - 8) + 56))(v6, v32 ^ 1u, 1, v31);
              goto LABEL_268;
            }

LABEL_267:
            v193 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
            (*(*(v193 - 8) + 56))(v6, 1, 1, v193);
LABEL_268:
            v194 = v246;
            specialized static CodableAttributedString.Range.encodeResolvable(_:textSegment:to:)(&v248, v6, v247);
            v246 = v194;
            if (v194)
            {

              __swift_destroy_boxed_opaque_existential_1(&v256);
              outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
              return outlined destroy of _DisplayList_AnyEffectAnimator?(&v248, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
            }

            __swift_destroy_boxed_opaque_existential_1(&v256);
            outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
            outlined destroy of _DisplayList_AnyEffectAnimator?(&v248, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
            continue;
          case 22:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v247;
            v159 = *(v247 + 1);
            v160 = v159 + 2;
            if (__OFADD__(v159, 2))
            {
              goto LABEL_347;
            }

            v62 = v254;
            if (*(v247 + 2) < v160)
            {
              v209 = v254;
              v19 = ProtobufEncoder.growBufferSlow(to:)(v159 + 2);
              v62 = v209;
            }

            else
            {
              *(v247 + 1) = v160;
              v19 = (*v1 + v159);
            }

            v20 = 424;
            goto LABEL_12;
          case 23:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v247;
            v126 = *(v247 + 1);
            v127 = v126 + 2;
            if (__OFADD__(v126, 2))
            {
              goto LABEL_344;
            }

            v62 = v254;
            if (*(v247 + 2) < v127)
            {
              v208 = v254;
              v19 = ProtobufEncoder.growBufferSlow(to:)(v126 + 2);
              v62 = v208;
            }

            else
            {
              *(v247 + 1) = v127;
              v19 = (*v1 + v126);
            }

            v20 = 432;
            goto LABEL_12;
          case 24:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v247;
            v120 = *(v247 + 1);
            v121 = v120 + 2;
            if (__OFADD__(v120, 2))
            {
              goto LABEL_351;
            }

            v86 = *&v254;
            if (*(v247 + 2) < v121)
            {
              v122 = ProtobufEncoder.growBufferSlow(to:)(v121);
              v1 = v247;
            }

            else
            {
              *(v247 + 1) = v121;
              v122 = (*v1 + v120);
            }

            *v122 = 441;
            v123 = *(v1 + 1);
            v124 = v123 + 8;
            if (__OFADD__(v123, 8))
            {
              goto LABEL_353;
            }

            if (*(v1 + 2) < v124)
            {
              goto LABEL_270;
            }

            *(v1 + 1) = v124;
            v125 = (*v1 + v123);
            goto LABEL_131;
          case 25:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if (*&v254 == 0.0 && v255 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_216;
            }

            v33 = 202;
            goto LABEL_247;
          case 26:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if (*&v254 == 0.0 && v255 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_216;
            }

            v33 = 210;
            goto LABEL_247;
          case 27:
            outlined init with copy of Any(&v256, &v248);
            if (swift_dynamicCast())
            {
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_216;
              }

              ProtobufEncoder.encodeVarint(_:)(0xC2uLL);
              v164 = v239;
              static String.Encoding.utf8.getter();
              v165 = String.data(using:allowLossyConversion:)();
              v167 = v166;

              (*v238)(v164, v240);
              if (v167 >> 60 == 15)
              {
                goto LABEL_333;
              }

              v168 = v246;
              specialized Data._Representation.withUnsafeBytes<A>(_:)(v165, v167);
              v246 = v168;

              v169 = v165;
              goto LABEL_253;
            }

            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if ((*&v254 != 0.0 || v255 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v33 = 194;
              goto LABEL_247;
            }

            goto LABEL_216;
          case 28:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_201;
            }

            if (v254 > 3u)
            {
              v161 = "extualContextWordProcessing";
              if (v254 != 6)
              {
                v161 = "LogForEachSlowPath";
              }

              v162 = "extualContextSourceCode";
              if (v254 != 4)
              {
                v162 = "extualContextSpreadsheet";
              }

              if (v254 <= 5u)
              {
                v163 = v162;
              }

              else
              {
                v163 = v161;
              }

              goto LABEL_250;
            }

            if (v254 > 1u)
            {
              if (v254 == 2)
              {
                v163 = "extualContextMessaging";
              }

              else
              {
                v163 = "extualContextNarrative";
              }

              goto LABEL_250;
            }

            if (v254)
            {
              v163 = "extualContextFileSystem";
LABEL_250:
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_216;
              }

              v237 = v163;
              ProtobufEncoder.encodeVarint(_:)(0xE2uLL);
              v182 = v239;
              static String.Encoding.utf8.getter();
              v183 = String.data(using:allowLossyConversion:)();
              v167 = v184;

              (*v238)(v182, v240);
              if (v167 >> 60 == 15)
              {
LABEL_333:

                lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
                swift_allocError();
                swift_willThrow();

                return __swift_destroy_boxed_opaque_existential_1(&v256);
              }

              v185 = v246;
              specialized Data._Representation.withUnsafeBytes<A>(_:)(v183, v167);
              v246 = v185;

              v169 = v183;
LABEL_253:
              v181 = v167;
              goto LABEL_254;
            }

LABEL_201:
            outlined init with copy of Any(&v256, &v248);
            if (swift_dynamicCast())
            {
              if (*&v254 == 0.0 && v255 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
LABEL_216:

                v12 = v245;
                goto LABEL_255;
              }

              v33 = 226;
LABEL_247:
              ProtobufEncoder.encodeVarint(_:)(v33);
              v176 = v239;
              static String.Encoding.utf8.getter();
              v177 = String.data(using:allowLossyConversion:)();
              v179 = v178;

              (*v238)(v176, v240);
              if (v179 >> 60 == 15)
              {
                goto LABEL_333;
              }

              v180 = v246;
              specialized Data._Representation.withUnsafeBytes<A>(_:)(v177, v179);
              v246 = v180;

              v169 = v177;
              v181 = v179;
LABEL_254:
              outlined consume of Data?(v169, v181);
              v12 = v245;
              v6 = v243;
LABEL_255:
              __swift_destroy_boxed_opaque_existential_1(&v256);
            }

            else
            {
LABEL_13:

              __swift_destroy_boxed_opaque_existential_1(&v256);
            }

            break;
          case 29:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v158 = v254;
            if (*&v254 != 0.0)
            {
              ProtobufEncoder.encodeVarint(_:)(0xD8uLL);
              v154 = v158;
              goto LABEL_189;
            }

LABEL_211:

            goto LABEL_255;
          case 30:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if (*&v254 == 0.0 && v255 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_216;
            }

            v33 = 234;
            goto LABEL_247;
          case 31:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if (*&v254 == 0.0 && v255 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_216;
            }

            v33 = 242;
            goto LABEL_247;
          case 32:
            outlined init with copy of Any(&v256, &v248);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v247;
            v60 = *(v247 + 1);
            v61 = v60 + 2;
            if (__OFADD__(v60, 2))
            {
              goto LABEL_345;
            }

            v62 = v254;
            if (*(v247 + 2) >= v61)
            {
              *(v247 + 1) = v61;
              v19 = (*v1 + v60);
            }

            else
            {
              v63 = v254;
              v19 = ProtobufEncoder.growBufferSlow(to:)(v60 + 2);
              v62 = v63;
            }

            v20 = 640;
LABEL_12:
            *v19 = v20;
            ProtobufEncoder.encodeVarint(_:)(v62);
            goto LABEL_13;
          case 34:
            outlined init with copy of Any(&v256, &v248);
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v247;
            v34 = *(v247 + 1);
            v35 = v34 + 2;
            if (__OFADD__(v34, 2))
            {
              goto LABEL_346;
            }

            v237 = v254;
            if (*(v247 + 2) < v35)
            {
              v36 = ProtobufEncoder.growBufferSlow(to:)(v35);
              v1 = v247;
            }

            else
            {
              *(v247 + 1) = v35;
              v36 = (*v1 + v34);
            }

            v37 = v244;
            *v36 = 674;
            v38 = *(v1 + 1);
            LODWORD(v1) = v37;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v39 = *(*(v247 + 3) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v39);
            v40 = v247;
            v41 = *(v247 + 3);
            *(v41 + 16) = v39 + 1;
            *(v41 + 8 * v39 + 32) = v38;
            *(v40 + 24) = v41;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_352;
            }

            *(v40 + 8) = v38 + 1;
            v1 = [v237 imageContent];
            v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v236 = v43;

            ProtobufEncoder.encodeVarint(_:)(0xAuLL);
            v44 = *(v247 + 1);
            LODWORD(v1) = v37;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v45 = *(*(v247 + 3) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v45);
            v46 = v247;
            v47 = *(v247 + 3);
            *(v47 + 16) = v45 + 1;
            *(v47 + 8 * v45 + 32) = v44;
            *(v46 + 24) = v47;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_354;
            }

            *(v46 + 8) = v44 + 1;
            v48 = v42;
            v49 = v42;
            v50 = v236;
            v51 = v246;
            Data.encode(to:)(v46, v49, v236);
            if (v51)
            {
              outlined consume of Data._Representation(v48, v50);

LABEL_338:

              return __swift_destroy_boxed_opaque_existential_1(&v256);
            }

            v246 = 0;
            ProtobufEncoder.endLengthDelimited()();
            outlined consume of Data._Representation(v48, v50);
            ProtobufEncoder.endLengthDelimited()();

LABEL_169:
            __swift_destroy_boxed_opaque_existential_1(&v256);
LABEL_170:
            v12 = v245;
            v6 = v243;
            continue;
          default:
            goto LABEL_373;
        }
      }
    }
  }

  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
LABEL_348:
  __break(1u);
LABEL_349:
  __break(1u);
LABEL_350:
  __break(1u);
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
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
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  LODWORD(v248) = v1;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t ProtobufEncoder.preferredBundleLanguage.getter()
{
  v1 = *(v0 + 32);
  if (one-time initialization token for preferredBundleLanguageKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.preferredBundleLanguageKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t encode #1 <A>(_:) in static CodableAttributedString.Range.encodeResolvable(_:textSegment:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CodableAttributedString.Range.EncodingWrapper();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v7 + 16))(v9, a1, a4, v12);
  (*(v7 + 32))(v14, v9, a4);
  swift_getWitnessTable();
  ProtobufEncoder.codableField<A>(_:_:)(a3, v14, v10);
  return (*(v11 + 8))(v14, v10);
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K12DateIntervalV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v6;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  *&v19 = a2;
  outlined init with copy of ProtobufDecoder(v23, v21);
  v7 = ProtobufDecoder.dataField(_:)(&v19);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v23);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA22ResolvableDateIntervalVG_Tt1B5(v22);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v23);
    outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    if (v20)
    {
      outlined init with take of AnyTrackedValue(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      swift_getDynamicType();
      v11 = static ResolvableStringAttributeRepresentation.attribute.getter();
      outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
      v12 = v20;
      if (v20)
      {
        v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
        *(&v18 + 1) = v12;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
        (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
        v17 = 0u;
        v18 = 0u;
      }

      v15 = v11;
      specialized Dictionary.subscript.setter(&v17, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval, &protocol witness table for ResolvableDateInterval, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v16 = *a4;
      *a4 = v15;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval, &protocol witness table for ResolvableDateInterval, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K12AbsoluteDateV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v6;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  *&v19 = a2;
  outlined init with copy of ProtobufDecoder(v23, v21);
  v7 = ProtobufDecoder.dataField(_:)(&v19);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v23);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA22ResolvableAbsoluteDateVG_Tt1B5(v22);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v23);
    outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    if (v20)
    {
      outlined init with take of AnyTrackedValue(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      swift_getDynamicType();
      v11 = static ResolvableStringAttributeRepresentation.attribute.getter();
      outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
      v12 = v20;
      if (v20)
      {
        v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
        *(&v18 + 1) = v12;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
        (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
        v17 = 0u;
        v18 = 0u;
      }

      v15 = v11;
      specialized Dictionary.subscript.setter(&v17, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate, &protocol witness table for ResolvableAbsoluteDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v16 = *a4;
      *a4 = v15;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate, &protocol witness table for ResolvableAbsoluteDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K11CurrentDateV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v6;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  *&v19 = a2;
  outlined init with copy of ProtobufDecoder(v23, v21);
  v7 = ProtobufDecoder.dataField(_:)(&v19);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v23);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA21ResolvableCurrentDateVG_Tt1B5(v22);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v23);
    outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    if (v20)
    {
      outlined init with take of AnyTrackedValue(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      swift_getDynamicType();
      v11 = static ResolvableStringAttributeRepresentation.attribute.getter();
      outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
      v12 = v20;
      if (v20)
      {
        v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
        *(&v18 + 1) = v12;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
        (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
        v17 = 0u;
        v18 = 0u;
      }

      v15 = v11;
      specialized Dictionary.subscript.setter(&v17, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate, &protocol witness table for ResolvableCurrentDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v16 = *a4;
      *a4 = v15;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate, &protocol witness table for ResolvableCurrentDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K5TimerV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v6;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  *&v19 = a2;
  outlined init with copy of ProtobufDecoder(v23, v21);
  v7 = ProtobufDecoder.dataField(_:)(&v19);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v23);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA15ResolvableTimerVG_Tt1B5(v22);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v23);
    outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    if (v20)
    {
      outlined init with take of AnyTrackedValue(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      swift_getDynamicType();
      v11 = static ResolvableStringAttributeRepresentation.attribute.getter();
      outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
      v12 = v20;
      if (v20)
      {
        v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
        *(&v18 + 1) = v12;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
        (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
        v17 = 0u;
        v18 = 0u;
      }

      v15 = v11;
      specialized Dictionary.subscript.setter(&v17, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer, &protocol witness table for ResolvableTimer, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v16 = *a4;
      *a4 = v15;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer, &protocol witness table for ResolvableTimer, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K15CLKTextProviderV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v6;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  *&v19 = a2;
  outlined init with copy of ProtobufDecoder(v23, v21);
  v7 = ProtobufDecoder.dataField(_:)(&v19);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v23);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA25ResolvableCLKTextProviderVG_Tt1B5(v22);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v23);
    outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    if (v20)
    {
      outlined init with take of AnyTrackedValue(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      swift_getDynamicType();
      v11 = static ResolvableStringAttributeRepresentation.attribute.getter();
      outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
      v12 = v20;
      if (v20)
      {
        v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
        *(&v18 + 1) = v12;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
        (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
        v17 = 0u;
        v18 = 0u;
      }

      v15 = v11;
      specialized Dictionary.subscript.setter(&v17, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>, &type metadata for ResolvableCLKTextProvider, &protocol witness table for ResolvableCLKTextProvider, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
      swift_beginAccess();
      v16 = *a4;
      *a4 = v15;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>, &type metadata for ResolvableCLKTextProvider, &protocol witness table for ResolvableCLKTextProvider, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K8ProgressV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v6;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  *&v19 = a2;
  outlined init with copy of ProtobufDecoder(v23, v21);
  v7 = ProtobufDecoder.dataField(_:)(&v19);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v23);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA18ResolvableProgressVG_Tt1B5(v22);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v23);
    outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    if (v20)
    {
      outlined init with take of AnyTrackedValue(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      swift_getDynamicType();
      v11 = static ResolvableStringAttributeRepresentation.attribute.getter();
      outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
      v12 = v20;
      if (v20)
      {
        v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
        *(&v18 + 1) = v12;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
        (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
        v17 = 0u;
        v18 = 0u;
      }

      v15 = v11;
      specialized Dictionary.subscript.setter(&v17, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress, &protocol witness table for ResolvableProgress, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v16 = *a4;
      *a4 = v15;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress, &protocol witness table for ResolvableProgress, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA18TimeDataFormattingO_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v6;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  *&v19 = a2;
  outlined init with copy of ProtobufDecoder(v23, v21);
  v7 = ProtobufDecoder.dataField(_:)(&v19);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v23);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA04TimeK10FormattingOG_Tt1B5(v22);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v23);
    outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    if (v20)
    {
      outlined init with take of AnyTrackedValue(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      swift_getDynamicType();
      v11 = static ResolvableStringAttributeRepresentation.attribute.getter();
      outlined init with copy of TimelineSchedule?(v22, &v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
      v12 = v20;
      if (v20)
      {
        v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
        *(&v18 + 1) = v12;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
        (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
        v17 = 0u;
        v18 = 0u;
      }

      v15 = v11;
      specialized Dictionary.subscript.setter(&v17, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>, &type metadata for TimeDataFormatting, &protocol witness table for TimeDataFormatting, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
      swift_beginAccess();
      v16 = *a4;
      *a4 = v15;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v22, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>, &type metadata for TimeDataFormatting, &protocol witness table for TimeDataFormatting, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v19, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute);
    }
  }
}

double CodableAttributedString.Range.DecodingWrapper.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v3)
  {
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v9;
  }

  return result;
}

double *CodableNSParagraphStyle.encode(to:)(void *a1, id a2)
{
  v5 = [a2 horizontalAlignment];
  v6 = [a2 isFullyJustified];
  v7 = v5 == 3;
  if (v5 == 4)
  {
    v7 = 2;
  }

  if (v6)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v8);
  }

  v9 = [a2 lineBreakMode];
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_85;
  }

  if (v9 != 4)
  {
    v10 = v9;
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v10);
  }

  v11 = [a2 lineBreakStrategy];
  if (v11 != 0xFFFF)
  {
    v12 = v11;
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v12);
  }

  [a2 lineSpacing];
  if (v13 == 0.0)
  {
    goto LABEL_24;
  }

  v2 = v13;
  v14 = fabs(v13);
  if (v14 >= 65536.0)
  {
    v15 = 33;
  }

  else
  {
    v15 = 37;
  }

  ProtobufEncoder.encodeVarint(_:)(v15);
  if (v14 >= 65536.0)
  {
    v18 = a1[1];
    v17 = v18 + 8;
    if (!__OFADD__(v18, 8))
    {
      if (a1[2] < v17)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v17) = v2;
      }

      else
      {
        a1[1] = v17;
        *(*a1 + v18) = v2;
      }

      goto LABEL_24;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v16 = a1[1];
  v17 = v16 + 4;
  if (__OFADD__(v16, 4))
  {
    __break(1u);
    goto LABEL_89;
  }

  *&v2 = v2;
  if (a1[2] < v17)
  {
    goto LABEL_94;
  }

  a1[1] = v17;
  *(*a1 + v16) = LODWORD(v2);
  while (1)
  {
LABEL_24:
    [a2 lineHeightMultiple];
    if (v19 == 0.0)
    {
      goto LABEL_35;
    }

    v2 = v19;
    v20 = fabs(v19);
    v21 = v20 >= 65536.0 ? 41 : 45;
    ProtobufEncoder.encodeVarint(_:)(v21);
    if (v20 >= 65536.0)
    {
      break;
    }

    v22 = a1[1];
    v17 = v22 + 4;
    if (!__OFADD__(v22, 4))
    {
      *&v2 = v2;
      if (a1[2] >= v17)
      {
        a1[1] = v17;
        *(*a1 + v22) = LODWORD(v2);
        goto LABEL_35;
      }

      goto LABEL_98;
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    *ProtobufEncoder.growBufferSlow(to:)(v17) = LODWORD(v2);
  }

  v23 = a1[1];
  v17 = v23 + 8;
  if (__OFADD__(v23, 8))
  {
    goto LABEL_91;
  }

  if (a1[2] < v17)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v17) = v2;
  }

  else
  {
    a1[1] = v17;
    *(*a1 + v23) = v2;
  }

  while (1)
  {
LABEL_35:
    [a2 maximumLineHeight];
    if (v24 != 0.0)
    {
      v2 = v24;
      v25 = fabs(v24);
      if (v25 >= 65536.0)
      {
        v26 = 49;
      }

      else
      {
        v26 = 53;
      }

      ProtobufEncoder.encodeVarint(_:)(v26);
      if (v25 >= 65536.0)
      {
        v28 = a1[1];
        v17 = v28 + 8;
        if (__OFADD__(v28, 8))
        {
          goto LABEL_93;
        }

        if (a1[2] < v17)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v17) = v2;
        }

        else
        {
          a1[1] = v17;
          *(*a1 + v28) = v2;
        }
      }

      else
      {
        v27 = a1[1];
        v17 = v27 + 4;
        if (__OFADD__(v27, 4))
        {
          goto LABEL_92;
        }

        *&v2 = v2;
        if (a1[2] < v17)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v17) = LODWORD(v2);
        }

        else
        {
          a1[1] = v17;
          *(*a1 + v27) = LODWORD(v2);
        }
      }
    }

    [a2 minimumLineHeight];
    if (v29 == 0.0)
    {
      break;
    }

    v2 = v29;
    v30 = fabs(v29);
    if (v30 >= 65536.0)
    {
      v31 = 57;
    }

    else
    {
      v31 = 61;
    }

    ProtobufEncoder.encodeVarint(_:)(v31);
    if (v30 >= 65536.0)
    {
      v33 = a1[1];
      v17 = v33 + 8;
      if (!__OFADD__(v33, 8))
      {
        if (a1[2] < v17)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v17) = v2;
        }

        else
        {
          a1[1] = v17;
          *(*a1 + v33) = v2;
        }

        break;
      }
    }

    else
    {
      v32 = a1[1];
      v17 = v32 + 4;
      if (!__OFADD__(v32, 4))
      {
        *&v2 = v2;
        if (a1[2] < v17)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v17) = LODWORD(v2);
        }

        else
        {
          a1[1] = v17;
          *(*a1 + v32) = LODWORD(v2);
        }

        break;
      }

      __break(1u);
    }

    __break(1u);
LABEL_98:
    *ProtobufEncoder.growBufferSlow(to:)(v17) = LODWORD(v2);
  }

  [a2 hyphenationFactor];
  if (v34 != 0.0)
  {
    *&v2 = v34;
    ProtobufEncoder.encodeVarint(_:)(0x45uLL);
    v35 = a1[1];
    v9 = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_86;
    }

    if (a1[2] < v9)
    {
      goto LABEL_87;
    }

    a1[1] = v9;
    *(*a1 + v35) = LODWORD(v2);
  }

  while (1)
  {
    if ([a2 allowsDefaultTighteningForTruncation])
    {
      ProtobufEncoder.encodeVarint(_:)(0x48uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    v36 = [a2 baseWritingDirection];
    if (v36 != -1)
    {
      v37 = v36;
      ProtobufEncoder.encodeVarint(_:)(0x50uLL);
      ProtobufEncoder.encodeVarint(_:)((2 * v37) ^ (v37 >> 63));
    }

    if ([a2 spansAllLines])
    {
      ProtobufEncoder.encodeVarint(_:)(0x58uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    v9 = [a2 compositionLanguage];
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    *ProtobufEncoder.growBufferSlow(to:)(v9) = LODWORD(v2);
  }

  v38 = v9;
  if (v9)
  {
    ProtobufEncoder.encodeVarint(_:)(0x60uLL);
    ProtobufEncoder.encodeVarint(_:)(v38);
  }

  v39 = [a2 baselineIntervalType];
  if (v39)
  {
    v40 = v39;
    ProtobufEncoder.encodeVarint(_:)(0x68uLL);
    ProtobufEncoder.encodeVarint(_:)(v40);
  }

  result = [a2 baselineInterval];
  if (v42 == 0.0)
  {
    return result;
  }

  v43 = v42;
  v44 = fabs(v42);
  if (v44 >= 65536.0)
  {
    v45 = 113;
  }

  else
  {
    v45 = 117;
  }

  ProtobufEncoder.encodeVarint(_:)(v45);
  if (v44 >= 65536.0)
  {
    v47 = a1[1];
    result = (v47 + 8);
    if (!__OFADD__(v47, 8))
    {
      if (a1[2] < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v43;
      }

      else
      {
        a1[1] = result;
        *(*a1 + v47) = v43;
      }

      return result;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v46 = a1[1];
  result = (v46 + 4);
  if (__OFADD__(v46, 4))
  {
    __break(1u);
    goto LABEL_105;
  }

  *&v43 = v43;
  if (a1[2] >= result)
  {
    a1[1] = result;
    *(*a1 + v46) = LODWORD(v43);
    return result;
  }

LABEL_106:
  result = ProtobufEncoder.growBufferSlow(to:)(result);
  *result = LODWORD(v43);
  return result;
}

void CodableTextAttachment.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = _NSTextAttachmentGetImage(a2);
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for CorePlatformImage();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = 0;
    *&v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = v6;
    v9 = v6;
    v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(0, v9);
    v25.receiver = v8;
    v25.super_class = v7;
    v10 = objc_msgSendSuper2(&v25, sel_init);
    specialized ProtobufEncoder.messageField<A>(_:_:)(1, v10);
  }

  else
  {
    v11 = _NSTextAttachmentGetContents(a2);
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v16 = *(a1 + 8);
      v17 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v18 = *(v17 + 2);
      v19 = *(v17 + 3);
      v20 = v18 + 1;
      if (v18 >= v19 >> 1)
      {
        v24 = v18 + 1;
        v21 = v17;
        v22 = *(v17 + 2);
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1, v21);
        v18 = v22;
        v20 = v24;
        v17 = v23;
      }

      *(v17 + 2) = v20;
      *&v17[8 * v18 + 32] = v16;
      *(a1 + 24) = v17;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
      }

      else
      {
        *(a1 + 8) = v16 + 1;
        Data.encode(to:)(a1, v13, v15);
        if (!v2)
        {
          ProtobufEncoder.endLengthDelimited()();
        }

        outlined consume of Data._Representation(v13, v15);
      }
    }

    else
    {
      lazy protocol witness table accessor for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void CodablePlatformFont.encode(to:)(void *a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for String.Encoding();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CTFontCopyFontDescriptor(a2);
  if (CTFontIsSystemUIFont())
  {
    v13 = CTFontGetTextStyle();
    if (v13)
    {
      v14 = v13;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!v16 && v15 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {
        ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
        v40 = v119;
        static String.Encoding.utf8.getter();
        v41 = String.data(using:allowLossyConversion:)();
        v16 = v42;

        (*(v120 + 8))(v40, v121);
        if (v16 >> 60 == 15)
        {
          lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
          swift_allocError();
          swift_willThrow();
LABEL_54:

          return;
        }

        specialized Data._Representation.withUnsafeBytes<A>(_:)(v41, v16);
        outlined consume of Data?(v41, v16);
      }

      v7 = 0x1E696A000uLL;
      if (CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965850]))
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 unsignedIntegerValue];
          if (v18)
          {
            v16 = v18;
            ProtobufEncoder.encodeVarint(_:)(0x30uLL);
            ProtobufEncoder.encodeVarint(_:)(v16);
          }
        }

        swift_unknownObjectRelease();
      }

      if (CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965880]))
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          DefaultTextStylePlatform = [v19 unsignedIntValue];
          swift_unknownObjectRelease();
          goto LABEL_47;
        }

        swift_unknownObjectRelease();
      }

      DefaultTextStylePlatform = CTFontDescriptorGetDefaultTextStylePlatform();
LABEL_47:
      ProtobufEncoder.encodeVarint(_:)(0x80uLL);
      ProtobufEncoder.encodeVarint(_:)(DefaultTextStylePlatform);
      if (CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965888]))
      {
        v118 = v12;
        objc_opt_self();
        v16 = swift_dynamicCastObjCClassUnconditional();
        ProtobufEncoder.encodeVarint(_:)(0x42uLL);
        v12 = a1[1];
        v43 = a1[3];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_161:
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
          v43 = isUniquelyReferenced_nonNull_native;
        }

        v4 = *(v43 + 2);
        v45 = *(v43 + 3);
        if (v4 >= v45 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v4 + 1, 1, v43);
          v43 = isUniquelyReferenced_nonNull_native;
        }

        *(v43 + 2) = v4 + 1;
        *(v43 + v4 + 4) = v12;
        a1[3] = v43;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        a1[1] = v12 + 1;
        CodableFontTraits.encode(to:)(a1, v16);
        v4 = v7;
        v12 = v118;
        if (v7)
        {

          goto LABEL_54;
        }

        ProtobufEncoder.endLengthDelimited()();

        v7 = 0x1E696A000uLL;
      }

      if (CTFontCopyAttribute(a2, *MEMORY[0x1E6965878]))
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          swift_unknownObjectRelease();
          goto LABEL_68;
        }

        *&v123 = 0;
        BYTE8(v123) = 1;
        static UInt._conditionallyBridgeFromObjectiveC(_:result:)();
        swift_unknownObjectRelease();
        if (BYTE8(v123) != 1)
        {
          v46 = v123;
          ProtobufEncoder.encodeVarint(_:)(0x88uLL);
          ProtobufEncoder.encodeVarint(_:)(v46);
        }
      }

LABEL_68:
      Size = CTFontGetSize(a2);
      if (Size == 0.0)
      {
        goto LABEL_79;
      }

      v3 = Size;
      v51 = fabs(Size);
      if (v51 >= 65536.0)
      {
        v52 = 57;
      }

      else
      {
        v52 = 61;
      }

      ProtobufEncoder.encodeVarint(_:)(v52);
      if (v51 >= 65536.0)
      {
        v54 = a1[1];
        isUniquelyReferenced_nonNull_native = v54 + 8;
        if (!__OFADD__(v54, 8))
        {
          if (a1[2] < isUniquelyReferenced_nonNull_native)
          {
            *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v3;
          }

          else
          {
            a1[1] = isUniquelyReferenced_nonNull_native;
            *(*a1 + v54) = v3;
          }

LABEL_79:
          v55 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69657A8]);
          if (v55)
          {
            v56 = v55;
            ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
            v57 = *(a1 + 1);
            v129 = *a1;
            v130 = v57;
            v131 = a1[4];
            v58 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v56);
            if (v4)
            {
              swift_unknownObjectRelease();
              goto LABEL_156;
            }

            v60 = v58;
            v16 = v59;
            specialized Data._Representation.withUnsafeBytes<A>(_:)(v58, v59);
            v4 = 0;
            swift_unknownObjectRelease();
            outlined consume of Data._Representation(v60, v16);
          }

          v61 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965680]);
          if (v61)
          {
            *&v123 = v61;
            type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for [Int : CGFloat]);
            if (swift_dynamicCast())
            {
              v43 = *&v122;
              if (*(*&v122 + 16))
              {
                v118 = v12;
                v113 = v4;
                v62 = (*&v122 + 64);
                v63 = 1 << *(*&v122 + 32);
                v64 = -1;
                if (v63 < 64)
                {
                  v64 = ~(-1 << v63);
                }

                v12 = v64 & *(*&v122 + 64);
                v65 = (v63 + 63) >> 6;

                v66 = 0;
                v14 = MEMORY[0x1E69E7CC8];
                v115 = (v43 + 64);
                v114 = v65;
                v117 = a1;
                v116 = v43;
                while (v12)
                {
                  v4 = v66;
LABEL_96:
                  v67 = (v4 << 9) | (8 * __clz(__rbit64(v12)));
                  v3 = *(*(v43 + 7) + v67);
                  *&v123 = *(*(v43 + 6) + v67);
                  a1 = dispatch thunk of CustomStringConvertible.description.getter();
                  v7 = v68;
                  v16 = swift_isUniquelyReferenced_nonNull_native();
                  *&v123 = v14;
                  a2 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v7);
                  v70 = v14[2];
                  v71 = (v69 & 1) == 0;
                  isUniquelyReferenced_nonNull_native = v70 + v71;
                  if (__OFADD__(v70, v71))
                  {
                    goto LABEL_163;
                  }

                  v72 = v69;
                  if (v14[3] >= isUniquelyReferenced_nonNull_native)
                  {
                    if ((v16 & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = specialized _NativeDictionary.copy()();
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(isUniquelyReferenced_nonNull_native, v16);
                    isUniquelyReferenced_nonNull_native = specialized __RawDictionaryStorage.find<A>(_:)(a1, v7);
                    if ((v72 & 1) != (v73 & 1))
                    {
                      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                      __break(1u);
                      return;
                    }

                    a2 = isUniquelyReferenced_nonNull_native;
                  }

                  v12 &= v12 - 1;
                  if (v72)
                  {

                    v14 = v123;
                    *(*(v123 + 56) + 8 * a2) = v3;
                  }

                  else
                  {
                    v14 = v123;
                    *(v123 + 8 * (a2 >> 6) + 64) |= 1 << a2;
                    v74 = (v14[6] + 16 * a2);
                    *v74 = a1;
                    v74[1] = v7;
                    *(v14[7] + 8 * a2) = v3;
                    v75 = v14[2];
                    v76 = __OFADD__(v75, 1);
                    v77 = v75 + 1;
                    if (v76)
                    {
                      goto LABEL_164;
                    }

                    v14[2] = v77;
                  }

                  v66 = v4;
                  a1 = v117;
                  v43 = v116;
                  v62 = v115;
                  v65 = v114;
                }

                while (1)
                {
                  v4 = v66 + 1;
                  if (__OFADD__(v66, 1))
                  {
                    __break(1u);
                    goto LABEL_161;
                  }

                  if (v4 >= v65)
                  {
                    break;
                  }

                  v12 = *(&v62->isa + v4);
                  ++v66;
                  if (v12)
                  {
                    goto LABEL_96;
                  }
                }

                ProtobufEncoder.encodeVarint(_:)(0x52uLL);
                v78 = *(a1 + 1);
                v126 = *a1;
                v127 = v78;
                v128 = a1[4];
                v79 = v113;
                v80 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v14);
                if (v79)
                {

                  v82 = &v133;
                  goto LABEL_113;
                }

                v87 = v80;
                v88 = v81;

                specialized Data._Representation.withUnsafeBytes<A>(_:)(v87, v88);
                outlined consume of Data._Representation(v87, v88);
                v12 = v118;
              }

              else
              {
              }
            }
          }

          v89 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69658F0]);
          if (!v89)
          {
            goto LABEL_124;
          }

          *&v123 = v89;
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_124;
          }

          v3 = v122;
          if (v122 == 0.0)
          {
            goto LABEL_124;
          }

          ProtobufEncoder.encodeVarint(_:)(0x59uLL);
          v90 = a1[1];
          v83 = v90 + 8;
          if (!__OFADD__(v90, 8))
          {
            if (a1[2] >= v83)
            {
              a1[1] = v83;
              v91 = (*a1 + v90);
LABEL_123:
              *v91 = v3;
LABEL_124:
              v92 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965788]);
              if (v92)
              {
                *&v123 = v92;
                if (swift_dynamicCast())
                {
                  v93 = *&v122;
                  if (v122 != 0.0)
                  {
                    ProtobufEncoder.encodeVarint(_:)(0x60uLL);
                    ProtobufEncoder.encodeVarint(_:)((2 * v93) ^ (v93 >> 63));
                  }
                }
              }

              v94 = COERCE_DOUBLE(CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69656F0]));
              if (v94 == 0.0 || (v122 = v94, (swift_dynamicCast() & 1) == 0))
              {
LABEL_133:
                v95 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69657E0]);
                if (!v95 || (*&v123 = v95, (swift_dynamicCast() & 1) == 0) || (v96 = v122, v122 == 0.0))
                {
LABEL_140:
                  v100 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69657F8]);
                  if (!v100)
                  {
                    goto LABEL_156;
                  }

                  *&v123 = v100;
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_156;
                  }

                  v101 = v122;
                  if (v122 == 0.0)
                  {
                    goto LABEL_156;
                  }

                  v102 = fabs(v122);
                  if (v102 >= 65536.0)
                  {
                    v103 = 121;
                  }

                  else
                  {
                    v103 = 125;
                  }

                  ProtobufEncoder.encodeVarint(_:)(v103);
                  if (v102 >= 65536.0)
                  {
                    v110 = a1[1];
                    v105 = v110 + 8;
                    if (!__OFADD__(v110, 8))
                    {
                      if (a1[2] < v105)
                      {
                        v111 = ProtobufEncoder.growBufferSlow(to:)(v105);
                      }

                      else
                      {
                        a1[1] = v105;
                        v111 = (*a1 + v110);
                      }

                      *v111 = v101;
                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    v104 = a1[1];
                    v105 = v104 + 4;
                    if (!__OFADD__(v104, 4))
                    {
                      *&v101 = v101;
                      if (a1[2] >= v105)
                      {
                        a1[1] = v105;
                        *(*a1 + v104) = LODWORD(v101);
                        goto LABEL_156;
                      }

LABEL_178:
                      *ProtobufEncoder.growBufferSlow(to:)(v105) = LODWORD(v101);
                      goto LABEL_156;
                    }

                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_178;
                }

                ProtobufEncoder.encodeVarint(_:)(0x71uLL);
                v97 = a1[1];
                v98 = v97 + 8;
                if (__OFADD__(v97, 8))
                {
                  __break(1u);
                }

                else if (a1[2] >= v98)
                {
                  a1[1] = v98;
                  v99 = (*a1 + v97);
LABEL_139:
                  *v99 = v96;
                  goto LABEL_140;
                }

                v99 = ProtobufEncoder.growBufferSlow(to:)(v98);
                goto LABEL_139;
              }

              if (v123 == __PAIR128__(0xE000000000000000, 0) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                goto LABEL_133;
              }

              ProtobufEncoder.encodeVarint(_:)(0x6AuLL);
              v106 = v119;
              static String.Encoding.utf8.getter();
              v107 = String.data(using:allowLossyConversion:)();
              v109 = v108;

              (*(v120 + 8))(v106, v121);
              if (v109 >> 60 != 15)
              {
                specialized Data._Representation.withUnsafeBytes<A>(_:)(v107, v109);
                outlined consume of Data?(v107, v109);
                goto LABEL_133;
              }

              lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
              goto LABEL_42;
            }

LABEL_173:
            v91 = ProtobufEncoder.growBufferSlow(to:)(v83);
            goto LABEL_123;
          }

LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        goto LABEL_166;
      }

      v53 = a1[1];
      isUniquelyReferenced_nonNull_native = v53 + 4;
      if (!__OFADD__(v53, 4))
      {
        *&v3 = v3;
        if (a1[2] >= isUniquelyReferenced_nonNull_native)
        {
          a1[1] = isUniquelyReferenced_nonNull_native;
          *(*a1 + v53) = LODWORD(v3);
          goto LABEL_79;
        }

        goto LABEL_167;
      }

LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v3);
      goto LABEL_79;
    }

    Options = CTFontDescriptorGetOptions();
    if (Options)
    {
      v35 = Options;
      ProtobufEncoder.encodeVarint(_:)(0x20uLL);
      ProtobufEncoder.encodeVarint(_:)(v35);
    }

LABEL_31:
    v36 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965808]);
    if (v36)
    {
      v16 = v36;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v37 = a1;
        if (static String._unconditionallyBridgeFromObjectiveC(_:)())
        {
          v39 = 0;
        }

        else
        {
          v39 = v38 == 0xE000000000000000;
        }

        if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
          v7 = v119;
          static String.Encoding.utf8.getter();
          v47 = String.data(using:allowLossyConversion:)();
          v49 = v48;

          (*(v120 + 8))(v7, v121);
          if (v49 >> 60 == 15)
          {
            lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
            swift_allocError();
            swift_willThrow();
            swift_unknownObjectRelease();
            goto LABEL_156;
          }

          specialized Data._Representation.withUnsafeBytes<A>(_:)(v47, v49);
          swift_unknownObjectRelease();
          outlined consume of Data?(v47, v49);
        }

        a1 = v37;
        goto LABEL_68;
      }

      swift_unknownObjectRelease();
    }

    lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error();
LABEL_42:
    swift_allocError();
    swift_willThrow();
    goto LABEL_156;
  }

  if (CTFontDescriptorIsAppleFont())
  {
    goto LABEL_31;
  }

  v21 = a1[2];
  v123 = *a1;
  v124 = v21;
  v125 = *(a1 + 3);
  ProtobufEncoder.archiveOptions.getter(&v122);
  v22 = MEMORY[0x1E69658E8];
  if ((LOBYTE(v122) & 4) != 0)
  {
    v22 = MEMORY[0x1E6965838];
  }

  v23 = *v22;
  if (!CTFontDescriptorCopyAttribute(v12, v23))
  {
LABEL_63:
    lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error();
    swift_allocError();
    swift_willThrow();

    goto LABEL_156;
  }

  v115 = v23;
  v117 = a1;
  type metadata accessor for CFURLRef(0);
  v116 = swift_dynamicCastUnknownClassUnconditional();
  v24 = CFURLCopyScheme(v116);
  v25 = MEMORY[0x193ABEC20](1701603686, 0xE400000000000000);
  v26 = v25;
  if (!v24)
  {

    goto LABEL_62;
  }

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  v27 = static _CFObject.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
LABEL_62:

    v23 = v115;
    goto LABEL_63;
  }

  v118 = v12;
  a1 = v117;
  v28 = v117[2];
  v123 = *v117;
  v124 = v28;
  v125 = *(v117 + 3);
  ProtobufEncoder.archiveOptions.getter(&v122);
  if ((LOBYTE(v122) & 4) != 0)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v12 = a1[1];
    v29 = a1[3];
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v2;
    if (v83)
    {
      goto LABEL_108;
    }
  }

  else
  {
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v12 = a1[1];
    v29 = a1[3];
    v10 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    *&v29[8 * v31 + 32] = v12;
    a1[3] = v29;
    if (!__OFADD__(v12, 1))
    {
      a1[1] = v12 + 1;
      v32 = v116;
      specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(a2, a1, v32);
      v4 = v2;
      v12 = v118;
      v33 = v115;
      if (v2)
      {

LABEL_156:
        return;
      }

      v112 = v115;
      ProtobufEncoder.endLengthDelimited()();

      goto LABEL_31;
    }

    __break(1u);
  }

  v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  v29 = v83;
LABEL_108:
  v85 = *(v29 + 2);
  v84 = *(v29 + 3);
  if (v85 >= v84 >> 1)
  {
    v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v29);
    v29 = v83;
  }

  *(v29 + 2) = v85 + 1;
  *&v29[8 * v85 + 32] = v12;
  a1 = v117;
  v117[3] = v29;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_172;
  }

  a1[1] = v12 + 1;
  v86 = v113;
  URL.encode(to:)(a1);
  v4 = v86;
  v12 = v118;
  if (!v86)
  {
    ProtobufEncoder.endLengthDelimited()();

    (*(v8 + 8))(v10, v7);
    goto LABEL_31;
  }

  (*(v8 + 8))(v10, v7);

  v82 = &v132;
LABEL_113:
}

uint64_t specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(void (**a1)(void, void), uint64_t (*a2)(void))
{
  v6 = type metadata accessor for OSSignpostID();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 2);
  v44 = *v2;
  v45 = v9;
  v46 = *(v2 + 24);
  v10 = ProtobufEncoder.archiveWriter.getter();
  if (v10)
  {
    v11 = v10;
    v43 = a1;
    v12 = lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
    v13 = a1;
    v41 = v12;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v14 = v11[19];
    if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(&v44), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();
      outlined destroy of AnyHashable(&v44);
      if (one-time initialization token for archiving != -1)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v18 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v18, static OSSignposter.archiving);
        lazy protocol witness table accessor for type Int and conformance Int();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v19);
        static OSSignpostID.exclusive.getter();
        v20 = OSSignposter.logHandle.getter();
        v21 = static os_signpost_type_t.event.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v22 = swift_slowAlloc();
          LODWORD(v41) = v21;
          v23 = v17;
          v24 = v22;
          *v22 = 134217984;
          *(v22 + 4) = v23;
          v25 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18D018000, v20, v41, v25, "addAttachment.cacheHit", "index=%{name=index}ld", v24, 0xCu);
          v26 = v24;
          v17 = v23;
          MEMORY[0x193AC4820](v26, -1, -1);
        }

        v42[1](v8, v6);
        if ((v17 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        swift_once();
      }
    }

    else
    {
      swift_endAccess();
      v27 = outlined destroy of AnyHashable(&v44);
      v28 = (a2)(v27);
      if (v3)
      {
      }

      v6 = v28;
      v34 = v29;
      v42 = v13;
      outlined copy of Data._Representation(v28, v29);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v6, v34, &v44);
      v8 = v45;
      v35 = v44;
      v36 = specialized Collection<>.firstIndex(of:)(v44, *(&v44 + 1), v45, v11[4]);
      if (v37)
      {
        v44 = v35;
        LODWORD(v45) = v8;
        BYTE4(v45) = 0;
        outlined copy of Data._Representation(v6, v34);
        v36 = specialized ArchiveWriter.addAttachment(hash:from:)(&v44, v11, v6, v34);
      }

      v17 = v36;
      outlined consume of Data._Representation(v6, v34);
      v43 = v42;
      v38 = v42;
      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v11[19];
      v11[19] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, &v44, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v44);
      v11[19] = v47;
      swift_endAccess();
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_17;
      }
    }

    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v17);
  }

  result = a2();
  if (!v3)
  {
    v32 = result;
    v33 = v31;
    ProtobufEncoder.dataField(_:_:)(2, result, v31);
    return outlined consume of Data._Representation(v32, v33);
  }

  return result;
}

uint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance CodablePlatformFont@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized CodablePlatformFont.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t protocol witness for Decodable.init(from:) in conformance CodablePlatformFont@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized CodableByProtobuf.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized CodableByProtobuf.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v11.super.isa;
    v6 = v12;
    outlined copy of Data._Representation(v11.super.isa, v12);
    ProtobufDecoder.init(_:)(v11.super.isa, v12, &v11);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of Decoder.userInfo.getter();

    v13 = v7;
    ContentTransition.Style.init(from:)(&v11, &v10);
    outlined consume of Data._Representation(isa, v6);
    *a2 = v10;
    v8 = v11.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t specialized CodableByProtobuf.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v11.super.isa;
    v6 = v12;
    outlined copy of Data._Representation(v11.super.isa, v12);
    ProtobufDecoder.init(_:)(v11.super.isa, v12, &v11);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of Decoder.userInfo.getter();

    v13 = v7;
    CodableNSAttributes.init(from:)(&v11, &v10);
    outlined consume of Data._Representation(isa, v6);
    *a2 = v10;
    v8 = v11.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t specialized CodableByProtobuf.encode(to:)(void *a1, uint64_t a2)
{
  v12 = a2;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v2)
  {
    v6 = a1[3];
    v7 = result;
    v8 = a1;
    v9 = v5;
    __swift_project_boxed_opaque_existential_1(v8, v6);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

{
  v12 = a2;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v2)
  {
    v6 = a1[3];
    v7 = result;
    v8 = a1;
    v9 = v5;
    __swift_project_boxed_opaque_existential_1(v8, v6);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

uint64_t specialized CodableByProtobuf.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v4)
  {
    v8 = a1[3];
    v9 = result;
    v10 = a1;
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(v10, v8);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v9, v11);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t specialized CodableByProtobuf.encode(to:)(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v4)
  {
    v8 = a1[3];
    v9 = result;
    v10 = a1;
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(v10, v8);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v9, v11);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t specialized CodableByProtobuf.encode(to:)(void *a1, char a2)
{
  v12 = a2;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v2)
  {
    v6 = a1[3];
    v7 = result;
    v8 = a1;
    v9 = v5;
    __swift_project_boxed_opaque_existential_1(v8, v6);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

void CodableCGFont.encode(to:)(uint64_t a1, CGFontRef graphicsFont)
{
  v4 = CTFontCreateWithGraphicsFont(graphicsFont, 1.0, 0, 0);
  ProtobufEncoder.encodeVarint(_:)(0x22uLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  *(a1 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v5 + 1;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v10 = v4;

    specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v10, closure #1 in ProtobufEncoder.encodeAttachedMessage<A, B>(_:for:)specialized partial apply);
    if (v2)
    {
    }

    else
    {

      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

void CodableFontTraits.encode(to:)(void *a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  v9 = MEMORY[0x1E69E7CA0];
  if (*(&v46 + 1))
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
    if (swift_dynamicCast())
    {
      v10 = v43;
      v11 = v9;
      v12 = v8;
      v13 = v4;
      v14 = v5;
      v15 = [v43 unsignedIntegerValue];
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      v16 = v15;
      v5 = v14;
      v4 = v13;
      v8 = v12;
      v9 = v11;
      ProtobufEncoder.encodeVarint(_:)(v16);
    }
  }

  else
  {
    outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
  }

  if ([a2 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
    goto LABEL_18;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = v43;
  [v43 floatValue];
  v19 = v18;
  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v20 = a1[1];
  v21 = v20 + 4;
  if (__OFADD__(v20, 4))
  {
    __break(1u);
    goto LABEL_65;
  }

  if (a1[2] < v21)
  {
    goto LABEL_67;
  }

  a1[1] = v21;
  for (i = (*a1 + v20); ; i = ProtobufEncoder.growBufferSlow(to:)(v21))
  {
    *i = v19;

LABEL_18:
    if ([a2 objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
      if (swift_dynamicCast())
      {
        v17 = v43;
        [v43 floatValue];
        v19 = v23;
        ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
        v24 = a1[1];
        v21 = v24 + 4;
        if (__OFADD__(v24, 4))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1[2] < v21)
        {
          v25 = ProtobufEncoder.growBufferSlow(to:)(v21);
        }

        else
        {
          a1[1] = v21;
          v25 = (*a1 + v24);
        }

        *v25 = v19;
      }
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
    }

    if ([a2 objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (!*(&v46 + 1))
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
      goto LABEL_38;
    }

    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v17 = v43;
    [v43 floatValue];
    v19 = v26;
    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v27 = a1[1];
    v21 = v27 + 4;
    if (!__OFADD__(v27, 4))
    {
      break;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  if (a1[2] < v21)
  {
    v28 = ProtobufEncoder.growBufferSlow(to:)(v21);
  }

  else
  {
    a1[1] = v21;
    v28 = (*a1 + v27);
  }

  *v28 = v19;

LABEL_38:
  if (!*MEMORY[0x1E69658E0])
  {
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if ([a2 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_49;
    }

    v41 = v4;
    v29 = v5;
    if (!v43 && v44 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      goto LABEL_49;
    }

    ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
    v36 = v8;
    static String.Encoding.utf8.getter();
    v37 = String.data(using:allowLossyConversion:)();
    v39 = v38;

    (*(v29 + 8))(v36, v41);
    if (v39 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      v42 = swift_allocError();
      swift_willThrow();
      return;
    }

    v40 = v42;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v37, v39);
    v42 = v40;
    outlined consume of Data?(v37, v39);
  }

  else
  {
    outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
  }

LABEL_49:
  if (!*MEMORY[0x1E69657D8])
  {
    goto LABEL_73;
  }

  if ([a2 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
    if (swift_dynamicCast())
    {
      v30 = v43;
      [v43 floatValue];
      v32 = v31;
      ProtobufEncoder.encodeVarint(_:)(0x35uLL);
      v33 = a1[1];
      v34 = v33 + 4;
      if (__OFADD__(v33, 4))
      {
        __break(1u);
      }

      else if (a1[2] >= v34)
      {
        a1[1] = v34;
        v35 = (*a1 + v33);
LABEL_58:
        *v35 = v32;

        return;
      }

      v35 = ProtobufEncoder.growBufferSlow(to:)(v34);
      goto LABEL_58;
    }
  }

  else
  {
    outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
  }
}

uint64_t ProtobufEncoder.preferredCompositionLanguage.getter()
{
  v1 = *(v0 + 32);
  if (one-time initialization token for preferredCompositionLanguage != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.preferredCompositionLanguage);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for CTCompositionLanguage(0);
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodablePlatformFont()
{
  Hasher.init(_seed:)();
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodablePlatformFont()
{
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodablePlatformFont()
{
  Hasher.init(_seed:)();
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodablePlatformFont()
{
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t specialized ObjectCache.subscript.getter(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for (key: Locale.Key, hash: Int, value: String)?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ObjectCache<Locale.Key, String>.Item();
  v60 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  type metadata accessor for (key: Locale.Key, hash: Int, value: String)();
  v17 = v16;
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v51 - v20;
  Hasher.init(_seed:)();
  v21 = type metadata accessor for Locale.Components();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components, MEMORY[0x1E69695E8]);
  v58 = a1;
  dispatch thunk of Hashable.hash(into:)();
  v62 = Hasher._finalize()();
  v22 = 4 * (v62 & 7);
  v54 = v3;
  v23 = *(v3 + 32);

  os_unfair_lock_lock(v23 + 4);
  v24 = *&v23[6]._os_unfair_lock_opaque;
  v25 = *(v24 + 16);
  v57 = v22;
  if (v22 >= v25)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v3 = 0;
  v2 = 0;
  v26 = *(v9 + 72);
  v27 = (v56 + 48);
  v53 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v9 = v53 + 4 * v26 * (v62 & 7);
  v28 = 0x80000000;
  v21 = v57;
  v61 = v23;
  while (1)
  {
    v66 = v28;
    outlined init with copy of ResolvableTextSegmentAttribute.Value(v24 + v9, v15, type metadata accessor for ObjectCache<Locale.Key, String>.Item);
    outlined init with take of ResolvableTextSegmentAttribute.Value(v15, v7, type metadata accessor for (key: Locale.Key, hash: Int, value: String)?);
    if ((*v27)(v7, 1, v17) == 1)
    {
      break;
    }

    v64 = v2;
    v2 = v65;
    outlined init with take of ResolvableTextSegmentAttribute.Value(v7, v65, type metadata accessor for (key: Locale.Key, hash: Int, value: String));
    if (*(v2 + *(v17 + 48)) == v62 && (MEMORY[0x193ABDA30](v65, v58) & 1) != 0)
    {
      LODWORD(v3) = v23[8]._os_unfair_lock_opaque + 1;
      v23[8]._os_unfair_lock_opaque = v3;
      v39 = *&v23[6]._os_unfair_lock_opaque;
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v23[6]._os_unfair_lock_opaque = v39;
      if ((result & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    v29 = *&v23[6]._os_unfair_lock_opaque;
    if (v21 >= *(v29 + 16))
    {
      goto LABEL_31;
    }

    os_unfair_lock_opaque = v23[8]._os_unfair_lock_opaque;
    v30 = v27;
    v31 = v15;
    v32 = v7;
    v33 = v59;
    outlined init with copy of ResolvableTextSegmentAttribute.Value(v29 + v9, v59, type metadata accessor for ObjectCache<Locale.Key, String>.Item);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v65, type metadata accessor for (key: Locale.Key, hash: Int, value: String));
    v34 = v26;
    v35 = v17;
    v36 = *(v33 + *(v60 + 44));
    v37 = v33;
    v7 = v32;
    v15 = v31;
    v27 = v30;
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v37, type metadata accessor for ObjectCache<Locale.Key, String>.Item);
    v38 = os_unfair_lock_opaque - v36;
    v17 = v35;
    v26 = v34;
    v23 = v61;
    v28 = v66;
    if (v66 <= v38)
    {
      v28 = v38;
    }

    v2 = v64;
    if (v66 < v38)
    {
      v2 = v3;
    }

    if (v3 == 3)
    {
LABEL_18:
      v64 = v2;
      v2 = 0;
      v23 = 0;
      goto LABEL_23;
    }

LABEL_5:
    v24 = *&v23[6]._os_unfair_lock_opaque;
    ++v21;
    v9 += v26;
    ++v3;
    if (v21 >= *(v24 + 16))
    {
      goto LABEL_30;
    }
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v7, type metadata accessor for (key: Locale.Key, hash: Int, value: String)?);
  v28 = 0x7FFFFFFF;
  if (v66 == 0x7FFFFFFF)
  {
    if (v3 == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  if (v3 != 3)
  {
    v2 = v3;
    goto LABEL_5;
  }

  v2 = 0;
  v23 = 0;
  v64 = 3;
LABEL_23:
  while (2)
  {
    v43 = v58;
    os_unfair_lock_unlock(v61 + 4);

    if (v23)
    {
      return v2;
    }

    v21 = v26;
    v44 = v54;
    (*(v54 + 16))(v67, v43);
    v7 = *(v44 + 32);

    os_unfair_lock_lock(v7 + 4);
    v3 = v57 + v64;
    if (__OFADD__(v57, v64))
    {
LABEL_32:
      __break(1u);
LABEL_33:

      *&v7[6]._os_unfair_lock_opaque = specialized _ArrayBuffer._consumeAndCreateNew()(v49);

      v26 = *&v7[6]._os_unfair_lock_opaque;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }

    v2 = v67[0];
    v23 = v67[1];
    v45 = *(v17 + 48);
    v9 = v55;
    v46 = (v55 + *(v17 + 64));
    outlined init with copy of ResolvableTextSegmentAttribute.Value(v43, v55, type metadata accessor for Locale.Key);
    *(v9 + v45) = v62;
    *v46 = v2;
    v46[1] = v23;
    (*(v56 + 56))(v9, 0, 1, v17);
    v47 = v7[8]._os_unfair_lock_opaque + 1;
    v7[8]._os_unfair_lock_opaque = v47;
    *(v9 + *(v60 + 44)) = v47;
    v26 = *&v7[6]._os_unfair_lock_opaque;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v7[6]._os_unfair_lock_opaque = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_33;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_27:
    if (v3 < *(v26 + 16))
    {
      outlined assign with take of ObjectCache<Locale.Key, String>.Item(v55, v26 + v53 + v3 * v21);
      os_unfair_lock_unlock(v7 + 4);

      return v2;
    }

LABEL_35:
    __break(1u);
LABEL_36:

    *&v23[6]._os_unfair_lock_opaque = specialized _ArrayBuffer._consumeAndCreateNew()(v50);

    v39 = *&v23[6]._os_unfair_lock_opaque;
LABEL_20:
    if (v21 < *(v39 + 16))
    {
      *(v39 + *(v60 + 44) + v9) = v3;
      *&v23[6]._os_unfair_lock_opaque = v39;
      v41 = v52;
      outlined init with take of ResolvableTextSegmentAttribute.Value(v65, v52, type metadata accessor for (key: Locale.Key, hash: Int, value: String));
      v42 = (v41 + *(v17 + 64));
      v2 = *v42;
      v23 = v42[1];
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v41, type metadata accessor for Locale.Key);
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA30ResolvableTextSegmentAttributeO5ValueV_Tt1B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [ResolvableTextSegmentAttribute.Value](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ResolvableTextSegmentAttribute.Value] and conformance <A> [A], type metadata accessor for [ResolvableTextSegmentAttribute.Value], lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value and conformance ResolvableTextSegmentAttribute.Value);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    if (*(v5 + 16))
    {
      v3 = *(type metadata accessor for ResolvableTextSegmentAttribute.Value(0) - 8);
      outlined init with copy of ResolvableTextSegmentAttribute.Value(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), a1, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA04TimeK10FormattingOG_Tt1B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>]();
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    if (*(v4 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v4 + 32, a1, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>, &type metadata for TimeDataFormatting, &protocol witness table for TimeDataFormatting, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA18ResolvableProgressVG_Tt1B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>]();
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    if (*(v4 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v4 + 32, a1, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress, &protocol witness table for ResolvableProgress, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA25ResolvableCLKTextProviderVG_Tt1B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>]();
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    if (*(v4 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v4 + 32, a1, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>, &type metadata for ResolvableCLKTextProvider, &protocol witness table for ResolvableCLKTextProvider, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA15ResolvableTimerVG_Tt1B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>]();
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    if (*(v4 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v4 + 32, a1, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer, &protocol witness table for ResolvableTimer, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA21ResolvableCurrentDateVG_Tt1B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>]();
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    if (*(v4 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v4 + 32, a1, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate, &protocol witness table for ResolvableCurrentDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA22ResolvableAbsoluteDateVG_Tt1B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>]();
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    if (*(v4 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v4 + 32, a1, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate, &protocol witness table for ResolvableAbsoluteDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA22ResolvableDateIntervalVG_Tt1B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>]();
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    if (*(v4 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v4 + 32, a1, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval, &protocol witness table for ResolvableDateInterval, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA11JSONCodableVySDySSSdGG_Tt1B5@<X0>(void *a1@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [JSONCodable<[String : Double]>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [JSONCodable<[String : Double]>] and conformance <A> [A], type metadata accessor for [JSONCodable<[String : Double]>], lazy protocol witness table accessor for type JSONCodable<[String : Double]> and conformance JSONCodable<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v1)
  {
  }

  if (!*(v5 + 16))
  {

    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
  }

  v4 = *(v5 + 32);

  *a1 = v4;
  return result;
}

uint64_t specialized closure #1 in ProtobufEncoder.encodeAttachedMessage<A, B>(_:for:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Data.Deallocator();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = a1;

  CodablePlatformFont.encode(to:)(&v14, a2);
  if (v2)
  {
    free(v14);
    v9 = v17;
  }

  else
  {
    if (v14)
    {
      v10 = v15;
      v11 = v14;
      (*(v6 + 104))(v8, *MEMORY[0x1E6969000], v5);
      v9 = specialized Data.init(bytesNoCopy:count:deallocator:)(v11, v10, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(uint64_t a1@<X8>)
{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    specialized Color.ResolvedHDR.init(from:)(v1, &v9);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          *a1 = v9;
          *(a1 + 16) = v10;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    ResolvedShadowStyle.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    GraphicsFilter.VibrantColorMatrix.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    GraphicsFilter.EDRGainMultiply.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    GraphicsFilter.DisplacementMap.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    _RotationEffect.Data.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(_OWORD *a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    *v12 = 1065353216;
    *&v12[4] = 0uLL;
    *&v12[20] = 0x3F80000000000000;
    *&v12[28] = 0uLL;
    *&v12[44] = 0x3F80000000000000uLL;
    *&v12[60] = 0;
    *&v12[68] = 0;
    *&v12[72] = 1065353216;
    closure #1 in _ColorMatrix.init(from:)(v12, v1, &v11);
    v5 = *&v12[48];
    a1[2] = *&v12[32];
    a1[3] = v5;
    a1[4] = *&v12[64];
    v6 = *&v12[16];
    *a1 = *v12;
    a1[1] = v6;
    v7 = v1[5];
    if (*(v7 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
LABEL_5:
          v9 = v8 - 1;
          v10 = *(v7 + 8 * v9 + 32);
          *(v7 + 16) = v9;
          v1[5] = v7;
          v1[2] = v10;
          return result;
        }

LABEL_9:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(_DWORD *a1@<X8>)
{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    StrongHash.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()()
{
  result = ProtobufDecoder.beginMessage()();
  if (!v1)
  {
    specialized Color.Resolved.init(from:)(v0);
    v5 = *(v0 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_7:
          v3 = v6 - 1;
          v4 = *(v5 + 8 * v3 + 32);
          *(v5 + 16) = v3;
          *(v0 + 40) = v5;
          *(v0 + 16) = v4;
          return result;
        }

        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(double *a1@<X8>)
{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    _Rotation3DEffect.Data.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  _sypSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt8>, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 48 * a1);
  *(v11 + 25) = *(a3 + 25);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 640 * a1), __src, 0x27CuLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a5[7] + 16 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of AnyTrackedValue(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of AnyTrackedValue(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3 & 1;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5 & 1;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = (a4[7] + 80 * result);
  v5 = a3[4];
  v4[3] = a3[3];
  v4[4] = v5;
  v6 = a3[2];
  v4[1] = a3[1];
  v4[2] = v6;
  *v4 = *a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 32 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2 & 1;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  v5 = (a3[7] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x193ABEE20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v6, 0, 14);
      v3 = v6;
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
LABEL_7:
    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
    return;
  }

  if (v2)
  {
    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v6[0] = a1;
  LOWORD(v6[1]) = a2;
  BYTE2(v6[1]) = BYTE2(a2);
  BYTE3(v6[1]) = BYTE3(a2);
  BYTE4(v6[1]) = BYTE4(a2);
  BYTE5(v6[1]) = BYTE5(a2);
  v3 = v6 + BYTE6(a2);
LABEL_9:
  ProtobufEncoder.encodeData(_:)(v6, v3);
}

void specialized closure #1 in CodableByProtobuf.encode(to:)(void *a1, void *a2, unint64_t *a3)
{
  v4 = *a3;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = dispatch thunk of Encoder.userInfo.getter();

  a1[4] = v5;
  CodablePlatformFont.encode(to:)(a1, v4);
}

void specialized closure #1 in CodableByProtobuf.encode(to:)(int64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v3;
  ResolvedGradient.encode(to:)(a1);
}

void specialized closure #1 in CodableByProtobuf.encode(to:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v3;
  AccessibilityText.encode(to:)();
}

{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v3;
  CodableNSAttributes.encode(to:)(a1);
}

int64_t specialized closure #1 in CodableByProtobuf.encode(to:)(int64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v3;
  return ContentTransition.Style.encode(to:)(a1);
}

uint64_t specialized static CodableAttributedString.Range.encodeResolvable(_:textSegment:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a2;
  type metadata accessor for ResolvableTextSegmentAttribute.Value?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v93 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimelineSchedule?(a1, v98, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
  v15 = v99;
  if (!v99)
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(v98, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
    v101 = 0u;
    v102 = 0u;
    v103 = 0;
    return outlined destroy of _DisplayList_AnyEffectAnimator?(&v101, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
  }

  v92 = v9;
  v90 = v11;
  v16 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v17 = *(a3 + 16);
  *v97 = *a3;
  *&v97[16] = v17;
  *&v97[24] = *(a3 + 24);
  ProtobufEncoder.archiveOptions.getter(v96);
  v95 = v96[1];
  (*(v16 + 32))(&v101, &v95, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v98);
  if (!*(&v102 + 1))
  {
    return outlined destroy of _DisplayList_AnyEffectAnimator?(&v101, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
  }

  v91 = v8;
  outlined init with take of AnyTrackedValue(&v101, v104);
  __swift_project_boxed_opaque_existential_1(v104, v105);
  swift_getDynamicType();
  v18 = static ResolvableStringAttributeRepresentation.attribute.getter();
  v19 = one-time initialization token for attribute;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v112 = v20;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
    v25 = 16;
    v26 = v112;
LABEL_8:

LABEL_13:
    v30 = v92;
    goto LABEL_14;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v29 = v112;

  if (v28)
  {
    v25 = 16;
    goto LABEL_13;
  }

  v37 = one-time initialization token for attribute;
  v89 = v29;
  if (v37 != -1)
  {
    swift_once();
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
  {
    v25 = 17;
    v26 = v89;
    goto LABEL_8;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v43 = v89;

  if (v42)
  {
    v25 = 17;
    goto LABEL_13;
  }

  v54 = one-time initialization token for attribute;
  v26 = v43;
  if (v54 != -1)
  {
    swift_once();
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
  {
    v25 = 18;
    goto LABEL_8;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    v25 = 18;
    goto LABEL_13;
  }

  v60 = one-time initialization token for attribute;
  v26 = v26;
  if (v60 != -1)
  {
    swift_once();
  }

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;
  if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
  {
    v25 = 19;
    goto LABEL_8;
  }

  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v65)
  {
    v25 = 19;
    goto LABEL_13;
  }

  v66 = one-time initialization token for attribute;
  v26 = v26;
  if (v66 != -1)
  {
    swift_once();
  }

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;
  if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
  {
    v25 = 31;
    goto LABEL_8;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
    v25 = 31;
    goto LABEL_13;
  }

  v72 = one-time initialization token for attribute;
  v26 = v26;
  if (v72 != -1)
  {
    swift_once();
  }

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;
  if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
  {
    v25 = 33;
    goto LABEL_8;
  }

  v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v77)
  {
    v25 = 33;
    goto LABEL_13;
  }

  v78 = v26;
  v26 = MEMORY[0x193ABEC20](0xD000000000000024, 0x800000018DD773F0);
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;
  if (v79 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v81 == v82)
  {

    v25 = 35;
    goto LABEL_8;
  }

  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v83)
  {
    v25 = 35;
    v30 = v92;
LABEL_14:
    v31 = v91;
    v32 = v105;
    v33 = __swift_project_boxed_opaque_existential_1(v104, v105);
    encode #1 <A>(_:) in static CodableAttributedString.Range.encodeResolvable(_:textSegment:to:)(v33, a3, v25, v32);
    if (v3)
    {
    }

    else
    {
      outlined init with copy of AnyTrackedValue(v104, v98);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation);
      if (swift_dynamicCast())
      {
        outlined init with take of AnyTrackedValue(v97, &v101);
        v34 = *(&v102 + 1);
        v35 = v103;
        __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
        (*(v35 + 40))(v34, v35);
        ProtobufEncoder.encodeVarint(_:)(0xA2uLL);
        v36 = *(a3 + 16);
        v109 = *a3;
        v110 = v36;
        v111 = *(a3 + 32);
        v44 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v14);
        v46 = v45;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v44, v45);
        outlined consume of Data._Representation(v44, v46);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v14, type metadata accessor for ResolvableAttributeConfiguration);
        __swift_destroy_boxed_opaque_existential_1(&v101);
      }

      else
      {
        memset(v97, 0, sizeof(v97));
        outlined destroy of _DisplayList_AnyEffectAnimator?(v97, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation);
      }

      outlined init with copy of ResolvableTextSegmentAttribute.Value(v94, v31, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
      v47 = (*(v93 + 48))(v31, 1, v30);
      v48 = v90;
      if (v47 == 1)
      {

        outlined destroy of ResolvableTextSegmentAttribute.Value?(v31, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
      }

      else
      {
        outlined init with take of ResolvableTextSegmentAttribute.Value(v31, v90, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        v49 = *(v30 + 20);

        *(v48 + v49) = v112;
        ProtobufEncoder.encodeVarint(_:)(0x112uLL);
        v50 = *(a3 + 16);
        v106 = *a3;
        v107 = v50;
        v108 = *(a3 + 32);
        v51 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v48);
        v53 = v52;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v51, v52);
        outlined consume of Data._Representation(v51, v53);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v48, type metadata accessor for ResolvableTextSegmentAttribute.Value);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  _sypSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_18DDA6EB0;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  MEMORY[0x193ABEDD0](0xD000000000000020, 0x800000018DD77440);
  v98[0] = v78;
  type metadata accessor for NSAttributedStringKey(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
  v85 = StaticString.description.getter();
  MEMORY[0x193ABEDD0](v85);

  MEMORY[0x193ABEDD0](58, 0xE100000000000000);
  v98[0] = 84;
  v86 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v86);

  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
  v87 = v101;
  *(v84 + 56) = MEMORY[0x1E69E6158];
  *(v84 + 32) = v87;
  print(_:separator:terminator:)();

  return __swift_destroy_boxed_opaque_existential_1(v104);
}

CTFontDescriptorRef specialized static CodablePlatformFont.fontDescriptor(from:matching:with:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_22:
    v19 = a4;
    v20 = __CocoaSet.count.getter();
    a4 = v19;
    v26 = v20;
    if (v20)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    return 0;
  }

LABEL_3:
  v22 = a4;
  v5 = 0;
  v25 = v4 & 0xC000000000000001;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  v7 = *MEMORY[0x1E6965808];
  v8 = MEMORY[0x1E69E7C98];
  while (1)
  {
    if (v25)
    {
      v9 = MEMORY[0x193AC03C0](v5, v4);
    }

    else
    {
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_21;
      }

      v9 = *(v4 + 8 * v5 + 32);
    }

    CopyWithAttributes = v9;
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (!CTFontDescriptorCopyAttribute(v9, v7) || (swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_5;
    }

    if (v27 == a2 && v28 == a3)
    {
      break;
    }

    v12 = v8;
    v13 = v4;
    v14 = v7;
    v15 = v6;
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_18;
    }

    v6 = v15;
    v7 = v14;
    v4 = v13;
    v8 = v12;
LABEL_5:
    ++v5;
    if (v11 == v26)
    {
      return 0;
    }
  }

LABEL_18:
  if (*(v22 + 16))
  {
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v17 = CopyWithAttributes;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v17, isa);
  }

  return CopyWithAttributes;
}

uint64_t specialized CodableTextAttachment.init(from:)(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
LABEL_51:
    a1[3] = 0;
    return v4;
  }

  while (1)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = a1[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_52;
      }

      a1[3] = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_53;
    }

    if (v7 < 8)
    {
LABEL_52:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_53:

      return v4;
    }

LABEL_11:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      goto LABEL_4;
    }

    if (v9 == 2)
    {
      break;
    }

    if (v9 == 1)
    {
      if ((v7 & 7) != 2)
      {
        goto LABEL_52;
      }

      ProtobufDecoder.beginMessage()();
      if (v1)
      {
        goto LABEL_53;
      }

      CodablePlatformImage.init(from:)(a1, &v32);
      v2 = a1[5];
      if (!*(v2 + 2))
      {
        goto LABEL_61;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = *(v2 + 2);
        if (!v10)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v10 = *(v2 + 2);
        if (!v10)
        {
          goto LABEL_62;
        }
      }

      v11 = v10 - 1;
      v6 = *&v2[8 * v11 + 32];
      *(v2 + 2) = v11;
      a1[5] = v2;
      a1[2] = v6;
      v2 = v32;
      v12 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
      swift_beginAccess();
      _NSTextAttachmentSetImage(v4, *&v2[v12]);

      goto LABEL_4;
    }

    v24 = v7 & 7;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v26 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_53;
        }

        if (v26 < 0)
        {
          goto LABEL_64;
        }

        v25 = a1[1] + v26;
        if (v6 < v25)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v24 != 5)
        {
          goto LABEL_52;
        }

        v25 = a1[1] + 4;
        if (v6 < v25)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if ((v7 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_53;
        }

        goto LABEL_4;
      }

      if (v24 != 1)
      {
        goto LABEL_52;
      }

      v25 = a1[1] + 8;
      if (v6 < v25)
      {
        goto LABEL_52;
      }
    }

    a1[1] = v25;
LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      a1[3] = 0;
      return v4;
    }
  }

  if ((v7 & 7) != 2)
  {
    goto LABEL_52;
  }

  v2 = a1[5];
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
  *&v2[8 * v14 + 32] = v6;
  a1[5] = v2;
  v15 = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    goto LABEL_53;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = a1[1] + v15;
    if (v6 < v16)
    {
      goto LABEL_52;
    }

    a1[2] = v16;
    v17 = Data.init(from:)(a1);
    v19 = a1[5];
    if (!*(v19 + 2))
    {
      goto LABEL_63;
    }

    v2 = v17;
    v20 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v19 + 2);
      if (!v21)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v21 = *(v19 + 2);
      if (!v21)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v22 = v21 - 1;
    v6 = *&v19[8 * v22 + 32];
    *(v19 + 2) = v22;
    a1[5] = v19;
    a1[2] = v6;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v4 setContents_];

    outlined consume of Data._Representation(v2, v20);
    goto LABEL_4;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  __break(1u);
  v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v29 = *(v27 + 2);
  if (v29)
  {
    goto LABEL_58;
  }

  __break(1u);
  v27 = a1[5];
  if (!*(v27 + 2))
  {
    __break(1u);
LABEL_67:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
    v27 = result;
    v29 = *(result + 16);
    if (!v29)
    {
      goto LABEL_68;
    }

LABEL_58:
    v30 = v29 - 1;
    v31 = *&v27[8 * v30 + 32];
    *(v27 + 2) = v30;

    a1[5] = v27;
    a1[2] = v31;
    return v4;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_67;
  }

  v29 = *(v27 + 2);
  if (v29)
  {
    goto LABEL_58;
  }

LABEL_68:
  __break(1u);
  return result;
}

char *specialized CodableAdaptiveImageGlyph.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
LABEL_41:
    a1[3] = 0;
LABEL_42:
    lazy protocol witness table accessor for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error();
    v6 = swift_allocError();
    swift_willThrow();
    return v6;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = a1[4];
      if (v4 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v4)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_44;
    }

    if (v7 < 8)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_44:

      return v6;
    }

LABEL_11:
    v9 = v7 & 7;
    if ((v7 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((v7 & 7) > 1)
    {
      if (v9 == 2)
      {
        v24 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_44;
        }

        if (v24 < 0)
        {
          goto LABEL_51;
        }

        v23 = a1[1] + v24;
        if (v5 < v23)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_43;
        }

        v23 = a1[1] + 4;
        if (v5 < v23)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if ((v7 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_44;
        }

        goto LABEL_4;
      }

      if (v9 != 1)
      {
        goto LABEL_43;
      }

      v23 = a1[1] + 8;
      if (v5 < v23)
      {
        goto LABEL_43;
      }
    }

    a1[1] = v23;
LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      a1[3] = 0;
      if (v6)
      {
        return v6;
      }

      goto LABEL_42;
    }
  }

  if (v9 != 2)
  {
    goto LABEL_43;
  }

  v2 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v11 + 1;
  *&v2[8 * v11 + 32] = v5;
  a1[5] = v2;
  v12 = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    goto LABEL_44;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = a1[1] + v12;
    if (v5 < v13)
    {
      goto LABEL_43;
    }

    a1[2] = v13;
    v14 = Data.init(from:)(a1);
    v16 = a1[5];
    if (!*(v16 + 2))
    {
      goto LABEL_50;
    }

    v2 = v14;
    v17 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = *(v16 + 2);
      if (!v18)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v18 = *(v16 + 2);
      if (!v18)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v19 = v18 - 1;
    v5 = *&v16[8 * v19 + 32];
    *(v16 + 2) = v19;
    a1[5] = v16;
    a1[2] = v5;
    v20 = objc_allocWithZone(MEMORY[0x1E69DB780]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = [v20 initWithImageContent_];

    outlined consume of Data._Representation(v2, v17);
    v6 = v22;
    goto LABEL_4;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v28 = result;
  v29 = *(result + 2);
  if (v29)
  {
    v26 = v29 - 1;
    v27 = *&result[8 * v26 + 32];
    *(result + 2) = v26;

    a1[5] = v28;
    a1[2] = v27;
    return v6;
  }

  __break(1u);
  return result;
}

void *assignWithCopy for CodableAttributedString.Range(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for CodableAttributedString.Range(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAttributedString.Range(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAttributedString.Range(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t specialized CodableCGFont.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    goto LABEL_88;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = a1[4];
      if (v4 < v8)
      {
        goto LABEL_9;
      }

      if (v8 < v4)
      {
        goto LABEL_90;
      }

      a1[3] = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_91;
    }

    if (v7 < 8)
    {
      goto LABEL_90;
    }

LABEL_9:
    v9 = v7 >> 3;
    v10 = v7 & 7;
    if (v7 >> 3 > 2)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v10 != 2)
      {
        goto LABEL_90;
      }

      v2 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v27 = *(v2 + 2);
      v26 = *(v2 + 3);
      if (v27 >= v26 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v2);
      }

      *(v2 + 2) = v27 + 1;
      *&v2[8 * v27 + 32] = v5;
      a1[5] = v2;
      v28 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_91;
      }

      if (v28 < 0)
      {
        goto LABEL_104;
      }

      v29 = a1[1] + v28;
      if (v5 < v29)
      {
        goto LABEL_90;
      }

      a1[2] = v29;
      v30 = specialized CodablePlatformFont.init(from:)(a1);
      v23 = a1[5];
      if (!*(v23 + 2))
      {
        goto LABEL_108;
      }

      v2 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v24 = *(v23 + 2);
        if (!v24)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
        v24 = *(v23 + 2);
        if (!v24)
        {
          goto LABEL_111;
        }
      }

LABEL_54:
      v31 = v24 - 1;
      v5 = *&v23[8 * v31 + 32];
      *(v23 + 2) = v31;
      a1[5] = v23;
      a1[2] = v5;
      v2 = v2;
      v32 = CTFontCopyGraphicsFont(v2, 0);

      v6 = v32;
      goto LABEL_67;
    }

    if (v9 == 2)
    {
      if (v10 != 2)
      {
        goto LABEL_90;
      }

      v2 = a1[5];
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
      *&v2[8 * v12 + 32] = v5;
      a1[5] = v2;
      v13 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_91;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = a1[1] + v13;
        if (v5 < v14)
        {
          goto LABEL_90;
        }

        a1[2] = v14;
        _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo9CGFontRefaSg_Tt0g503_s7a11UI13Codablel11V4fromAcA15cd43Vz_tKcfcSo0D3RefaSgAFzKXEfU_AI10Foundation4K6VXEfU_Tf1cn_n(a1);
        v16 = a1[5];
        if (!*(v16 + 2))
        {
          goto LABEL_110;
        }

        v2 = v15;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = *(v16 + 2);
          if (!v17)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
          v17 = *(v16 + 2);
          if (!v17)
          {
            goto LABEL_112;
          }
        }

LABEL_66:
        v38 = v17 - 1;
        v5 = *&v16[8 * v38 + 32];
        *(v16 + 2) = v38;

        a1[5] = v16;
        a1[2] = v5;
        v6 = v2;
LABEL_67:
        v1 = 0;
        goto LABEL_68;
      }

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
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_115:
      __break(1u);
      do
      {
        __break(1u);
        v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v47 = *(v46 + 2);
        if (v47)
        {
          v41 = v47 - 1;
          v42 = *&v46[8 * v41 + 32];
          *(v46 + 2) = v41;

          a1[5] = v46;
          a1[2] = v42;
          return v6;
        }

        __break(1u);
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
        v43 = *(v2 + 2);
        if (v43)
        {
          goto LABEL_102;
        }

        __break(1u);
        v2 = a1[5];
        if (!*(v2 + 2))
        {
          goto LABEL_115;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = *(v2 + 2);
          if (v43)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v43 = *(v2 + 2);
          if (v43)
          {
            goto LABEL_102;
          }
        }

        __break(1u);
        v2 = a1[5];
      }

      while (!*(v2 + 2));
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v43 = *(v2 + 2);
        if (v43)
        {
LABEL_102:
          v44 = v43 - 1;
          v45 = *&v2[8 * v44 + 32];
          *(v2 + 2) = v44;

          a1[5] = v2;
          a1[2] = v45;
          return v6;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v2 = result;
        v43 = *(result + 16);
        if (v43)
        {
          goto LABEL_102;
        }
      }

      __break(1u);
      return result;
    }

LABEL_38:
    if ((v7 & 7) > 1)
    {
      if (v10 == 2)
      {
        v39 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_91;
        }

        if (v39 < 0)
        {
          goto LABEL_114;
        }

        v25 = a1[1] + v39;
        if (v5 < v25)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_90;
        }

        v25 = a1[1] + 4;
        if (v5 < v25)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      if ((v7 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      }

      if (v10 != 1)
      {
        goto LABEL_90;
      }

      v25 = a1[1] + 8;
      if (v5 < v25)
      {
        goto LABEL_90;
      }
    }

    a1[1] = v25;
LABEL_68:
    v4 = a1[1];
    if (v4 >= v5)
    {
      a1[3] = 0;
      if (v6)
      {
        return v6;
      }

LABEL_89:
      lazy protocol witness table accessor for type CodableCGFont.Error and conformance CodableCGFont.Error();
      v6 = swift_allocError();
      swift_willThrow();
      return v6;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      if (v10 != 2)
      {
        goto LABEL_90;
      }

      v2 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v2);
      }

      *(v2 + 2) = v19 + 1;
      *&v2[8 * v19 + 32] = v5;
      a1[5] = v2;
      v20 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_91;
      }

      if (v20 < 0)
      {
        goto LABEL_106;
      }

      v21 = a1[1] + v20;
      if (v5 < v21)
      {
        goto LABEL_90;
      }

      a1[2] = v21;
      v22 = a1[6];
      swift_bridgeObjectRetain_n();
      v2 = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA19CodablePlatformFontV_Tt0g503_s7a4UI15cd9V21decodef42MessagexyKAA0c9DecodableG0RzAA0c9Encodableu18RzlFx10Foundation4k11VKXEfU_AA19lmN5V_TG5SDys17CodingUserInfoKeyVypGTf1cn_n(a1, v22);

      v23 = a1[5];
      if (!*(v23 + 2))
      {
        goto LABEL_107;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v24 = *(v23 + 2);
        if (!v24)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
        v24 = *(v23 + 2);
        if (!v24)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_54;
    }

    goto LABEL_38;
  }

  if (v10 != 2)
  {
    goto LABEL_90;
  }

  v2 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  *&v2[8 * v34 + 32] = v5;
  a1[5] = v2;
  v35 = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    goto LABEL_91;
  }

  if (v35 < 0)
  {
    goto LABEL_105;
  }

  v36 = a1[1] + v35;
  if (v5 >= v36)
  {
    a1[2] = v36;
    v37 = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo9CGFontRefaSg_Tt0g503_s7a11UI13Codablel11V4fromAcA15cd44Vz_tKcfcSo0D3RefaSgAFzKXEfU0_AI10Foundation4K6VXEfU_Tf1cn_n(a1);
    v16 = a1[5];
    if (!*(v16 + 2))
    {
      goto LABEL_109;
    }

    v2 = v37;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_87;
      }

      goto LABEL_66;
    }

    v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    v17 = *(v16 + 2);
    if (v17)
    {
      goto LABEL_66;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    a1[3] = 0;
    goto LABEL_89;
  }

LABEL_90:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_91:

  return v6;
}

unint64_t specialized CodableByProtobuf.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v9.super.isa;
    v5 = v10;
    outlined copy of Data._Representation(v9.super.isa, v10);
    ProtobufDecoder.init(_:)(v9.super.isa, v10, &v9);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = dispatch thunk of Decoder.userInfo.getter();

    v11 = v6;
    v3 = specialized CodablePlatformFont.init(from:)(&v9);
    outlined consume of Data._Representation(isa, v5);
    v7 = v9.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error()
{
  result = lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error;
  if (!lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error;
  if (!lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for specialized closure #1 in CodableByProtobuf.encode(to:)(uint64_t a1)
{
  specialized closure #1 in CodableByProtobuf.encode(to:)(a1, *(v1 + 16));
}

{
  specialized closure #1 in CodableByProtobuf.encode(to:)(a1, *(v1 + 16));
}

unint64_t lazy protocol witness table accessor for type CodableCGFont.Error and conformance CodableCGFont.Error()
{
  result = lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error;
  if (!lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error;
  if (!lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error);
  }

  return result;
}

void type metadata accessor for (key: Locale.Key, hash: Int, value: String)()
{
  if (!lazy cache variable for type metadata for (key: Locale.Key, hash: Int, value: String))
  {
    type metadata accessor for Locale.Key();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (key: Locale.Key, hash: Int, value: String));
    }
  }
}

uint64_t outlined assign with take of ObjectCache<Locale.Key, String>.Item(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectCache<Locale.Key, String>.Item();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error()
{
  result = lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error;
  if (!lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error;
  if (!lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error);
  }

  return result;
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>]()
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  result = lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>;
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }

  return result;
}

uint64_t outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>]()
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  result = lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>;
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }

  return result;
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>]()
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  result = lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>;
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }

  return result;
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>]()
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  result = lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>;
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }

  return result;
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>]()
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  result = lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>;
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }

  return result;
}

void type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for CodableAttributedString.Range.DecodingWrapper();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>]()
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  result = lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>;
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }

  return result;
}

void type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for CodableAttributedString.Range.DecodingWrapper();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>]()
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  result = lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>;
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value and conformance ResolvableTextSegmentAttribute.Value()
{
  return lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value and conformance ResolvableTextSegmentAttribute.Value, type metadata accessor for ResolvableTextSegmentAttribute.Value);
}

{
  return lazy protocol witness table accessor for type LinkDestination.Configuration and conformance LinkDestination.Configuration(&lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value and conformance ResolvableTextSegmentAttribute.Value, type metadata accessor for ResolvableTextSegmentAttribute.Value);
}

unint64_t lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont()
{
  result = lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont;
  if (!lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont;
  if (!lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont;
  if (!lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont;
  if (!lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error()
{
  result = lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error;
  if (!lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error;
  if (!lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error);
  }

  return result;
}

uint64_t destroy for CodableAttributedString.Range.DecodingWrapper(uint64_t result)
{
  if (*(result + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

__n128 initializeWithCopy for CodableAttributedString.Range.DecodingWrapper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  return result;
}

__n128 assignWithCopy for CodableAttributedString.Range.DecodingWrapper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v2)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      result = *a2;
      v6 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v6;
    }
  }

  else if (v2)
  {
    *(a1 + 24) = v2;
    *(a1 + 32) = *(a2 + 32);
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v7 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v7;
  }

  return result;
}

__n128 assignWithTake for CodableAttributedString.Range.DecodingWrapper(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

unint64_t instantiation function for generic protocol witness table for CodablePlatformFont(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
  result = lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:)()
{
  result = lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:);
  if (!lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:);
  if (!lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:));
  }

  return result;
}

uint64_t VStack._tree.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _VariadicView.Tree();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VStack._tree.setter(uint64_t a1)
{
  v3 = type metadata accessor for _VariadicView.Tree();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static _VStackLayout.implicitRoot.getter()
{
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  return static HorizontalAlignment.center;
}

uint64_t VStackLayout.spacing.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

__n128 protocol witness for DerivedLayout.base.getter in conformance VStackLayout@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
  *(a1 + 8) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for VStack(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-18 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    (*(v4 + 16))((a1 + v5 + 17) & ~v5, (a2 + v5 + 17) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

uint64_t ArrayWith2Inline.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ArrayWith2Inline.Storage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArrayWith2Inline.storage.setter(uint64_t a1)
{
  v3 = type metadata accessor for ArrayWith2Inline.Storage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArrayWith2Inline.init()()
{
  type metadata accessor for ArrayWith2Inline.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for ArrayWith2Inline.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = *(*(a3 - 8) + 32);
  v9(a4, a1, a3);
  v9(a4 + v8, a2, a3);
  type metadata accessor for ArrayWith2Inline.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = type metadata accessor for IteratorSequence();
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v59 - v8;
  v9 = type metadata accessor for Optional();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v75 = a2;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v59 - v23;
  v73 = AssociatedTypeWitness;
  v70 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v61 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v59 - v27;
  v28 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  if (v32 < 3)
  {
    (*(v28 + 16))(v31, a1, a3);
    dispatch thunk of Sequence.makeIterator()();
    dispatch thunk of IteratorProtocol.next()();
    v36 = *(v17 + 48);
    if (v36(v16, 1, v75) == 1)
    {
      (*(v28 + 8))(a1, a3);
      (*(v70 + 8))(v74, v73);
      (*(v67 + 8))(v16, v68);
      type metadata accessor for ArrayWith2Inline.Storage();
    }

    else
    {
      v59 = v17;
      v60 = a1;
      v38 = v69;
      v39 = v16;
      v40 = v75;
      v41 = *(v17 + 32);
      v41(v69, v39, v75);
      dispatch thunk of IteratorProtocol.next()();
      if (v36(v13, 1, v40) == 1)
      {
        (*(v28 + 8))(v60, a3);
        (*(v70 + 8))(v74, v73);
        (*(v67 + 8))(v13, v68);
        v41(v72, v38, v40);
        type metadata accessor for ArrayWith2Inline.Storage();
      }

      else
      {
        v42 = v65;
        v41(v65, v13, v40);
        v43 = v64;
        dispatch thunk of IteratorProtocol.next()();
        if (v36(v43, 1, v40) != 1)
        {
          v41(v66, v43, v40);
          getContiguousArrayStorageType<A>(for:)(v40, v40);
          v46 = v59;
          v47 = *(v59 + 72);
          swift_allocObject();
          v48 = static Array._adoptStorage(_:count:)();
          v50 = v49;
          v51 = *(v46 + 16);
          v51(v49, v69, v75);
          v51(v50 + v47, v42, v75);
          v51(v50 + 2 * v47, v66, v75);
          v77 = v48;
          v52 = type metadata accessor for Array();
          _ViewInputs.base.modify(v52, v53);
          v76 = MEMORY[0x193AC0510](v77, v75);
          v54 = v70;
          v55 = v61;
          v56 = v73;
          (*(v70 + 16))(v61, v74, v73);
          MEMORY[0x193AC0720](v55, v56, AssociatedConformanceWitness);
          type metadata accessor for ContiguousArray();
          swift_getWitnessTable();
          ContiguousArray.append<A>(contentsOf:)();
          (*(v28 + 8))(v60, a3);
          v57 = *(v46 + 8);
          v57(v66, v75);
          v57(v42, v75);
          v57(v69, v75);
          (*(v54 + 8))(v74, v56);
          goto LABEL_13;
        }

        (*(v28 + 8))(v60, a3);
        (*(v70 + 8))(v74, v73);
        (*(v67 + 8))(v43, v68);
        v44 = *(swift_getTupleTypeMetadata2() + 48);
        v45 = v72;
        v41(v72, v69, v40);
        v41(v45 + v44, v42, v40);
        type metadata accessor for ArrayWith2Inline.Storage();
      }
    }
  }

  else
  {
    v33 = v32;
    v34 = v75;
    if (type metadata accessor for Array() != a3 && type metadata accessor for ContiguousArray() != a3)
    {
      v35 = static Array._allocateUninitialized(_:)();
      v76 = MEMORY[0x193AC0510](v35, v34);
      ContiguousArray.reserveCapacity(_:)(v33);
      (*(v28 + 16))(v31, a1, a3);
      ContiguousArray.append<A>(contentsOf:)();
      (*(v28 + 8))(a1, a3);
LABEL_13:
      *v72 = v76;
      type metadata accessor for ArrayWith2Inline.Storage();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v28 + 16))(v31, a1, a3);
    v37 = Array.init<A>(_:)();
    (*(v28 + 8))(a1, a3);
    *v72 = v37;
    type metadata accessor for ArrayWith2Inline.Storage();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.endIndex.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for ArrayWith2Inline.Storage();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, v2, v4, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v10 == 2)
    {
      v12 = ContiguousArray.count.getter();

      return v12;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v14 = *(*(v3 - 8) + 8);
    v14(&v8[*(TupleTypeMetadata2 + 48)], v3);
    v14(v8, v3);
    return 2;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    return 1;
  }

  return result;
}

uint64_t ArrayWith2Inline.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for ArrayWith2Inline.Storage();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  (*(v21 + 16))(&v29 - v19, v4, v17, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      ContiguousArray.subscript.getter();
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = *(v8 + 32);
    v23(v16, v20, v7);
    if (!a1)
    {
      return (v23)(a3, v16, v7);
    }

    goto LABEL_12;
  }

  v25 = *(swift_getTupleTypeMetadata2() + 48);
  v26 = *(v8 + 32);
  v26(v13, v20, v7);
  v26(v10, &v20[v25], v7);
  if (!a1)
  {
    (*(v8 + 8))(v10, v7);
    v27 = a3;
    v28 = v13;
    return (v26)(v27, v28, v7);
  }

  if (a1 == 1)
  {
    (*(v8 + 8))(v13, v7);
    v27 = a3;
    v28 = v10;
    return (v26)(v27, v28, v7);
  }

LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t key path setter for ArrayWith2Inline.subscript(_:) : <A>ArrayWith2Inline<A>A(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v9 - v2;
  v5 = *v4;
  (*(v6 + 16))(&v9 - v2, v1);
  v7 = type metadata accessor for ArrayWith2Inline();
  return ArrayWith2Inline.subscript.setter(v3, v5, v7);
}

uint64_t ArrayWith2Inline.subscript.setter(char *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a1;
  v37 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ArrayWith2Inline.Storage();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v33 - v18);
  (*(v13 + 16))(&v33 - v18, v4, v12, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = *v19;
      v23 = *(v13 + 8);
      v23(v4, v12);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ContiguousArray();
      ContiguousArray._makeMutableAndUnique()();
      if ((v37 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v38 + 16) > v37)
      {
        (*(v6 + 40))(v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37, v36, v5);
        v23(v4, v12);
        *v4 = v38;
        return swift_storeEnumTagMultiPayload();
      }

      __break(1u);
    }

    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    if (!v37)
    {
      v21 = *(v13 + 8);
      v21(v4, v12);
      (*(v6 + 32))(v4, v36, v5);
      swift_storeEnumTagMultiPayload();
      return v21(v19, v12);
    }

    goto LABEL_16;
  }

  v35 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 + 48);
  v33 = TupleTypeMetadata2;
  v34 = v25;
  v26 = *(v6 + 32);
  v26(v11, v19, v5);
  v26(v8, (v19 + v34), v5);
  if (!v37)
  {
    (*(v6 + 8))(v11, v5);
    v27 = *(v33 + 48);
    v26(v15, v36, v5);
    v28 = &v15[v27];
    v29 = v8;
LABEL_13:
    v26(v28, v29, v5);
    swift_storeEnumTagMultiPayload();
    return (*(v13 + 40))(v35, v15, v12);
  }

  v30 = v8;
  v31 = v33;
  if (v37 == 1)
  {
    (*(v6 + 8))(v30, v5);
    v32 = *(v31 + 48);
    v26(v15, v11, v5);
    v28 = &v15[v32];
    v29 = v36;
    goto LABEL_13;
  }

LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}