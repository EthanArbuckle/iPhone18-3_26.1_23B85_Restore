uint64_t ProtobufDecoder.messageField<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*a1 & 7) == 2)
  {
    return ProtobufDecoder.decodeMessage<A>()(a2, a3);
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance CGPoint@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized CGPoint.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

unint64_t specialized FillStyle.init(from:)(void *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v5 = 0;
    a1[3] = 0;
LABEL_46:
    v13 = 256;
    return v13 | v5;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    result = a1[3];
    if (result)
    {
      v8 = a1[4];
      if (v3 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v3)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v1)
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

LABEL_11:
    v9 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v9 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        v11 = a1[1] + result;
        if (v4 < v11)
        {
          goto LABEL_43;
        }

        a1[3] = 16;
        a1[4] = v11;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        return result;
      }

      v6 = result != 0;
    }

    else if (result >> 3 == 1)
    {
      if ((result & 7) != 0)
      {
        if (v9 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }

        v10 = a1[1] + result;
        if (v4 < v10)
        {
          goto LABEL_43;
        }

        a1[3] = 8;
        a1[4] = v10;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        return result;
      }

      v5 = result != 0;
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v9 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v12 = a1[1] + result;
          if (v4 < v12)
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

          v12 = a1[1] + 4;
          if (v4 < v12)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_3;
      }

      if ((result & 7) != 0)
      {
        if (v9 != 1)
        {
          goto LABEL_43;
        }

        v12 = a1[1] + 8;
        if (v4 < v12)
        {
          goto LABEL_43;
        }

LABEL_3:
        a1[1] = v12;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        return result;
      }
    }

LABEL_4:
    v3 = a1[1];
  }

  while (v3 < v4);
  a1[3] = 0;
  if (v6)
  {
    goto LABEL_46;
  }

  v13 = 0;
  return v13 | v5;
}

unint64_t specialized CodablePlatformFont.init(from:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v282 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  CopyWithAttributes = type metadata accessor for URL();
  v6 = *(CopyWithAttributes - 8);
  MEMORY[0x1EEE9AC00](CopyWithAttributes);
  v303 = &v282 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v282 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v307 = &v282 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v282 - v15;
  v308 = v6;
  v19 = *(v6 + 56);
  v17 = v6 + 56;
  v18 = v19;
  v309 = CopyWithAttributes;
  (v19)(&v282 - v15, 1, 1, CopyWithAttributes, v14);
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  if (v20 >= v21)
  {
    v305 = 0;
    v304 = 0;
    v312 = 0;
    v311 = 0;
    v306 = 0;
    v310 = 0;
    v22 = 0.0;
    v23 = 0xF000000000000000;
    v24 = MEMORY[0x1E69E7CC8];
    goto LABEL_4;
  }

  v285 = v18;
  v286 = v17;
  v299 = v10;
  v301 = v4;
  v310 = 0;
  v306 = 0;
  v311 = 0;
  v312 = 0;
  v304 = 0;
  v297 = 0;
  v305 = 0;
  v294 = *MEMORY[0x1E6965878];
  v293 = *MEMORY[0x1E6965880];
  v292 = *MEMORY[0x1E69657F8];
  v291 = *MEMORY[0x1E69657E0];
  v287 = *MEMORY[0x1E69656F0];
  v290 = *MEMORY[0x1E6965788];
  v22 = 0.0;
  v23 = 0xF000000000000000;
  v295 = *MEMORY[0x1E69658F0];
  v289 = *MEMORY[0x1E69658F8];
  v300 = *MEMORY[0x1E69657A8];
  v298 = *MEMORY[0x1E6965898];
  v24 = MEMORY[0x1E69E7CC8];
  v25 = v313;
  v302 = v16;
  while (2)
  {
    v64 = *(a1 + 24);
    if (!v64)
    {
      goto LABEL_35;
    }

    v65 = *(a1 + 32);
    if (v20 >= v65)
    {
      if (v65 < v20)
      {
        goto LABEL_260;
      }

      *(a1 + 24) = 0;
LABEL_35:
      v64 = ProtobufDecoder.decodeVarint()();
      if (v25)
      {
        goto LABEL_262;
      }

      if (v64 < 8)
      {
LABEL_260:

LABEL_261:

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        v313 = swift_allocError();
        swift_willThrow();
LABEL_265:
        v275 = v311;
LABEL_266:
        outlined consume of Data?(v275, v23);
LABEL_275:
        v280 = v16;
        goto LABEL_276;
      }
    }

    switch(v64 >> 3)
    {
      case 1uLL:
        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        CopyWithAttributes = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          CopyWithAttributes = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(CopyWithAttributes + 16) + 1, 1, CopyWithAttributes);
        }

        v67 = *(CopyWithAttributes + 16);
        v66 = *(CopyWithAttributes + 24);
        if (v67 >= v66 >> 1)
        {
          CopyWithAttributes = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, CopyWithAttributes);
        }

        *(CopyWithAttributes + 16) = v67 + 1;
        *(CopyWithAttributes + 8 * v67 + 32) = v21;
        *(a1 + 40) = CopyWithAttributes;
        v68 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        if (v68 < 0)
        {
          goto LABEL_295;
        }

        v69 = *(a1 + 8) + v68;
        if (v21 < v69)
        {
          goto LABEL_260;
        }

        *(a1 + 16) = v69;
        _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAI_Tt0g503_s7a34UI19CodablePlatformFontV4fromAcA15cd21Vz_tKcfc10Foundation4K18VAFzKXEfU_A2IXEfU_Tf1ncn_n(a1, &v314);
        if (!*(*(a1 + 40) + 16))
        {
          goto LABEL_301;
        }

        v70 = specialized Array._customRemoveLast()();
        if (!v70)
        {
          v70 = specialized Array.remove(at:)(*(*(a1 + 40) + 16) - 1);
        }

        CopyWithAttributes = v70;
        outlined consume of Data?(v311, v23);
        *(a1 + 16) = CopyWithAttributes;
        v23 = *(&v314 + 1);
        v311 = v314;
        goto LABEL_30;
      case 2uLL:
        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        CopyWithAttributes = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          CopyWithAttributes = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(CopyWithAttributes + 16) + 1, 1, CopyWithAttributes);
        }

        v181 = *(CopyWithAttributes + 16);
        v180 = *(CopyWithAttributes + 24);
        if (v181 >= v180 >> 1)
        {
          CopyWithAttributes = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v180 > 1), v181 + 1, 1, CopyWithAttributes);
        }

        *(CopyWithAttributes + 16) = v181 + 1;
        *(CopyWithAttributes + 8 * v181 + 32) = v21;
        *(a1 + 40) = CopyWithAttributes;
        v182 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        if (v182 < 0)
        {
          goto LABEL_298;
        }

        v183 = *(a1 + 8) + v182;
        if (v21 >= v183)
        {
          *(a1 + 16) = v183;
          URL.init(from:)(a1, v299);
          v184 = *(a1 + 40);
          if (*(v184 + 2))
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v185 = *(v184 + 2);
              if (v185)
              {
LABEL_153:
                v186 = v185 - 1;
                v187 = *&v184[8 * v186 + 32];
                *(v184 + 2) = v186;
                *(a1 + 40) = v184;
                outlined destroy of ResolvableTextSegmentAttribute.Value?(v16, type metadata accessor for URL?);
                *(a1 + 16) = v187;
                CopyWithAttributes = v299;
                v285(v299, 0, 1, v309);
                outlined init with take of ResolvableTextSegmentAttribute.Value(CopyWithAttributes, v16, type metadata accessor for URL?);
                goto LABEL_30;
              }
            }

            else
            {
              v184 = specialized _ArrayBuffer._consumeAndCreateNew()(v184);
              v185 = *(v184 + 2);
              if (v185)
              {
                goto LABEL_153;
              }
            }

            goto LABEL_305;
          }

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
          goto LABEL_314;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        v313 = swift_allocError();
        swift_willThrow();
        goto LABEL_263;
      case 3uLL:
        CopyWithAttributes = v25;
        v148 = v64;

        if ((v148 & 7) != 2)
        {
          goto LABEL_261;
        }

        v149 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          v313 = v25;
          goto LABEL_264;
        }

        CopyWithAttributes = v149;
        if (v149 < 0)
        {
          goto LABEL_297;
        }

        v150 = *(a1 + 8);
        if (v21 < v150 + v149)
        {
          goto LABEL_261;
        }

        *(a1 + 8) = v150 + v149;
        if (v149)
        {
          v151 = v150 - [*a1 bytes];
          v152 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v154 = v153;
          if (__OFADD__(v151, CopyWithAttributes))
          {
            goto LABEL_309;
          }

          if ((v151 + CopyWithAttributes) < v151)
          {
            goto LABEL_312;
          }

          v155 = v152;
          CopyWithAttributes = Data._Representation.subscript.getter();
          v105 = v156;
          outlined consume of Data._Representation(v155, v154);
        }

        else
        {
          v105 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v306 = String.init(data:encoding:)();
        v310 = v257;
        if (!v257)
        {
LABEL_288:

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v313 = swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(CopyWithAttributes, v105);
          goto LABEL_265;
        }

LABEL_226:
        outlined consume of Data._Representation(CopyWithAttributes, v105);
        v25 = 0;
        goto LABEL_30;
      case 4uLL:
        if ((v64 & 7) == 0)
        {
          goto LABEL_125;
        }

        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        v159 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        if (v159 < 0)
        {
          goto LABEL_319;
        }

        v160 = *(a1 + 8) + v159;
        if (v21 < v160)
        {
          goto LABEL_260;
        }

        *(a1 + 24) = 32;
        *(a1 + 32) = v160;
LABEL_125:
        v161 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        v297 = v161;
        goto LABEL_30;
      case 5uLL:
        CopyWithAttributes = v25;
        v96 = v64;

        if ((v96 & 7) != 2)
        {
          goto LABEL_261;
        }

        v97 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          v313 = v25;
          goto LABEL_264;
        }

        CopyWithAttributes = v97;
        if (v97 < 0)
        {
          goto LABEL_296;
        }

        v98 = *(a1 + 8);
        if (v21 < v98 + v97)
        {
          goto LABEL_261;
        }

        *(a1 + 8) = v98 + v97;
        if (v97)
        {
          v99 = v98 - [*a1 bytes];
          v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;
          if (__OFADD__(v99, CopyWithAttributes))
          {
            goto LABEL_310;
          }

          if ((v99 + CopyWithAttributes) < v99)
          {
            goto LABEL_313;
          }

          v103 = v100;
          CopyWithAttributes = Data._Representation.subscript.getter();
          v105 = v104;
          outlined consume of Data._Representation(v103, v102);
        }

        else
        {
          v105 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v304 = String.init(data:encoding:)();
        v312 = v240;
        if (!v240)
        {
          goto LABEL_288;
        }

        goto LABEL_226;
      case 6uLL:
        if ((v64 & 7) == 0)
        {
          goto LABEL_164;
        }

        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        v190 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        if (v190 < 0)
        {
          goto LABEL_317;
        }

        v191 = *(a1 + 8) + v190;
        if (v21 < v191)
        {
          goto LABEL_260;
        }

        *(a1 + 24) = 48;
        *(a1 + 32) = v191;
LABEL_164:
        v192 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        v305 = v192;
        goto LABEL_30;
      case 7uLL:
        v203 = v64 & 7;
        if (v203 == 5)
        {
          v259 = *(a1 + 8);
          if (v21 < (v259 + 1))
          {
            goto LABEL_260;
          }

          v260 = *v259;
          *(a1 + 8) = v259 + 1;
          v22 = v260;
        }

        else
        {
          if (v203 == 2)
          {
            v258 = ProtobufDecoder.decodeVarint()();
            if (v25)
            {
              goto LABEL_262;
            }

            if (v258 < 0)
            {
              goto LABEL_324;
            }

            v204 = *(a1 + 8);
            if (v21 < v204 + v258)
            {
              goto LABEL_260;
            }

            *(a1 + 24) = 57;
            *(a1 + 32) = v204 + v258;
          }

          else
          {
            if (v203 != 1)
            {
              goto LABEL_260;
            }

            v204 = *(a1 + 8);
          }

          if (v21 < (v204 + 1))
          {
            goto LABEL_260;
          }

          v22 = *v204;
          *(a1 + 8) = v204 + 1;
        }

        goto LABEL_30;
      case 8uLL:
        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        CopyWithAttributes = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          CopyWithAttributes = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(CopyWithAttributes + 16) + 1, 1, CopyWithAttributes);
        }

        v163 = *(CopyWithAttributes + 16);
        v162 = *(CopyWithAttributes + 24);
        if (v163 >= v162 >> 1)
        {
          CopyWithAttributes = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, CopyWithAttributes);
        }

        *(CopyWithAttributes + 16) = v163 + 1;
        *(CopyWithAttributes + 8 * v163 + 32) = v21;
        *(a1 + 40) = CopyWithAttributes;
        v164 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        if (v164 < 0)
        {
          goto LABEL_294;
        }

        v165 = *(a1 + 8) + v164;
        if (v21 < v165)
        {
          goto LABEL_260;
        }

        *(a1 + 16) = v165;
        v166 = specialized CodableFontTraits.init(from:)(a1);
        v167 = *(a1 + 40);
        if (!*(v167 + 2))
        {
          goto LABEL_302;
        }

        v168 = v166;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v169 = *(v167 + 2);
          if (!v169)
          {
            goto LABEL_304;
          }
        }

        else
        {
          v167 = specialized _ArrayBuffer._consumeAndCreateNew()(v167);
          v169 = *(v167 + 2);
          if (!v169)
          {
            goto LABEL_304;
          }
        }

        v170 = v169 - 1;
        v171 = *&v167[8 * v170 + 32];
        *(v167 + 2) = v170;
        *(a1 + 40) = v167;
        *(a1 + 16) = v171;
        *(&v315 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSDictionary);
        *&v314 = v168;
        outlined init with take of Any(&v314, &v316);
        CopyWithAttributes = v168;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v320 = v24;
        v173 = specialized __RawDictionaryStorage.find<A>(_:)(v298);
        v175 = v24[2];
        v176 = (v174 & 1) == 0;
        v61 = __OFADD__(v175, v176);
        v177 = v175 + v176;
        if (v61)
        {
          goto LABEL_307;
        }

        v178 = v174;
        if (v24[3] < v177)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v177, isUniquelyReferenced_nonNull_native);
          v173 = specialized __RawDictionaryStorage.find<A>(_:)(v298);
          if ((v178 & 1) != (v179 & 1))
          {
            goto LABEL_330;
          }

LABEL_209:
          v24 = v320;
          if (v178)
          {
            goto LABEL_210;
          }

          goto LABEL_258;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_209;
        }

        v270 = v173;
        specialized _NativeDictionary.copy()();
        v173 = v270;
        v24 = v320;
        if (v178)
        {
LABEL_210:
          v239 = (v24[7] + 32 * v173);
          __swift_destroy_boxed_opaque_existential_1(v239);
          outlined init with take of Any(&v316, v239);

          goto LABEL_30;
        }

LABEL_258:
        v24[(v173 >> 6) + 8] |= 1 << v173;
        v271 = v298;
        *(v24[6] + 8 * v173) = v298;
        outlined init with take of Any(&v316, (v24[7] + 32 * v173));
        v272 = v271;

        v273 = v24[2];
        v61 = __OFADD__(v273, 1);
        v274 = v273 + 1;
        if (v61)
        {
          goto LABEL_323;
        }

        v24[2] = v274;
        goto LABEL_30;
      case 9uLL:
        v296 = v24;
        v213 = *a1;
        CopyWithAttributes = *(a1 + 48);
        *&v314 = v64;
        v214 = v213;

        v215 = ProtobufDecoder.dataField(_:)(&v314);
        v313 = v25;
        if (v25)
        {

          outlined consume of Data?(v311, v23);

          v280 = v16;
          goto LABEL_276;
        }

        v217 = v215;
        v218 = v216;
        v219 = v16;
        v220 = v214;
        v221 = v219;
        v288 = v23;
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for [JSONCodable<CFArrayRef>](0);
        lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [JSONCodable<CFArrayRef>] and conformance <A> [A], type metadata accessor for [JSONCodable<CFArrayRef>], lazy protocol witness table accessor for type JSONCodable<CFArrayRef> and conformance JSONCodable<A>);
        v222 = v313;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v313 = v222;
        if (v222)
        {
          goto LABEL_285;
        }

        if (*(v314 + 16))
        {
          v223 = *(v314 + 32);

          outlined consume of Data._Representation(v217, v218);

          type metadata accessor for CFArrayRef(0);
          *(&v315 + 1) = v224;
          *&v314 = v223;
          outlined init with take of Any(&v314, &v316);
          CopyWithAttributes = v223;
          v225 = v296;
          v226 = swift_isUniquelyReferenced_nonNull_native();
          v320 = v225;
          v227 = specialized __RawDictionaryStorage.find<A>(_:)(v300);
          v229 = v225[2];
          v230 = (v228 & 1) == 0;
          v61 = __OFADD__(v229, v230);
          v231 = v229 + v230;
          if (v61)
          {
            goto LABEL_300;
          }

          v232 = v228;
          v23 = v288;
          if (v225[3] >= v231)
          {
            if ((v226 & 1) == 0)
            {
              v265 = v227;
              specialized _NativeDictionary.copy()();
              v227 = v265;
              v24 = v320;
              if (v232)
              {
                goto LABEL_207;
              }

              goto LABEL_253;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v231, v226);
            v227 = specialized __RawDictionaryStorage.find<A>(_:)(v300);
            if ((v232 & 1) != (v233 & 1))
            {
              goto LABEL_330;
            }
          }

          v24 = v320;
          if (v232)
          {
LABEL_207:
            v238 = (v24[7] + 32 * v227);
            __swift_destroy_boxed_opaque_existential_1(v238);
            outlined init with take of Any(&v316, v238);

            goto LABEL_255;
          }

LABEL_253:
          v24[(v227 >> 6) + 8] |= 1 << v227;
          v266 = v300;
          *(v24[6] + 8 * v227) = v300;
          outlined init with take of Any(&v316, (v24[7] + 32 * v227));
          v267 = v266;

          v268 = v24[2];
          v61 = __OFADD__(v268, 1);
          v269 = v268 + 1;
          if (v61)
          {
            goto LABEL_321;
          }

          v24[2] = v269;
LABEL_255:
          v25 = v313;
LABEL_256:
          v16 = v302;
          goto LABEL_30;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        v313 = swift_allocError();
        swift_willThrow();
LABEL_285:

        outlined consume of Data?(v311, v288);

        outlined consume of Data._Representation(v217, v218);
        v280 = v221;
LABEL_276:
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v280, type metadata accessor for URL?);

        return CopyWithAttributes;
      case 0xAuLL:
        v115 = *(a1 + 16);
        v318[0] = *a1;
        v318[1] = v115;
        v318[2] = *(a1 + 32);
        v319 = *(a1 + 48);
        v320 = v64;
        CopyWithAttributes = v25;
        outlined init with copy of ProtobufDecoder(v318, &v314);
        v116 = ProtobufDecoder.dataField(_:)(&v320);
        if (!v25)
        {
          v118 = v116;
          v119 = v117;
          _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA11JSONCodableVySDySSSdGG_Tt1B5(&v316);
          v313 = 0;
          v288 = v23;
          v296 = v24;
          outlined consume of Data._Representation(v118, v119);
          outlined destroy of ProtobufDecoder(v318);
          v120 = v316;
          v121 = v316 + 64;
          v122 = 1 << *(v316 + 32);
          if (v122 < 64)
          {
            v123 = ~(-1 << v122);
          }

          else
          {
            v123 = -1;
          }

          v124 = v123 & *(v316 + 64);
          v125 = (v122 + 63) >> 6;

          v126 = 0;
          for (i = MEMORY[0x1E69E7CC8]; v124; v126 = v128)
          {
            v128 = v126;
LABEL_95:
            v129 = __clz(__rbit64(v124));
            v124 &= v124 - 1;
            v130 = v129 | (v128 << 6);
            v131 = (*(v120 + 48) + 16 * v130);
            v133 = *v131;
            v132 = v131[1];
            v134 = *(*(v120 + 56) + 8 * v130);
            swift_bridgeObjectRetain_n();
            v135 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v133, v132);
            if ((v136 & 1) == 0)
            {
              v137 = v135;
              LODWORD(v283) = swift_isUniquelyReferenced_nonNull_native();
              *&v314 = i;
              v284 = v137;
              v138 = specialized __RawDictionaryStorage.find<A>(_:)(v137);
              v140 = i[2];
              v141 = (v139 & 1) == 0;
              v61 = __OFADD__(v140, v141);
              v142 = v140 + v141;
              if (v61)
              {
                goto LABEL_326;
              }

              v143 = v139;
              if (i[3] >= v142)
              {
                if ((v283 & 1) == 0)
                {
                  v283 = v138;
                  specialized _NativeDictionary.copy()();
                  v138 = v283;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, v283);
                v138 = specialized __RawDictionaryStorage.find<A>(_:)(v284);
                if ((v143 & 1) != (v144 & 1))
                {
                  goto LABEL_329;
                }
              }

              v145 = v284;
              i = v314;
              if (v143)
              {
                *(*(v314 + 56) + 8 * v138) = v134;
              }

              else
              {
                *(v314 + 8 * (v138 >> 6) + 64) |= 1 << v138;
                *(i[6] + 8 * v138) = v145;
                *(i[7] + 8 * v138) = v134;
                v146 = i[2];
                v61 = __OFADD__(v146, 1);
                v147 = v146 + 1;
                if (v61)
                {
                  goto LABEL_327;
                }

                i[2] = v147;
              }
            }
          }

          while (1)
          {
            v128 = v126 + 1;
            if (__OFADD__(v126, 1))
            {
              break;
            }

            if (v128 >= v125)
            {

              type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for [Int : CGFloat]);
              *(&v315 + 1) = v234;
              *&v314 = i;
              outlined init with take of Any(&v314, &v316);
              CopyWithAttributes = v296;
              v235 = swift_isUniquelyReferenced_nonNull_native();
              v320 = CopyWithAttributes;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v316, v289, v235);
              v24 = v320;
              v25 = v313;
              v16 = v302;
              v23 = v288;
              goto LABEL_30;
            }

            v124 = *(v121 + 8 * v128);
            ++v126;
            if (v124)
            {
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
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
          goto LABEL_303;
        }

        v313 = v25;

        outlined consume of Data?(v311, v23);
        outlined destroy of ProtobufDecoder(v318);
        goto LABEL_275;
      case 0xBuLL:
        *&v314 = v64;
        v205 = ProtobufDecoder.doubleField(_:)(&v314);
        v313 = v206;
        if (v206)
        {
          goto LABEL_263;
        }

        *(&v315 + 1) = MEMORY[0x1E69E63B0];
        *&v314 = v205;
        outlined init with take of Any(&v314, &v316);
        v207 = swift_isUniquelyReferenced_nonNull_native();
        v320 = v24;
        v78 = v295;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v295);
        v209 = v24[2];
        v210 = (v208 & 1) == 0;
        v61 = __OFADD__(v209, v210);
        v211 = v209 + v210;
        if (v61)
        {
          goto LABEL_290;
        }

        CopyWithAttributes = v208;
        if (v24[3] >= v211)
        {
          if ((v207 & 1) == 0)
          {
            v262 = v90;
            specialized _NativeDictionary.copy()();
            v90 = v262;
            v78 = v295;
            v24 = v320;
            if ((CopyWithAttributes & 1) == 0)
            {
LABEL_195:
              v24[(v90 >> 6) + 8] |= 1 << v90;
              *(v24[6] + 8 * v90) = v78;
              outlined init with take of Any(&v316, (v24[7] + 32 * v90));
              v236 = v24[2];
              v61 = __OFADD__(v236, 1);
              v62 = v236 + 1;
              if (v61)
              {
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
                __break(1u);
                goto LABEL_328;
              }

              goto LABEL_28;
            }

            goto LABEL_203;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v211, v207);
          v90 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
          if ((CopyWithAttributes & 1) != (v212 & 1))
          {
            goto LABEL_330;
          }
        }

        v24 = v320;
        if ((CopyWithAttributes & 1) == 0)
        {
          goto LABEL_195;
        }

        goto LABEL_203;
      case 0xCuLL:
        if ((v64 & 7) == 0)
        {
          goto LABEL_65;
        }

        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        v86 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        if (v86 < 0)
        {
          goto LABEL_318;
        }

        v87 = *(a1 + 8) + v86;
        if (v21 < v87)
        {
          goto LABEL_260;
        }

        *(a1 + 24) = 96;
        *(a1 + 32) = v87;
LABEL_65:
        v88 = ProtobufDecoder.decodeVarint()();
        v313 = v25;
        v78 = v290;
        if (v25)
        {
          goto LABEL_263;
        }

        *(&v315 + 1) = MEMORY[0x1E69E6530];
        *&v314 = -(v88 & 1) ^ (v88 >> 1);
        outlined init with take of Any(&v314, &v316);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v320 = v24;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
        v92 = v24[2];
        v93 = (v91 & 1) == 0;
        v61 = __OFADD__(v92, v93);
        v94 = v92 + v93;
        if (v61)
        {
          goto LABEL_299;
        }

        CopyWithAttributes = v91;
        if (v24[3] >= v94)
        {
          if ((v89 & 1) == 0)
          {
            v263 = v90;
            specialized _NativeDictionary.copy()();
            v90 = v263;
            v78 = v290;
            v24 = v320;
            if (CopyWithAttributes)
            {
              goto LABEL_203;
            }

            goto LABEL_249;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, v89);
          v90 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
          if ((CopyWithAttributes & 1) != (v95 & 1))
          {
            goto LABEL_330;
          }
        }

        v24 = v320;
        if (CopyWithAttributes)
        {
LABEL_203:
          CopyWithAttributes = v24[7] + 32 * v90;
          goto LABEL_204;
        }

LABEL_249:
        v24[(v90 >> 6) + 8] |= 1 << v90;
        *(v24[6] + 8 * v90) = v78;
        outlined init with take of Any(&v316, (v24[7] + 32 * v90));
        v264 = v24[2];
        v61 = __OFADD__(v264, 1);
        v62 = v264 + 1;
        if (v61)
        {
          goto LABEL_320;
        }

LABEL_28:
        v24[2] = v62;
        v63 = v78;
LABEL_29:
        v25 = v313;
        goto LABEL_30;
      case 0xDuLL:
        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        v106 = ProtobufDecoder.decodeVarint()();
        if (v25)
        {
          goto LABEL_262;
        }

        CopyWithAttributes = v106;
        if (v106 < 0)
        {
          goto LABEL_293;
        }

        v107 = *(a1 + 8);
        if (v21 < v107 + v106)
        {
          goto LABEL_260;
        }

        *(a1 + 8) = v107 + v106;
        if (v106)
        {
          v108 = v107 - [*a1 bytes];
          v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v110;
          if (__OFADD__(v108, CopyWithAttributes))
          {
            goto LABEL_308;
          }

          if ((v108 + CopyWithAttributes) < v108)
          {
            goto LABEL_311;
          }

          v112 = v109;
          CopyWithAttributes = Data._Representation.subscript.getter();
          v114 = v113;
          outlined consume of Data._Representation(v112, v111);
        }

        else
        {
          v114 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v241 = String.init(data:encoding:)();
        if (!v242)
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v313 = swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(CopyWithAttributes, v114);
          outlined consume of Data?(v311, v23);
          v280 = v302;
          goto LABEL_276;
        }

        v243 = v241;
        v244 = v242;
        outlined consume of Data._Representation(CopyWithAttributes, v114);
        *(&v315 + 1) = MEMORY[0x1E69E6158];
        *&v314 = v243;
        *(&v314 + 1) = v244;
        outlined init with take of Any(&v314, &v316);
        v245 = swift_isUniquelyReferenced_nonNull_native();
        v320 = v24;
        v246 = v287;
        v247 = specialized __RawDictionaryStorage.find<A>(_:)(v287);
        v249 = v248;
        v250 = v24[2];
        v251 = (v248 & 1) == 0;
        if (__OFADD__(v250, v251))
        {
          goto LABEL_306;
        }

        CopyWithAttributes = v247;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v245, v250 + v251, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v252 = specialized __RawDictionaryStorage.find<A>(_:)(v246);
          if ((v249 & 1) != (v253 & 1))
          {
            goto LABEL_330;
          }

          CopyWithAttributes = v252;
        }

        v24 = v320;
        if (v249)
        {
          CopyWithAttributes = v320[7] + 32 * CopyWithAttributes;
          __swift_destroy_boxed_opaque_existential_1(CopyWithAttributes);
          outlined init with take of Any(&v316, CopyWithAttributes);
        }

        else
        {
          v320[(CopyWithAttributes >> 6) + 8] |= 1 << CopyWithAttributes;
          *(v24[6] + 8 * CopyWithAttributes) = v246;
          outlined init with take of Any(&v316, (v24[7] + 32 * CopyWithAttributes));
          v254 = v24[2];
          v61 = __OFADD__(v254, 1);
          v255 = v254 + 1;
          if (v61)
          {
            goto LABEL_322;
          }

          v24[2] = v255;
          v256 = v246;
        }

        goto LABEL_256;
      case 0xEuLL:
        *&v314 = v64;
        v193 = ProtobufDecoder.doubleField(_:)(&v314);
        v313 = v194;
        if (v194)
        {
          goto LABEL_263;
        }

        *(&v315 + 1) = MEMORY[0x1E69E63B0];
        *&v314 = v193;
        outlined init with take of Any(&v314, &v316);
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v320 = v24;
        v78 = v291;
        v196 = specialized __RawDictionaryStorage.find<A>(_:)(v291);
        v198 = v197;
        v199 = v24[2];
        v200 = (v197 & 1) == 0;
        if (__OFADD__(v199, v200))
        {
          goto LABEL_291;
        }

        CopyWithAttributes = v196;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v195, v199 + v200, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_171;
        }

        v201 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
        if ((v198 & 1) != (v202 & 1))
        {
          goto LABEL_330;
        }

        CopyWithAttributes = v201;
LABEL_171:
        v24 = v320;
        if (v198)
        {
          goto LABEL_172;
        }

        v320[(CopyWithAttributes >> 6) + 8] |= 1 << CopyWithAttributes;
        *(v24[6] + 8 * CopyWithAttributes) = v78;
        outlined init with take of Any(&v316, (v24[7] + 32 * CopyWithAttributes));
        v237 = v24[2];
        v61 = __OFADD__(v237, 1);
        v62 = v237 + 1;
        if (!v61)
        {
          goto LABEL_28;
        }

        goto LABEL_316;
      case 0xFuLL:
        *&v314 = v64;
        v75 = ProtobufDecoder.doubleField(_:)(&v314);
        v313 = v76;
        if (v76)
        {
          goto LABEL_263;
        }

        *(&v315 + 1) = MEMORY[0x1E69E7DE0];
        *&v314 = v75;
        outlined init with take of Any(&v314, &v316);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v320 = v24;
        v78 = v292;
        v79 = specialized __RawDictionaryStorage.find<A>(_:)(v292);
        v81 = v80;
        v82 = v24[2];
        v83 = (v80 & 1) == 0;
        if (__OFADD__(v82, v83))
        {
          goto LABEL_292;
        }

        CopyWithAttributes = v79;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v77, v82 + v83, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_57;
        }

        v84 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
        if ((v81 & 1) != (v85 & 1))
        {
          goto LABEL_330;
        }

        CopyWithAttributes = v84;
LABEL_57:
        v24 = v320;
        if (v81)
        {
LABEL_172:
          CopyWithAttributes = v24[7] + 32 * CopyWithAttributes;
LABEL_204:
          __swift_destroy_boxed_opaque_existential_1(CopyWithAttributes);
          outlined init with take of Any(&v316, CopyWithAttributes);
          goto LABEL_29;
        }

        v320[(CopyWithAttributes >> 6) + 8] |= 1 << CopyWithAttributes;
        *(v24[6] + 8 * CopyWithAttributes) = v78;
        outlined init with take of Any(&v316, (v24[7] + 32 * CopyWithAttributes));
        v60 = v24[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_315;
        }

        goto LABEL_28;
      case 0x10uLL:
        *&v314 = v64;
        v157 = ProtobufDecoder.uintField(_:)(&v314);
        v313 = v158;
        if (v158)
        {
          goto LABEL_263;
        }

        *(&v315 + 1) = MEMORY[0x1E69E7668];
        LODWORD(v314) = v157;
        outlined init with take of Any(&v314, &v316);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v320 = v24;
        v74 = &v317;
        goto LABEL_118;
      case 0x11uLL:
        *&v314 = v64;
        v71 = ProtobufDecoder.uintField(_:)(&v314);
        v313 = v72;
        if (v72)
        {
          goto LABEL_263;
        }

        *(&v315 + 1) = MEMORY[0x1E69E7668];
        LODWORD(v314) = v71;
        outlined init with take of Any(&v314, &v316);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v320 = v24;
        v74 = v318;
LABEL_118:
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v316, *(v74 - 32), v73);
        v24 = v320;
        goto LABEL_29;
      default:
        v188 = v64 & 7;
        if (v188 > 1)
        {
          if (v188 == 2)
          {
            v261 = ProtobufDecoder.decodeVarint()();
            if (v25)
            {
LABEL_262:
              v313 = v25;
LABEL_263:

LABEL_264:

              goto LABEL_265;
            }

            if (v261 < 0)
            {
              goto LABEL_325;
            }

            v189 = *(a1 + 8) + v261;
          }

          else
          {
            if (v188 != 5)
            {
              goto LABEL_260;
            }

            v189 = *(a1 + 8) + 4;
          }
        }

        else
        {
          if ((v64 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()();
            if (v25)
            {
              goto LABEL_262;
            }

            goto LABEL_30;
          }

          if (v188 != 1)
          {
            goto LABEL_260;
          }

          v189 = *(a1 + 8) + 8;
        }

        if (v21 < v189)
        {
          goto LABEL_260;
        }

        *(a1 + 8) = v189;
LABEL_30:
        v20 = *(a1 + 8);
        v21 = *(a1 + 16);
        if (v20 >= v21)
        {
          v313 = v25;
LABEL_4:
          *(a1 + 24) = 0;
          v26 = v307;
          outlined init with copy of ResolvableTextSegmentAttribute.Value(v16, v307, type metadata accessor for URL?);
          v27 = v308;
          v28 = v309;
          if ((*(v308 + 48))(v26, 1, v309) == 1)
          {
            outlined destroy of ResolvableTextSegmentAttribute.Value?(v26, type metadata accessor for URL?);
            v29 = v311;
            v30 = v310;
            v31 = v312;
            if (v23 >> 60 == 15)
            {
              if (v310)
              {
                v32 = v16;
                v33 = v23;
                v34._countAndFlagsBits = 0x534E46532ELL;
                v34._object = 0xE500000000000000;
                v35 = v306;
                if (String.hasPrefix(_:)(v34))
                {
                  v36 = String.count.getter();
                  v37 = specialized Collection.dropFirst(_:)(v36, v35, v30);
                  v39 = v38;
                  v41 = v40;
                  v43 = v42;

                  *&v316 = 0x495546532ELL;
                  *(&v316 + 1) = 0xE500000000000000;
                  *&v314 = v37;
                  *(&v314 + 1) = v39;
                  *&v315 = v41;
                  *(&v315 + 1) = v43;
                  lazy protocol witness table accessor for type Substring and conformance Substring();
                  String.append<A>(contentsOf:)();

                  v30 = *(&v316 + 1);
                  v35 = v316;
                }

                v44 = *MEMORY[0x1E6965808];
                *(&v315 + 1) = MEMORY[0x1E69E6158];
                *&v314 = v35;
                *(&v314 + 1) = v30;
                outlined init with take of Any(&v314, &v316);
                v45 = swift_isUniquelyReferenced_nonNull_native();
                v320 = v24;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v316, v44, v45);
                v23 = v33;
                v16 = v32;
                v29 = v311;
                v31 = v312;
              }

              goto LABEL_22;
            }

            if (v310)
            {
              outlined copy of Data._Representation(v311, v23);

              if (v24[2] && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69658F8]), (v53 & 1) != 0))
              {
                outlined init with copy of Any(v24[7] + 32 * v52, &v314);
                outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v314, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
                isa = Data._bridgeToObjectiveC()().super.isa;
                FontDescriptorFromData = CTFontManagerCreateFontDescriptorFromData(isa);

                if (FontDescriptorFromData)
                {

                  type metadata accessor for CFStringRef(0);
                  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
                  v56 = Dictionary._bridgeToObjectiveC()().super.isa;
                  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(FontDescriptorFromData, v56);
                  outlined consume of Data?(v29, v23);

                  goto LABEL_25;
                }
              }

              else
              {
                v314 = 0u;
                v315 = 0u;
                outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v314, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
              }

              v276 = Data._bridgeToObjectiveC()().super.isa;
              FontDescriptorsFromData = CTFontManagerCreateFontDescriptorsFromData(v276);

              objc_opt_self();
              swift_dynamicCastObjCClassUnconditional();
              *&v314 = 0;
              type metadata accessor for CTFontDescriptorRef(0);
              static Array._forceBridgeFromObjectiveC(_:result:)();
              v278 = v314;
              if (!v314)
              {
LABEL_328:
                __break(1u);
LABEL_329:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
LABEL_330:
                type metadata accessor for CFStringRef(0);
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                JUMPOUT(0x18D367C24);
              }

              CopyWithAttributes = specialized static CodablePlatformFont.fontDescriptor(from:matching:with:)(v278, v306, v30, v24);

              if (CopyWithAttributes)
              {
                outlined consume of Data?(v29, v23);
                goto LABEL_272;
              }

              outlined consume of Data?(v29, v23);
              lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error();
              v313 = swift_allocError();
              swift_willThrow();
              v275 = v29;
              goto LABEL_266;
            }

LABEL_22:
            if (v31)
            {
              v57 = MEMORY[0x193ABEC20](v304, v31);

              v58 = CTFontDescriptorGetContentSizeCategoryFromIndex();
              type metadata accessor for CFStringRef(0);
              lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
              v59 = Dictionary._bridgeToObjectiveC()().super.isa;
              CopyWithAttributes = CTFontDescriptorCreateWithTextStyleAndAttributes();

              goto LABEL_272;
            }

            type metadata accessor for CFStringRef(0);
            lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
            FontDescriptorFromData = Dictionary._bridgeToObjectiveC()().super.isa;
            CopyWithAttributes = CTFontDescriptorCreateWithAttributesAndOptions();
LABEL_25:

            goto LABEL_272;
          }

          v46 = v303;
          (*(v27 + 32))(v303, v26, v28);
          v29 = v311;
          v47 = v27;
          v48 = v310;
          v31 = v312;
          if (!v310)
          {
            (*(v47 + 8))(v46, v28);
            goto LABEL_22;
          }

          URL._bridgeToObjectiveC()(v49);
          v51 = v50;
          CopyWithAttributes = CTFontManagerCreateFontDescriptorsFromURL(v50);

          if (CopyWithAttributes)
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {

              goto LABEL_274;
            }

            *&v314 = 0;
            type metadata accessor for CTFontDescriptorRef(0);
            static Array._conditionallyBridgeFromObjectiveC(_:result:)();

            if (v314)
            {
              CopyWithAttributes = specialized static CodablePlatformFont.fontDescriptor(from:matching:with:)(v314, v306, v48, v24);

              if (CopyWithAttributes)
              {
                (*(v308 + 8))(v46, v309);
LABEL_272:
                v279 = CopyWithAttributes;
                CopyWithAttributes = CTFontCreateWithFontDescriptor(v279, v22, 0);

                outlined consume of Data?(v29, v23);
                outlined destroy of ResolvableTextSegmentAttribute.Value?(v16, type metadata accessor for URL?);

                return CopyWithAttributes;
              }

              goto LABEL_274;
            }
          }

LABEL_274:
          lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error();
          v313 = swift_allocError();
          swift_willThrow();
          outlined consume of Data?(v29, v23);
          (*(v308 + 8))(v46, v309);
          goto LABEL_275;
        }

        continue;
    }
  }
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.uint64Field(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v3 = *a1.rawValue;
  if ((*a1.rawValue & 7) == 0)
  {
    return ProtobufDecoder.decodeVarint()();
  }

  if ((*a1.rawValue & 7) != 2)
  {
LABEL_6:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    return swift_willThrow();
  }

  result = ProtobufDecoder.decodeVarint()();
  if (!v2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v5 = v1[1] + result;
    if (v1[2] < v5)
    {
      goto LABEL_6;
    }

    v1[3] = v3 & 0xFFFFFFFFFFFFFFF8;
    v1[4] = v5;
    return ProtobufDecoder.decodeVarint()();
  }

  return result;
}

unint64_t ContentTransition.NumericTextConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v49 = 0;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v37 = 0;
    v7 = 0;
    v38 = 19;
    v10 = 32;
    v39 = 51;
    v8 = 18;
    v40 = 2;
    v9 = 2;
LABEL_145:
    v3[3] = 0;
    *a2 = v7;
    *(a2 + 4) = v37;
    *(a2 + 5) = v40;
    *(a2 + 6) = v9;
    *(a2 + 7) = v8;
    *(a2 + 8) = v39;
    *(a2 + 9) = v10;
    *(a2 + 10) = v38;
    return result;
  }

  v7 = 0;
  v45 = 19;
  v46 = 0;
  v8 = 18;
  v43 = 51;
  v44 = 2;
  v9 = 2;
  v10 = 32;
  v11 = 2;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_146;
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
LABEL_146:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 <= 4)
    {
      if (result >> 3 > 2)
      {
        if (v13 == 3)
        {
          if ((result & 7) != 0)
          {
            if (v14 != 2)
            {
              goto LABEL_146;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_153;
            }

            v20 = v3[1] + result;
            if (v6 < v20)
            {
              goto LABEL_146;
            }

            v3[3] = 24;
            v3[4] = v20;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          v44 = result != 0;
          goto LABEL_4;
        }

        if (v13 == 4)
        {
          if ((result & 7) != 0)
          {
            if (v14 != 2)
            {
              goto LABEL_146;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_155;
            }

            v17 = v3[1] + result;
            if (v6 < v17)
            {
              goto LABEL_146;
            }

            v3[3] = 32;
            v3[4] = v17;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if (result)
          {
            v9 = v11 | 1;
            v11 |= 1u;
          }

          else
          {
            v9 = v11 & 0xFE;
            v11 &= 0xFEu;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v13 == 1)
        {
          if ((result & 7) != 0)
          {
            if (v14 != 2)
            {
              goto LABEL_146;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_152;
            }

            v19 = v3[1] + result;
            if (v6 < v19)
            {
              goto LABEL_146;
            }

            v3[3] = 8;
            v3[4] = v19;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          v46 = 0;
          v7 = result == 0;
          goto LABEL_4;
        }

        if (v13 == 2)
        {
          if (v14 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_154;
            }

            v16 = v3[1];
            if (v6 < v16 + result)
            {
              goto LABEL_146;
            }

            v3[3] = 21;
            v3[4] = v16 + result;
          }

          else
          {
            if (v14 != 5)
            {
              goto LABEL_146;
            }

            v16 = v3[1];
          }

          if (v6 < (v16 + 1))
          {
            goto LABEL_146;
          }

          v7 = *v16;
          v3[1] = v16 + 1;
          v46 = 1;
          goto LABEL_4;
        }
      }

      goto LABEL_66;
    }

    if (result >> 3 <= 6)
    {
      if (v13 == 5)
      {
        if (v14 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_156;
          }

          v22 = v3[1];
          if (v6 < v22 + result)
          {
            goto LABEL_146;
          }

          v3[3] = 45;
          v3[4] = v22 + result;
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_146;
          }

          v22 = v3[1];
        }

        if (v6 < (v22 + 1))
        {
          goto LABEL_146;
        }

        v25 = v2;
        v31 = *v22;
        v3[1] = v22 + 1;
        v32 = v31 * 120.0;
        if (v32 < 0.0)
        {
          v32 = 0.0;
        }

        if (v32 > 255.0)
        {
          v32 = 255.0;
        }

        result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(&v47, v32);
        if ((v47 & 0x100) != 0)
        {
          goto LABEL_160;
        }

        v8 = v47;
        goto LABEL_3;
      }

      if (v13 == 6)
      {
        if (v14 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_157;
          }

          v18 = v3[1];
          if (v6 < v18 + result)
          {
            goto LABEL_146;
          }

          v3[3] = 53;
          v3[4] = v18 + result;
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_146;
          }

          v18 = v3[1];
        }

        if (v6 < (v18 + 1))
        {
          goto LABEL_146;
        }

        v25 = v2;
        v26 = *v18;
        v3[1] = v18 + 1;
        v27 = v26 * 128.0;
        if (v27 < 0.0)
        {
          v27 = 0.0;
        }

        if (v27 > 255.0)
        {
          v27 = 255.0;
        }

        result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(&v47, v27);
        if ((v47 & 0x100) != 0)
        {
          goto LABEL_160;
        }

        v43 = v47;
        goto LABEL_3;
      }

      goto LABEL_66;
    }

    if (v13 == 7)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_150:
          __break(1u);
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
LABEL_159:
          v47 = 0;
          v48 = 0xE000000000000000;
          _StringGuts.grow(_:)(80);
          MEMORY[0x193ABEDD0](0x74616F6C46, 0xE500000000000000);
          MEMORY[0x193ABEDD0](0xD00000000000001ELL, 0x800000018DD829B0);
          v41 = 947154505;
          v42 = 0xE400000000000000;
          goto LABEL_161;
        }

        v21 = v3[1];
        if (v6 < v21 + result)
        {
          goto LABEL_146;
        }

        v3[3] = 61;
        v3[4] = v21 + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_146;
        }

        v21 = v3[1];
      }

      if (v6 < (v21 + 1))
      {
        goto LABEL_146;
      }

      v25 = v2;
      v28 = *v21;
      v3[1] = v21 + 1;
      v29 = v28 * 4.0;
      if (v29 < 0.0)
      {
        v29 = 0.0;
      }

      if (v29 > 255.0)
      {
        v29 = 255.0;
      }

      result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(&v47, v29);
      if ((v47 & 0x100) != 0)
      {
        goto LABEL_160;
      }

      v10 = v47;
      v30 = (v11 & 2) == 0;
      v11 &= 0xFDu;
      if (!v30)
      {
        v9 = v11;
      }

      goto LABEL_3;
    }

    if (v13 == 8)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_150;
        }

        v23 = v3[1];
        if (v6 < v23 + result)
        {
          goto LABEL_146;
        }

        v3[3] = 69;
        v3[4] = v23 + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_146;
        }

        v23 = v3[1];
      }

      if (v6 < (v23 + 1))
      {
        goto LABEL_146;
      }

      v25 = v2;
      v35 = *v23;
      v3[1] = v23 + 1;
      v36 = fmaxf(v35 * 32.0, -128.0);
      if (v36 > 127.0)
      {
        v36 = 127.0;
      }

      result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs4Int8V_SfTt1g5(&v47, v36);
      if ((v47 & 0x100) != 0)
      {
        goto LABEL_159;
      }

      v45 = v47;
      goto LABEL_3;
    }

    if (v13 == 9)
    {
      break;
    }

LABEL_66:
    if ((result & 7) > 1)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_158;
        }

        v24 = v3[1] + result;
        if (v6 < v24)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_146;
        }

        v24 = v3[1] + 4;
        if (v6 < v24)
        {
          goto LABEL_146;
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
          return result;
        }

        goto LABEL_4;
      }

      if (v14 != 1)
      {
        goto LABEL_146;
      }

      v24 = v3[1] + 8;
      if (v6 < v24)
      {
        goto LABEL_146;
      }
    }

    v3[1] = v24;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      v38 = v45;
      v37 = v46 & 1;
      v49 = v46 & 1;
      v39 = v43;
      v40 = v44;
      goto LABEL_145;
    }
  }

  if (v14 == 2)
  {
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_151;
    }

    v15 = v3[1];
    if (v6 < v15 + result)
    {
      goto LABEL_146;
    }

    v3[3] = 77;
    v3[4] = v15 + result;
  }

  else
  {
    if (v14 != 5)
    {
      goto LABEL_146;
    }

    v15 = v3[1];
  }

  if (v6 < (v15 + 1))
  {
    goto LABEL_146;
  }

  v25 = v2;
  v33 = *v15;
  v3[1] = v15 + 1;
  v34 = v33 * 128.0;
  if (v34 < 0.0)
  {
    v34 = 0.0;
  }

  if (v34 > 255.0)
  {
    v34 = 255.0;
  }

  result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(&v47, v34);
  if ((v47 & 0x100) == 0)
  {
    v10 = v47;
    if ((v11 & 2) == 0)
    {
      v9 = v11 | 2;
      v11 |= 2u;
    }

LABEL_3:
    v2 = v25;
    goto LABEL_4;
  }

LABEL_160:
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  MEMORY[0x193ABEDD0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x193ABEDD0](0xD00000000000001ELL, 0x800000018DD829B0);
  v41 = 0x38746E4955;
  v42 = 0xE500000000000000;
LABEL_161:
  MEMORY[0x193ABEDD0](v41, v42);
  MEMORY[0x193ABEDD0](0xD00000000000002ELL, 0x800000018DD829D0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t key path setter for EnvironmentValues.fontDefinition : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014FontDefinitionF0019_C17A136ED11B3E0D21O11D182F3B80B2LLVG_Tt2g5(a2, v3, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014FontDefinitionK0019_C17A136ED11B3E0D21T11D182F3B80B2LLVG_Ttg5(v5, *a2);
  }
}

uint64_t DisplayList.UnaryInterpolatorGroup.apply(to:)(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v11[0] = 0uLL;
  v11[1] = *(a1 + 16);
  v12 = v7;
  v13 = v6;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = 0;
  outlined copy of DisplayList.Item.Value(v6, v3, v4, v5);

  DisplayList.init(_:)(v11, &v18);
  v8 = v18;
  v9 = v19 | (v20 << 32) | 0x40000000;
  result = outlined consume of DisplayList.Item.Value(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(a1 + 40) = v1;
  *(a1 + 48) = 0x1200000000;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  return result;
}

uint64_t EnvironmentValues.accessibilityEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020AccessibilityEnabledF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA020AccessibilityEnabledK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v4, *v2);
  }
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ArchivedViewInput@<X0>(_WORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ArchivedViewInput.defaultValue;
  return result;
}

uint64_t key path getter for EnvironmentValues.fontDefinition : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014FontDefinitionI0019_C17A136ED11B3E0D21R11D182F3B80B2LLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(*a1);
    if (result)
    {
      v8 = (result + 72);
      v9 = (result + 80);
    }

    else
    {
      v8 = &static FontDefinitionKey.defaultValue;
      v9 = &static FontDefinitionKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }
    }

    v6 = *v9;
    v4 = *v8;
  }

  *a2 = v4;
  a2[1] = v6;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014FontDefinitionF0019_C17A136ED11B3E0D21O11D182F3B80B2LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<FontDefinitionKey>>();
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<FontDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontDefinitionKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020AccessibilityEnabledF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityEnabledKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityEnabledKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityEnabledKey>>);
    }
  }
}

Swift::Void __swiftcall DisplayList.InterpolatorLayer.invalidateContentsScale()()
{
  swift_unknownObjectRelease();
  *(v0 + 32) = 0;
  v1 = *(v0 + 56);
  v2 = *(v1 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v3 = 0;
    v4 = (v1 + 88);
    do
    {
      if (v3 >= *(v1 + 2))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      *(v4 - 3) = 0;
      swift_unknownObjectRelease();
      if (v3 >= *(v1 + 2))
      {
        goto LABEL_10;
      }

      ++v3;
      v5 = *v4;
      *v4 = 0;
      v4 += 14;
    }

    while (v2 != v3);
    *(v0 + 56) = v1;
  }

  *(v0 + 83) = 1;
}

uint64_t ObjectLocation.set(_:transaction:)(uint64_t a1, void *a2)
{
  v2 = Transaction.current.getter(a2);
  specialized closure #1 in withTransaction<A>(_:_:)(v2, partial apply for closure #1 in ObjectLocation.set(_:transaction:));
}

uint64_t static SystemContainerShapeModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v9 = a2[3];
  v10 = a2[1];
  v31 = a2[2];
  v32 = v9;
  v11 = a2[3];
  v33 = a2[4];
  v12 = a2[1];
  v29 = *a2;
  v30 = v12;
  v25 = v31;
  v26 = v11;
  v27 = a2[4];
  v13 = *a1;
  v34 = *(a2 + 20);
  v28 = *(a2 + 20);
  v23 = v29;
  v24 = v10;
  LODWORD(v36[0]) = v13;
  outlined init with copy of _ViewInputs(&v29, &v40);
  type metadata accessor for SystemContainerShapeModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static SystemContainerShapeModifier._makeView(modifier:inputs:body:), a5, &v17);
  v40 = v29;
  v41 = v30;
  v42 = v31;
  outlined init with copy of _GraphInputs(&v29, v38);
  v14 = static Animatable.makeAnimatable(value:inputs:)(&v17, &v40, a5, *(*(a6 + 8) + 8));
  v35[0] = v40;
  v35[1] = v41;
  v35[2] = v42;
  outlined destroy of _GraphInputs(v35);
  _ViewInputs.setContainerShape<A>(_:isSystemShape:)(v14, 1, a5, a6);
  v36[2] = v25;
  v36[3] = v26;
  v36[4] = v27;
  v37 = v28;
  v36[0] = v23;
  v36[1] = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  v15 = outlined init with copy of _ViewInputs(v36, &v40);
  a3(v15, &v17);
  v38[2] = v19;
  v38[3] = v20;
  v38[4] = v21;
  v39 = v22;
  v38[0] = v17;
  v38[1] = v18;
  outlined destroy of _ViewInputs(v38);
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v40 = v23;
  v41 = v24;
  return outlined destroy of _ViewInputs(&v40);
}

uint64_t closure #1 in static _ContainerShapeModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = a4(0);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *(a2 + 48);
  v24 = *(a2 + 32);
  v25 = v5;
  v26 = *(a2 + 64);
  v27 = *(a2 + 80);
  v6 = *(a2 + 16);
  v22 = *a2;
  v23 = v6;
  type metadata accessor for Date?(0);
  v28 = *a2;
  outlined init with copy of _ViewInputs(a2, v20);
  AGGraphCreateOffsetAttribute2();
  v7 = AGCreateWeakAttribute();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA18ReferenceDateInputV_Tt2g5(&v22, v7);
  outlined destroy of PropertyList(&v28);
  v16[2] = v24;
  v16[3] = v25;
  v16[4] = v26;
  v17 = v27;
  v16[0] = v22;
  v16[1] = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v10 = v22;
  v11 = v23;
  v8 = outlined init with copy of _ViewInputs(v16, v20);
  a3(v8, &v10);
  v18[2] = v12;
  v18[3] = v13;
  v18[4] = v14;
  v19 = v15;
  v18[0] = v10;
  v18[1] = v11;
  outlined destroy of _ViewInputs(v18);
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  return outlined destroy of _ViewInputs(v20);
}

{
  v4 = *a2;
  v5 = *(a2 + 48);
  v24 = *(a2 + 32);
  v25 = v5;
  v26 = *(a2 + 64);
  v27 = *(a2 + 80);
  v6 = *(a2 + 16);
  v22 = *a2;
  v23 = v6;
  outlined init with copy of _ViewInputs(a2, v20);
  v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(v4);
  if (v7)
  {
    PreferenceKeys.remove(_:)(v7);
  }

  v16[2] = v24;
  v16[3] = v25;
  v16[4] = v26;
  v17 = v27;
  v16[0] = v22;
  v16[1] = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v10 = v22;
  v11 = v23;
  v8 = outlined init with copy of _ViewInputs(v16, v20);
  a3(v8, &v10);
  v18[2] = v12;
  v18[3] = v13;
  v18[4] = v14;
  v19 = v15;
  v18[0] = v10;
  v18[1] = v11;
  outlined destroy of _ViewInputs(v18);
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  return outlined destroy of _ViewInputs(v20);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ReferenceDateModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA18ReferenceDateInputV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ReferenceDateInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA18ReferenceDateInputV_Tt0B5(v4, v7) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]), result = static WeakAttribute.== infix(_:_:)(), (result & 1) == 0))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ReferenceDateInput>, &type metadata for ReferenceDateInput, &protocol witness table for ReferenceDateInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ReferenceDateInput, 0, v6);
  }

  return result;
}

void type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<ContainerRelativeShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type ContainerRelativeShape and conformance ContainerRelativeShape();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<ContainerRelativeShape, ForegroundStyle>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape>, &type metadata for ContainerRelativeShape, &protocol witness table for ContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>);
    }
  }
}

uint64_t key path getter for EnvironmentValues.displayGamut : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultRenderingMode : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    a6(v10, *a2);
  }
}

BOOL _s7SwiftUI11PropertyKeyPAASQ5ValueRpzrlE11valuesEqualySbAE_AEtFZAA19InterfaceIdiomInputV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (a1 | a3) == 0;
  if (a1)
  {
    if (a3)
    {
      return (*(a2 + 16))(a3, a4, a1, a2) & 1;
    }
  }

  return result;
}

unint64_t _ViewOutputs.applyInterpolatorGroup<A>(_:content:inputs:animatesSize:defersRender:)(uint64_t a1, int a2, uint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v44 = a5;
  v45 = a4;
  v46 = a2;
  v49 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39[-v13];
  v43 = a7;
  v15 = type metadata accessor for InterpolatedDisplayList();
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v39[-v16];
  v17 = *a3;
  *&v18 = a3[1];
  v51 = v18;
  v19 = a3[2];
  v20 = *(a3 + 6);
  *&v18 = *(a3 + 28);
  v52 = v18;
  v50 = *(a3 + 9);
  LODWORD(v16) = *(a3 + 17);
  v53 = *(a3 + 16);
  v54 = v16;
  v21 = *(a3 + 18);
  v22 = *(a3 + 76);
  result = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(*v8);
  if ((result & 0x100000000) == 0)
  {
    v41 = result;
    v42 = v8;
    *&v55 = v17;
    *(&v55 + 1) = v51;
    v56 = v19;
    v57 = v20;
    v58 = v52;
    v59 = v50;
    v60 = *(a3 + 5);
    v61 = a3[7];
    v62 = v53;
    v63 = v54;
    v64 = v21;
    v65 = v22;
    swift_beginAccess();
    v40 = CachedEnvironment.animatedPosition(for:)(&v55);
    swift_endAccess();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v25 = *(v19 + 16);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v26 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v27 = specialized CachedEnvironment.attribute<A>(id:_:)(v26);
    swift_endAccess();
    LODWORD(v26) = (v50 >> 10) & 1;
    (*(*(a6 - 8) + 56))(v14, 1, 1, a6);
    *&v55 = 0;
    v35 = v26;
    *&v34 = __PAIR64__(v25, v52);
    *(&v34 + 1) = __PAIR64__(v41, v27);
    v28 = v47;
    v29 = InterpolatedDisplayList.init(group:content:position:animatedPosition:containerPosition:size:phase:time:transaction:environment:pixelLength:list:animatesSize:defersRender:supportsVFD:lastContent:lastSize:resetSeed:contentVersion:)(v49, v46, v53, v40, v54, OffsetAttribute2, v20, v51, v47, 0.0, 0.0, v34, v45 & 1, v44 & 1, v35, v14, 0, &v55);
    MEMORY[0x1EEE9AC00](v29);
    v37 = v15;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<DisplayList>();
    v31 = v30;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, closure #1 in Attribute.init<A>(_:)partial apply, &v36, v15, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
    (*(v48 + 8))(v28, v15);
    v33 = v55;
    AGGraphSetFlags();
    LOBYTE(v55) = 0;
    return PreferencesOutputs.subscript.setter(v33, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

  return result;
}

uint64_t DisplayList.ArchiveIDs.init(uuid:stableIDs:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DisplayList.ArchiveIDs();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t InterpolatedDisplayList.init(group:content:position:animatedPosition:containerPosition:size:phase:time:transaction:environment:pixelLength:list:animatesSize:defersRender:supportsVFD:lastContent:lastSize:resetSeed:contentVersion:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, char a13, char a14, char a15, uint64_t a16, int a17, uint64_t *a18)
{
  v21 = *a18;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 12) = a3;
  *(a9 + 16) = a4;
  *(a9 + 20) = a5;
  *(a9 + 24) = a6;
  *(a9 + 28) = a7;
  *(a9 + 32) = a8;
  *(a9 + 36) = a12;
  *(a9 + 52) = a13;
  *(a9 + 53) = a14;
  *(a9 + 54) = a15;
  v22 = type metadata accessor for InterpolatedDisplayList();
  v23 = v22[23];
  v24 = type metadata accessor for Optional();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a16, v24);
  v26 = (a9 + v22[24]);
  *v26 = a10;
  v26[1] = a11;
  *(a9 + v22[25]) = a17;
  *(a9 + v22[26]) = v21;
  return result;
}

uint64_t TextLayoutQuery.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(a1);
  type metadata accessor for ResolvedStyledText();
  v4 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  v8 = AGGraphGetValue();
  v9.n128_u64[0] = *v8;
  v10.n128_u64[0] = v8[1];
  (*(*v4 + 304))(v20, 0, 0.0, 0.0, v6, v7, v9, v10);

  v11 = *v20;
  if (!*v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v21;
  v13 = v20[8];
  v14 = *AGGraphGetValue() * 0.0;
  *v20 = v3;
  *&v20[4] = a2;
  v15 = CGPoint.prepare(geometry:)(v14);
  v17 = v16;
  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for AnchorValueBox<UnitPoint>, &type metadata for UnitPoint, &protocol witness table for UnitPoint, type metadata accessor for AnchorValueBox);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  _sypSgMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.LayoutKey.AnchoredLayout>, &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18DDA6EB0;
  *(result + 32) = v18;
  *(result + 40) = v11;
  *(result + 48) = v13 & 1;
  *(result + 56) = v12;
  return result;
}

uint64_t initializeWithCopy for Text.LayoutKey.AnchoredLayout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t specialized static Text.LayoutKey.AnchoredLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((*(**a1 + 112))(*a2))
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV6LayoutV4LineV_Tt1g5(v2, v5) & ~(v3 ^ v6) & (v4 == v7);
  }

  else
  {
    return 0;
  }
}

uint64_t destroy for Text.LayoutKey.AnchoredLayout()
{
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

char *Text.Layout.Line.clusters(for:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BE0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = v2[1];
  v11 = *(v2 + 16);
  v12 = v2[3];
  v13 = v2[4];
  v14 = *(v2 + 10);
  v22 = *v2;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v17[0] = v22;
  v17[1] = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  Text.Layout.Line.characterRanges(runIndices:)(a1, a2);
  v15 = Text.Layout.Line.clusters(for:)();
  (*(v7 + 8))(v9, v6);
  return v15;
}

void type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void Text.Layout.Line.characterRanges(runIndices:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 16);
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
  RangeSet.init()();
  if (a1 != a2)
  {
    if (a2 >= a1)
    {
      goto LABEL_6;
    }

    __break(1u);
    while (a2 != ++a1)
    {
LABEL_6:
      if (a1 >= a2)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      if (v6)
      {
        v7 = v5;

        v8 = _NSTextLineFragmentGetCTLine(v7);

        if (!v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        outlined copy of Text.Layout.Line.Line(v5);
        v8 = v5;
      }

      v9 = CTLineGetRunAtIndex();
      StringRange = CTRunGetStringRange(v9);

      v11 = StringRange.location + StringRange.length;
      if (__OFADD__(StringRange.location, StringRange.length))
      {
        goto LABEL_17;
      }

      if (v11 < StringRange.location)
      {
        goto LABEL_18;
      }

      v13[4] = StringRange.location;
      v13[5] = StringRange.location + StringRange.length;
      if (__OFSUB__(v11, StringRange.location))
      {
        goto LABEL_19;
      }

      if (v11 != StringRange.location)
      {
        type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BE0]);
        v12 = RangeSet._ranges.modify();
        type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
        RangeSet.Ranges._insert(contentsOf:)();
        v12(v13, 0);
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex()
{
  result = lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex;
  if (!lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex;
  if (!lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex);
  }

  return result;
}

char *Text.Layout.Line.clusters(for:)()
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v38 - v4;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v43 = *(v0 + 8);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v42 = *(v0 + 40);
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  (*(v3 + 16))(v9, v5, v2);
  v14 = *(v7 + 44);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges();
  dispatch thunk of Collection.startIndex.getter();
  (*(v3 + 8))(v5, v2);
  v45 = MEMORY[0x1E69E7CC0];
  v44 = v11;
  while (1)
  {
LABEL_3:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v9[v14] == v46[0])
    {
      outlined destroy of (NSAttributedStringKey, CGColorRef)(v9, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
      return v45;
    }

    v15 = dispatch thunk of Collection.subscript.read();
    v18 = *v16;
    v17 = v16[1];
    v15(v46, 0);
    dispatch thunk of Collection.formIndex(after:)();
    if ((v11 & 1) == 0)
    {
      break;
    }

    v19 = v10;
    v20 = _NSTextLineFragmentGetCTLine(v19);

    if (v20)
    {
      goto LABEL_8;
    }
  }

  outlined copy of Text.Layout.Line.Line(v10);

  v20 = v10;
LABEL_8:
  v21 = v18;
LABEL_9:
  v22 = v21;
  while (1)
  {
    if (v22 >= v17 || (result = CTLineGetRangeOfCharacterClusterAtIndex(), result == -1))
    {

      LOBYTE(v11) = v44;
      goto LABEL_3;
    }

    v25 = &result[v24];
    if (__OFADD__(result, v24))
    {
      break;
    }

    if (v25 < result)
    {
      goto LABEL_35;
    }

    if (v17 >= result)
    {
      v26 = result;
    }

    else
    {
      v26 = v17;
    }

    if (result >= v18)
    {
      v22 = v26;
    }

    else
    {
      v22 = v18;
    }

    if (v25 <= v18)
    {
      v27 = v18;
    }

    else
    {
      v27 = v25;
    }

    if (v17 >= v25)
    {
      v21 = v27;
    }

    else
    {
      v21 = v17;
    }

    if (__OFSUB__(v21, v22))
    {
      goto LABEL_36;
    }

    if (v21 != v22)
    {
      v46[0] = v10;
      v46[1] = v43;
      v47 = v44;
      v48 = v12;
      v49 = v13;
      v50 = v42;
      v41 = v22;
      Text.Layout.Line.slices(for:)(v22, v21);
      v29 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
      }

      v32 = *(v45 + 2);
      v31 = *(v45 + 3);
      v33 = v32 + 1;
      v34 = v41;
      if (v32 >= v31 >> 1)
      {
        v39 = v32 + 1;
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v45);
        v33 = v39;
        v34 = v41;
        v45 = v37;
      }

      v35 = v45;
      *(v45 + 2) = v33;
      v36 = &v35[24 * v32];
      *(v36 + 4) = v34;
      *(v36 + 5) = v21;
      *(v36 + 6) = v40;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
    lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges();
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges()
{
  result = lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

void Text.Layout.Line.slices(for:)(CFIndex a1, CFIndex a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v50 = *(v2 + 40);
  v61 = MEMORY[0x1E69E7CC0];
  v60 = v7;
  outlined copy of Text.Layout.Line.Line(v5);
  v10 = 0;
  v52 = a1;
  v11 = __OFSUB__(a2, a1);
  v49 = a2;
  v46 = v5;
  v47 = v11;
  v48 = v7;
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v12 = v5;
  v13 = _NSTextLineFragmentGetCTLine(v12);

  if (v13)
  {
    while (1)
    {
      RunCount = CTLineGetRunCount();

      if (v10 == RunCount)
      {
        goto LABEL_59;
      }

      if (v7)
      {
        goto LABEL_13;
      }

      outlined copy of Text.Layout.Line.Line(v5);

      outlined copy of Text.Layout.Line.Line(v5);

      outlined copy of Text.Layout.Line.Line(v5);

      v16 = v5;
      v18 = v5;
LABEL_17:
      v19 = CTLineGetRunCount();

LABEL_18:
      if (v10 >= v19)
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v20 = CTLineGetRunAtIndex();
      StringRange = CTRunGetStringRange(v20);

      v22 = StringRange.location + StringRange.length;
      if (__OFADD__(StringRange.location, StringRange.length))
      {
        goto LABEL_61;
      }

      if (v22 < StringRange.location)
      {
        goto LABEL_62;
      }

      if (StringRange.location >= a2 || v22 <= v52)
      {
        goto LABEL_6;
      }

      if (__OFSUB__(v22, StringRange.location))
      {
        goto LABEL_63;
      }

      if (v22 == StringRange.location)
      {
        goto LABEL_6;
      }

      if (v11)
      {
        goto LABEL_66;
      }

      if (a2 == v52)
      {
LABEL_6:

        ++v10;
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v23 = CTLineGetRunAtIndex();
        GlyphCount = CTRunGetGlyphCount(v23);

        if (GlyphCount < 0)
        {
          goto LABEL_67;
        }

        v55[0] = v16;
        v55[1] = v10;
        v55[2] = v8;
        v55[3] = v9;
        v56 = v50;
        v57 = v6;
        v58 = 0;
        v59 = GlyphCount;
        v51 = v16;

        Text.Layout.RunSlice.characterIndices.getter();
        v26 = v25;
        sub_18D36CCC8(v55);
        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = 0;
          v29 = v26 + 32;
          v30 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v32 = *(v29 + 8 * v28);
            v33 = v28 + 1;
            if (v32 >= v52 && v32 < a2)
            {
              v35 = *(v30 + 2);
              if (v35 && (v36 = v35 - 1, v37 = &v30[16 * v35 - 16], v28 == *(v37 + 5)))
              {
                v28 = *(v37 + 4);
                if (v33 < v28)
                {
                  goto LABEL_64;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
                }

                if (v35 > *(v30 + 2))
                {
                  goto LABEL_65;
                }
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 + 1, 1, v30);
                }

                v36 = *(v30 + 2);
                v38 = *(v30 + 3);
                if (v36 >= v38 >> 1)
                {
                  v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v36 + 1, 1, v30);
                }

                *(v30 + 2) = v36 + 1;
              }

              v31 = &v30[16 * v36];
              *(v31 + 4) = v28;
              *(v31 + 5) = v33;
              a2 = v49;
            }

            v28 = v33;
            if (v27 == v33)
            {
              goto LABEL_50;
            }
          }
        }

        v30 = MEMORY[0x1E69E7CC0];
LABEL_50:

        v39 = *(v30 + 2);
        if (v39)
        {
          v54 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
          v40 = v54;
          v41 = 32;
          do
          {
            v53 = *&v30[v41];
            v42 = *(v54 + 16);
            v43 = *(v54 + 24);
            v44 = v51;

            if (v42 >= v43 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v42 + 1, 1);
            }

            *(v54 + 16) = v42 + 1;
            v45 = v54 + (v42 << 6);
            *(v45 + 32) = v44;
            *(v45 + 40) = v10;
            *(v45 + 48) = v8;
            *(v45 + 56) = v9;
            *(v45 + 64) = v50;
            *(v45 + 72) = v6;
            v41 += 16;
            *(v45 + 80) = v53;
            --v39;
          }

          while (v39);

          v5 = v46;
          a2 = v49;
        }

        else
        {

          v40 = MEMORY[0x1E69E7CC0];
        }

        specialized Array.append<A>(contentsOf:)(v40);

        ++v10;
        v11 = v47;
        v7 = v48;
        if (v48)
        {
          goto LABEL_7;
        }
      }

LABEL_10:
      outlined copy of Text.Layout.Line.Line(v5);

      v13 = v5;
    }
  }

  if (!v10)
  {
LABEL_59:
    outlined consume of Text.Layout.Line.Line(v5);
    return;
  }

LABEL_13:
  v15 = v5;
  v16 = _NSTextLineFragmentGetCTLine(v15);

  if (v16)
  {
    outlined copy of Text.Layout.Line.Line(v5);

    v17 = v15;
    v18 = _NSTextLineFragmentGetCTLine(v17);

    if (!v18)
    {
      v19 = 0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_68:
  __break(1u);
}

void Text.Layout.RunSlice.characterIndices.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = CTLineGetRunAtIndex();
  StringIndicesPtr = CTRunGetStringIndicesPtr(v4);

  if (!StringIndicesPtr)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (v3)
      {
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v14 + 16) = v3;
        bzero((v14 + 32), 8 * v3);
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = CTLineGetRunAtIndex();
      v16.location = v1;
      v16.length = v2 - v1;
      CTRunGetStringIndices(v15, v16, (v14 + 32));

      return;
    }

    goto LABEL_18;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v7 = v6;
  if (v2 == v1)
  {
    return;
  }

  if (v2 < v1)
  {
    goto LABEL_19;
  }

  v8 = v2 - v1;
  if (v2 <= v1)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v9 = *(v6 + 2);
  v10 = &StringIndicesPtr[v1];
  do
  {
    v12 = *v10++;
    v11 = v12;
    v13 = *(v7 + 3);
    if (v9 >= v13 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    *&v7[8 * v9++ + 32] = v11;
    --v8;
  }

  while (v8);
}

uint64_t initializeWithCopy for Text.Layout.RunSlice(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = v3;

  return a1;
}

uint64_t outlined destroy of (NSAttributedStringKey, CGColorRef)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18D36BB64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *protocol witness for Collection.formIndex(after:) in conformance Text.Layout.Cluster(void *result)
{
  if (*result >= *(*(v1 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void Text.Layout.RunSlice.positions.getter()
{
  v1 = v0[1];
  v17 = *v0;
  v18 = v1;
  v2 = v0[3];
  v19 = v0[2];
  v20 = v2;
  v3 = (*&v2.f64[1] - *&v2.f64[0]);
  if (*&v2.f64[1] < *&v2.f64[0])
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(*&v2.f64[1], *&v2.f64[0]))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3 >= 1)
  {
    type metadata accessor for CGPoint(0);
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v3;
    bzero((v5 + 32), 16 * v3);
    v16[0] = (v5 + 32);
    v16[1] = v3;
    closure #1 in Text.Layout.RunSlice.positions.getter(v16, &v17);
    v6 = *(v5 + 16);
    if (v6)
    {
      v15 = v18;
      v16[0] = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v15;
      v8 = v16[0];
      x = v16[0][1].x;
      v10 = 32;
      do
      {
        v11 = *(v5 + v10);
        v16[0] = v8;
        v12 = *&v8[1].y;
        if (*&x >= v12 >> 1)
        {
          v14 = v11;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), *&x + 1, 1);
          v11 = v14;
          v7 = v15;
          v8 = v16[0];
        }

        *&v13.x = *&vaddq_f64(v7, v11);
        v13.y = vsubq_f64(v7, v11).f64[1];
        *&v8[1].x = *&x + 1;
        v8[*&x + 2] = v13;
        v10 += 16;
        ++*&x;
        --v6;
      }

      while (v6);
    }
  }
}

void closure #1 in Text.Layout.RunSlice.positions.getter(CGPoint **a1, uint64_t a2)
{
  v4 = CTLineGetRunAtIndex();
  PositionsPtr = CTRunGetPositionsPtr(v4);

  if (PositionsPtr)
  {
    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    if (v6 != v7)
    {
      if (v7 < v6)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (v6 >= v7)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *a1;
      v9 = *(a2 + 48);
      while (!__OFSUB__(v9, v6))
      {
        v8[v9 - v6] = PositionsPtr[v9];
        if (v7 == ++v9)
        {
          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v10 = CTLineGetRunAtIndex();
    v11.location = *(a2 + 48);
    v12 = *(a2 + 56);
    if (__OFSUB__(v12, v11.location))
    {
      goto LABEL_14;
    }

    if (!*a1)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v13 = v10;
    v11.length = v12 - v11.location;
    CTRunGetPositions(v10, v11, *a1);
  }
}

void Text.Layout.RunSlice.paths.getter()
{
  v1 = v0[1];
  v24[0] = *v0;
  v24[1] = v1;
  v2 = v0[3];
  v24[2] = v0[2];
  v25 = v2;
  v3 = CTLineGetRunAtIndex();
  v4 = CTRunGetFont();

  v5 = (*(&v25 + 1) - v25);
  if (*(&v25 + 1) < v25)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(*(&v25 + 1), v25))
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (v5 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v6 + 16) = v5;
    bzero((v6 + 32), 2 * v5);
    v23[0] = (v6 + 32);
    v23[1] = v5;
    closure #1 in Text.Layout.RunSlice.glyphs.getter(v23, v24);
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        v11 = *v8++;
        v12 = v4;
        PathForGlyph = CTFontCreatePathForGlyph(v12, v11, 0);
        if (!PathForGlyph)
        {
          break;
        }

        v14 = PathForGlyph;
        v15 = PathForGlyph;
        if (CGPathIsEmpty(v15))
        {

          v16 = 0;
          v17 = 6;
        }

        else
        {
          type metadata accessor for Path.PathBox();
          v16 = swift_allocObject();
          *(v16 + 32) = 0u;
          *(v16 + 48) = 0u;
          *(v16 + 64) = 0u;
          *(v16 + 80) = 0u;
          *(v16 + 96) = 0u;
          *(v16 + 112) = 0;
          *(v16 + 16) = 0;
          v17 = 5;
          *(v16 + 24) = v14;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
        }

        v22 = v9[2];
        v21 = v9[3];
        if (v22 >= v21 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v9);
        }

        v9[2] = v22 + 1;
        v10 = &v9[5 * v22];
        v10[4] = v16;
        v10[5] = 0;
        v10[6] = 0;
        v10[7] = 0;
        *(v10 + 64) = v17;
        if (!--v7)
        {
          goto LABEL_23;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v9);
      }

      v9[2] = v19 + 1;
      v20 = &v9[5 * v19];
      *(v20 + 2) = 0u;
      *(v20 + 3) = 0u;
      *(v20 + 64) = -1;
      --v7;
    }

    while (v7);
  }

LABEL_23:
}

void closure #1 in Text.Layout.RunSlice.glyphs.getter(CGGlyph **a1, uint64_t a2)
{
  v4 = CTLineGetRunAtIndex();
  GlyphsPtr = CTRunGetGlyphsPtr(v4);

  if (GlyphsPtr)
  {
    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    if (v6 != v7)
    {
      if (v7 < v6)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (v6 >= v7)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *a1;
      v9 = *(a2 + 48);
      while (!__OFSUB__(v9, v6))
      {
        v8[v9 - v6] = GlyphsPtr[v9];
        if (v7 == ++v9)
        {
          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v10 = CTLineGetRunAtIndex();
    v11.location = *(a2 + 48);
    v12 = *(a2 + 56);
    if (__OFSUB__(v12, v11.location))
    {
      goto LABEL_14;
    }

    if (!*a1)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v13 = v10;
    v11.length = v12 - v11.location;
    CTRunGetGlyphs(v10, v11, *a1);
  }
}

void type metadata accessor for _ContiguousArrayStorage<Path?>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Path?>)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for Path?, &type metadata for Path, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path?>);
    }
  }
}

uint64_t Path.addPath(_:transform:)(uint64_t a1, double *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = (v2 + 8);
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  if (v10 == 6 && (v7 | *v2 | v8 | v9) == 0)
  {
    result = Path.applying(_:)(a2, &v33);
    v18 = *&v33.c;
    *v2 = *&v33.a;
    *(v2 + 16) = v18;
    *(v2 + 32) = LOBYTE(v33.tx);
    return result;
  }

  result = *a1;
  v13 = *(a1 + 32);
  if (v13 > 2)
  {
    if (v13 == 5)
    {
      v31 = *(a2 + 1);
      v32 = *a2;
      v30 = *(a2 + 2);
      if (*(result + 16))
      {
        v29 = *v2;
        if (*(result + 16) == 1)
        {
        }

        else
        {
          v19 = one-time initialization token for bufferCallbacks;

          if (v19 != -1)
          {
            swift_once();
          }
        }

        v5 = v29;
LABEL_23:
        IsEmpty = RBPathIsEmpty();
        result = outlined destroy of Path(a1);
        if (IsEmpty)
        {
          return result;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (v13 == 6)
      {
        return result;
      }

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (!*(result + 24))
    {
      __break(1u);
      goto LABEL_45;
    }

    goto LABEL_23;
  }

  v30 = *(a2 + 2);
  v31 = *(a2 + 1);
  v32 = *a2;
  if (v13 >= 2)
  {
    v16 = *(result + 16);
    v17 = *(result + 24);
    v14 = *(result + 32);
    v15 = *(result + 40);
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = result;
    v17 = *(a1 + 8);
  }

  result = CGRectIsNull(*&v16);
  if (result)
  {
    return result;
  }

LABEL_24:
  if (v10 != 5)
  {
    v28 = v2;
    type metadata accessor for Path.PathBox();
    v21 = swift_allocObject();
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    *(v21 + 16) = 2;
    RBPathStorageInit();
    v24 = *(v21 + 16);

    if (v24 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v34 = v5;
    v35 = v7;
    v36 = v8;
    v37 = v9;
    v38 = v10;
    Path.append(to:)(v21 + 24);
    v2 = v28;
    goto LABEL_37;
  }

  v21 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Path.PathBox();
    v21 = swift_allocObject();
    *(v21 + 24) = 0u;
    result = v21 + 24;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    v22 = *(v5 + 16);
    *(v21 + 16) = v22;
    if (v22)
    {
      if (v22 == 1)
      {

        *(v21 + 24) = RBPathRetain();
        *(v21 + 32) = v23;
      }

      else
      {
        RBPathStorageInit();
      }

      goto LABEL_35;
    }

    v25 = *(v5 + 24);
    if (v25)
    {
      *result = v25;
      v26 = v25;
LABEL_35:

      goto LABEL_36;
    }

LABEL_45:
    __break(1u);
    return result;
  }

LABEL_36:

  v5 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  LOBYTE(v10) = 6;
LABEL_37:

  outlined consume of Path.Storage(v5, v7, v8, v9, v10);
  *v2 = v21;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  *(v2 + 32) = 5;
  if (*(v21 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *&v33.a = v32;
  *&v33.c = v31;
  *&v33.tx = v30;
  if (CGAffineTransformIsIdentity(&v33))
  {
    Path.append(to:)(v21 + 24);
  }

  else
  {
    v27 = *(a2 + 1);
    *&v33.a = *a2;
    *&v33.c = v27;
    *&v33.tx = *(a2 + 2);
    MEMORY[0x193AC35E0](v21 + 24, 17, 0, &v33);
    Path.append(to:)(v21 + 24);
    MEMORY[0x193AC35E0](v21 + 24, 16, 0, 0);
  }
}

double CGPoint.prepare(geometry:)(double a1)
{
  if (one-time initialization token for root != -1)
  {
    swift_once();
  }

  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 24);
  v6 = *(Value + 32);
  v7 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = v6 - (*v8 - v4);
  *&v14 = v2;
  *(&v14 + 1) = v3;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v7 - (v10 - v5);
  specialized ApplyViewTransform.convert(to:transform:)(&static CoordinateSpace.root, &v14);
  outlined destroy of ViewTransform(&v14);
  return a1;
}

__n128 protocol witness for Sequence.makeIterator() in conformance Text.Layout.Cluster@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout.Cluster(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xC0uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 16);
    if (v6 < *(v7 + 16))
    {
      v8 = (v7 + (v6 << 6));
      v9 = v8[2];
      v10 = v8[3];
      v11 = v8[5];
      *(result + 2) = v8[4];
      *(result + 3) = v11;
      *result = v9;
      *(result + 1) = v10;
      v12 = v8[2];
      v13 = v8[3];
      v14 = v8[5];
      *(result + 6) = v8[4];
      *(result + 7) = v14;
      *(result + 4) = v12;
      *(result + 5) = v13;
      outlined init with copy of Text.Layout.RunSlice(result, result + 128);
      return protocol witness for Collection.subscript.read in conformance Text.Layout.Cluster;
    }
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for Font.FontCache.Key(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.ResolvedProperties.Transition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 15))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 14);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void Text.Layout.RunSlice.typographicBounds.getter(float64x2_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  if (v3 == v4)
  {
    goto LABEL_4;
  }

  v11 = *(v1 + 16);
  v8 = CTLineGetRunAtIndex();
  if (!__OFSUB__(v4, v3))
  {
    v9 = v8;
    v10.location = v3;
    v10.length = v4 - v3;
    specialized Text.Layout.TypographicBounds.init(run:range:)(v8, v10, v12[0].f64);

    v6 = v12[1];
    v7 = v12[2];
    v5 = vaddq_f64(v11, v12[0]);
LABEL_4:
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    return;
  }

  __break(1u);
}

void protocol witness for Collection.subscript.read in conformance Text.Layout.Cluster(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  *(v1 + 128) = *(*a1 + 64);
  *(v1 + 144) = v2;
  v3 = *(v1 + 112);
  *(v1 + 160) = *(v1 + 96);
  *(v1 + 176) = v3;
  sub_18D36CCC8((v1 + 128));

  free(v1);
}

void protocol witness for Sequence.makeIterator() in conformance Text.Layout(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
}

uint64_t getEnumTagSinglePayload for Text.Layout.Line(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 44))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for Text.Layout.Line(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t TextLayoutFragmentRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void Text.Layout.init(fragment:)(void *a1@<X0>, uint64_t isEscapingClosureAtFileLocation@<X8>)
{
  type metadata accessor for TextLayoutFragmentRenderer();
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  v4 = a1;
  v5 = [v4 textLineFragments];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextLineFragment);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_21:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    v8 = 0;
    v10 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v32 = *(v10 + 2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v8);
    *isEscapingClosureAtFileLocation = v10;
    *(isEscapingClosureAtFileLocation + 8) = 0;
    *(isEscapingClosureAtFileLocation + 16) = v32;
    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v33 = v4;
    v34 = isEscapingClosureAtFileLocation;
    v8 = 0;
    v9 = 0;
    v35 = v39;
    v10 = MEMORY[0x1E69E7CC0];
    v36 = v7;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193AC03C0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      [v11 typographicBounds];
      v14 = v13;
      v16 = v15;
      [v12 glyphOrigin];
      v18 = v17;
      v20 = v19;
      v21 = _NSTextLineFragmentGetCTLine(v12);
      if (v21)
      {
        v4 = v21;
        v22 = _NSTextLineFragmentGetOverridesHandler(v12);
        if (v22)
        {
          v23 = v22;
          v24 = swift_allocObject();
          *(v24 + 16) = v23;

          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v8);
          v25 = swift_allocObject();
          v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned RBDrawingState, @unowned Int) -> ();
          *(v25 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned RBDrawingState, @unowned Int) -> ();
          *(v25 + 24) = v24;
          v39[2] = partial apply for thunk for @callee_guaranteed (@unowned Int, @unowned UnsafeMutablePointer<CFRange>) -> (@unowned Unmanaged<CFDictionaryRef>?);
          v39[3] = v25;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v39[0] = thunk for @escaping @callee_guaranteed (@unowned Int, @unowned UnsafeMutablePointer<CFRange>) -> (@unowned Unmanaged<CFDictionaryRef>?);
          v39[1] = &block_descriptor_23;
          v26 = _Block_copy(aBlock);

          CopyWithAttributeOverrides = CTLineCreateCopyWithAttributeOverrides();
          _Block_release(v26);

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            goto LABEL_21;
          }

          v4 = CopyWithAttributeOverrides;
        }

        v28 = v4;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v30 = *(v10 + 2);
        v29 = *(v10 + 3);
        if (v30 >= v29 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v10);
        }

        *(v10 + 2) = v30 + 1;
        v31 = &v10[48 * v30];
        *(v31 + 4) = v4;
        *(v31 + 5) = v37;
        v31[48] = 0;
        *(v31 + 7) = v14 + v18;
        *(v31 + 8) = v16 + v20;
        *(v31 + 18) = 0;
        v7 = v36;
      }

      else
      {
      }

      if (v7 == ++v9)
      {

        v4 = v33;
        isEscapingClosureAtFileLocation = v34;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

uint64_t sub_18D36D26C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for Path(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t Path.offsetBy(dx:dy:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  if (a2 == 0.0 && a3 == 0.0)
  {
    v9 = *(v3 + 16);
    v5 = *(v3 + 32);
    *&v13.a = *v3;
    v10 = *&v13.a;
    *&v13.c = v9;
    LOBYTE(v13.tx) = *(v3 + 32);
    result = outlined init with copy of Path.Storage(&v13, v11);
    v8 = v9;
    v7 = v10;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v13, a2, a3);
    result = Path.applying(_:)(&v13.a, v11);
    v7 = v11[0];
    v8 = v11[1];
    v5 = v12;
  }

  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v5;
  return result;
}

uint64_t static Path.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return specialized static Path.Storage.== infix(_:_:)(v7, v5) & 1;
}

uint64_t @objc closure #4 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks(uint64_t a1, uint64_t a2)
{

  v4 = MEMORY[0x193AC3620](a1 + 24, a2 + 24);

  return v4;
}

void closure #1 in ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(void *a1, double *a2)
{
  v3 = [a1 textLineFragments];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextLineFragment);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = *a2;
      [v7 typographicBounds];
      MaxY = CGRectGetMaxY(v12);

      if (v9 > MaxY)
      {
        v11 = v9;
      }

      else
      {
        v11 = MaxY;
      }

      *a2 = v11;
    }

    while (v5 != v6);
    goto LABEL_13;
  }

  __break(1u);
}

void Color.Resolved.init(colorSpace:red:green:blue:opacity:)(_BYTE *a1, float a2, float a3, float a4)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      if (a2 <= 0.0)
      {
        v4 = -a2;
      }

      else
      {
        v4 = a2;
      }

      if (v4 > 0.04045 && v4 != 1.0)
      {
        v5 = a3;
        v6 = a4;
        powf((v4 * 0.94787) + 0.052133, 2.4);
        a3 = v5;
        a4 = v6;
      }

      if (a3 <= 0.0)
      {
        v13 = -a3;
      }

      else
      {
        v13 = a3;
      }

      if (v13 > 0.04045 && v13 != 1.0)
      {
        v14 = a4;
        powf((v13 * 0.94787) + 0.052133, 2.4);
        a4 = v14;
      }

      if (a4 <= 0.0)
      {
        v15 = -a4;
      }

      else
      {
        v15 = a4;
      }

      if (v15 > 0.04045 && v15 != 1.0)
      {
        powf((v15 * 0.94787) + 0.052133, 2.4);
      }
    }
  }

  else
  {
    if (a2 <= 0.0)
    {
      v7 = -a2;
    }

    else
    {
      v7 = a2;
    }

    if (v7 > 0.04045 && v7 != 1.0)
    {
      v8 = a3;
      v9 = a4;
      powf((v7 * 0.94787) + 0.052133, 2.4);
      a3 = v8;
      a4 = v9;
    }

    if (a3 <= 0.0)
    {
      v10 = -a3;
    }

    else
    {
      v10 = a3;
    }

    if (v10 > 0.04045 && v10 != 1.0)
    {
      v11 = a4;
      powf((v10 * 0.94787) + 0.052133, 2.4);
      a4 = v11;
    }

    if (a4 <= 0.0)
    {
      v12 = -a4;
    }

    else
    {
      v12 = a4;
    }

    if (v12 > 0.04045 && v12 != 1.0)
    {
      powf((v12 * 0.94787) + 0.052133, 2.4);
    }
  }
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, void *a3, double a4)
{
  v5 = v4;
  if (*(v4 + 141))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v24 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (static Semantics.forced < v24)
  {
LABEL_29:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    outlined assign with copy of _AnyAnimatableData(a2, v4 + 32);
    swift_endAccess();
    goto LABEL_19;
  }

LABEL_2:
  v10 = a4 - *(v4 + 72);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 160);

  v31[0] = v11;
  v31[1] = AGCreateWeakAttribute();
  v32 = 0;
  v33 = v12;
  v13 = *(v4 + 168);
  if (v13)
  {
    v14 = *(v4 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v16 = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    v30[3] = v17;
    v30[0] = v13;
    v30[1] = v14;
    specialized Dictionary.subscript.setter(v30, v16);
  }

  swift_beginAccess();
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);
  swift_beginAccess();
  outlined init with copy of _AnyAnimatableData((v4 + 32), v30);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, v30);

  outlined destroy of _AnyAnimatableData(v30);
  *(v4 + 160) = 0;
  outlined init with copy of _AnyAnimatableData((v4 + 32), v30);
  v20 = *(*a1 + 136);
  v21 = lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();

  LOBYTE(v21) = v20(v22, v30, v31, &type metadata for _AnyAnimatableData, v21, v10);

  outlined destroy of _AnyAnimatableData(v30);
  if (v21)
  {
    *(v5 + 24) = v31[0];

    *(v5 + 16) = a1;
  }

  else
  {

    outlined init with copy of _AnyAnimatableData((v5 + 32), v30);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), v30, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of _AnyAnimatableData(v30);
  }

  swift_beginAccess();
  v23 = *(v5 + 32);
  if (v23 == *a2)
  {
    (*(v23 + 96))(v5 + 40, a2 + 1);
  }

  else if (v23 == type metadata accessor for ZeroVTable())
  {
    outlined destroy of _AnyAnimatableData(v5 + 32);
    outlined init with copy of _AnyAnimatableData(a2, (v5 + 32));
  }

  swift_endAccess();
  *(v5 + 88) = a4;
LABEL_19:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v26 & 1) == 0)
  {
    v27 = 0.0;
    if (*&result > 0.0)
    {
      v28 = log2(*&result * 240.0);
      v27 = exp2(floor(v28 + 0.01)) * 0.00416666667;
    }

    if (v27 >= *(v5 + 80))
    {
      v27 = *(v5 + 80);
    }

    *(v5 + 80) = v27;
    if (v27 >= 0.0166666667)
    {
      *&result = 0.0;
      v29 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 136);
        v29 = *(v5 + 140);
      }

      else
      {
        v29 = 0;
      }
    }

    *(v5 + 136) = result;
    *(v5 + 140) = v29;
  }

  return result;
}

uint64_t DefaultAnimation.shouldMerge<A>(previous:value:time:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for base != -1)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
    swift_once();
    a1 = v9;
    a2 = v10;
    a3 = v11;
  }

  v7 = static DefaultAnimation.base;

  return Animation.shouldMerge<A>(previous:value:time:context:)(a1, a2, a3, v7, a4, a5);
}

uint64_t DefaultAnimation.velocity<A>(value:time:context:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (one-time initialization token for base != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v12[0] = v6;
  v12[1] = v7;
  v13 = v8;
  v14 = v9;
  return Animation.velocity<A>(value:time:context:)(a1, v12, static DefaultAnimation.base, a3, a4);
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, void *a3)
{
  if ((*(v3 + 160) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 152);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    outlined init with copy of _AnyAnimatableData(a3, v19);
    v8 = *(v3 + 152);
    v18[0] = v6;
    v18[1] = a2;
    v20 = *(v3 + 168);
    v21 = v8;
    outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(v18, v17);
    swift_beginAccess();
    v9 = *(v3 + 184);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 184) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      *(v3 + 184) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[10 * v12];
    v13[2] = v17[0];
    v14 = v17[1];
    v15 = v17[2];
    v16 = v17[4];
    v13[5] = v17[3];
    v13[6] = v16;
    v13[3] = v14;
    v13[4] = v15;
    *(v3 + 184) = v9;
    swift_endAccess();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];

    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v18, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

uint64_t View.fontDesign(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.fontDesign(_:), v5, a2);
}

uint64_t _s7SwiftUI10NamedImageO5CacheC13releaseImages33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLyyFyAE4DataAGLLVzYuYTXEfU_(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 + 64;

  result = _HashTable.startBucket.getter();
  v4 = *(v1 + 36);
  v5 = 1 << *(v1 + 32);
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v29 = v5;
  v24 = result;
  if (result == v5)
  {
LABEL_2:
    v6 = v39;
    v7 = v38;
    v8 = v37;

    outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v24, v4, v6);
    outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v29, v4, v7);
    return outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v29, v4, v8);
  }

  v25 = v1 + 72;
  v9 = result;
  v10 = v1;
  v27 = v1 + 64;
  v28 = v1;
  while ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v9;
    v9 = 1 << *(v1 + 32);
    if (v11 >= v9)
    {
      break;
    }

    v12 = v11 >> 6;
    v13 = *(v2 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if ((v13 & (1 << v11)) == 0)
    {
      goto LABEL_35;
    }

    if (*(v1 + 36) != v4)
    {
      goto LABEL_36;
    }

    v15 = v13 & (-2 << (v11 & 0x3F));
    if (v15)
    {
      v9 = __clz(__rbit64(v15)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v12 << 6;
      v17 = v12 + 1;
      v18 = (v25 + 8 * v12);
      while (v17 < (v9 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          v9 = __clz(__rbit64(v19)) + v16;
          break;
        }
      }
    }

    v37 = 0;
    if (v11 >= 1 << *(v10 + 32))
    {
      goto LABEL_37;
    }

    if ((*(v10 + 8 * v12 + 64) & v14) == 0)
    {
      goto LABEL_38;
    }

    if (*(v10 + 36) != v4)
    {
      goto LABEL_39;
    }

    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(*(v10 + 56) + 96 * v11, &v35, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for NamedImage.VectorInfo?);
    outlined init with copy of NamedImage.WeakOrStrongImageContents(&v35, &v32);
    if (v34 != 1)
    {
      v21 = v32;
      v22 = v33;
      switch(v33)
      {
        case 3u:
          swift_weakInit();
          swift_weakAssign();
          v23 = 2;
          break;
        case 1u:
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v23 = 1;
          break;
        case 0u:
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v23 = 0;
          break;
        default:
          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v4, 0);
          outlined consume of GraphicsImage.Contents(v21, v22);
LABEL_33:
          v2 = v27;
          v1 = v28;
          goto LABEL_5;
      }

      v31 = v23;
      outlined init with take of GraphicsImage.WeakContents(&v30, &v32);
      outlined destroy of NamedImage.WeakOrStrongImageContents(&v35);
      outlined init with copy of GraphicsImage.WeakContents(&v32, &v35);
      v36 = 1;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v30 = v10;
        result = specialized _NativeDictionary.copy()();
        v10 = v30;
      }

      if (v11 >= 1 << *(v10 + 32))
      {
        goto LABEL_40;
      }

      if ((*(v10 + 8 * v12 + 64) & v14) == 0)
      {
        goto LABEL_41;
      }

      if (*(v10 + 36) != v4)
      {
        goto LABEL_42;
      }

      outlined assign with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(&v35, *(v10 + 56) + 96 * v11);
      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v4, 0);
      outlined consume of GraphicsImage.Contents(v21, v22);
      outlined destroy of GraphicsImage.WeakContents(&v32);
      *(a1 + 8) = v10;
      goto LABEL_33;
    }

    outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v4, 0);
    outlined destroy of NamedImage.WeakOrStrongImageContents(&v32);
LABEL_5:
    result = _sypSgWOhTm_9(&v35, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    if (v9 == v29)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_35:
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
  return result;
}

double ContainerShapeContext.convert(_:to:)(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v11 = *(a1 + 6);
  v12 = *(a1 + 7);
  v13 = *(a1 + 8);
  v14 = *(a1 + 9);
  v15 = *v5;
  if (static WeakAttribute.== infix(_:_:)())
  {
    type metadata accessor for CGPoint(0);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v17 = *WeakValue;
      v18 = AGGraphGetWeakValue();
      if (v18)
      {
        return v17 - *v18 + a2;
      }
    }
  }

  v39[0] = v15;
  v40 = 1;
  specialized static Update.begin()();
  *v38 = a2;
  *&v38[1] = a3;
  *&v38[2] = a4;
  *&v38[3] = a5;
  v30 = *a1;
  v31 = *(a1 + 2);
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = *(a1 + 5);
  v37 = *(a1 + 12);
  v20 = GeometryProxy.placementContext.getter(v29);
  MEMORY[0x1EEE9AC00](v20);
  v27[2] = v38;
  v27[3] = v39;
  v28 = v21;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(partial apply for closure #1 in GeometryProxy.rect(_:in:), v27, v23, v24, v25, v22 | (v21 << 32));
  v19 = *v38;
  static Update.end()();
  outlined destroy of CoordinateSpace(v39);
  return v19;
}

uint64_t partial apply for closure #1 in static ContainerShapeType.path(in:proxy:shape:context:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u64[0] = *(v4 + 80);
  a2.n128_u64[0] = *(v4 + 88);
  a3.n128_u64[0] = *(v4 + 96);
  a4.n128_u64[0] = *(v4 + 104);
  return closure #1 in static ContainerShapeType.path(in:proxy:shape:context:)(*(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), a1, a2, a3, a4, *(v4 + 64), *(v4 + 72), *(v4 + 112), *(v4 + 16), *(v4 + 24));
}

double protocol witness for static AnyContainerShapeType.path(in:proxy:shape:context:) in conformance ContainerShapeType<A>@<D0>(uint64_t a1@<X8>)
{
  static ContainerShapeType.path(in:proxy:shape:context:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t specialized GraphicsContext.drawLayer(flags:content:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v17 = HIDWORD(a5);
  v8 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v9 = swift_allocObject();
  *(v9 + 32) = xmmword_18DD85500;
  *(v9 + 48) = 1065353216;
  *(v9 + 56) = 0x7FF8000000000000;
  v10 = *(a2 + 16);
  v11 = *(v10 + 64);
  if (v11 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v9 + 16) = v10;
  }

  else
  {
    v16 = RBDrawingStateGetDisplayList();
    v12 = *(a2 + 32);
    v13 = v12;
    v14 = *(a2 + 40);
    if (v12 == 1)
    {
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
    }

    v19 = v13;
    v20 = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v12);
    *(v9 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, &v19);
  }

  *(v9 + 24) = v8;
  *(v9 + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(v9 + 48) = *(a2 + 48);
    *(v9 + 52) = *(a2 + 52);
  }

  v21 = v9;
  v19 = a4;
  LOWORD(v20) = v5;
  HIDWORD(v20) = v17;

  DisplayList.GraphicsRenderer.render(list:in:)(&v19, &v21);

  RBDrawingStateDrawLayer();
}

{
  return sub_18D36EE10(a1, a2, a3, a4, a5);
}

uint64_t outlined init with copy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, type metadata accessor for DisplayList.ArchiveIDs, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GraphicsContext.setTransition(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2) | ((*(a1 + 6) | (*(a1 + 14) << 16)) << 32);
  GraphicsContext.copyOnWrite()();
  if ((v2 & 0xFF000000000000) == 0x2000000000000)
  {
    v5 = [objc_opt_self() defaultTransition];
    RBDrawingStateSetTransition();
  }

  else
  {
    v5 = ContentTransition.rbTransition.getter();
    RBDrawingStateSetTransition();
    if ((v2 & 0xFF0000000000) == 0 && (v1 & 0xC100000000) == 0x4100000000)
    {
      isa = Float._bridgeToObjectiveC()().super.super.isa;
      RBDrawingStateSetAttribute();
    }
  }
}

void protocol witness for InsettableShape.inset(by:) in conformance RoundedRectangle(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
}

uint64_t outlined consume of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined consume of Path.Storage(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t static ContainerShapeType.path(in:proxy:shape:context:)()
{
  AGWeakAttributeGetAttribute();
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DisplayList.Index.updateArchive(entering:)(Swift::Bool entering)
{
  if (entering)
  {
    *(v1 + 8) = *v1;
    *v1 = 0;
    v2 = *(v1 + 16);
    if ((~v2 & 6) == 0)
    {
      return;
    }

    v3 = v2 | 6;
  }

  else
  {
    *v1 = *(v1 + 8);
    *(v1 + 8) = 0;
    v4 = *(v1 + 16);
    if ((~v4 & 9) == 0)
    {
      return;
    }

    v3 = v4 | 9;
  }

  *(v1 + 16) = v3;
}

void ContentTransition.NumericTextConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  if (*(v0 + 4))
  {
    MEMORY[0x193AC11A0](1);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
    if (v2 != 2)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  MEMORY[0x193AC11A0](0);
  Hasher._combine(_:)(v1 & 1);
  if (v2 == 2)
  {
    goto LABEL_8;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v9 = v2 & 1;
LABEL_9:
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

uint64_t destroy for LinkDestination.Configuration(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

unint64_t LinearGradient._Paint.init(from:)@<X0>(unint64_t result@<X0>, void (*a2)(void *)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v6 = result;
  if (one-time initialization token for default != -1)
  {
    v64 = a3;
    result = swift_once();
    a3 = v64;
  }

  v8 = static ResolvedGradient.ColorSpace.default;
  v9 = 1;
  LOBYTE(v69) = 1;
  v82 = 1;
  v10 = v6[1];
  v11 = v6[2];
  if (v10 >= v11)
  {
    v17 = 0;
    v18 = 0;
    v13 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_6:
    v6[3] = 0;
    *a4 = v12;
    a4[8] = v8;
    *(a4 + 9) = v83;
    a4[11] = v84;
    *(a4 + 3) = v17;
    a4[16] = v9;
    *(a4 + 3) = v13;
    *(a4 + 4) = v14;
    *(a4 + 5) = v15;
    *(a4 + 6) = v16;
    a4[56] = v18;
    return result;
  }

  v66 = 0;
  v67 = static ResolvedGradient.ColorSpace.default;
  v65 = a3;
  v68 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    result = v6[3];
    if (result)
    {
      v19 = v6[4];
      if (v10 < v19)
      {
        goto LABEL_15;
      }

      if (v19 < v10)
      {
        goto LABEL_87;
      }

      v6[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v4)
    {
      goto LABEL_88;
    }

    if (result <= 7)
    {
      goto LABEL_87;
    }

LABEL_15:
    v20 = result >> 3;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v20 == 3)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_87;
      }

      v48 = v6[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
      }

      v50 = *(v48 + 2);
      v49 = *(v48 + 3);
      if (v50 >= v49 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
      }

      *(v48 + 2) = v50 + 1;
      *&v48[8 * v50 + 32] = v11;
      v6[5] = v48;
      v51 = ProtobufDecoder.decodeVarint()();
      if (v4)
      {
        goto LABEL_88;
      }

      if (v51 < 0)
      {
        goto LABEL_102;
      }

      v52 = v6[1] + v51;
      if (v11 < v52)
      {
        goto LABEL_87;
      }

      v6[2] = v52;
      a2(v6);
      v55 = v6[5];
      if (!*(v55 + 16))
      {
        goto LABEL_104;
      }

      v56 = v53;
      v57 = v54;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v58 = *(v55 + 16);
        if (!v58)
        {
          goto LABEL_86;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
        v55 = result;
        v58 = *(result + 16);
        if (!v58)
        {
LABEL_86:
          __break(1u);
LABEL_87:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_88:
          v60 = v67;
LABEL_89:
          v69 = v12;
          v70 = v60;
          v71 = v83;
          v72 = v84;
          v73 = v66;
          v74 = v82;
          *v75 = *v81;
          *&v75[3] = *&v81[3];
          v76 = v13;
          v77 = v14;
          v78 = v15;
          v79 = v16;
          v80 = v68;
          return v65(&v69);
        }
      }

      v59 = v58 - 1;
      v11 = *(v55 + 8 * v59 + 32);
      *(v55 + 16) = v59;
      v6[5] = v55;
      v6[2] = v11;
      v15 = v56;
      v16 = v57;
    }

    else
    {
      if (v20 != 4)
      {
LABEL_42:
        v36 = result & 7;
        if (v36 > 1)
        {
          if (v36 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v4)
            {
              goto LABEL_88;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_110;
            }

            v37 = v6[1] + result;
            if (v11 < v37)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v36 != 5)
            {
              goto LABEL_87;
            }

            v37 = v6[1] + 4;
            if (v11 < v37)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v4)
            {
              goto LABEL_88;
            }

            goto LABEL_8;
          }

          if (v36 != 1)
          {
            goto LABEL_87;
          }

          v37 = v6[1] + 8;
          if (v11 < v37)
          {
            goto LABEL_87;
          }
        }

        v6[1] = v37;
        goto LABEL_8;
      }

      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_87;
        }

        v33 = ProtobufDecoder.decodeVarint()();
        if (v4)
        {
          goto LABEL_88;
        }

        if (v33 < 0)
        {
          goto LABEL_109;
        }

        v34 = v6[1] + v33;
        if (v11 < v34)
        {
          goto LABEL_87;
        }

        v6[3] = 32;
        v6[4] = v34;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v4)
      {
        goto LABEL_88;
      }

      v35 = result == 1;
      if (result == 2)
      {
        v35 = 2;
      }

      v68 = v35;
    }

LABEL_8:
    v10 = v6[1];
    if (v10 >= v11)
    {
      v9 = v82;
      v8 = v67;
      v18 = v68;
      v17 = v66;
      goto LABEL_6;
    }
  }

  if (v20 == 1)
  {
    if ((result & 7) != 2)
    {
      goto LABEL_87;
    }

    v38 = v6[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    *&v38[8 * v40 + 32] = v11;
    v6[5] = v38;
    v41 = ProtobufDecoder.decodeVarint()();
    if (v4)
    {
      goto LABEL_88;
    }

    if (v41 < 0)
    {
      goto LABEL_103;
    }

    v42 = v6[1] + v41;
    if (v11 < v42)
    {
      goto LABEL_87;
    }

    v6[2] = v42;
    ResolvedGradient.init(from:)(v6, &v69);
    v43 = v6[5];
    if (!*(v43 + 2))
    {
      goto LABEL_105;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v44 = *(v43 + 2);
      if (!v44)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
      v44 = *(v43 + 2);
      if (!v44)
      {
        goto LABEL_108;
      }
    }

    v45 = v44 - 1;
    v11 = *&v43[8 * v45 + 32];
    *(v43 + 2) = v45;
    v6[5] = v43;
    v6[2] = v11;
    v46 = v69;
    v66 = v73;
    v67 = v70;
    v47 = v74;

    v82 = v47;
    v12 = v46;
    goto LABEL_8;
  }

  if (v20 != 2)
  {
    goto LABEL_42;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_87;
  }

  v21 = v6[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  *&v21[8 * v23 + 32] = v11;
  v6[5] = v21;
  v24 = ProtobufDecoder.decodeVarint()();
  if (v4)
  {
    goto LABEL_88;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = v6[1] + v24;
    if (v11 < v25)
    {
      goto LABEL_87;
    }

    v6[2] = v25;
    a2(v6);
    v28 = v6[5];
    if (!*(v28 + 16))
    {
      goto LABEL_106;
    }

    v29 = v26;
    v30 = v27;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v31 = *(v28 + 16);
      if (!v31)
      {
        goto LABEL_107;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
      v28 = result;
      v31 = *(result + 16);
      if (!v31)
      {
        goto LABEL_107;
      }
    }

    v32 = v31 - 1;
    v11 = *(v28 + 8 * v32 + 32);
    *(v28 + 16) = v32;
    v6[5] = v28;
    v6[2] = v11;
    v13 = v29;
    v14 = v30;
    goto LABEL_8;
  }

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
LABEL_110:
  __break(1u);
  __break(1u);
LABEL_111:
  __break(1u);
  do
  {
    __break(1u);
    a4 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    v60 = v67;
    v61 = *(a4 + 2);
    if (v61)
    {
      goto LABEL_100;
    }

    __break(1u);
    a4 = v6[5];
    if (!*(a4 + 2))
    {
      goto LABEL_111;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v60 = v67;
    v61 = *(a4 + 2);
    if (v61)
    {
      goto LABEL_100;
    }

    __break(1u);
    a4 = v6[5];
  }

  while (!*(a4 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    a4 = result;
  }

  v60 = v67;
  v61 = *(a4 + 2);
  if (v61)
  {
LABEL_100:
    v62 = v61 - 1;
    v63 = *&a4[8 * v62 + 32];
    *(a4 + 2) = v62;
    v6[5] = a4;
    v6[2] = v63;
    goto LABEL_89;
  }

  __break(1u);
  return result;
}

uint64_t closure #7 in DisplayList.Content.Value.init(from:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 < v6)
  {
    v49 = a2;
    v7 = 0;
    v50 = static RasterizationOptions.Flags.defaultFlags;
    v54 = 3;
    v55 = 0;
    v8 = -1;
    v9 = 0;
    v10 = 0;
    v11 = 3;
    while (1)
    {
      v13 = *(a1 + 24);
      if (v13)
      {
        v14 = *(a1 + 32);
        if (v5 < v14)
        {
          goto LABEL_15;
        }

        if (v14 < v5)
        {
          goto LABEL_75;
        }

        *(a1 + 24) = 0;
      }

      v13 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return swift_unknownObjectRelease();
      }

      if (v13 < 8)
      {
        goto LABEL_75;
      }

LABEL_15:
      v15 = v13 >> 3;
      if (v13 >> 3 == 3)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_75;
        }

        v11 = v2;
        v34 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        if (v36 >= v35 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
        }

        *(v34 + 2) = v36 + 1;
        *&v34[8 * v36 + 32] = v6;
        *(a1 + 40) = v34;
        v37 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        if (v37 < 0)
        {
          goto LABEL_88;
        }

        v38 = *(a1 + 8) + v37;
        if (v6 < v38)
        {
          goto LABEL_75;
        }

        *(a1 + 16) = v38;
        RasterizationOptions.init(from:)(a1, &v51);
        v39 = *(a1 + 40);
        if (!*(v39 + 2))
        {
          goto LABEL_90;
        }

        v11 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = *(v39 + 2);
          if (!v40)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
          v40 = *(v39 + 2);
          if (!v40)
          {
            goto LABEL_93;
          }
        }

        v41 = v40 - 1;
        v6 = *&v39[8 * v41 + 32];
        *(v39 + 2) = v41;
        *(a1 + 40) = v39;
        *(a1 + 16) = v6;
        v8 = v51;
        v54 = BYTE5(v51);
        v55 = BYTE4(v51);
        v50 = v52;
        v11 = v53;
        goto LABEL_8;
      }

      if (v15 == 2)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_75;
        }

        v24 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        if (v26 >= v25 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 2) = v26 + 1;
        *&v24[8 * v26 + 32] = v6;
        *(a1 + 40) = v24;
        v27 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        if (v27 < 0)
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          __break(1u);
LABEL_95:
          __break(1u);
          do
          {
            __break(1u);
            v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            v46 = *(v11 + 16);
            if (v46)
            {
              goto LABEL_85;
            }

            __break(1u);
            v11 = *(a1 + 40);
            if (!*(v11 + 16))
            {
              goto LABEL_95;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v46 = *(v11 + 16);
              if (v46)
              {
                goto LABEL_85;
              }
            }

            else
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
              v46 = *(v11 + 16);
              if (v46)
              {
                goto LABEL_85;
              }
            }

            __break(1u);
            v11 = *(a1 + 40);
          }

          while (!*(v11 + 16));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v46 = *(v11 + 16);
            if (v46)
            {
LABEL_85:
              v47 = v46 - 1;
              v48 = *(v11 + 8 * v47 + 32);
              *(v11 + 16) = v47;
              result = swift_unknownObjectRelease();
              *(a1 + 40) = v11;
              *(a1 + 16) = v48;
              return result;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            v11 = result;
            v46 = *(result + 16);
            if (v46)
            {
              goto LABEL_85;
            }
          }

          __break(1u);
          return result;
        }

        v28 = *(a1 + 8) + v27;
        if (v6 < v28)
        {
          goto LABEL_75;
        }

        *(a1 + 16) = v28;
        specialized CGPoint.init(from:)(a1);
        v31 = *(a1 + 40);
        if (!*(v31 + 2))
        {
          goto LABEL_89;
        }

        v9 = v29;
        v10 = v30;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = *(v31 + 2);
          if (!v32)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
          v32 = *(v31 + 2);
          if (!v32)
          {
            goto LABEL_92;
          }
        }

        v33 = v32 - 1;
        v6 = *&v31[8 * v33 + 32];
        *(v31 + 2) = v33;
        *(a1 + 40) = v31;
        *(a1 + 16) = v6;
        goto LABEL_8;
      }

      if (v15 == 1)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_75;
        }

        v16 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        *(v16 + 2) = v18 + 1;
        *&v16[8 * v18 + 32] = v6;
        *(a1 + 40) = v16;
        v19 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        if (v19 < 0)
        {
          goto LABEL_87;
        }

        v20 = *(a1 + 8) + v19;
        if (v6 < v20)
        {
          goto LABEL_75;
        }

        *(a1 + 16) = v20;
        CodableRBDisplayListContents.init(from:)(a1, &v51);
        v21 = *(a1 + 40);
        if (!*(v21 + 2))
        {
          goto LABEL_91;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = *(v21 + 2);
          if (!v22)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v22 = *(v21 + 2);
          if (!v22)
          {
LABEL_74:
            __break(1u);
LABEL_75:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            return swift_unknownObjectRelease();
          }
        }

        v23 = v22 - 1;
        v6 = *&v21[8 * v23 + 32];
        *(v21 + 2) = v23;
        swift_unknownObjectRelease();
        *(a1 + 40) = v21;
        *(a1 + 16) = v6;
        v7 = v51;
        goto LABEL_8;
      }

      v42 = v13 & 7;
      if (v42 > 1)
      {
        if (v42 == 2)
        {
          v44 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return swift_unknownObjectRelease();
          }

          if (v44 < 0)
          {
            goto LABEL_94;
          }

          v43 = *(a1 + 8) + v44;
          if (v6 < v43)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v42 != 5)
          {
            goto LABEL_75;
          }

          v43 = *(a1 + 8) + 4;
          if (v6 < v43)
          {
            goto LABEL_75;
          }
        }
      }

      else
      {
        if ((v13 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return swift_unknownObjectRelease();
          }

          goto LABEL_8;
        }

        if (v42 != 1)
        {
          goto LABEL_75;
        }

        v43 = *(a1 + 8) + 8;
        if (v6 < v43)
        {
          goto LABEL_75;
        }
      }

      *(a1 + 8) = v43;
LABEL_8:
      v5 = *(a1 + 8);
      if (v5 >= v6)
      {
        *(a1 + 24) = 0;
        if (!v7)
        {
          goto LABEL_6;
        }

        result = swift_allocObject();
        *(result + 16) = v7;
        *(result + 24) = v9;
        *(result + 32) = v10;
        *(result + 40) = v8;
        v45 = v54;
        *(result + 44) = v55;
        *(result + 45) = v45;
        *(result + 48) = v50;
        *(result + 52) = v11;
        *v49 = result | 0xC000000000000000;
        return result;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_6:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_18D36FF94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t CodableRBDisplayListContents.init(from:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (v5 >= v6)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v7 = 0;
  do
  {
    result = *(a1 + 3);
    if (result)
    {
      v27 = *(a1 + 4);
      if (v5 < v27)
      {
        goto LABEL_16;
      }

      if (v27 < v5)
      {
        goto LABEL_40;
      }

      *(a1 + 3) = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_40;
    }

LABEL_16:
    v28 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      if ((result & 7) != 0)
      {
        if (v28 != 2)
        {
          goto LABEL_40;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        v29 = *(a1 + 1) + result;
        if (v6 < v29)
        {
          goto LABEL_40;
        }

        *(a1 + 3) = 8;
        *(a1 + 4) = v29;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = result;
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v28 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v30 = *(a1 + 1) + result;
          if (v6 < v30)
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v28 != 5)
          {
            goto LABEL_40;
          }

          v30 = *(a1 + 1) + 4;
          if (v6 < v30)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_38;
      }

      if ((result & 7) != 0)
      {
        if (v28 != 1)
        {
          goto LABEL_40;
        }

        v30 = *(a1 + 1) + 8;
        if (v6 < v30)
        {
          goto LABEL_40;
        }

LABEL_38:
        *(a1 + 1) = v30;
        goto LABEL_9;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }
    }

LABEL_9:
    v5 = *(a1 + 1);
  }

  while (v5 < v6);
  v6 = *(a1 + 2);
LABEL_4:
  *(a1 + 3) = 0;
  v8 = *(a1 + 6);
  v37[0] = *a1;
  v37[1] = v5;
  v37[2] = v6;
  v37[3] = 0;
  v38 = a1[2];
  v39 = v8;
  v9 = ProtobufDecoder.archiveReader.getter();
  if (!v9)
  {
    goto LABEL_40;
  }

  if (v7 >= *(v9 + 40))
  {

LABEL_40:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    return swift_willThrow();
  }

  v32 = a2;
  ArchiveReader.subscript.getter(v7);
  v11 = v10;
  v13 = v12;

  v14 = objc_opt_self();
  v35 = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v34 = a1[1];
  v16 = *(a1 + 4);
  v17 = *(a1 + 5);
  v18 = *(a1 + 6);
  v19 = type metadata accessor for RBDisplayListDecoderDelegate();
  v33 = *a1;
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder];
  *v21 = v33;
  *(v21 + 1) = v34;
  *(v21 + 4) = v16;
  *(v21 + 5) = v17;
  *(v21 + 6) = v18;
  v36.receiver = v20;
  v36.super_class = v19;
  v22 = v33;

  v23 = objc_msgSendSuper2(&v36, sel_init);
  v37[0] = 0;
  v24 = [v14 decodedObjectWithData:isa delegate:v23 error:v37];

  if (v24)
  {
    v25 = v37[0];
    result = outlined consume of Data._Representation(v11, v35);
    *v32 = v24;
  }

  else
  {
    v31 = v37[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return outlined consume of Data._Representation(v11, v35);
  }

  return result;
}

uint64_t ProtobufDecoder.archiveReader.getter()
{
  v1 = *(v0 + 48);
  if (one-time initialization token for readerKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchiveReader.readerKey);
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
  type metadata accessor for ArchiveReader();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RasterizationOptions.init(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  if (one-time initialization token for defaultFlags != -1)
  {
    result = swift_once();
  }

  v5 = static RasterizationOptions.Flags.defaultFlags;
  v6 = v3[1];
  v7 = v3[2];
  if (v6 >= v7)
  {
    v8 = 0;
    v9 = 3;
    v10 = -1;
    v11 = 3;
LABEL_6:
    v3[3] = 0;
    *a2 = v10;
    *(a2 + 4) = v8;
    *(a2 + 5) = v9;
    *(a2 + 8) = v5;
    *(a2 + 12) = v11;
    return result;
  }

  v8 = 0;
  v9 = 3;
  v10 = -1;
  v11 = 3;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v12 = v3[4];
      if (v6 < v12)
      {
        goto LABEL_15;
      }

      if (v12 < v6)
      {
        goto LABEL_86;
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
LABEL_86:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_15:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 <= 2)
    {
      if (v13 == 1)
      {
        if ((result & 7) != 0)
        {
          if (v14 != 2)
          {
            goto LABEL_86;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if (result < 0)
          {
            goto LABEL_92;
          }

          v19 = v3[1] + result;
          if (v7 < v19)
          {
            goto LABEL_86;
          }

          v3[3] = 8;
          v3[4] = v19;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if (result == 2)
        {
          v8 = 2;
        }

        else
        {
          v8 = result == 1;
        }

        goto LABEL_8;
      }

      if (v13 == 2)
      {
        if ((result & 7) != 0)
        {
          if (v14 != 2)
          {
            goto LABEL_86;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if (result < 0)
          {
            goto LABEL_91;
          }

          v16 = v3[1] + result;
          if (v7 < v16)
          {
            goto LABEL_86;
          }

          v3[3] = 16;
          v3[4] = v16;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((-(result & 1) ^ (result >> 1)) == (-(result & 1) ^ (result >> 1)))
        {
          v10 = -(result & 1) ^ (result >> 1);
        }

        goto LABEL_8;
      }

      goto LABEL_68;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      if ((result & 7) != 0)
      {
        if (v14 != 2)
        {
          goto LABEL_86;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if (result < 0)
        {
          goto LABEL_89;
        }

        v18 = v3[1] + result;
        if (v7 < v18)
        {
          goto LABEL_86;
        }

        v3[3] = 32;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((-(result & 1) ^ (result >> 1)) == (-(result & 1) ^ (result >> 1)))
      {
        v11 = -(result & 1) ^ (result >> 1);
      }

      goto LABEL_8;
    }

    if (v13 == 5)
    {
      if ((result & 7) != 0)
      {
        if (v14 != 2)
        {
          goto LABEL_86;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if (result < 0)
        {
          goto LABEL_90;
        }

        v15 = v3[1] + result;
        if (v7 < v15)
        {
          goto LABEL_86;
        }

        v3[3] = 40;
        v3[4] = v15;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if (result)
      {
        if (result == 1)
        {
          v9 = 1;
        }

        else if (result == 2)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_8;
    }

LABEL_68:
    if ((result & 7u) > 1uLL)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if (result < 0)
        {
          goto LABEL_93;
        }

        v20 = v3[1] + result;
        if (v7 < v20)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_86;
        }

        v20 = v3[1] + 4;
        if (v7 < v20)
        {
          goto LABEL_86;
        }
      }

      goto LABEL_7;
    }

    if ((result & 7) != 0)
    {
      if (v14 != 1)
      {
        goto LABEL_86;
      }

      v20 = v3[1] + 8;
      if (v7 < v20)
      {
        goto LABEL_86;
      }

LABEL_7:
      v3[1] = v20;
      goto LABEL_8;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

LABEL_8:
    v6 = v3[1];
    if (v6 >= v7)
    {
      goto LABEL_6;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_47:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v5 = result;
    goto LABEL_8;
  }

  if (v14 != 2)
  {
    goto LABEL_86;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1] + result;
    if (v7 < v17)
    {
      goto LABEL_86;
    }

    v3[3] = 24;
    v3[4] = v17;
    goto LABEL_47;
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

unint64_t ResolvedGradient.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  if (one-time initialization token for default != -1)
  {
    result = swift_once();
  }

  v5 = static ResolvedGradient.ColorSpace.default;
  v6 = 1;
  v37 = 1;
  v7 = v3[1];
  v8 = v3[2];
  if (v7 < v8)
  {
    v38 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v10 = v3[4];
        if (v7 < v10)
        {
          goto LABEL_13;
        }

        if (v10 < v7)
        {
          goto LABEL_73;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (result < 8)
      {
        goto LABEL_73;
      }

LABEL_13:
      v11 = result >> 3;
      if (result >> 3 == 3)
      {
        if ((result & 7) == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_84;
          }

          v26 = v3[1];
          if (v8 < v26 + result)
          {
            goto LABEL_73;
          }

          v3[3] = 29;
          v3[4] = v26 + result;
        }

        else
        {
          if ((result & 7) != 5)
          {
            goto LABEL_73;
          }

          v26 = v3[1];
        }

        if (v8 < (v26 + 1))
        {
          goto LABEL_73;
        }

        v38 = *v26;
        v3[1] = v26 + 1;
        v37 = 0;
      }

      else if (v11 == 2)
      {
        if ((result & 7) != 0)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_73;
          }

          v23 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if (v23 < 0)
          {
            goto LABEL_83;
          }

          v24 = v3[1] + v23;
          if (v8 < v24)
          {
LABEL_73:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
          }

          v3[3] = 16;
          v3[4] = v24;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (result == 2)
        {
          v25 = 2;
        }

        else
        {
          v25 = result == 1;
        }

        if (result <= 0xFF)
        {
          v5 = v25;
        }

        else
        {
          v5 = 0;
        }
      }

      else if (v11 == 1)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_76;
        }

        v12 = v3[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        if (v14 >= v13 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v14 + 1;
        *&v12[8 * v14 + 32] = v8;
        v3[5] = v12;
        v15 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v15 < 0)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          v32 = *(result + 16);
          if (!v32)
          {
            __break(1u);
            return result;
          }

          v30 = v32 - 1;
          v31 = *(result + 8 * v30 + 32);
          *(result + 16) = v30;
          v3[5] = result;
          v3[2] = v31;
        }

        v16 = v3[1] + v15;
        if (v8 < v16)
        {
LABEL_76:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
        }

        v3[2] = v16;
        ResolvedGradient.Stop.init(from:)(v3, &v35);
        v17 = v3[5];
        if (!*(v17 + 2))
        {
          goto LABEL_81;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(v17 + 2);
          if (!v18)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v18 = *(v17 + 2);
          if (!v18)
          {
            goto LABEL_82;
          }
        }

        v19 = v18 - 1;
        v8 = *&v17[8 * v19 + 32];
        *(v17 + 2) = v19;
        v3[5] = v17;
        v3[2] = v8;
        v33 = v35;
        *v34 = v36[0];
        *&v34[9] = *(v36 + 9);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v21 = *(v9 + 16);
        v20 = *(v9 + 24);
        if (v21 >= v20 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v21 + 1;
        v22 = (v9 + 48 * v21);
        *(v22 + 57) = *&v34[9];
        v22[2] = v33;
        v22[3] = *v34;
      }

      else
      {
        v27 = result & 7;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            v28 = v3[1] + result;
            if (v8 < v28)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v27 != 5)
            {
              goto LABEL_73;
            }

            v28 = v3[1] + 4;
            if (v8 < v28)
            {
              goto LABEL_73;
            }
          }

          goto LABEL_5;
        }

        if ((result & 7) != 0)
        {
          if (v27 != 1)
          {
            goto LABEL_73;
          }

          v28 = v3[1] + 8;
          if (v8 < v28)
          {
            goto LABEL_73;
          }

LABEL_5:
          v3[1] = v28;
          goto LABEL_6;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }
      }

LABEL_6:
      v7 = v3[1];
      if (v7 >= v8)
      {
        v6 = v37;
        v29 = v38;
        goto LABEL_72;
      }
    }
  }

  v29 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_72:
  v3[3] = 0;
  *a2 = v9;
  *(a2 + 8) = v5;
  *(a2 + 12) = v29;
  *(a2 + 16) = v6;
  return result;
}

unint64_t ResolvedGradient.Stop.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = 1;
  v45 = 1;
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = 0uLL;
  v9 = 0.0;
  v10 = 0;
  if (v6 < v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      result = v3[3];
      v43 = v8;
      if (result)
      {
        v14 = v3[4];
        if (v6 < v14)
        {
          goto LABEL_11;
        }

        if (v14 < v6)
        {
          goto LABEL_70;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v8 = v43;
      if (result <= 7)
      {
        goto LABEL_70;
      }

LABEL_11:
      v15 = result >> 3;
      if (result >> 3 == 3)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_70;
        }

        v29 = v3[5];
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
        *&v29[8 * v31 + 32] = v7;
        v3[5] = v29;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
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
LABEL_84:
          __break(1u);
          __break(1u);
          do
          {
            __break(1u);
            result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            a2 = result;
            v40 = *(result + 16);
            if (v40)
            {
              goto LABEL_76;
            }

            __break(1u);
            a2 = v3[5];
          }

          while (!*(a2 + 16));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v40 = *(a2 + 16);
            if (v40)
            {
LABEL_76:
              v41 = v40 - 1;
              v42 = *(a2 + 8 * v41 + 32);
              *(a2 + 16) = v41;
              v3[5] = a2;
              v3[2] = v42;
              return result;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            a2 = result;
            v40 = *(result + 16);
            if (v40)
            {
              goto LABEL_76;
            }
          }

          __break(1u);
          return result;
        }

        v32 = v3[1] + result;
        if (v7 < v32)
        {
          goto LABEL_70;
        }

        v3[2] = v32;
        BezierTimingFunction<>.init(from:)(v3, &v44);
        v33 = v3[5];
        if (!*(v33 + 16))
        {
          goto LABEL_80;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v34 = *(v33 + 16);
          if (!v34)
          {
            goto LABEL_82;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v33 = result;
          v34 = *(result + 16);
          if (!v34)
          {
            goto LABEL_82;
          }
        }

        v35 = v34 - 1;
        v7 = *(v33 + 8 * v35 + 32);
        *(v33 + 16) = v35;
        v3[5] = v33;
        v3[2] = v7;
        v8 = v44;
        v45 = 0;
      }

      else
      {
        if (v15 == 2)
        {
          v27 = result & 7;
          if (v27 != 5)
          {
            if (v27 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              v8 = v43;
              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_83;
              }

              v28 = v3[1];
              if (v7 < v28 + result)
              {
                goto LABEL_70;
              }

              v3[3] = 17;
              v3[4] = v28 + result;
            }

            else
            {
              if (v27 != 1)
              {
                goto LABEL_70;
              }

              v28 = v3[1];
            }

            if (v7 < (v28 + 1))
            {
              goto LABEL_70;
            }

            v9 = *v28;
            v3[1] = v28 + 1;
            goto LABEL_4;
          }

          v38 = v3[1];
          if (v7 < (v38 + 1))
          {
            goto LABEL_70;
          }

          v39 = *v38;
          v3[1] = v38 + 1;
          v9 = v39;
          goto LABEL_61;
        }

        if (v15 == 1)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_70;
          }

          v16 = v3[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v18 = *(v16 + 2);
          v17 = *(v16 + 3);
          if (v18 >= v17 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
          }

          *(v16 + 2) = v18 + 1;
          *&v16[8 * v18 + 32] = v7;
          v3[5] = v16;
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_78;
          }

          v19 = v3[1] + result;
          if (v7 < v19)
          {
LABEL_70:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            return swift_willThrow();
          }

          v3[2] = v19;
          specialized Color.Resolved.init(from:)(v3);
          v24 = v3[5];
          if (!*(v24 + 16))
          {
            goto LABEL_79;
          }

          v10 = v20;
          v11 = v21;
          v12 = v22;
          v13 = v23;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
            v24 = result;
          }

          v25 = *(v24 + 16);
          v8 = v43;
          if (!v25)
          {
            goto LABEL_81;
          }

          v26 = v25 - 1;
          v7 = *(v24 + 8 * v26 + 32);
          *(v24 + 16) = v26;
          v3[5] = v24;
          v3[2] = v7;
          goto LABEL_4;
        }

        v36 = result & 7;
        if (v36 > 1)
        {
          if (v36 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }

            v37 = v3[1] + result;
            v8 = v43;
            if (v7 < v37)
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (v36 != 5)
            {
              goto LABEL_70;
            }

            v37 = v3[1] + 4;
            if (v7 < v37)
            {
              goto LABEL_70;
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
              return result;
            }

LABEL_61:
            v8 = v43;
            goto LABEL_4;
          }

          if (v36 != 1)
          {
            goto LABEL_70;
          }

          v37 = v3[1] + 8;
          if (v7 < v37)
          {
            goto LABEL_70;
          }
        }

        v3[1] = v37;
      }

LABEL_4:
      v6 = v3[1];
      if (v6 >= v7)
      {
        v5 = v45;
        goto LABEL_69;
      }
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_69:
  v3[3] = 0;
  *a2 = v10;
  *(a2 + 4) = v11;
  *(a2 + 8) = v12;
  *(a2 + 12) = v13;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 40) = v5;
  return result;
}

uint64_t specialized CodableFontTraits.init(from:)(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    *(a1 + 24) = 0;
    return v6;
  }

  v46 = v5;
  v9 = *MEMORY[0x1E69657D8];
  v10 = *MEMORY[0x1E69658E0];
  v48 = *MEMORY[0x1E6965858];
  v11 = *MEMORY[0x1E69659C8];
  v12 = *MEMORY[0x1E6965970];
  v47 = *MEMORY[0x1E6965870];
  while (1)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = *(a1 + 32);
      if (v7 < v15)
      {
        goto LABEL_13;
      }

      if (v15 < v7)
      {
        goto LABEL_92;
      }

      *(a1 + 24) = 0;
    }

    v14 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_93;
    }

    if (v14 < 8)
    {
      goto LABEL_92;
    }

LABEL_13:
    v16 = v14 >> 3;
    v17 = v14 & 7;
    if (v14 >> 3 <= 3)
    {
      switch(v16)
      {
        case 1uLL:
          if ((v14 & 7) != 0)
          {
            if (v17 != 2)
            {
              goto LABEL_92;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_93;
            }

            if (result < 0)
            {
              goto LABEL_104;
            }

            v21 = *(a1 + 8) + result;
            if (v8 < v21)
            {
LABEL_92:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
LABEL_93:

              return v6;
            }

            *(a1 + 24) = 8;
            *(a1 + 32) = v21;
          }

          ProtobufDecoder.decodeVarint()();
          v22 = v1;
          if (v1)
          {
            goto LABEL_93;
          }

          isa = UInt._bridgeToObjectiveC()().super.super.isa;
          [v6 setObject:isa forKey:v47];
          break;
        case 2uLL:
          if (v17 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_93;
            }

            if (result < 0)
            {
              goto LABEL_105;
            }

            v25 = *(a1 + 8);
            if (v8 < v25 + result)
            {
              goto LABEL_92;
            }

            *(a1 + 24) = 21;
            *(a1 + 32) = v25 + result;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_92;
            }

            v25 = *(a1 + 8);
          }

          if (v8 < v25 + 4)
          {
            goto LABEL_92;
          }

          *(a1 + 8) = v25 + 4;
          v22 = v1;
          isa = Float._bridgeToObjectiveC()().super.super.isa;
          [v6 setObject:isa forKey:v12];
          break;
        case 3uLL:
          if (v17 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_93;
            }

            if (result < 0)
            {
              goto LABEL_101;
            }

            v18 = *(a1 + 8);
            if (v8 < v18 + result)
            {
              goto LABEL_92;
            }

            *(a1 + 24) = 29;
            *(a1 + 32) = v18 + result;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_92;
            }

            v18 = *(a1 + 8);
          }

          if (v8 < v18 + 4)
          {
            goto LABEL_92;
          }

          *(a1 + 8) = v18 + 4;
          v22 = v1;
          isa = Float._bridgeToObjectiveC()().super.super.isa;
          [v6 setObject:isa forKey:v11];
          break;
        default:
          goto LABEL_37;
      }

LABEL_5:

      v1 = v22;
      goto LABEL_6;
    }

    if (v16 == 4)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_93;
        }

        if (result < 0)
        {
          goto LABEL_103;
        }

        v23 = *(a1 + 8);
        if (v8 < v23 + result)
        {
          goto LABEL_92;
        }

        *(a1 + 24) = 37;
        *(a1 + 32) = v23 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_92;
        }

        v23 = *(a1 + 8);
      }

      if (v8 < v23 + 4)
      {
        goto LABEL_92;
      }

      *(a1 + 8) = v23 + 4;
      v22 = v1;
      isa = Float._bridgeToObjectiveC()().super.super.isa;
      [v6 setObject:isa forKey:v48];
      goto LABEL_5;
    }

    if (v16 == 5)
    {
      break;
    }

    if (v16 == 6)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_93;
        }

        if (result < 0)
        {
          goto LABEL_102;
        }

        v19 = *(a1 + 8);
        if (v8 < v19 + result)
        {
          goto LABEL_92;
        }

        *(a1 + 24) = 53;
        *(a1 + 32) = v19 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_92;
        }

        v19 = *(a1 + 8);
      }

      if (v8 < v19 + 4)
      {
        goto LABEL_92;
      }

      v22 = v1;
      *(a1 + 8) = v19 + 4;
      result = Float._bridgeToObjectiveC()().super.super.isa;
      if (!v9)
      {
        goto LABEL_107;
      }

      isa = result;
      [v6 setObject:result forKey:v9];
      goto LABEL_5;
    }

LABEL_37:
    if ((v14 & 7) > 1)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_93;
        }

        if (result < 0)
        {
          goto LABEL_106;
        }

        v24 = *(a1 + 8) + result;
        if (v8 < v24)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_92;
        }

        v24 = *(a1 + 8) + 4;
        if (v8 < v24)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      if ((v14 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_93;
        }

        goto LABEL_6;
      }

      if (v17 != 1)
      {
        goto LABEL_92;
      }

      v24 = *(a1 + 8) + 8;
      if (v8 < v24)
      {
        goto LABEL_92;
      }
    }

    *(a1 + 8) = v24;
LABEL_6:
    v7 = *(a1 + 8);
    if (v7 >= v8)
    {
      *(a1 + 24) = 0;
      return v6;
    }
  }

  if (v17 != 2)
  {
    goto LABEL_92;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    goto LABEL_93;
  }

  v26 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v27 = v12;
    v28 = v11;
    v29 = v10;
    v30 = *(a1 + 8);
    if (v8 < v30 + result)
    {
      goto LABEL_92;
    }

    v44 = v9;
    v45 = v6;
    v43 = 0;
    *(a1 + 8) = v30 + result;
    if (result)
    {
      v31 = v30 - [*a1 bytes];
      result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
      if (__OFADD__(v31, v26))
      {
        goto LABEL_99;
      }

      if (v31 + v26 < v31)
      {
        goto LABEL_100;
      }

      v34 = result;
      v26 = Data._Representation.subscript.getter();
      v36 = v35;
      outlined consume of Data._Representation(v34, v33);
    }

    else
    {
      v36 = 0xC000000000000000;
    }

    static String.Encoding.utf8.getter();
    v37 = String.init(data:encoding:)();
    if (!v38)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v6 = v45;

      outlined consume of Data._Representation(v26, v36);
      return v6;
    }

    v39 = v37;
    v40 = v38;
    outlined consume of Data._Representation(v26, v36);
    v41 = MEMORY[0x193ABEC20](v39, v40);

    if (!v29)
    {
      goto LABEL_108;
    }

    v10 = v29;
    v6 = v45;
    [v45 setObject:v41 forKey:v29];

    v1 = v43;
    v9 = v44;
    v11 = v28;
    v12 = v27;
    goto LABEL_6;
  }

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
  return result;
}

uint64_t _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 < v9)
  {
    v64 = v4;
    v10 = 0;
    v63 = *MEMORY[0x1E6969028];
    v62 = (v5 + 104);
    while (1)
    {
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = *(a1 + 32);
        if (v8 < v12)
        {
          goto LABEL_14;
        }

        if (v12 < v8)
        {
          goto LABEL_70;
        }

        *(a1 + 24) = 0;
      }

      v11 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_71;
      }

      if (v11 < 8)
      {
        goto LABEL_70;
      }

LABEL_14:
      v13 = v11 & 7;
      if (v11 >> 3 == 1)
      {
        if ((v11 & 7) != 0)
        {
          if (v13 != 2)
          {
            goto LABEL_70;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_71;
          }

          if (result < 0)
          {
            goto LABEL_82;
          }

          v25 = *(a1 + 8) + result;
          if (v9 < v25)
          {
LABEL_70:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_71:

            return v10;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v25;
        }

        v26 = ProtobufDecoder.decodeVarint()();
        v17 = v1;
        if (v1)
        {
          goto LABEL_71;
        }

        v27 = v26;
        v28 = *(a1 + 48);
        if (one-time initialization token for readerKey != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for CodingUserInfoKey();
        v30 = __swift_project_value_buffer(v29, static ArchiveReader.readerKey);
        if (*(v28 + 16))
        {
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if (v32)
          {
            outlined init with copy of Any(*(v28 + 56) + 32 * v31, &v66);
            type metadata accessor for ArchiveReader();
            if (swift_dynamicCast())
            {
              v33 = v65;
              if (one-time initialization token for cacheKey != -1)
              {
                swift_once();
              }

              v34 = __swift_project_value_buffer(v29, static ArchiveReader.cacheKey);
              if (*(v28 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v34), (v36 & 1) != 0) && (outlined init with copy of Any(*(v28 + 56) + 32 * v35, &v66), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), result = swift_dynamicCast(), (result & 1) != 0))
              {
                if (v27 < 0)
                {
                  goto LABEL_84;
                }

                v37 = v65;
                swift_beginAccess();
                v38 = *(v37 + 16);
                if (!*(v38 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v40 & 1) == 0))
                {
                  v61 = v37;
                  result = swift_endAccess();
                  if (!*(v33 + 16))
                  {
                    goto LABEL_87;
                  }

                  v46 = (*(v33 + 32) + 16 * v27);
                  v47 = *v46;
                  if (*v46 < 0)
                  {
                    goto LABEL_85;
                  }

                  v60 = *(v33 + 16);
                  v48 = v46[1];

                  if (v48 < 0)
                  {
                    goto LABEL_86;
                  }

                  v49 = swift_allocObject();
                  *(v49 + 16) = v33;
                  *v7 = OptionalAnchorValueBox.__ivar_destroyer;
                  v7[1] = v49;
                  (*v62)(v7, v63, v64);
                  v50 = specialized Data.init(bytesNoCopy:count:deallocator:)(v60 + v47, v48, v7);
                  v52 = v51;
                  v53 = specialized static CodableCGImage.import(from:)();
                  v60 = 0;
                  v54 = v53;

                  outlined consume of Data._Representation(v50, v52);
                  type metadata accessor for CGImageRef(0);
                  v67 = v55;
                  *&v66 = v54;
                  swift_beginAccess();
                  v56 = v54;
                  specialized Dictionary.subscript.setter(&v66, v27);
                  swift_endAccess();

                  v10 = v54;
                  v1 = v60;
                  goto LABEL_7;
                }

                outlined init with copy of Any(*(v38 + 56) + 32 * v39, &v66);
                swift_endAccess();

                outlined init with take of Any(&v66, &v65);
                type metadata accessor for CGImageRef(0);
                if (swift_dynamicCast())
                {
                  v10 = v68;
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
              }
            }
          }
        }

        goto LABEL_6;
      }

      if (v11 >> 3 == 2)
      {
        if (v13 != 2)
        {
          goto LABEL_70;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_71;
        }

        v15 = result;
        if (result < 0)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          return result;
        }

        v16 = *(a1 + 8);
        if (v9 < v16 + result)
        {
          goto LABEL_70;
        }

        v17 = 0;
        *(a1 + 8) = v16 + result;
        if (result)
        {
          v18 = v16 - [*a1 bytes];
          result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;
          if (__OFADD__(v18, v15))
          {
            goto LABEL_80;
          }

          if (v18 + v15 < v18)
          {
            goto LABEL_81;
          }

          v21 = result;
          v22 = Data._Representation.subscript.getter();
          v24 = v23;
          outlined consume of Data._Representation(v21, v20);
        }

        else
        {
          v22 = 0;
          v24 = 0xC000000000000000;
        }

        isa = Data._bridgeToObjectiveC()().super.isa;
        v43 = CGImageSourceCreateWithData(isa, 0);

        if (!v43)
        {
          lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
          swift_allocError();
          *v57 = 0;
          swift_willThrow();
LABEL_78:

          outlined consume of Data._Representation(v22, v24);
          return v10;
        }

        ImageAtIndex = CGImageSourceCreateImageAtIndex(v43, 0, 0);
        if (!ImageAtIndex)
        {
          lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
          swift_allocError();
          *v58 = 0;
          swift_willThrow();

          goto LABEL_78;
        }

        v45 = ImageAtIndex;

        outlined consume of Data._Representation(v22, v24);
        v10 = v45;
LABEL_6:
        v1 = v17;
        goto LABEL_7;
      }

      if ((v11 & 7) > 1)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_71;
          }

          if (result < 0)
          {
            goto LABEL_83;
          }

          v41 = *(a1 + 8) + result;
          if (v9 < v41)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_70;
          }

          v41 = *(a1 + 8) + 4;
          if (v9 < v41)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if ((v11 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_71;
          }

          goto LABEL_7;
        }

        if (v13 != 1)
        {
          goto LABEL_70;
        }

        v41 = *(a1 + 8) + 8;
        if (v9 < v41)
        {
          goto LABEL_70;
        }
      }

      *(a1 + 8) = v41;
LABEL_7:
      v8 = *(a1 + 8);
      if (v8 >= v9)
      {
        *(a1 + 24) = 0;
        if (v10)
        {
          return v10;
        }

        goto LABEL_4;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  v10 = swift_allocError();
  swift_willThrow();
  return v10;
}

uint64_t GraphicsImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NamedImage.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1;
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  v9 = 1;
  v148 = 1;
  v10 = a1[1];
  v11 = a1[2];
  if (v10 >= v11)
  {
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0.0;
    result = 0;
    v106 = 0;
    v13 = 0;
    v14 = 1.0;
    v15 = 0;
    v107 = 2;
    v108 = 1;
    v109 = 1;
LABEL_215:
    a1[3] = 0;
    *a2 = v98;
    *(a2 + 8) = v8;
    *(a2 + 9) = *v151;
    *(a2 + 12) = *&v151[3];
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15;
    *(a2 + 40) = v99;
    *(a2 + 41) = v149;
    *(a2 + 43) = v150;
    *(a2 + 44) = v100;
    *(a2 + 52) = v101;
    *(a2 + 60) = v102;
    *(a2 + 64) = v9;
    *(a2 + 68) = *&v147[3];
    *(a2 + 65) = *v147;
    *(a2 + 72) = v103;
    *(a2 + 80) = v104;
    *(a2 + 88) = v105;
    *(a2 + 96) = result;
    *(a2 + 104) = v107;
    *(a2 + 105) = v108;
    *(a2 + 106) = v109;
    *(a2 + 107) = v106;
    return result;
  }

  v111 = v7;
  v124 = 0;
  v160 = 0;
  v122 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0.0;
  v113 = 0;
  v123 = 0;
  v12 = 8;
  v120 = 1;
  v13 = 0;
  v14 = 1.0;
  v159 = 255;
  v15 = 0;
  v112 = 2;
  v119 = 1;
  v16 = 0.0;
  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = a1[3];
    if (v19)
    {
      v20 = a1[4];
      if (v10 < v20)
      {
        goto LABEL_11;
      }

      if (v20 < v10)
      {
        goto LABEL_216;
      }

      a1[3] = 0;
    }

    v19 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_217;
    }

    if (v19 <= 7)
    {
      goto LABEL_216;
    }

LABEL_11:
    v21 = v19 >> 3;
    if (v19 >> 3 > 6)
    {
      break;
    }

    if (v19 >> 3 <= 3)
    {
      if (v21 == 1)
      {
        v53 = v19;
        v23 = swift_allocObject();
        if ((v53 & 7) != 2)
        {
          goto LABEL_221;
        }

        v54 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        }

        v56 = *(v54 + 2);
        v55 = *(v54 + 3);
        if (v56 >= v55 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
        }

        *(v54 + 2) = v56 + 1;
        *&v54[8 * v56 + 32] = v11;
        a1[5] = v54;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          v121 = v2;
        }

        else
        {
          if (result < 0)
          {
            goto LABEL_230;
          }

          v57 = a1[1] + result;
          if (v11 >= v57)
          {
            a1[2] = v57;
            result = specialized Color.ResolvedHDR.init(from:)(a1, &v152);
            v58 = a1[5];
            if (!*(v58 + 16))
            {
              goto LABEL_238;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v59 = *(v58 + 16);
              if (!v59)
              {
                goto LABEL_245;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v58);
              v58 = result;
              v59 = *(result + 16);
              if (!v59)
              {
                goto LABEL_245;
              }
            }

            v60 = v59 - 1;
            v11 = *(v58 + 8 * v60 + 32);
            *(v58 + 16) = v60;
            a1[5] = v58;
            a1[2] = v11;
            *(v23 + 16) = v152;
            *(v23 + 32) = v153;
            outlined consume of GraphicsImage.Contents?(v124, v159);
            v30 = 4;
LABEL_84:
            v159 = v30;
LABEL_125:
            v124 = v23;
            v2 = 0;
            goto LABEL_195;
          }

LABEL_221:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v121 = swift_allocError();
          swift_willThrow();
        }

        v63 = v123;
        v64 = v122;
        goto LABEL_227;
      }

      if (v21 != 2)
      {
        if (v21 != 3)
        {
          goto LABEL_152;
        }

        v22 = v19;
        v23 = swift_allocObject();
        if ((v22 & 7) != 2)
        {
          goto LABEL_222;
        }

        v24 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        if (v26 >= v25 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 2) = v26 + 1;
        *&v24[8 * v26 + 32] = v11;
        a1[5] = v24;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          v121 = v2;
        }

        else
        {
          if (result < 0)
          {
            goto LABEL_233;
          }

          v28 = a1[1] + result;
          if (v11 >= v28)
          {
            a1[2] = v28;
            result = VectorImageLayer.init(from:)(a1, (v23 + 16));
            if (!*(a1[5] + 16))
            {
              goto LABEL_242;
            }

            v29 = specialized Array._customRemoveLast()();
            if (!v29)
            {
              v29 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
            }

            v11 = v29;
            a1[2] = v29;
            outlined consume of GraphicsImage.Contents?(v124, v159);
            v30 = 3;
            goto LABEL_84;
          }

LABEL_222:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v121 = swift_allocError();
          swift_willThrow();
        }

        v63 = v123;
        v64 = v122;
LABEL_227:
        swift_deallocUninitializedObject();
LABEL_219:
        v126 = v124;
        LOBYTE(v127) = v159;
        *(&v127 + 1) = *v151;
        HIDWORD(v127) = *&v151[3];
        v128 = v14;
        v129 = v13;
        v130 = v15;
        v131 = v160;
        v132 = v149;
        v133 = v150;
        v134 = v64;
        v135 = v118;
        v136 = v117;
        v137 = v148;
        *v138 = *v147;
        *&v138[3] = *&v147[3];
        v139 = v116;
        v140 = v115;
        v141 = v114;
        v142 = v113;
        v143 = v112;
        v144 = v120;
        v145 = v119;
        v146 = v63;
        return outlined destroy of GraphicsImage(&v126);
      }

      if ((v19 & 7) != 2)
      {
        goto LABEL_216;
      }

      v75 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
      }

      v77 = *(v75 + 2);
      v76 = *(v75 + 3);
      if (v77 >= v76 >> 1)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v75);
      }

      *(v75 + 2) = v77 + 1;
      *&v75[8 * v77 + 32] = v11;
      a1[5] = v75;
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_217;
      }

      if (result < 0)
      {
        goto LABEL_231;
      }

      v78 = a1[1] + result;
      if (v11 >= v78)
      {
        a1[2] = v78;
        result = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
        if (!*(a1[5] + 16))
        {
          goto LABEL_239;
        }

        v23 = result;
        v79 = specialized Array._customRemoveLast()();
        if (!v79)
        {
          v79 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
        }

        v11 = v79;
        a1[2] = v79;
        outlined consume of GraphicsImage.Contents?(v124, v159);
        v159 = 0;
        goto LABEL_125;
      }

LABEL_216:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v121 = swift_allocError();
      swift_willThrow();
LABEL_218:
      v63 = v123;
      v64 = v122;
      goto LABEL_219;
    }

    if (v21 != 4)
    {
      if (v21 == 5)
      {
        v87 = v19 & 7;
        if (v87 == 5)
        {
          v96 = a1[1];
          if (v11 < (v96 + 1))
          {
            goto LABEL_216;
          }

          v97 = *v96;
          a1[1] = v96 + 1;
          v14 = v97;
        }

        else
        {
          if (v87 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_217;
            }

            if (result < 0)
            {
              goto LABEL_251;
            }

            v88 = a1[1];
            if (v11 < v88 + result)
            {
              goto LABEL_216;
            }

            a1[3] = 41;
            a1[4] = v88 + result;
          }

          else
          {
            if (v87 != 1)
            {
              goto LABEL_216;
            }

            v88 = a1[1];
          }

          if (v11 < (v88 + 1))
          {
            goto LABEL_216;
          }

          v14 = *v88;
          a1[1] = v88 + 1;
        }

        goto LABEL_195;
      }

      if (v21 == 6)
      {
        if ((v19 & 7) != 2)
        {
          goto LABEL_216;
        }

        v40 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
        }

        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        if (v42 >= v41 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
        }

        *(v40 + 2) = v42 + 1;
        *&v40[8 * v42 + 32] = v11;
        a1[5] = v40;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_217;
        }

        if (result < 0)
        {
          goto LABEL_234;
        }

        v43 = a1[1] + result;
        if (v11 < v43)
        {
          goto LABEL_216;
        }

        a1[2] = v43;
        result = specialized CGPoint.init(from:)(a1);
        v46 = a1[5];
        if (!*(v46 + 16))
        {
          goto LABEL_237;
        }

        v47 = v44;
        v48 = v45;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v49 = *(v46 + 16);
          if (!v49)
          {
            goto LABEL_243;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
          v46 = result;
          v49 = *(result + 16);
          if (!v49)
          {
            goto LABEL_243;
          }
        }

        v50 = v49 - 1;
        v11 = *(v46 + 8 * v50 + 32);
        *(v46 + 16) = v50;
        a1[5] = v46;
        a1[2] = v11;
        v13 = v47;
        v15 = v48;
        goto LABEL_195;
      }

LABEL_152:
      v91 = v19 & 7;
      if (v91 > 1)
      {
        if (v91 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_217;
          }

          if (result < 0)
          {
            goto LABEL_252;
          }

          v92 = a1[1] + result;
        }

        else
        {
          if (v91 != 5)
          {
            goto LABEL_216;
          }

          v92 = a1[1] + 4;
        }
      }

      else
      {
        if ((v19 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_217;
          }

          goto LABEL_195;
        }

        if (v91 != 1)
        {
          goto LABEL_216;
        }

        v92 = a1[1] + 8;
      }

      if (v11 < v92)
      {
        goto LABEL_216;
      }

      a1[1] = v92;
LABEL_195:
      if (v12 == 8)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    if ((v19 & 7) != 2)
    {
      goto LABEL_216;
    }

    ProtobufDecoder.beginMessage()();
    v63 = v123;
    v64 = v122;
    if (v2)
    {
      v121 = v2;
      goto LABEL_219;
    }

    result = NamedImage.Key.init(from:)(a1, v111);
    v65 = a1[5];
    if (!*(v65 + 16))
    {
      goto LABEL_235;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v66 = *(v65 + 16);
      if (!v66)
      {
        goto LABEL_236;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
      v65 = result;
      v66 = *(result + 16);
      if (!v66)
      {
        goto LABEL_236;
      }
    }

    v67 = v66 - 1;
    v11 = *(v65 + 8 * v67 + 32);
    *(v65 + 16) = v67;
    a1[5] = v65;
    a1[2] = v11;
    v68 = a1[6];
    if (one-time initialization token for namedImagesKey != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for CodingUserInfoKey();
    v70 = __swift_project_value_buffer(v69, static ArchiveReader.namedImagesKey);
    if (!*(v68 + 16) || (v71 = specialized __RawDictionaryStorage.find<A>(_:)(v70), (v72 & 1) == 0) || (outlined init with copy of Any(*(v68 + 56) + 32 * v71, v125), type metadata accessor for NamedImage.Cache(), (swift_dynamicCast() & 1) == 0))
    {
      if (one-time initialization token for sharedCache != -1)
      {
        swift_once();
      }
    }

    v93 = v111;
    NamedImage.Cache.decode(_:)(v111, &v126);
    v121 = v2;
    outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(v93, type metadata accessor for NamedImage.Key);

    v94 = v126;
    v95 = v127;
    v16 = v128;
    v17 = v129;
    v18 = v130;
    v12 = v131;
    outlined consume of GraphicsImage.Contents?(v124, v159);
    v124 = v94;
    v159 = v95;
    v2 = v121;
LABEL_3:
    v14 = v16;
    v13 = v17;
    v15 = v18;
    v160 = v12;
LABEL_4:
    v10 = a1[1];
    if (v10 >= v11)
    {
      v9 = v148;
      v106 = v123;
      v100 = v122;
      v101 = v118;
      v102 = v117;
      v108 = v120;
      v103 = v116;
      v104 = v115;
      v105 = v114;
      result = v113;
      v8 = v159;
      v99 = v160;
      v98 = v124;
      v109 = v119;
      v107 = v112;
      goto LABEL_215;
    }
  }

  if (v19 >> 3 > 9)
  {
    if (v21 == 10)
    {
      if ((v19 & 7) != 0)
      {
        if ((v19 & 7) != 2)
        {
          goto LABEL_216;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_217;
        }

        if (result < 0)
        {
          goto LABEL_248;
        }

        v73 = a1[1] + result;
        if (v11 < v73)
        {
          goto LABEL_216;
        }

        a1[3] = 80;
        a1[4] = v73;
      }

      v74 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_217;
      }

      v38 = v74 != 0;
      v39 = &v157;
      goto LABEL_194;
    }

    if (v21 != 11)
    {
      if (v21 != 12)
      {
        goto LABEL_152;
      }

      if ((v19 & 7) != 0)
      {
        if ((v19 & 7) != 2)
        {
          goto LABEL_216;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_217;
        }

        if (result < 0)
        {
          goto LABEL_249;
        }

        v51 = a1[1] + result;
        if (v11 < v51)
        {
          goto LABEL_216;
        }

        a1[3] = 96;
        a1[4] = v51;
      }

      v52 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_217;
      }

      v38 = v52 == 1;
      if (v52 == 2)
      {
        v38 = 2;
      }

      v39 = &v158 + 4;
LABEL_194:
      *(v39 - 64) = v38;
      goto LABEL_195;
    }

    if ((v19 & 7) != 0)
    {
      if ((v19 & 7) != 2)
      {
        goto LABEL_216;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
LABEL_217:
        v121 = v2;
        goto LABEL_218;
      }

      if (result < 0)
      {
        goto LABEL_247;
      }

      v89 = a1[1] + result;
      if (v11 < v89)
      {
        goto LABEL_216;
      }

      a1[3] = 88;
      a1[4] = v89;
    }

    v90 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_217;
    }

    if (v90 > 1)
    {
      if (v90 == 2)
      {
        v38 = 2;
        goto LABEL_193;
      }

      if (v90 == 3)
      {
        v38 = 3;
LABEL_193:
        v39 = &v156;
        goto LABEL_194;
      }
    }

    else if (!v90)
    {
      v119 = 0;
      goto LABEL_195;
    }

    v38 = 1;
    goto LABEL_193;
  }

  if (v21 == 7)
  {
    if ((v19 & 7) != 0)
    {
      if ((v19 & 7) != 2)
      {
        goto LABEL_216;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_217;
      }

      if (result < 0)
      {
        goto LABEL_250;
      }

      v61 = a1[1] + result;
      if (v11 < v61)
      {
        goto LABEL_216;
      }

      a1[3] = 56;
      a1[4] = v61;
    }

    v62 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_217;
    }

    if (v62 <= 0xFF)
    {
      v160 = 0;
      if (v62 <= 3u)
      {
        switch(v62)
        {
          case 1u:
            v160 = 4;
            break;
          case 2u:
            v160 = 1;
            break;
          case 3u:
            v160 = 5;
            break;
        }
      }

      else if (v62 > 5u)
      {
        if (v62 == 6)
        {
          v160 = 2;
        }

        else if (v62 == 7)
        {
          v160 = 6;
        }
      }

      else if (v62 == 4)
      {
        v160 = 3;
      }

      else if (v62 == 5)
      {
        v160 = 7;
      }
    }

    else
    {
      v160 = 0;
    }

    goto LABEL_195;
  }

  if (v21 != 8)
  {
    if (v21 != 9)
    {
      goto LABEL_152;
    }

    if ((v19 & 7) != 2)
    {
      goto LABEL_216;
    }

    v31 = a1[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    *&v31[8 * v33 + 32] = v11;
    a1[5] = v31;
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_217;
    }

    if (result < 0)
    {
      goto LABEL_232;
    }

    v34 = a1[1] + result;
    if (v11 < v34)
    {
      goto LABEL_216;
    }

    a1[2] = v34;
    result = Image.ResizingInfo.init(from:)(a1, &v126);
    v35 = a1[5];
    if (!*(v35 + 16))
    {
      goto LABEL_240;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v36 = *(v35 + 16);
      if (!v36)
      {
        goto LABEL_244;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
      v35 = result;
      v36 = *(result + 16);
      if (!v36)
      {
        goto LABEL_244;
      }
    }

    v37 = v36 - 1;
    v11 = *(v35 + 8 * v37 + 32);
    *(v35 + 16) = v37;
    a1[5] = v35;
    a1[2] = v11;
    v116 = v126;
    v115 = v127;
    v114 = v128;
    v113 = v129;
    v38 = v130;
    v39 = &v150;
    goto LABEL_194;
  }

  if ((v19 & 7) != 2)
  {
    goto LABEL_216;
  }

  v80 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 2) + 1, 1, v80);
  }

  v82 = *(v80 + 2);
  v81 = *(v80 + 3);
  if (v82 >= v81 >> 1)
  {
    v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v80);
  }

  *(v80 + 2) = v82 + 1;
  *&v80[8 * v82 + 32] = v11;
  a1[5] = v80;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_217;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v83 = a1[1] + result;
    if (v11 < v83)
    {
      goto LABEL_216;
    }

    a1[2] = v83;
    result = specialized Color.ResolvedHDR.init(from:)(a1, v154);
    v84 = a1[5];
    if (!*(v84 + 16))
    {
      goto LABEL_241;
    }

    v122 = v154[0];
    v118 = v154[1];
    v117 = v155;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v85 = *(v84 + 16);
      if (!v85)
      {
        goto LABEL_246;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v84);
      v84 = result;
      v85 = *(result + 16);
      if (!v85)
      {
        goto LABEL_246;
      }
    }

    v86 = v85 - 1;
    v11 = *(v84 + 8 * v86 + 32);
    *(v84 + 16) = v86;
    a1[5] = v84;
    a1[2] = v11;
    v148 = 0;
    goto LABEL_195;
  }

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
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}