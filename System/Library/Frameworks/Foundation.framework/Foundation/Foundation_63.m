void AttributedString.Runs.AttributesSlice3.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*(*a1 + 56) + 8))(v2, *(*a1 + 48));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AttributedString.Runs.AttributesSlice3<A, B, C>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AttributedString.Runs.AttributesSlice3<A, B, C>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:limitedBy:)();
}

void protocol witness for Collection.distance(from:to:) in conformance AttributedString.Runs.AttributesSlice3<A, B, C>()
{
  swift_getWitnessTable();

  JUMPOUT(0x1865CAD30);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AttributedString.Runs.AttributesSlice3<A, B, C>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v13 = *a1;
  v14 = *a2;
  v55 = *a3;
  v15 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v8, v17, type metadata accessor for AttributedString.Runs);
  v53 = v17;
  outlined init with copy of AttributedString.Runs(v17, a7, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18121D6B0;
  v19 = MEMORY[0x1E69E77B0];
  v20 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  *(v18 + 32) = (*(a4 + 24))(v20, a4);
  *(v18 + 40) = v21;
  v22 = *(v14 + *v19 + 8);
  *(v18 + 48) = (*(a5 + 24))(v22, a5);
  *(v18 + 56) = v23;
  v24 = *(v55 + *v19 + 8);
  *(v18 + 64) = (*(a6 + 24))(v24, a6);
  *(v18 + 72) = v25;
  v56 = v20;
  v57 = v22;
  v58 = v24;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v52 = type metadata accessor for AttributedString.Runs.AttributesSlice3();
  *(a7 + *(v52 + 68)) = v18;
  v26 = *(a4 + 32);
  v54 = a7;
  v55 = &v62;
  v26(v20, a4);
  (*(a5 + 32))(v22, a5);
  (*(a6 + 32))(v24, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v27 = static _SetStorage.allocate(capacity:)();
  v28 = 0;
  v29 = v27 + 56;
  while (1)
  {
    v32 = &v55[2 * v28];
    v33 = *v32;
    v34 = v32[1];
    Hasher.init(_seed:)();
    if (v34 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v34)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    result = Hasher._finalize()();
    v36 = ~(-1 << *(v27 + 32));
    v37 = result & v36;
    v38 = (result & v36) >> 6;
    v39 = *(v29 + 8 * v38);
    v40 = 1 << (result & v36);
    if ((v40 & v39) == 0)
    {
      break;
    }

    while (1)
    {
      v41 = (*(v27 + 48) + 16 * v37);
      v42 = *v41;
      v43 = v41[1];
      if (v43 == 1)
      {
        if (v34 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v41, 1);
          v30 = v42;
          v31 = 1;
          goto LABEL_2;
        }

LABEL_14:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v41, v41[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v33, v34);
        outlined consume of AttributedString.AttributeRunBoundaries?(v42, v43);
        v44 = v33;
        v45 = v34;
LABEL_15:
        result = outlined consume of AttributedString.AttributeRunBoundaries?(v44, v45);
        goto LABEL_16;
      }

      if (v34 == 1)
      {
        goto LABEL_14;
      }

      if (!v43)
      {
        break;
      }

      if (!v34)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v41, v41[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v33, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v42, v43);

        v44 = v42;
        v45 = v43;
        goto LABEL_15;
      }

      if (v42 == v33 && v43 == v34)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v33, v34);
        outlined copy of AttributedString.AttributeRunBoundaries?(v33, v34);

LABEL_33:
        v30 = v33;
        v31 = v34;
        goto LABEL_2;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v42, v43);
      outlined copy of AttributedString.AttributeRunBoundaries?(v33, v34);
      outlined copy of AttributedString.AttributeRunBoundaries?(v42, v43);

      if (v47)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v33, v34);
        v33 = v42;
        v34 = v43;
        goto LABEL_33;
      }

      result = outlined consume of AttributedString.AttributeRunBoundaries?(v42, v43);
LABEL_16:
      v37 = (v37 + 1) & v36;
      v38 = v37 >> 6;
      v39 = *(v29 + 8 * (v37 >> 6));
      v40 = 1 << v37;
      if ((v39 & (1 << v37)) == 0)
      {
        goto LABEL_29;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v41, 0);
    if (v34)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v33, v34);

      v44 = v42;
      v45 = 0;
      goto LABEL_15;
    }

    swift_bridgeObjectRelease_n();
    v30 = v42;
    v31 = 0;
LABEL_2:
    outlined consume of AttributedString.AttributeRunBoundaries?(v30, v31);
LABEL_3:
    if (++v28 == 3)
    {
      outlined destroy of AttributedString.Runs(v53, type metadata accessor for AttributedString.Runs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
      result = swift_arrayDestroy();
      *(v54 + *(v52 + 72)) = v27;
      return result;
    }
  }

LABEL_29:
  *(v29 + 8 * v38) = v39 | v40;
  v48 = (*(v27 + 48) + 16 * v37);
  *v48 = v33;
  v48[1] = v34;
  v49 = *(v27 + 16);
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (!v50)
  {
    *(v27 + 16) = v51;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void AttributedString.Runs.AttributesSlice4.index(after:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v227 - v10;
  *(&v264 + 1) = *&v3[*(a2 + 84)];
  v258 = *(*(&v264 + 1) + 16);
  if (!v258)
  {
    goto LABEL_177;
  }

  v243 = a3;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v255 = *&v3[*(a2 + 88)];
  v16 = v3;
  v17 = *v3;
  v253 = v12;
  v247 = v15;
  v248 = v13;
  v251 = v14;
  AttributedString.Guts.findRun(at:)(v12, v15, &v290);
  v254 = v291;
  v252 = v292;
  v18 = v293;
  v249 = v290;
  v250 = v294;
  v238 = v296;
  v239 = v295;
  v236 = v297;
  v237 = *(&v296 + 1);
  v19 = *(type metadata accessor for AttributedString.Runs() + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v272 = v16;
  v269 = v20;
  v270 = v19;
  RangeSet.ranges.getter();
  v21 = RangeSet.Ranges.count.getter();
  v22 = *(v9 + 8);
  v267 = v11;
  v268 = v9 + 8;
  v271 = v22;
  (v22)(v11, v8);
  if (v21 < 1)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v23 = 0;
  v24 = v253 >> 10;
  while (1)
  {
    if (__OFADD__(v23, v21))
    {
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v4 = (v23 + v21) / 2;
    v25 = v267;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v271)(v25, v8);
    if (v24 >= v290 >> 10)
    {
      break;
    }

LABEL_4:
    v21 = v4;
    if (v23 >= v4)
    {
      goto LABEL_170;
    }
  }

  v26 = v294;
  if (v24 >= v294 >> 10)
  {
    v23 = v4 + 1;
    v4 = v21;
    goto LABEL_4;
  }

  v246 = v294 >> 10;
  v244 = v295;
  v245 = v296;
  v27 = v255;
  v28 = *(v255 + 16);
  v257 = v17;
  v240 = v294;
  v241 = v24;
  v231 = v8;
  if (v28 == 1 && (specialized Set.contains(_:)(0, 1, v255) & 1) == 0)
  {
    v31 = v17[3];
    v32 = v17[4];
    v33 = v17[6];
    *(&v264 + 1) = v17[5];
    v265 = v32;
    v34 = v17[8];
    v263 = v17[7];
    *&v264 = v33;
    v262 = v34;
    *&v303 = v253;
    v35 = v247;
    *(&v303 + 1) = v248;
    v36 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    *&v305 = v26;
    v38 = v244;
    v37 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v266 = v31;
    swift_unknownObjectRetain();
    v40 = specialized Set.contains(_:)(0, 0, v27);
    v41 = v38;
    v42 = v37;
    v43 = v35;
    v44 = v36;
    v45 = v248;
    if (v40)
    {
      *&v323 = v266;
      *(&v323 + 1) = v265;
      *&v324 = *(&v264 + 1);
      *(&v324 + 1) = v264;
      *&v325 = v263;
      *(&v325 + 1) = v262;
      BigString.UTF8View.subscript.getter();
      v278 = v253;
      v279 = v45;
      v280 = v44;
      v281 = v43;
      v282 = v253;
      v283 = v45;
      v284 = v44;
      v285 = v43;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      outlined destroy of BigSubstring.UTF8View(&v308);
      v26 = v240;
      v41 = v244;
      v39 = *(&v245 + 1);
      v42 = v245;
      if (*(&v296 + 1) != 2)
      {
        v26 = v294;
        if (v24 > v294 >> 10)
        {
          goto LABEL_189;
        }

        v41 = v295;
        v39 = *(&v296 + 1);
        v42 = v296;
        v43 = v247;
        v45 = v248;
        v44 = v251;
      }
    }

    *&v273 = v253;
    *(&v273 + 1) = v45;
    *&v274 = v44;
    *(&v274 + 1) = v43;
    *&v275 = v26;
    *(&v275 + 1) = v41;
    v261 = v41;
    *&v276 = v42;
    *(&v276 + 1) = v39;
    v46 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v47 = v46 + 56;
      v48 = 1 << *(v46 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v46 + 56);
      v51 = (v48 + 63) >> 6;

      v52 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      while (v50)
      {
LABEL_28:
        v55 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v56 = (*(v255 + 48) + ((v52 << 10) | (16 * v55)));
        v57 = v56[1];
        if (v57 >= 2)
        {
          v58 = specialized Collection.first.getter(*v56, v57);
          if ((v58 & 0x100000000) == 0)
          {
            v260 = v58;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
            }

            v60 = *(v53 + 2);
            v59 = *(v53 + 3);
            v61 = v60 + 1;
            v62 = v260;
            if (v60 >= v59 >> 1)
            {
              v259 = v60 + 1;
              v63 = v53;
              v64 = v60;
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v63);
              v61 = v259;
              v62 = v260;
              v60 = v64;
              v53 = v65;
            }

            *(v53 + 2) = v61;
            *&v53[4 * v60 + 32] = v62;
          }
        }
      }

      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_175;
        }

        if (v54 >= v51)
        {

          v318 = v266;
          v319 = v265;
          *&v320 = *(&v264 + 1);
          *(&v320 + 1) = v264;
          v321 = v263;
          v322 = v262;
          BigString.UnicodeScalarView.subscript.getter();
          v189 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v53);
          v265 = v190;
          v192 = v191;
          v194 = v193;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v194 == 2)
          {
            goto LABEL_140;
          }

          if (v241 <= v189 >> 10)
          {
            v26 = v189;
            v261 = v265;
            v42 = v192;
            v39 = v194;
            goto LABEL_140;
          }

          goto LABEL_190;
        }

        v50 = *(v47 + 8 * v54);
        ++v52;
        if (v50)
        {
          v52 = v54;
          goto LABEL_28;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_140:
    if (v246 == v26 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v195 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v195 - 1;
      v39 = v243;
      if (__OFSUB__(v195, 1))
      {
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
        goto LABEL_191;
      }

LABEL_142:
      v196 = v257;
      if (v4 == v186)
      {
        v197 = v257[2];
        v199 = v244;
        v198 = v245;
        *v39 = v240;
        v39[1] = v199;
        *(v39 + 1) = __PAIR128__(*(&v245 + 1), v198);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v271)(v151, v184);
        v197 = v196[2];
        v200 = v287;
        *v39 = v286;
        *(v39 + 1) = v200;
      }

      v39[4] = v197;
      return;
    }

    v187 = v257[2];
    v188 = v243;
    v201 = v261;
    *v243 = v26;
    v188[1] = v201;
    v188[2] = v42;
LABEL_147:
    v188[3] = v39;
    v188[4] = v187;
    return;
  }

  v29 = *(v272 + 15);
  if (v18 != v29)
  {
LABEL_37:
    if (v18 >= v29)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v232 = *(v272 + 15);
    v66 = v17[9];
    v67 = v17[10];
    v68 = v17[11];
    v69 = v17[12];
    v266 = v18;
    swift_unknownObjectRetain();
    v70 = v249;
    v71 = v254;
    v72 = v252;
    specialized Rope.subscript.getter(v249, v254, v252, v66, v67, v68, v69);
    v256 = v73;
    v229 = v74;
    swift_unknownObjectRelease();
    v75 = v70;
    v76 = v17[9];
    v77 = v266 + 1;
    v18 = v72;
    v230 = *(&v264 + 1) + 40;
    v79 = v17[11];
    v78 = v17[12];
    v290 = v75;
    v291 = v71;
    v292 = v72;
LABEL_39:
    if (v75 != v78)
    {
      goto LABEL_178;
    }

    v235 = v77;
    v242 = v78;
    v266 = v79;
    if (v18)
    {
      v80 = *(v18 + 24 * ((v254 >> ((4 * *(v18 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v80 = specialized Rope._Node.subscript.getter(v254, v76);
    }

    if (__OFADD__(v250, v80))
    {
      goto LABEL_179;
    }

    if (v76)
    {
      v81 = ((-15 << ((4 * *(v76 + 18) + 8) & 0x3C)) - 1) & *(v76 + 18) | (*(v76 + 16) << ((4 * *(v76 + 18) + 8) & 0x3C));
    }

    else
    {
      v81 = 0;
    }

    if (v254 >= v81)
    {
      goto LABEL_180;
    }

    v228 = v250 + v80;
    if (v18 && (v82 = (4 * *(v18 + 18) + 8) & 0x3C, v83 = ((v254 >> v82) & 0xF) + 1, v83 < *(v18 + 16)))
    {
      v234 = (v83 << v82) | ((-15 << v82) - 1) & v254;
      swift_unknownObjectRelease();
    }

    else
    {
      if ((specialized Rope._Node.formSuccessor(of:)(&v290, v76) & 1) == 0)
      {
        v84 = v256;
        if (v76)
        {
          v87 = *(v76 + 18);
          v88 = *(v76 + 16);
          swift_unknownObjectRelease();
          v85 = 0;
          v234 = ((-15 << ((4 * v87 + 8) & 0x3C)) - 1) & v87 | (v88 << ((4 * v87 + 8) & 0x3C));
        }

        else
        {
          v234 = 0;
          v85 = 0;
        }

        v86 = v242;
LABEL_58:
        if (v232 >= v235)
        {
          if (v235 == v232)
          {
            v89 = *(v272 + 22);
            if (*(v272 + 26) == 2)
            {
              if (v89 == 2)
              {
                goto LABEL_171;
              }
            }

            else if (v89 != 2 && (*(v272 + 19) ^ *(v272 + 23)) < 1024)
            {
              goto LABEL_171;
            }
          }

          if (v86 != v17[12])
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v249 = v86;
          v252 = v18;
          v227 = v85;
          if (v85)
          {
            v90 = v85 + 24 * ((v234 >> ((4 * *(v85 + 18) + 8) & 0x3C)) & 0xF);
            v92 = *(v90 + 32);
            v91 = *(v90 + 40);

            v233 = v91;
          }

          else
          {
            v93 = v17[9];
            swift_unknownObjectRetain();
            specialized Rope._Node.subscript.getter(v234, v93);
            v92 = v94;
            v233 = v95;
            swift_unknownObjectRelease();
          }

          v96 = 0;
          v97 = v230;
          v259 = v92;
          while (1)
          {
            if (v96 >= *(*(&v264 + 1) + 16))
            {
              goto LABEL_173;
            }

            v265 = v97;
            v266 = v96;
            v99 = *(v97 - 1);
            v98 = *v97;
            if (*(v84 + 16))
            {

              v100 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
              if (v101)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v84 + 56) + 72 * v100, &v308);
                if (!*(v92 + 16))
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v312 = 0;
                v310 = 0u;
                v311 = 0u;
                v308 = 0u;
                v309 = 0u;
                if (!*(v92 + 16))
                {
LABEL_82:

LABEL_83:
                  v307 = 0;
                  v305 = 0u;
                  v306 = 0u;
                  v303 = 0u;
                  v304 = 0u;
                  goto LABEL_84;
                }
              }
            }

            else
            {
              v312 = 0;
              v310 = 0u;
              v311 = 0u;
              v308 = 0u;
              v309 = 0u;

              if (!*(v92 + 16))
              {
                goto LABEL_82;
              }
            }

            v102 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
            v104 = v103;

            if ((v104 & 1) == 0)
            {
              goto LABEL_83;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v92 + 56) + 72 * v102, &v303);
LABEL_84:
            outlined init with copy of AttributedString._AttributeValue?(&v308, &v290);
            outlined init with copy of AttributedString._AttributeValue?(&v303, &v298);
            if (v293)
            {
              outlined init with copy of AttributedString._AttributeValue?(&v290, &v278);
              if (!*(&v299 + 1))
              {
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(&v278);
LABEL_94:
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_96:

                goto LABEL_97;
              }

              v275 = v300;
              v276 = v301;
              v277 = v302;
              v273 = v298;
              v274 = v299;
              v105 = v281;
              v261 = v282;
              v260 = __swift_project_boxed_opaque_existential_1(&v278, v281);
              v106 = __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
              *&v264 = &v227;
              v107 = *(v105 - 8);
              MEMORY[0x1EEE9AC00](v106);
              v109 = &v227 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
              v263 = &v227;
              v111 = MEMORY[0x1EEE9AC00](v110);
              (*(v113 + 16))(&v227 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0), v111);
              v114 = type metadata accessor for Optional();
              v262 = &v227;
              v115 = *(v114 - 8);
              MEMORY[0x1EEE9AC00](v114);
              v117 = &v227 - v116;
              v118 = swift_dynamicCast();
              v119 = *(v107 + 56);
              if (!v118)
              {
                v119(v117, 1, 1, v105);
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                (*(v115 + 8))(v117, v114);
                outlined destroy of AttributedString._AttributeValue(&v273);
                outlined destroy of AttributedString._AttributeValue(&v278);
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                v17 = v257;
                goto LABEL_96;
              }

              v119(v117, 0, 1, v105);
              (*(v107 + 32))(v109, v117, v105);
              v120 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v107 + 8))(v109, v105);
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(&v273);
              outlined destroy of AttributedString._AttributeValue(&v278);
              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v84 = v256;
              v17 = v257;
              if ((v120 & 1) == 0)
              {
                goto LABEL_96;
              }
            }

            else
            {
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (*(&v299 + 1))
              {
                goto LABEL_94;
              }

              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            v96 = v266 + 1;
            v97 = v265 + 2;
            v92 = v259;
            if (v258 == v266 + 1)
            {

              v76 = v17[9];
              v79 = v17[11];
              v78 = v17[12];
              v250 = v228;
              v75 = v249;
              v290 = v249;
              v291 = v234;
              v18 = v227;
              v254 = v234;
              v292 = v227;
              v77 = v235 + 1;
              if (!__OFADD__(v235, 1))
              {
                goto LABEL_39;
              }

              __break(1u);
              goto LABEL_92;
            }
          }
        }

LABEL_171:

        goto LABEL_98;
      }

      swift_unknownObjectRelease();
      v234 = v291;
    }

    v84 = v256;
    v85 = v292;
    v86 = v290;
    goto LABEL_58;
  }

  v30 = *(v272 + 22);
  if (*(v272 + 26) != 2)
  {
    if (v30 == 2 || (*(v272 + 19) ^ *(v272 + 23)) >= 1024)
    {
      goto LABEL_92;
    }

    goto LABEL_37;
  }

  if (v30 == 2)
  {
    goto LABEL_37;
  }

LABEL_92:
  v242 = v249;
LABEL_97:
  v18 = v252;
LABEL_98:
  v121 = v17[9];
  v122 = v17[10];
  v123 = v17[11];
  v124 = v17[12];
  swift_unknownObjectRetain();
  v125 = specialized Rope.subscript.getter(v242, v254, v18, v121, v122, v123, v124);
  swift_unknownObjectRelease();

  if (__OFADD__(v250, v125))
  {
    goto LABEL_182;
  }

  v126 = *(v17 + 5);
  v323 = *(v17 + 3);
  v324 = v126;
  v325 = *(v17 + 7);
  if (__OFSUB__(v250 + v125, v239 >> 11))
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  swift_unknownObjectRetain();
  v127 = BigString.UTF8View.index(_:offsetBy:)();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  swift_unknownObjectRelease();
  v134 = v127 >> 10;
  v135 = v17[3];
  v137 = v17[5];
  v136 = v17[6];
  v263 = v17[4];
  *&v264 = v137;
  *(&v264 + 1) = v136;
  v138 = v17[8];
  v265 = v17[7];
  v266 = v138;
  if (v127 >> 10 >= v246)
  {
    v147 = v253;
    *&v303 = v253;
    v149 = v247;
    v148 = v248;
    *(&v303 + 1) = v248;
    v150 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    v151 = v240;
    *&v305 = v240;
    v152 = v244;
    v153 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v262 = v135;
    swift_unknownObjectRetain();
    v154 = specialized Set.contains(_:)(0, 0, v255);
    v155 = v152;
    v156 = v241;
    if (v154)
    {
      v318 = v262;
      v319 = v263;
      v320 = v264;
      v321 = v265;
      v322 = v266;
      BigString.UTF8View.subscript.getter();
      v278 = v147;
      v279 = v148;
      v280 = v251;
      v281 = v149;
      v282 = v147;
      v283 = v148;
      v284 = v251;
      v285 = v149;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      v150 = v251;
      outlined destroy of BigSubstring.UTF8View(&v308);
      v151 = v240;
      v155 = v244;
      v39 = *(&v245 + 1);
      v153 = v245;
      if (*(&v296 + 1) != 2)
      {
        v151 = v294;
        if (v156 > v294 >> 10)
        {
          goto LABEL_187;
        }

        v155 = v295;
        v39 = *(&v296 + 1);
        v153 = v296;
        v148 = v248;
        v147 = v253;
      }
    }

    *&v273 = v147;
    *(&v273 + 1) = v148;
    *&v274 = v150;
    *(&v274 + 1) = v149;
    *&v275 = v151;
    *(&v275 + 1) = v155;
    v261 = v155;
    *&v276 = v153;
    *(&v276 + 1) = v39;
    v157 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v158 = v157 + 56;
      v159 = 1 << *(v157 + 32);
      v160 = -1;
      if (v159 < 64)
      {
        v160 = ~(-1 << v159);
      }

      v161 = v160 & *(v157 + 56);
      v162 = (v159 + 63) >> 6;

      v163 = 0;
      v164 = MEMORY[0x1E69E7CC0];
      while (v161)
      {
LABEL_120:
        v166 = __clz(__rbit64(v161));
        v161 &= v161 - 1;
        v167 = (*(v255 + 48) + ((v163 << 10) | (16 * v166)));
        v168 = v167[1];
        if (v168 >= 2)
        {
          v169 = specialized Collection.first.getter(*v167, v168);
          if ((v169 & 0x100000000) == 0)
          {
            v260 = v169;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
            }

            v171 = *(v164 + 2);
            v170 = *(v164 + 3);
            v172 = v171 + 1;
            v173 = v260;
            if (v171 >= v170 >> 1)
            {
              v259 = v171 + 1;
              v174 = v164;
              v175 = v171;
              v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v174);
              v172 = v259;
              v173 = v260;
              v171 = v175;
              v164 = v176;
            }

            *(v164 + 2) = v172;
            *&v164[4 * v171 + 32] = v173;
          }
        }
      }

      while (1)
      {
        v165 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          break;
        }

        if (v165 >= v162)
        {

          v313 = v262;
          v314 = v263;
          v315 = v264;
          v316 = v265;
          v317 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v178 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v164);
          v266 = v179;
          v181 = v180;
          v183 = v182;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          v177 = v261;
          if (v183 == 2)
          {
            goto LABEL_131;
          }

          if (v241 <= v178 >> 10)
          {
            v151 = v178;
            v177 = v266;
            v153 = v181;
            v39 = v183;
            goto LABEL_131;
          }

          goto LABEL_188;
        }

        v161 = *(v158 + 8 * v165);
        ++v163;
        if (v161)
        {
          v163 = v165;
          goto LABEL_120;
        }
      }

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

    swift_unknownObjectRelease();
    v177 = v261;
LABEL_131:
    if (v246 == v151 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v185 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v185 - 1;
      v39 = v243;
      if (!__OFSUB__(v185, 1))
      {
        goto LABEL_142;
      }

      __break(1u);
    }

    v187 = v257[2];
    v188 = v243;
    *v243 = v151;
    v188[1] = v177;
    v188[2] = v153;
    goto LABEL_147;
  }

  v139 = v241;
  v140 = v255;
  v141 = v251;
  v142 = v248;
  if (v134 < v241)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  *&v303 = v253;
  *(&v303 + 1) = v248;
  *&v304 = v251;
  *(&v304 + 1) = v247;
  *&v305 = v127;
  v143 = v129;
  *(&v305 + 1) = v129;
  *&v306 = v131;
  *(&v306 + 1) = v133;
  if (v241 == v134)
  {
    goto LABEL_169;
  }

  v144 = v135;
  swift_unknownObjectRetain();
  v145 = specialized Set.contains(_:)(0, 0, v140);
  v262 = v144;
  if ((v145 & 1) == 0)
  {
    v146 = v143;
LABEL_149:
    *&v273 = v253;
    *(&v273 + 1) = v142;
    *&v274 = v141;
    *(&v274 + 1) = v247;
    *&v275 = v127;
    *(&v275 + 1) = v146;
    v143 = v146;
    *&v276 = v131;
    *(&v276 + 1) = v133;
    if (specialized Collection<>._containsScalarConstraint.getter(v140))
    {
      v202 = v140 + 56;
      v203 = 1 << *(v140 + 32);
      v204 = -1;
      if (v203 < 64)
      {
        v204 = ~(-1 << v203);
      }

      v205 = v204 & *(v140 + 56);
      v206 = (v203 + 63) >> 6;

      v207 = 0;
      v272 = MEMORY[0x1E69E7CC0];
      while (v205)
      {
LABEL_158:
        v209 = __clz(__rbit64(v205));
        v205 &= v205 - 1;
        v210 = (*(v140 + 48) + ((v207 << 10) | (16 * v209)));
        v211 = v210[1];
        if (v211 >= 2)
        {
          v212 = specialized Collection.first.getter(*v210, v211);
          if ((v212 & 0x100000000) == 0)
          {
            v271 = v212;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v272 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v272 + 2) + 1, 1, v272);
            }

            v213 = v271;
            v215 = *(v272 + 2);
            v214 = *(v272 + 3);
            v216 = v215 + 1;
            if (v215 >= v214 >> 1)
            {
              v270 = v215 + 1;
              v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v215 + 1, 1, v272);
              v216 = v270;
              v213 = v271;
              v272 = v218;
            }

            v217 = v272;
            *(v272 + 2) = v216;
            *&v217[4 * v215 + 32] = v213;
            v140 = v255;
          }
        }
      }

      while (1)
      {
        v208 = v207 + 1;
        if (__OFADD__(v207, 1))
        {
          goto LABEL_176;
        }

        if (v208 >= v206)
        {

          v318 = v262;
          v319 = v263;
          v320 = v264;
          v321 = v265;
          v322 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v219 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v272);
          v271 = v220;
          v222 = v221;
          v224 = v223;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v224 == 2)
          {
            goto LABEL_169;
          }

          if (v241 <= v219 >> 10)
          {
            v127 = v219;
            v143 = v271;
            v131 = v222;
            v133 = v224;
            goto LABEL_169;
          }

          goto LABEL_192;
        }

        v205 = *(v202 + 8 * v208);
        ++v207;
        if (v205)
        {
          v207 = v208;
          goto LABEL_158;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_169:
    v225 = v257[2];
    v226 = v243;
    *v243 = v127;
    v226[1] = v143;
    v226[2] = v131;
    v226[3] = v133;
    v226[4] = v225;
    return;
  }

  *&v286 = v144;
  *(&v286 + 1) = v263;
  v287 = v264;
  v288 = v265;
  v289 = v266;
  BigString.UTF8View.subscript.getter();
  v278 = v253;
  v279 = v142;
  v280 = v251;
  v281 = v247;
  v282 = v253;
  v283 = v142;
  v284 = v251;
  v285 = v247;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
  v141 = v251;
  outlined destroy of BigSubstring.UTF8View(&v308);
  v146 = v143;
  if (*(&v296 + 1) == 2)
  {
    goto LABEL_149;
  }

  v127 = v294;
  if (v139 <= v294 >> 10)
  {
    v146 = v295;
    v133 = *(&v296 + 1);
    v131 = v296;
    goto LABEL_149;
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
}

uint64_t AttributedString.Runs.AttributesSlice4.index(before:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v282 - v10;
  v313 = *(v4 + *(a2 + 84));
  v311 = *(v313 + 16);
  if (!v311)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v299 = a3;
  v12 = *a1;
  v314 = a1[1];
  v309 = *(v4 + *(a2 + 88));
  v13 = v4[23];
  v14 = v4[26];
  v310 = v12;
  v15 = v12;
  v16 = *(type metadata accessor for AttributedString.Runs() + 24);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v317 = v16;
  RangeSet.ranges.getter();
  v17 = v11;
  v18 = RangeSet.Ranges.count.getter();
  v19 = v8;
  v20 = v18;
  v22 = *(v9 + 8);
  v21 = (v9 + 8);
  v318 = v19;
  v319 = v22;
  (v22)(v11);
  v25 = v21;
  if (v14 == 2 || (v13 ^ v15) >= 0x400)
  {
    v315 = v21;
    if (v20 >= 1)
    {
      v25 = v4;
      v26 = 0;
      v27 = v15 >> 10;
      while (!__OFADD__(v26, v20))
      {
        v14 = (v26 + v20) / 2;
        RangeSet.ranges.getter();
        v28 = v318;
        v17 = v11;
        RangeSet.Ranges.subscript.getter();
        (v319)(v11, v28);
        v23 = v331;
        if (v27 < v331 >> 10)
        {
          v20 = (v26 + v20) / 2;
          if (v26 >= v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v24 = v314;
          if (v27 < v334 >> 10)
          {
            goto LABEL_13;
          }

          v26 = v14 + 1;
          if (v14 + 1 >= v20)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v4 = v25;
    if ((v23 ^ v15) > 0x3FF)
    {
      v304 = v23;
      v297 = v332;
      v30 = v333;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = v20;
  }

  if (v14 < 1)
  {
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
    goto LABEL_250;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v29 = v318;
  RangeSet.Ranges.subscript.getter();
  (v319)(v11, v29);
  v297 = v332;
  v304 = v331;
  v30 = v333;
  v24 = v335;
  v310 = v334;
LABEL_17:
  v314 = v24;
  v31 = v309;
  if (*(v309 + 16) == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v309);
    if ((result & 1) == 0)
    {
      v62 = *v4;
      v63 = *(*v4 + 24);
      v64 = *(*v4 + 56);
      v365 = *(*v4 + 40);
      v366 = v64;
      v364 = v63;
      v65 = v310 >> 10;
      v66 = v304;
      if (v310 >> 10 < v304 >> 10)
      {
LABEL_255:
        __break(1u);
        goto LABEL_256;
      }

      v67 = v62[3];
      v68 = v62[4];
      v69 = v62[5];
      v70 = v62[6];
      v71 = v62[7];
      v72 = v62[8];
      *&v341[1] = v297;
      v341[0] = v304;
      v341[3] = v30;
      v73 = v297;
      v342 = v310;
      v343 = v314;
      v74 = *(&v297 + 1);
      if (v304 >> 10 == v65)
      {
        goto LABEL_225;
      }

      v316 = v72;
      v317 = v71;
      v318 = v70;
      v319 = v69;
      v75 = *(v62 + 5);
      v354 = *(v62 + 3);
      v355 = v75;
      v308 = v62;
      v356 = v62[7];
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v354, &v331);
      if ((specialized Set.contains(_:)(0, 0, v31) & 1) != 0 && v65 > BigString.startIndex.getter() >> 10)
      {
        v315 = v67;
        *&v361 = v67;
        *(&v361 + 1) = v68;
        v313 = v68;
        *&v362 = v319;
        *(&v362 + 1) = v318;
        *&v363 = v317;
        *(&v363 + 1) = v316;
        v76 = BigString.UTF8View.index(before:)();
        v78 = v77;
        v80 = v79;
        v82 = v81;
        result = BigString.UTF8View.subscript.getter();
        if (v65 < v76 >> 10)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v325 = v76;
        v326 = v78;
        v327 = v80;
        v328 = v82;
        v329 = v310;
        v330 = v314;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
        result = outlined destroy of BigSubstring.UTF8View(&v345);
        v83 = v304;
        v31 = v309;
        v84 = v314;
        v67 = v315;
        v68 = v313;
        if (v333 != 2)
        {
          v83 = v331;
          if (v65 < v331 >> 10)
          {
            goto LABEL_265;
          }

          v74 = *(&v332 + 1);
          v73 = v332;
          v30 = v333;
        }
      }

      else
      {
        v83 = v304;
        v84 = v314;
      }

      v304 = v83;
      *&v320 = v83;
      *(&v320 + 1) = v73;
      *&v321 = v74;
      *(&v321 + 1) = v30;
      v322 = v310;
      v323 = v84;
      if (specialized Collection<>._containsScalarConstraint.getter(v31))
      {
        v313 = v68;
        v315 = v67;
        v85 = v31;
        v88 = *(v31 + 56);
        v87 = v31 + 56;
        v86 = v88;
        v89 = 1 << *(v85 + 32);
        v90 = -1;
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        v91 = v90 & v86;
        v92 = (v89 + 63) >> 6;

        v93 = 0;
        v94 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v91)
          {
            goto LABEL_62;
          }

          do
          {
            v95 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_243;
            }

            if (v95 >= v92)
            {

              *&v358 = v315;
              *(&v358 + 1) = v313;
              *&v359 = v319;
              *(&v359 + 1) = v318;
              *&v360 = v317;
              *(&v360 + 1) = v316;
              BigString.UnicodeScalarView.subscript.getter();
              v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v94);
              v272 = v279;
              v274 = v280;
              v276 = v281;
              outlined destroy of BigString(&v364);

              result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
              if (v276 != 2)
              {
                v62 = v308;
                if (v65 >= v66 >> 10)
                {
LABEL_228:
                  v73 = v272;
                  v74 = v274;
                  v30 = v276;
                  goto LABEL_225;
                }

LABEL_262:
                __break(1u);
                goto LABEL_263;
              }

LABEL_224:
              v62 = v308;
              v66 = v304;
LABEL_225:
              v277 = v62[2];
              v278 = v299;
              *v299 = v66;
              v278[1] = v73;
              v278[2] = v74;
              v278[3] = v30;
              v278[4] = v277;
              return result;
            }

            v91 = *(v87 + 8 * v95);
            ++v93;
          }

          while (!v91);
          v93 = v95;
LABEL_62:
          v96 = __clz(__rbit64(v91));
          v91 &= v91 - 1;
          v97 = (*(v309 + 48) + ((v93 << 10) | (16 * v96)));
          v98 = v97[1];
          if (v98 >= 2)
          {
            v99 = specialized Collection.first.getter(*v97, v98);
            if ((v99 & 0x100000000) == 0)
            {
              *&v314 = v99;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
              }

              v101 = *(v94 + 2);
              v100 = *(v94 + 3);
              v102 = (v101 + 1);
              v103 = v314;
              if (v101 >= v100 >> 1)
              {
                v312 = (v101 + 1);
                v104 = v94;
                v105 = v101;
                v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v104);
                v102 = v312;
                v101 = v105;
                v94 = v106;
                v103 = v314;
              }

              *(v94 + 2) = v102;
              *&v94[4 * v101 + 32] = v103;
            }
          }
        }
      }

LABEL_222:
      v265 = &v364;
      goto LABEL_223;
    }
  }

  v298 = v30;
  v33 = *v4;
  v34 = *(*v4 + 24);
  v295 = (*v4 + 24);
  v35 = *(v33 + 40);
  v364 = v34;
  v365 = v35;
  v366 = *(v33 + 56);
  swift_unknownObjectRetain();
  v285 = *(&v310 + 1);
  v296 = v310;
  v286 = v314;
  v36 = BigString.UTF8View.index(before:)();
  v38 = v37;
  v40 = v39;
  v293 = v41;
  swift_unknownObjectRelease();
  v42 = *(v33 + 72);
  v43 = *(v33 + 88);
  if (v42)
  {
    v44 = *(v33 + 88);
  }

  else
  {
    v44 = 0;
  }

  v301 = v36 >> 11;
  if (v44 < (v36 >> 11))
  {
    goto LABEL_246;
  }

  v290 = v40;
  v291 = v38;
  v45 = *(v33 + 80);
  v307 = *(v33 + 96);
  v308 = v33;
  v292 = v36;
  if (v42)
  {
    if (v301 < v43)
    {
      v17 = (v42 + 16);
      LODWORD(v46) = *(v42 + 16);
      if (*(v42 + 16))
      {
        v319 = v4;
        v47 = *(v42 + 18);
        swift_unknownObjectRetain_n();
        if (!v47)
        {
          v49 = 0;
          v48 = v301;
          v53 = v42;
          v4 = v319;
          goto LABEL_70;
        }

        v318 = v45;
        v48 = v301;
        v49 = v47;
        v50 = v42;
        while (1)
        {
          v51 = *v17;
          if (*v17)
          {
            break;
          }

          v57 = v48;
LABEL_38:
          if (v57)
          {
            goto LABEL_242;
          }

          v48 = 0;
LABEL_29:
          v49 = (v51 << ((4 * v47 + 8) & 0x3C)) | ((-15 << ((4 * v47 + 8) & 0x3C)) - 1) & v49;
          v52 = *(v50 + 24 + 24 * v51);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v53 = v52;
          v17 = (v52 + 16);
          LOBYTE(v47) = *(v53 + 18);
          v50 = v53;
          if (!v47)
          {
            LODWORD(v46) = *v17;
            if (*v17)
            {
              v45 = v318;
              v4 = v319;
LABEL_70:
              v107 = 0;
              v108 = 24;
              v61 = v48;
              v46 = v46;
              while (1)
              {
                v109 = *(v53 + v108);
                v110 = v61 - v109;
                if (__OFSUB__(v61, v109))
                {
                  goto LABEL_240;
                }

                if (__OFADD__(v110, 1))
                {
                  goto LABEL_241;
                }

                if (v110 + 1 < 1)
                {
                  break;
                }

                ++v107;
                v108 += 24;
                v61 -= v109;
                if (v46 == v107)
                {
                  if (!v110)
                  {
                    goto LABEL_76;
                  }

LABEL_232:
                  __break(1u);
LABEL_233:
                  __break(1u);
                  goto LABEL_234;
                }
              }

              v46 = v107;
            }

            else
            {
              v46 = 0;
              v45 = v318;
              v4 = v319;
              if (v48)
              {
                goto LABEL_232;
              }

LABEL_76:
              v61 = 0;
            }

            v111 = v53;
            swift_unknownObjectRelease();
            v60 = v111;
            v59 = v49 & 0xFFFFFFFFFFFFF0FFLL | (v46 << 8);
            v303 = v111;
LABEL_41:
            v302 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v307, v59, v60, v42, v45);
            swift_unknownObjectRelease();
            goto LABEL_80;
          }
        }

        v54 = 0;
        v55 = (v50 + 40);
        while (1)
        {
          v56 = *v55;
          v55 += 3;
          v57 = v48 - v56;
          if (__OFSUB__(v48, v56))
          {
            goto LABEL_233;
          }

          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v57 + 1 < 1)
          {
            v51 = v54;
            goto LABEL_29;
          }

          ++v54;
          v48 = v57;
          if (v51 == v54)
          {
            goto LABEL_38;
          }
        }

LABEL_234:
        __break(1u);
        goto LABEL_235;
      }
    }
  }

  v58 = swift_unknownObjectRetain();
  v59 = specialized Rope._endPath.getter(v58);
  v60 = 0;
  v61 = 0;
  v303 = 0;
  if (v42)
  {
    goto LABEL_41;
  }

  v302 = 0;
LABEL_80:
  v112 = (v301 - v61);
  if (__OFSUB__(v301, v61))
  {
    goto LABEL_247;
  }

  v113 = v308[9];
  v114 = v308[10];
  v115 = v308[11];
  v116 = v308[12];
  swift_unknownObjectRetain();
  v300 = v59;
  specialized Rope.subscript.getter(v307, v59, v303, v113, v114, v115, v116);
  v117 = v4;
  v119 = v118;
  v121 = v120;
  result = swift_unknownObjectRelease();
  v122 = v117[1];
  if (v122 >= v302)
  {

    goto LABEL_162;
  }

  v287 = v121;
  v288 = (v313 + 40);
  v305 = v119;
  v283 = v122;
  while (2)
  {
    v123 = v308[9];
    v124 = v308[12];
    v331 = v307;
    *&v332 = v300;
    v125 = v303;
    *(&v332 + 1) = v303;
    if (v307 != v124)
    {
      goto LABEL_248;
    }

    if (v123)
    {
      v126 = *(v123 + 18);
      result = swift_unknownObjectRetain();
      v125 = v303;
    }

    else
    {
      v126 = 0;
    }

    if (v126 >= v300)
    {
      goto LABEL_249;
    }

    v294 = v112;
    if (v125)
    {
      v127 = (4 * *(v125 + 18) + 8) & 0x3C;
      if (((v300 >> v127) & 0xF) != 0)
      {
        v128 = ((((v300 >> v127) & 0xF) - 1) << v127) | ((-15 << v127) - 1) & v300;
        *&v332 = v128;
LABEL_116:
        v148 = (v128 >> ((4 * *(v125 + 18) + 8) & 0x3C)) & 0xF;
        v303 = v125;
        v142 = *(v125 + 24 * v148 + 24);

        swift_unknownObjectRelease();
        v143 = 0;
        goto LABEL_117;
      }
    }

    v129 = (4 * *(v123 + 18) + 8) & 0x3C;
    v130 = (v300 >> v129) & 0xF;
    if (*(v123 + 18))
    {
      if (v130 >= *(v123 + 16))
      {
        swift_unknownObjectRetain();
        if (!v130)
        {
          goto LABEL_256;
        }

LABEL_113:
        *&v332 = v332 & ((-15 << v129) - 1) | ((v130 - 1) << v129);
        v146 = *(v123 + 24 * v130);
        swift_unknownObjectRetain();
        v147 = specialized Rope._Node.descendToLastItem(under:)(&v332, v146);
        swift_unknownObjectRelease();
        v125 = v147;
        *(&v332 + 1) = v147;
        goto LABEL_114;
      }

      v125 = *(v123 + 24 * ((v300 >> v129) & 0xF) + 24);
      v131 = (4 * *(v125 + 18) + 8) & 0x3C;
      v132 = (v300 >> v131) & 0xF;
      if (!*(v125 + 18))
      {
        if (v132)
        {
          *&v332 = ((v132 - 1) << v131) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v125;
          swift_unknownObjectRetain();
          goto LABEL_114;
        }

        swift_unknownObjectRetain();
LABEL_112:
        if (!v130)
        {
LABEL_256:
          result = swift_unknownObjectRelease();
          __break(1u);
          goto LABEL_257;
        }

        goto LABEL_113;
      }

      v133 = *(v125 + 16);
      v319 = *(v123 + 24 * ((v300 >> v129) & 0xF) + 24);
      if (v132 >= v133)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_108:
        if (v132)
        {
          *&v332 = v332 & ((-15 << v131) - 1) | ((v132 - 1) << v131);
          v144 = *(v125 + 24 * v132);
          swift_unknownObjectRetain();
          v145 = specialized Rope._Node.descendToLastItem(under:)(&v332, v144);
          swift_unknownObjectRelease();
          v125 = v145;
          *(&v332 + 1) = v145;
          swift_unknownObjectRelease();
          goto LABEL_114;
        }

        swift_unknownObjectRelease();
        goto LABEL_112;
      }

      v125 = *(v125 + 24 * ((v300 >> v131) & 0xF) + 24);
      v134 = ((4 * *(v125 + 18) + 8) & 0x3C);
      v135 = (v300 >> v134) & 0xF;
      if (!*(v125 + 18))
      {
        if (v135)
        {
          *&v332 = ((v135 - 1) << v134) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v125;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_154:
          v119 = v305;
          goto LABEL_155;
        }

        swift_unknownObjectRetain();
        v125 = v319;
        swift_unknownObjectRetain();
        v119 = v305;
        goto LABEL_108;
      }

      v136 = *(v125 + 16);
      v318 = v125;
      if (v135 < v136)
      {
        v137 = *(v125 + 24 * ((v300 >> v134) & 0xF) + 24);
        v138 = *(v137 + 18);
        v139 = (4 * v138 + 8) & 0x3C;
        v140 = (v300 >> v139) & 0xF;
        *&v345 = v140;
        if (v138)
        {
          v317 = v134;
          v141 = v137;
          LODWORD(v316) = v138;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          LODWORD(v316) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v141 + 16), v141 + 24, &v345, &v331, v316);
          swift_unknownObjectRelease();
          if (v316)
          {
            v125 = *(&v332 + 1);
LABEL_153:
            swift_unknownObjectRelease();
            goto LABEL_154;
          }

          goto LABEL_147;
        }

        if (v140)
        {
          *&v332 = ((v140 - 1) << v139) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v137;
          v125 = v137;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_153;
        }
      }

      v317 = v134;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
LABEL_147:
      if (v135)
      {
        *&v332 = v332 & ((-15 << v317) - 1) | ((v135 - 1) << v317);
        v180 = v318[3 * v135];
        swift_unknownObjectRetain();
        v181 = specialized Rope._Node.descendToLastItem(under:)(&v332, v180);
        swift_unknownObjectRelease();
        v125 = v181;
        *(&v332 + 1) = v181;
        swift_unknownObjectRelease();
        v119 = v305;
LABEL_155:
        swift_unknownObjectRelease();
LABEL_114:
        swift_unknownObjectRelease();
        if (v331 != v307)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v128 = v332;
        if (v125)
        {
          goto LABEL_116;
        }

        goto LABEL_102;
      }

      swift_unknownObjectRelease();
      v119 = v305;
      v125 = v319;
      goto LABEL_108;
    }

    if (!v130)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v128 = ((v130 - 1) << v129) | v300 & 0xFFFFFFFFFFFFF0FFLL;
    *&v332 = v128;
    *(&v332 + 1) = v123;
    v125 = v123;
    if (v123)
    {
      goto LABEL_116;
    }

LABEL_102:
    v142 = specialized Rope._Node.subscript.getter(v128, v123);
    swift_unknownObjectRelease();
    v303 = 0;
    v143 = 1;
LABEL_117:

    if (__OFSUB__(v294, v142))
    {
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    if (v307 != v308[12])
    {
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    v284 = (v294 - v142);
    v300 = v128;
    if (v143)
    {
      v149 = v308[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v128, v149);
      v151 = v150;
      v289 = v152;
      swift_unknownObjectRelease();
    }

    else
    {
      v153 = v303 + 24 * ((v128 >> ((4 * *(v303 + 18) + 8) & 0x3C)) & 0xF);
      v151 = *(v153 + 32);
      v154 = *(v153 + 40);

      v289 = v154;
    }

    v155 = 0;
    --v302;
    v156 = v288;
    v306 = v151;
    do
    {
      if (v155 >= *(v313 + 16))
      {
        __break(1u);
        goto LABEL_238;
      }

      v158 = *(v156 - 1);
      v157 = *v156;
      v319 = v156;
      if (*(v119 + 16))
      {

        v159 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
        if (v160)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v119 + 56) + 72 * v159, &v345);
          if (!*(v151 + 16))
          {
            goto LABEL_133;
          }
        }

        else
        {
          v349 = 0;
          v347 = 0u;
          v348 = 0u;
          v345 = 0u;
          v346 = 0u;
          if (!*(v151 + 16))
          {
LABEL_133:

            goto LABEL_134;
          }
        }
      }

      else
      {
        v349 = 0;
        v347 = 0u;
        v348 = 0u;
        v345 = 0u;
        v346 = 0u;

        if (!*(v151 + 16))
        {
          goto LABEL_133;
        }
      }

      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
      v163 = v162;

      if (v163)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v151 + 56) + 72 * v161, v341);
        goto LABEL_135;
      }

LABEL_134:
      v344 = 0;
      v342 = 0u;
      v343 = 0u;
      memset(v341, 0, sizeof(v341));
LABEL_135:
      outlined init with copy of AttributedString._AttributeValue?(&v345, &v331);
      outlined init with copy of AttributedString._AttributeValue?(v341, &v336);
      if (v333)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v331, &v325);
        if (!*(&v337 + 1))
        {
          outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v325);
LABEL_159:
          outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_161:

          v112 = v294;
          goto LABEL_162;
        }

        v322 = v338;
        v323 = v339;
        v324 = v340;
        v320 = v336;
        v321 = v337;
        v164 = v328;
        v315 = v329;
        v316 = v155;
        v312 = __swift_project_boxed_opaque_existential_1(&v325, v328);
        v165 = __swift_project_boxed_opaque_existential_1(&v320, *(&v321 + 1));
        v318 = &v282;
        v166 = *(v164 - 8);
        MEMORY[0x1EEE9AC00](v165);
        v168 = &v282 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
        v317 = &v282;
        v170 = MEMORY[0x1EEE9AC00](v169);
        (*(v172 + 16))(&v282 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0), v170);
        v173 = type metadata accessor for Optional();
        v174 = *(v173 - 8);
        MEMORY[0x1EEE9AC00](v173);
        v176 = &v282 - v175;
        v177 = swift_dynamicCast();
        v178 = *(v166 + 56);
        if (!v177)
        {
          v178(v176, 1, 1, v164);
          outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v174 + 8))(v176, v173);
          outlined destroy of AttributedString._AttributeValue(&v320);
          outlined destroy of AttributedString._AttributeValue(&v325);
          outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_161;
        }

        v178(v176, 0, 1, v164);
        (*(v166 + 32))(v168, v176, v164);
        v179 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v166 + 8))(v168, v164);
        outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v320);
        outlined destroy of AttributedString._AttributeValue(&v325);
        outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v119 = v305;
        v151 = v306;
        v155 = v316;
        if ((v179 & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v337 + 1))
        {
          goto LABEL_159;
        }

        outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      ++v155;
      v156 = v319 + 2;
    }

    while (v311 != v155);

    v17 = v284;
    v112 = v284;
    result = v287;
    if (v283 < v302)
    {
      continue;
    }

    break;
  }

LABEL_236:

  v112 = v17;
LABEL_162:
  v66 = v304;
  v62 = v308;
  if (v112 >= (v304 >> 11))
  {
    v192 = *(v308 + 5);
    v361 = *(v308 + 3);
    v362 = v192;
    v363 = *(v308 + 7);
    v193 = v308;
    swift_unknownObjectRetain();
    v66 = BigString.UTF8View.index(_:offsetBy:)();
    v73 = v194;
    v74 = v195;
    v30 = v196;
    result = swift_unknownObjectRelease();
    v197 = *v295;
    v198 = v295[2];
    v359 = v295[1];
    v360 = v198;
    v358 = v197;
    v199 = v296 >> 10;
    if (v296 >> 10 < v66 >> 10)
    {
LABEL_254:
      __break(1u);
      goto LABEL_255;
    }

    v201 = v193[3];
    v200 = v193[4];
    v202 = v193[5];
    v203 = v193[6];
    v204 = v193[7];
    v205 = v193[8];
    v341[0] = v66;
    v341[1] = v73;
    v341[2] = v74;
    v341[3] = v30;
    v342 = v310;
    v343 = v314;
    if (v66 >> 10 == v199)
    {
      v62 = v193;
      goto LABEL_225;
    }

    v315 = v205;
    v316 = v204;
    v317 = v203;
    v318 = v202;
    v319 = v200;
    v216 = v30;
    v217 = v66;
    v218 = v295[1];
    v367[0] = *v295;
    v367[1] = v218;
    v368 = *(v295 + 4);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v367, &v331);
    v219 = v309;
    if ((specialized Set.contains(_:)(0, 0, v309) & 1) != 0 && v199 > BigString.startIndex.getter() >> 10)
    {
      v313 = v201;
      *&v354 = v201;
      *(&v354 + 1) = v319;
      *&v355 = v318;
      *(&v355 + 1) = v317;
      v356 = v316;
      v357 = v315;
      v220 = BigString.UTF8View.index(before:)();
      v222 = v221;
      v312 = v223;
      v225 = v224;
      result = BigString.UTF8View.subscript.getter();
      if (v199 < v220 >> 10)
      {
        goto LABEL_259;
      }

      v325 = v220;
      v326 = v222;
      v327 = v312;
      v328 = v225;
      v329 = v310;
      v330 = v314;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
      result = outlined destroy of BigSubstring.UTF8View(&v345);
      v226 = v314;
      v219 = v309;
      v201 = v313;
      if (v333 != 2)
      {
        v217 = v331;
        if (v199 < v331 >> 10)
        {
          goto LABEL_264;
        }

        v74 = *(&v332 + 1);
        v73 = v332;
        v216 = v333;
      }
    }

    else
    {
      v226 = v314;
    }

    v304 = v217;
    *&v320 = v217;
    *(&v320 + 1) = v73;
    *&v321 = v74;
    *(&v321 + 1) = v216;
    v30 = v216;
    v322 = v310;
    v323 = v226;
    if (specialized Collection<>._containsScalarConstraint.getter(v219))
    {
      v313 = v201;
      v246 = v219 + 56;
      v247 = 1 << *(v219 + 32);
      v248 = -1;
      if (v247 < 64)
      {
        v248 = ~(-1 << v247);
      }

      v249 = v248 & *(v219 + 56);
      v250 = (v247 + 63) >> 6;

      v251 = 0;
      v252 = MEMORY[0x1E69E7CC0];
      while (v249)
      {
LABEL_208:
        v254 = __clz(__rbit64(v249));
        v249 &= v249 - 1;
        v255 = (*(v309 + 48) + ((v251 << 10) | (16 * v254)));
        v256 = v255[1];
        if (v256 >= 2)
        {
          v257 = specialized Collection.first.getter(*v255, v256);
          if ((v257 & 0x100000000) == 0)
          {
            *&v314 = v257;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v252 + 2) + 1, 1, v252);
            }

            v259 = *(v252 + 2);
            v258 = *(v252 + 3);
            v260 = (v259 + 1);
            v261 = v314;
            if (v259 >= v258 >> 1)
            {
              v312 = (v259 + 1);
              v262 = v252;
              v263 = v259;
              v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v258 > 1), v259 + 1, 1, v262);
              v260 = v312;
              v259 = v263;
              v252 = v264;
              v261 = v314;
            }

            *(v252 + 2) = v260;
            *&v252[4 * v259 + 32] = v261;
          }
        }
      }

      while (1)
      {
        v253 = v251 + 1;
        if (__OFADD__(v251, 1))
        {
          goto LABEL_239;
        }

        if (v253 >= v250)
        {

          *&v350 = v313;
          *(&v350 + 1) = v319;
          *&v351 = v318;
          *(&v351 + 1) = v317;
          v352 = v316;
          v353 = v315;
          BigString.UnicodeScalarView.subscript.getter();
          v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v252);
          v272 = v271;
          v274 = v273;
          v276 = v275;
          outlined destroy of BigString(&v358);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
          if (v276 == 2)
          {
            goto LABEL_224;
          }

          v62 = v308;
          if (v199 < v66 >> 10)
          {
            __break(1u);
            goto LABEL_222;
          }

          goto LABEL_228;
        }

        v249 = *(v246 + 8 * v253);
        ++v251;
        if (v249)
        {
          v251 = v253;
          goto LABEL_208;
        }
      }
    }

    v265 = &v358;
LABEL_223:
    result = outlined destroy of BigString(v265);
    goto LABEL_224;
  }

  v182 = *v295;
  v183 = v295[2];
  v362 = v295[1];
  v363 = v183;
  v361 = v182;
  v184 = v296 >> 10;
  v185 = v309;
  if (v296 >> 10 < v304 >> 10)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v186 = v308[3];
  v187 = v308[4];
  v188 = v308[5];
  v189 = v308[6];
  v190 = v308[7];
  v191 = v308[8];
  *&v341[1] = v297;
  v341[0] = v304;
  v341[3] = v298;
  v73 = v297;
  v342 = v310;
  v343 = v314;
  v74 = *(&v297 + 1);
  if (v304 >> 10 == v184)
  {
    v30 = v298;
    goto LABEL_225;
  }

  v318 = v191;
  v319 = v190;
  v206 = v295[1];
  v350 = *v295;
  v351 = v206;
  v352 = *(v295 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v350, &v331);
  if ((specialized Set.contains(_:)(0, 0, v185) & 1) == 0 || v184 <= BigString.startIndex.getter() >> 10)
  {
    v215 = v304;
    v214 = v314;
LABEL_182:
    v304 = v215;
    *&v320 = v215;
    *(&v320 + 1) = v73;
    *&v321 = v74;
    *(&v321 + 1) = v298;
    v322 = v310;
    v323 = v214;
    if (specialized Collection<>._containsScalarConstraint.getter(v185))
    {
      v315 = v189;
      v316 = v188;
      v317 = v187;
      v227 = v185 + 56;
      v228 = 1 << *(v185 + 32);
      v229 = -1;
      if (v228 < 64)
      {
        v229 = ~(-1 << v228);
      }

      v230 = v229 & *(v185 + 56);
      v231 = (v228 + 63) >> 6;

      v232 = 0;
      v233 = MEMORY[0x1E69E7CC0];
      while (v230)
      {
LABEL_191:
        v235 = __clz(__rbit64(v230));
        v230 &= v230 - 1;
        v236 = (*(v309 + 48) + ((v232 << 10) | (16 * v235)));
        v237 = v236[1];
        if (v237 >= 2)
        {
          v238 = specialized Collection.first.getter(*v236, v237);
          if ((v238 & 0x100000000) == 0)
          {
            *&v314 = v238;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
            }

            v240 = *(v233 + 2);
            v239 = *(v233 + 3);
            v241 = v240 + 1;
            v242 = v314;
            if (v240 >= v239 >> 1)
            {
              v313 = v240 + 1;
              v243 = v233;
              v244 = v240;
              v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v239 > 1), v240 + 1, 1, v243);
              v241 = v313;
              v242 = v314;
              v240 = v244;
              v233 = v245;
            }

            *(v233 + 2) = v241;
            *&v233[4 * v240 + 32] = v242;
          }
        }
      }

      while (1)
      {
        v234 = v232 + 1;
        if (__OFADD__(v232, 1))
        {
          break;
        }

        if (v234 >= v231)
        {

          *&v354 = v186;
          *(&v354 + 1) = v317;
          *&v355 = v316;
          *(&v355 + 1) = v315;
          v356 = v319;
          v357 = v318;
          BigString.UnicodeScalarView.subscript.getter();
          v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v233);
          v267 = v266;
          v269 = v268;
          v30 = v270;
          outlined destroy of BigString(&v361);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
          if (v30 == 2)
          {
            v62 = v308;
            v66 = v304;
            v30 = v298;
            goto LABEL_225;
          }

          v62 = v308;
          if (v184 >= v66 >> 10)
          {
            v73 = v267;
            v74 = v269;
            goto LABEL_225;
          }

          goto LABEL_260;
        }

        v230 = *(v227 + 8 * v234);
        ++v232;
        if (v230)
        {
          v232 = v234;
          goto LABEL_191;
        }
      }

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
      goto LABEL_244;
    }

    v265 = &v361;
    v30 = v298;
    goto LABEL_223;
  }

  *&v358 = v186;
  v316 = v188;
  v317 = v187;
  *(&v358 + 1) = v187;
  *&v359 = v188;
  v315 = v189;
  *(&v359 + 1) = v189;
  *&v360 = v319;
  *(&v360 + 1) = v318;
  v207 = BigString.UTF8View.index(before:)();
  v209 = v208;
  v211 = v210;
  v213 = v212;
  result = BigString.UTF8View.subscript.getter();
  if (v184 < v207 >> 10)
  {
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v325 = v207;
  v326 = v209;
  v327 = v211;
  v328 = v213;
  v329 = v310;
  v330 = v314;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
  result = outlined destroy of BigSubstring.UTF8View(&v345);
  v214 = v314;
  v215 = v304;
  v185 = v309;
  v188 = v316;
  v187 = v317;
  v189 = v315;
  if (v333 == 2)
  {
    goto LABEL_182;
  }

  v215 = v331;
  if (v184 >= v331 >> 10)
  {
    v74 = *(&v332 + 1);
    v73 = v332;
    v298 = v333;
    goto LABEL_182;
  }

LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.AttributesSlice4.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v8 = a7;
  v381 = a4;
  v385 = a3;
  v390 = a2;
  v393 = a1;
  v11 = *(a7 + 72);
  v382 = *(a7 + 40);
  v383 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v367 = *(v12 - 8);
  v368 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v356 - v13;
  v15 = *(v8 + 64);
  v386 = *(v8 + 32);
  v387 = v15;
  v389 = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v365 = *(v16 - 8);
  v366 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v388 = &v356 - v17;
  v18 = *(v8 + 56);
  v391 = *(v8 + 24);
  v392 = v18;
  v394 = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v363 = *(v19 - 8);
  v364 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v398 = &v356 - v20;
  v21 = *(v8 + 48);
  v395 = *(v8 + 16);
  v396 = v21;
  v397 = swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for Optional();
  v361 = *(v22 - 8);
  v362 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v356 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v356 - v27;
  v426 = *(v7 + *(v8 + 84));
  v413 = *(v426 + 2);
  if (!v413)
  {
    goto LABEL_369;
  }

  v400 = v14;
  v380 = a5;
  v371 = v24;
  v29 = *a6;
  v30 = *(a6 + 8);
  v31 = *(a6 + 16);
  v32 = *(a6 + 24);
  v421 = *(v7 + *(v8 + 88));
  v33 = v7;
  v14 = *v7;
  v412 = v29;
  v407 = v30;
  v403 = v31;
  v404 = v32;
  AttributedString.Guts.findRun(at:)(v29, v32, &v448);
  a5 = v448;
  v409 = v449;
  v410 = v450;
  v401 = v451;
  v422 = v452;
  v378 = v454;
  v379 = v453;
  v376 = v456;
  v377 = v455;
  v34 = *(type metadata accessor for AttributedString.Runs() + 24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v433 = v33;
  v431 = v34;
  v430 = v35;
  RangeSet.ranges.getter();
  a6 = RangeSet.Ranges.count.getter();
  v36 = *(v26 + 8);
  v26 += 8;
  v432 = v25;
  v429 = v36;
  (v36)(v28, v25);
  if (a6 >= 1)
  {
    v37 = 0;
    v427 = v412 >> 10;
    v428 = v26;
    while (1)
    {
      if (__OFADD__(v37, a6))
      {
        goto LABEL_302;
      }

      v8 = (v37 + a6) / 2;
      RangeSet.ranges.getter();
      v25 = v432;
      RangeSet.Ranges.subscript.getter();
      (v429)(v28, v25);
      if (v427 < v448 >> 10)
      {
        goto LABEL_4;
      }

      if (v427 < v452 >> 10)
      {
        break;
      }

      v37 = v8 + 1;
      v8 = a6;
LABEL_4:
      a6 = v8;
      if (v37 >= v8)
      {
        goto LABEL_300;
      }
    }

    v399 = v448 >> 10;
    v408 = v448;
    v411 = v449;
    v405 = v451;
    v406 = v450;
    v38 = *(v421 + 16);
    v425 = v14;
    v420 = a5;
    if (v38 != 1 || (specialized Set.contains(_:)(0, 1, v421) & 1) != 0)
    {
      v39 = *(v14 + 72);
      v40 = *(v14 + 80);
      v41 = *(v14 + 88);
      v42 = *(v14 + 96);
      swift_unknownObjectRetain();
      v24 = v409;
      v26 = v410;
      specialized Rope.subscript.getter(a5, v409, v410, v39, v40, v41, v42);
      a6 = v43;
      v8 = v44;
      swift_unknownObjectRelease();
      v45 = v433[1];
      if (v45 >= v401)
      {

        goto LABEL_79;
      }

      v372 = v426 + 40;
      v46 = v24;
      v25 = v26;
      v402 = a6;
      v370 = v8;
      v360 = v45;
      while (1)
      {
        v47 = *(v14 + 72);
        v8 = *(v14 + 80);
        v49 = *(v14 + 88);
        v48 = *(v14 + 96);
        v448 = a5;
        v449 = v46;
        v450 = v25;
        if (a5 != v48)
        {
          goto LABEL_381;
        }

        v424 = v49;
        if (v47)
        {
          v24 = *(v47 + 18);
          a6 = v46;
          swift_unknownObjectRetain();
          v46 = a6;
        }

        else
        {
          v24 = 0;
        }

        v26 = &v448;
        if (v24 >= v46)
        {
          goto LABEL_382;
        }

        if (v25)
        {
          v50 = (4 * *(v25 + 18) + 8) & 0x3C;
          if (((v46 >> v50) & 0xF) != 0)
          {
            v51 = ((((v46 >> v50) & 0xF) - 1) << v50) | ((-15 << v50) - 1) & v46;
            v449 = v51;
            goto LABEL_37;
          }
        }

        v25 = (4 * *(v47 + 18) + 8) & 0x3C;
        v24 = (v46 >> v25) & 0xF;
        if (!*(v47 + 18))
        {
          if (!v24)
          {
            goto LABEL_390;
          }

          v51 = ((v24 - 1) << v25) | v46 & 0xFFFFFFFFFFFFF0FFLL;
          v449 = v51;
          v450 = v47;
          v25 = v47;
          if (!v47)
          {
            goto LABEL_28;
          }

          goto LABEL_37;
        }

        v423 = v8;
        if (v24 >= *(v47 + 16))
        {
          goto LABEL_31;
        }

        a6 = *(v47 + 24 * ((v46 >> v25) & 0xF) + 24);
        v52 = *(a6 + 18);
        v53 = (4 * v52 + 8) & 0x3C;
        v54 = (v46 >> v53) & 0xF;
        *&v475 = v54;
        if (!v52)
        {
          break;
        }

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v8 = specialized closure #1 in Rope._Node.formPredecessor(of:)((a6 + 16), a6 + 24, &v475, &v448, v52);
        swift_unknownObjectRelease();
        if ((v8 & 1) == 0)
        {
          goto LABEL_32;
        }

        v25 = v450;
LABEL_34:
        v8 = v423;
LABEL_35:
        swift_unknownObjectRelease();
        if (v448 != a5)
        {
          goto LABEL_383;
        }

        v51 = v449;
        if (!v25)
        {
LABEL_28:
          v375 = v51;
          a6 = specialized Rope._Node.subscript.getter(v51, v47);
          v8 = v55;
          v25 = v56;
          swift_unknownObjectRelease();
          v373 = 0;
          v57 = 1;
          goto LABEL_38;
        }

LABEL_37:
        v59 = (4 * *(v25 + 18) + 8) & 0x3C;
        v375 = v51;
        v373 = v25;
        v60 = (v25 + 24 * ((v51 >> v59) & 0xF));
        a6 = v60[3];
        v8 = v60[4];
        v25 = v60[5];

        swift_unknownObjectRelease();
        v57 = 0;
LABEL_38:

        if (__OFSUB__(v422, a6))
        {
          goto LABEL_384;
        }

        if (a5 != *(v14 + 96))
        {
          goto LABEL_385;
        }

        v369 = &v422[-a6];
        if (v57)
        {
          v61 = *(v14 + 72);
          a6 = *(v14 + 80);
          v8 = *(v14 + 88);
          swift_unknownObjectRetain();
          specialized Rope._Node.subscript.getter(v375, v61);
          v416 = v62;
          v374 = v63;
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = v373 + 24 * ((v375 >> ((4 * *(v373 + 18) + 8) & 0x3C)) & 0xF);
          v65 = *(v64 + 40);
          v416 = *(v64 + 32);

          v374 = v65;
        }

        v24 = v402;
        v66 = 0;
        --v401;
        v67 = v372;
        do
        {
          if (v66 >= *(v426 + 2))
          {
            goto LABEL_361;
          }

          v424 = v66;
          v8 = *(v67 - 1);
          v68 = *v67;
          v423 = v67;
          if (*(v24 + 16))
          {

            v69 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v68);
            if (v70)
            {
              outlined init with copy of AttributedString._AttributeValue(*(v24 + 56) + 72 * v69, &v475);
            }

            else
            {
              v479 = 0;
              v478 = 0u;
              v477 = 0u;
              v476 = 0u;
              v475 = 0u;
            }
          }

          else
          {
            v479 = 0;
            v478 = 0u;
            v477 = 0u;
            v476 = 0u;
            v475 = 0u;
          }

          if (*(v416 + 16))
          {
            v25 = v14;
            v71 = a5;
            v72 = v416;
            v73 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v68);
            v8 = v74;

            if (v8)
            {
              outlined init with copy of AttributedString._AttributeValue(*(v72 + 56) + 72 * v73, &v470);
            }

            else
            {
              v474 = 0;
              v473 = 0u;
              v472 = 0u;
              v471 = 0u;
              v470 = 0u;
            }

            a5 = v71;
            v14 = v25;
          }

          else
          {

            v474 = 0;
            v473 = 0u;
            v472 = 0u;
            v471 = 0u;
            v470 = 0u;
          }

          outlined init with copy of AttributedString._AttributeValue?(&v475, &v448);
          outlined init with copy of AttributedString._AttributeValue?(&v470, &v457);
          if (v451)
          {
            outlined init with copy of AttributedString._AttributeValue?(&v448, v467);
            if (!*(&v458 + 1))
            {
              outlined destroy of TermOfAddress?(&v470, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v475, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(v467);
LABEL_76:
              outlined destroy of TermOfAddress?(&v448, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_78:

LABEL_79:

              v89 = v422;
LABEL_80:
              v24 = v14 + 24;
              v110 = *(v14 + 40);
              v111 = *(v14 + 56);
              v543 = *(v14 + 24);
              v544 = v110;
              v545 = v111;
              v25 = v379;
              a6 = &v89[-(v379 >> 11)];
              if (!__OFSUB__(v89, v379 >> 11))
              {
                swift_unknownObjectRetain();
                v112 = BigString.UTF8View.index(_:offsetBy:)();
                v114 = v113;
                v116 = v115;
                v118 = v117;
                swift_unknownObjectRelease();
                v26 = v408;
                if (v399 < v112 >> 10)
                {
                  v26 = v112;
                }

                v119 = v411;
                if (v399 < v112 >> 10)
                {
                  v119 = v114;
                }

                v411 = v119;
                a6 = v406;
                if (v399 < v112 >> 10)
                {
                  a6 = v116;
                }

                v25 = v405;
                if (v399 < v112 >> 10)
                {
                  v25 = v118;
                }

                v120 = *(v14 + 40);
                v540 = *(v14 + 24);
                v541 = v120;
                v542 = *(v14 + 56);
                swift_unknownObjectRetain();
                v121 = BigString.UnicodeScalarView.index(after:)();
                v423 = v122;
                a5 = v123;
                v424 = v124;
                swift_unknownObjectRelease();
                v125 = *v24;
                v126 = *(v14 + 40);
                v539 = *(v14 + 56);
                v538 = v126;
                v537 = v125;
                v8 = v121 >> 10;
                if (v121 >> 10 >= v26 >> 10)
                {
                  v127 = *(v14 + 24);
                  v128 = *(v14 + 32);
                  v129 = *(v14 + 40);
                  v130 = *(v14 + 48);
                  v131 = *(v14 + 56);
                  v132 = *(v14 + 64);
                  v529 = v26;
                  v530 = v411;
                  v405 = v25;
                  v406 = a6;
                  v531 = a6;
                  v532 = v25;
                  v533 = v121;
                  a6 = v423;
                  v534 = v423;
                  v535 = a5;
                  v536 = v424;
                  if (v26 >> 10 == v8)
                  {
                    v408 = v26;
                    v14 = v425;
                    goto LABEL_118;
                  }

                  v25 = v26;
                  v26 = v121;
                  v422 = a5;
                  v414 = v132;
                  v415 = v131;
                  v416 = v130;
                  v417 = v129;
                  v418 = v128;
                  v419 = v127;
                  v133 = *(v14 + 40);
                  v546[0] = *v24;
                  v546[1] = v133;
                  v547 = *(v14 + 56);
                  outlined init with copy of Rope<BigString._Chunk>._Node?(v546, &v448);
                  v24 = v421;
                  v134 = specialized Set.contains(_:)(0, 0, v421);
                  v14 = v425;
                  if (v134)
                  {
                    v408 = v25;
                    if (v8 > BigString.startIndex.getter() >> 10)
                    {
                      v515 = v419;
                      v516 = v418;
                      v517 = v417;
                      v518 = v416;
                      v519 = v415;
                      v520 = v414;
                      a5 = v422;
                      v25 = BigString.UTF8View.index(before:)();
                      v401 = v136;
                      v402 = v135;
                      a6 = v137;
                      BigString.UTF8View.subscript.getter();
                      v413 = v121 >> 10;
                      if (v8 >= v25 >> 10)
                      {
                        v521 = v25;
                        v522 = v402;
                        v523 = a6;
                        v524 = v401;
                        v525 = v121;
                        a6 = v423;
                        v526 = v423;
                        v527 = a5;
                        v25 = v424;
                        v528 = v424;
                        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v521, &v448);
                        outlined destroy of BigSubstring.UTF8View(v467);
                        v138 = v408;
                        v8 = v413;
                        v139 = v25;
                        if (v451 != 2)
                        {
                          v138 = v448;
                          if (v413 < v448 >> 10)
                          {
                            goto LABEL_397;
                          }

                          v411 = v449;
                          v405 = v451;
                          v406 = v450;
                        }

                        goto LABEL_101;
                      }

LABEL_391:
                      __break(1u);
                      goto LABEL_392;
                    }

                    v138 = v408;
                  }

                  else
                  {
                    v138 = v25;
                  }

                  v139 = v424;
LABEL_101:
                  v507 = v138;
                  v508 = v411;
                  v509 = v406;
                  v510 = v405;
                  v511 = v121;
                  v512 = a6;
                  v513 = v422;
                  v514 = v139;
                  v140 = v138;
                  v141 = specialized Collection<>._containsScalarConstraint.getter(v24);
                  v408 = v140;
                  if (v141)
                  {
                    v413 = v8;
                    v8 = v24 + 56;
                    v142 = 1 << *(v24 + 32);
                    v143 = -1;
                    if (v142 < 64)
                    {
                      v143 = ~(-1 << v142);
                    }

                    a5 = v143 & *(v24 + 56);
                    v25 = (v142 + 63) >> 6;

                    v26 = 0;
                    a6 = MEMORY[0x1E69E7CC0];
                    while (1)
                    {
                      if (a5)
                      {
                        goto LABEL_110;
                      }

                      do
                      {
                        v144 = v26 + 1;
                        if (__OFADD__(v26, 1))
                        {
                          goto LABEL_358;
                        }

                        if (v144 >= v25)
                        {

                          *&v503 = v419;
                          *(&v503 + 1) = v418;
                          *&v504 = v417;
                          *(&v504 + 1) = v416;
                          v505 = v415;
                          v506 = v414;
                          BigString.UnicodeScalarView.subscript.getter();
                          v167 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(a6);
                          v8 = v168;
                          v25 = v169;
                          v26 = v170;
                          outlined destroy of BigString(&v537);

                          outlined destroy of BigSubstring.UnicodeScalarView(&v470);
                          a5 = v409;
                          v24 = v410;
                          if (v26 == 2)
                          {
                            goto LABEL_119;
                          }

                          if (v413 >= v167 >> 10)
                          {
                            v408 = v167;
                            v411 = v8;
                            v405 = v26;
                            v406 = v25;
                            goto LABEL_119;
                          }

LABEL_392:
                          __break(1u);
LABEL_393:
                          __break(1u);
LABEL_394:
                          __break(1u);
LABEL_395:
                          __break(1u);
                          goto LABEL_396;
                        }

                        a5 = *(v8 + 8 * v144);
                        ++v26;
                      }

                      while (!a5);
                      v26 = v144;
LABEL_110:
                      v145 = __clz(__rbit64(a5));
                      a5 &= a5 - 1;
                      v146 = (*(v421 + 48) + ((v26 << 10) | (16 * v145)));
                      v147 = v146[1];
                      if (v147 >= 2)
                      {
                        v148 = specialized Collection.first.getter(*v146, v147);
                        if ((v148 & 0x100000000) == 0)
                        {
                          v424 = v148;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 16) + 1, 1, a6);
                          }

                          v150 = *(a6 + 16);
                          v149 = *(a6 + 24);
                          v24 = v150 + 1;
                          v151 = v424;
                          if (v150 >= v149 >> 1)
                          {
                            a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, a6);
                            v151 = v424;
                          }

                          *(a6 + 16) = v24;
                          *(a6 + 4 * v150 + 32) = v151;
                        }
                      }
                    }
                  }

                  outlined destroy of BigString(&v537);
LABEL_118:
                  a5 = v409;
                  v24 = v410;
                  goto LABEL_119;
                }

LABEL_375:
                __break(1u);
LABEL_376:
                __break(1u);
LABEL_377:
                __break(1u);
LABEL_378:
                __break(1u);
                goto LABEL_379;
              }

LABEL_374:
              __break(1u);
              goto LABEL_375;
            }

            v464 = v459;
            v465 = v460;
            v466 = v461;
            v462 = v457;
            v463 = v458;
            v75 = v468;
            v415 = v469;
            v414 = __swift_project_boxed_opaque_existential_1(v467, v468);
            v25 = *(&v463 + 1);
            v76 = __swift_project_boxed_opaque_existential_1(&v462, *(&v463 + 1));
            v419 = &v356;
            v77 = *(v75 - 8);
            MEMORY[0x1EEE9AC00](v76);
            a5 = &v356 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
            v418 = &v356;
            v80 = MEMORY[0x1EEE9AC00](v79);
            (*(v82 + 16))(&v356 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0), v80);
            v83 = type metadata accessor for Optional();
            v417 = &v356;
            v84 = *(v83 - 8);
            MEMORY[0x1EEE9AC00](v83);
            v8 = &v356 - v85;
            v86 = swift_dynamicCast();
            v87 = *(v77 + 56);
            if (!v86)
            {
              v87(v8, 1, 1, v75);
              outlined destroy of TermOfAddress?(&v470, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v475, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v109 = *(v84 + 8);
              v26 = v84 + 8;
              v109(v8, v83);
              outlined destroy of AttributedString._AttributeValue(&v462);
              outlined destroy of AttributedString._AttributeValue(v467);
              outlined destroy of TermOfAddress?(&v448, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v14 = v425;
              goto LABEL_78;
            }

            v87(v8, 0, 1, v75);
            (*(v77 + 32))(a5, v8, v75);
            a6 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*(v77 + 8))(a5, v75);
            outlined destroy of TermOfAddress?(&v470, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v475, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of AttributedString._AttributeValue(&v462);
            outlined destroy of AttributedString._AttributeValue(v467);
            outlined destroy of TermOfAddress?(&v448, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            v14 = v425;
            a5 = v420;
            v24 = v402;
            v26 = &v448;
            if ((a6 & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          else
          {
            a6 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
            outlined destroy of TermOfAddress?(&v470, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v475, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            if (*(&v458 + 1))
            {
              goto LABEL_76;
            }

            outlined destroy of TermOfAddress?(&v448, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          }

          v66 = (v424 + 1);
          v67 = (v423 + 16);
        }

        while (v413 != (v424 + 1));

        v88 = v369;
        v422 = v369;
        v25 = v373;
        v46 = v375;
        if (v360 >= v401)
        {

          v89 = v88;
          goto LABEL_80;
        }
      }

      v8 = v423;
      if (v54)
      {
        v449 = ((v54 - 1) << v53) | v46 & 0xFFFFFFFFFFFFF0FFLL;
        v25 = a6;
        v450 = a6;
        swift_unknownObjectRetain();
        goto LABEL_35;
      }

LABEL_31:
      swift_unknownObjectRetain();
LABEL_32:
      if (!v24)
      {
        goto LABEL_389;
      }

      v449 = v449 & ((-15 << v25) - 1) | ((v24 - 1) << v25);
      v58 = *(v47 + 24 * v24);
      swift_unknownObjectRetain();
      v25 = specialized Rope._Node.descendToLastItem(under:)(&v449, v58);
      swift_unknownObjectRelease();
      v450 = v25;
      a5 = v420;
      goto LABEL_34;
    }

    v24 = v14 + 24;
    v90 = *(v14 + 40);
    v91 = *(v14 + 56);
    v543 = *(v14 + 24);
    v544 = v90;
    v545 = v91;
    v8 = v543;
    swift_unknownObjectRetain();
    a6 = BigString.UnicodeScalarView.index(after:)();
    v25 = v92;
    v14 = v93;
    a5 = v94;
    swift_unknownObjectRelease();
    v95 = *v24;
    v96 = *(v24 + 32);
    v541 = *(v24 + 16);
    v542 = v96;
    v540 = v95;
    if (a6 >> 10 >= v399)
    {
      v97 = *v24;
      v98 = *(v24 + 8);
      v99 = *(v24 + 16);
      v100 = *(v24 + 24);
      v101 = *(v24 + 32);
      v102 = *(v24 + 40);
      v103 = v408;
      v529 = v408;
      v8 = v411;
      v530 = v411;
      v26 = v406;
      v531 = v406;
      v532 = v405;
      v533 = a6;
      v534 = v25;
      v535 = v14;
      v536 = a5;
      if (v399 == a6 >> 10)
      {
        goto LABEL_321;
      }

      v423 = a6 >> 10;
      v424 = a5;
      v414 = v102;
      v415 = v101;
      v416 = v100;
      v417 = v99;
      v418 = v98;
      v419 = v97;
      v104 = *(v24 + 16);
      v503 = *v24;
      v504 = v104;
      v505 = *(v24 + 32);
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v503, &v448);
      if ((specialized Set.contains(_:)(0, 0, v421) & 1) == 0)
      {
        goto LABEL_304;
      }

      v105 = BigString.startIndex.getter();
      v24 = v423;
      if (v423 > v105 >> 10)
      {
        *&v537 = v419;
        *(&v537 + 1) = v418;
        *&v538 = v417;
        *(&v538 + 1) = v416;
        *&v539 = v415;
        *(&v539 + 1) = v414;
        a5 = v424;
        v8 = BigString.UTF8View.index(before:)();
        v413 = v106;
        v26 = v107;
        v402 = v108;
        BigString.UTF8View.subscript.getter();
        if (v24 < v8 >> 10)
        {
          goto LABEL_400;
        }

        v521 = v8;
        v522 = v413;
        v523 = v26;
        v524 = v402;
        v525 = a6;
        v526 = v25;
        v527 = v14;
        v528 = a5;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v521, &v448);
        outlined destroy of BigSubstring.UTF8View(v467);
        v103 = v408;
        v8 = v411;
        v26 = v406;
        if (v451 != 2)
        {
          v103 = v448;
          if (v423 < v448 >> 10)
          {
            goto LABEL_402;
          }

          v8 = v449;
          v26 = v450;
          v405 = v451;
        }

        goto LABEL_304;
      }

      goto LABEL_303;
    }

LABEL_388:
    __break(1u);
LABEL_389:
    swift_unknownObjectRelease();
    __break(1u);
LABEL_390:
    __break(1u);
    goto LABEL_391;
  }

LABEL_300:
  __break(1u);
  do
  {
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    v103 = v408;
LABEL_304:
    v507 = v103;
    v411 = v8;
    v508 = v8;
    v406 = v26;
    v509 = v26;
    v510 = v405;
    v511 = a6;
    v512 = v25;
    v513 = v14;
    v514 = v424;
    v24 = v421;
    v332 = specialized Collection<>._containsScalarConstraint.getter(v421);
    v408 = v103;
    if (v332)
    {
      v8 = v24 + 56;
      v333 = 1 << *(v24 + 32);
      v334 = -1;
      if (v333 < 64)
      {
        v334 = ~(-1 << v333);
      }

      v14 = v334 & *(v24 + 56);
      v25 = (v333 + 63) >> 6;

      v26 = 0;
      a6 = MEMORY[0x1E69E7CC0];
      while (v14)
      {
LABEL_313:
        v336 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v337 = (*(v421 + 48) + ((v26 << 10) | (16 * v336)));
        v338 = v337[1];
        if (v338 >= 2)
        {
          v339 = specialized Collection.first.getter(*v337, v338);
          if ((v339 & 0x100000000) == 0)
          {
            v424 = v339;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 16) + 1, 1, a6);
            }

            v24 = *(a6 + 16);
            v340 = *(a6 + 24);
            v341 = v424;
            if (v24 >= v340 >> 1)
            {
              a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v340 > 1), v24 + 1, 1, a6);
              v341 = v424;
            }

            *(a6 + 16) = v24 + 1;
            *(a6 + 4 * v24 + 32) = v341;
          }
        }
      }

      while (1)
      {
        v335 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_367;
        }

        if (v335 >= v25)
        {
          break;
        }

        v14 = *(v8 + 8 * v335);
        ++v26;
        if (v14)
        {
          v26 = v335;
          goto LABEL_313;
        }
      }

      v515 = v419;
      v516 = v418;
      v517 = v417;
      v518 = v416;
      v519 = v415;
      v520 = v414;
      BigString.UnicodeScalarView.subscript.getter();
      v352 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(a6);
      v8 = v353;
      v25 = v354;
      v26 = v355;
      outlined destroy of BigString(&v540);

      outlined destroy of BigSubstring.UnicodeScalarView(&v470);
      v14 = v425;
      v24 = v410;
      v342 = v422;
      if (v26 != 2)
      {
        if (v423 < v352 >> 10)
        {
          goto LABEL_401;
        }

        v408 = v352;
        v411 = v8;
        v405 = v26;
        v406 = v25;
      }
    }

    else
    {
      outlined destroy of BigString(&v540);
LABEL_321:
      v14 = v425;
      v24 = v410;
      v342 = v422;
    }

    v26 = v420;
    v448 = v420;
    a5 = v409;
    v449 = v409;
    v450 = v24;
    v424 = (v408 >> 11);
    if ((v408 >> 11) >= v342)
    {
      goto LABEL_119;
    }

    do
    {
      while (1)
      {
        if (v26 != *(v14 + 96))
        {
          goto LABEL_359;
        }

        v422 = v342;
        v343 = *(v14 + 72);
        a6 = *(v14 + 80);
        v25 = *(v14 + 88);
        if (v343)
        {
          v8 = *(v343 + 18);
          swift_unknownObjectRetain();
          if (v8 >= a5)
          {
            goto LABEL_362;
          }
        }

        else
        {
          v8 = 0;
          if (!a5)
          {
            goto LABEL_362;
          }
        }

        if (v24)
        {
          v344 = (4 * *(v24 + 18) + 8) & 0x3C;
          if (((a5 >> v344) & 0xF) != 0)
          {
            a5 = ((((a5 >> v344) & 0xF) - 1) << v344) | ((-15 << v344) - 1) & a5;
            v449 = a5;
LABEL_344:
            v348 = v450;
            goto LABEL_345;
          }
        }

        v14 = (4 * *(v343 + 18) + 8) & 0x3C;
        v345 = a5;
        a5 = (a5 >> v14) & 0xF;
        if (*(v343 + 18))
        {
          if (a5 < *(v343 + 16))
          {
            v8 = *(v343 + 24 * a5 + 24);
            v26 = *(v8 + 18);
            v346 = (4 * v26 + 8) & 0x3C;
            v347 = (v345 >> v346) & 0xF;
            *&v475 = v347;
            if (v26)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v26 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v8 + 16), v8 + 24, &v475, &v448, v26);
              swift_unknownObjectRelease();
              if (v26)
              {
                goto LABEL_343;
              }

LABEL_341:
              if (!a5)
              {
                goto LABEL_370;
              }

              v449 = v449 & ((-15 << v14) - 1) | ((a5 - 1) << v14);
              v8 = *(v343 + 24 * a5);
              swift_unknownObjectRetain();
              v349 = specialized Rope._Node.descendToLastItem(under:)(&v449, v8);
              swift_unknownObjectRelease();
              v450 = v349;
              goto LABEL_343;
            }

            if (v347)
            {
              v449 = ((v347 - 1) << v346) | v345 & 0xFFFFFFFFFFFFF0FFLL;
              v450 = v8;
              swift_unknownObjectRetain();
LABEL_343:
              swift_unknownObjectRelease();
              a5 = v449;
              v14 = v425;
              v26 = v420;
              goto LABEL_344;
            }
          }

          swift_unknownObjectRetain();
          goto LABEL_341;
        }

        if (!a5)
        {
          goto LABEL_373;
        }

        a5 = ((a5 - 1) << v14) | v345 & 0xFFFFFFFFFFFFF0FFLL;
        v449 = a5;
        v450 = v343;
        v348 = v343;
        v14 = v425;
        v26 = v420;
LABEL_345:
        if (v448 != v26)
        {
          goto LABEL_363;
        }

        if (!v348)
        {
          break;
        }

        v24 = v348;
        a6 = *(v348 + 24 * ((a5 >> ((4 * *(v348 + 18) + 8) & 0x3C)) & 0xF) + 24);

        swift_unknownObjectRelease();
        v342 = &v422[-a6];
        if (__OFSUB__(v422, a6))
        {
          goto LABEL_366;
        }

        if (v424 >= v342)
        {
          goto LABEL_119;
        }
      }

      v24 = 0;
      a6 = specialized Rope._Node.subscript.getter(a5, v343);
      v8 = v350;
      v25 = v351;
      swift_unknownObjectRelease();

      v342 = &v422[-a6];
      if (__OFSUB__(v422, a6))
      {
        goto LABEL_368;
      }
    }

    while (v424 < v342);
    v24 = 0;
LABEL_119:
    v152 = *(v14 + 16);
    v26 = v427;
    v423 = *(v426 + 2);
    if (!v423)
    {
      goto LABEL_371;
    }

    v379 = v152;
    v410 = v24;
    AttributedString.Guts.findRun(at:)(v412, v404, &v448);
    v413 = v449;
    v414 = v448;
    v424 = v451;
    v401 = v452;
    v402 = v450;
    v376 = v454;
    v377 = v453;
    v374 = v456;
    v375 = v455;
    RangeSet.ranges.getter();
    v153 = v432;
    a6 = RangeSet.Ranges.count.getter();
    (v429)(v28, v153);
  }

  while (a6 < 1);
  v24 = 0;
  while (1)
  {
    if (__OFADD__(v24, a6))
    {
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
      goto LABEL_360;
    }

    v8 = (v24 + a6) / 2;
    RangeSet.ranges.getter();
    v25 = v432;
    RangeSet.Ranges.subscript.getter();
    (v429)(v28, v25);
    if (v26 >= v448 >> 10)
    {
      break;
    }

LABEL_122:
    a6 = v8;
    if (v24 >= v8)
    {
      goto LABEL_301;
    }
  }

  v24 = v452 >> 10;
  if (v26 >= v452 >> 10)
  {
    v24 = v8 + 1;
    v8 = a6;
    goto LABEL_122;
  }

  v418 = v452;
  v416 = v454;
  v417 = v453;
  v415 = v455;
  v154 = v421;
  v155 = *(v421 + 16);
  v409 = a5;
  if (v155 == 1 && (specialized Set.contains(_:)(0, 1, v421) & 1) == 0)
  {
    v26 = *(v14 + 24);
    v159 = *(v14 + 32);
    v160 = *(v14 + 48);
    v433 = *(v14 + 40);
    v161 = *(v14 + 56);
    v431 = *(v14 + 64);
    a6 = v412;
    v439 = v412;
    v14 = v407;
    v440 = v407;
    v28 = v403;
    v8 = v404;
    v441 = v403;
    v442 = v404;
    v443 = v418;
    v444 = v417;
    v445 = v416;
    v446 = v415;
    swift_unknownObjectRetain();
    v162 = specialized Set.contains(_:)(0, 0, v154);
    v429 = v159;
    v430 = v160;
    v432 = v26;
    if (v162)
    {
      *&v500 = v26;
      *(&v500 + 1) = v159;
      v25 = v433;
      *&v501 = v433;
      *(&v501 + 1) = v160;
      a5 = v161;
      *&v502 = v161;
      v24 = v431;
      *(&v502 + 1) = v431;
      BigString.UTF8View.subscript.getter();
      *&v434 = a6;
      *(&v434 + 1) = v14;
      *&v435 = v28;
      *(&v435 + 1) = v8;
      *&v436 = a6;
      *(&v436 + 1) = v14;
      *&v437 = v28;
      *(&v437 + 1) = v8;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v434, &v448);
      outlined destroy of BigSubstring.UTF8View(&v475);
      v163 = v417;
      v164 = v418;
      v166 = v415;
      v165 = v416;
      if (v455 != 2)
      {
        v164 = v452;
        if (v427 > v452 >> 10)
        {
          goto LABEL_395;
        }

        v163 = v453;
        v165 = v454;
        v166 = v455;
      }
    }

    else
    {
      v163 = v417;
      v164 = v418;
      v166 = v415;
      v165 = v416;
      v25 = v433;
      a5 = v161;
    }

    v486 = a6;
    v487 = v14;
    v488 = v28;
    v489 = v8;
    v417 = v163;
    v418 = v164;
    v490 = v164;
    v491 = v163;
    v415 = v166;
    v416 = v165;
    v492 = v165;
    v493 = v166;
    v254 = v421;
    if ((specialized Collection<>._containsScalarConstraint.getter(v421) & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_275;
    }

    v14 = v254 + 56;
    v255 = 1 << *(v254 + 32);
    v256 = -1;
    if (v255 < 64)
    {
      v256 = ~(-1 << v255);
    }

    v28 = v256 & *(v254 + 56);
    v257 = (v255 + 63) >> 6;

    v8 = 0;
    a6 = MEMORY[0x1E69E7CC0];
    v26 = v430;
    v24 = v432;
LABEL_239:
    if (v28)
    {
      goto LABEL_244;
    }

    while (1)
    {
      v258 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_364;
      }

      if (v258 >= v257)
      {
        break;
      }

      v28 = *(v14 + 8 * v258);
      ++v8;
      if (v28)
      {
        v8 = v258;
LABEL_244:
        v259 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v260 = (*(v421 + 48) + ((v8 << 10) | (16 * v259)));
        v261 = v260[1];
        if (v261 >= 2)
        {
          v262 = specialized Collection.first.getter(*v260, v261);
          if ((v262 & 0x100000000) == 0)
          {
            v433 = v262;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 16) + 1, 1, a6);
            }

            v264 = *(a6 + 16);
            v263 = *(a6 + 24);
            v265 = v264 + 1;
            v266 = v433;
            if (v264 >= v263 >> 1)
            {
              v428 = v264 + 1;
              v267 = a6;
              v268 = v264;
              v269 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v263 > 1), v264 + 1, 1, v267);
              v265 = v428;
              v264 = v268;
              a6 = v269;
              v266 = v433;
            }

            *(a6 + 16) = v265;
            *(a6 + 4 * v264 + 32) = v266;
          }
        }

        goto LABEL_239;
      }
    }

    v494 = v24;
    v495 = v429;
    v496 = v25;
    v497 = v26;
    v498 = a5;
    v499 = v431;
    BigString.UnicodeScalarView.subscript.getter();
    v270 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a6);
    v8 = v271;
    v28 = v272;
    v25 = v273;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v448);
    if (v25 != 2)
    {
      if (v427 <= v270 >> 10)
      {
        v418 = v270;
        goto LABEL_274;
      }

LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
      goto LABEL_398;
    }

LABEL_275:
    v14 = v425[2];
    v289 = v425[9];
    v290 = v425[10];
    v291 = v425[11];
    v292 = v425[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v420, v409, v410, v289, v290, v291, v292);
    v24 = v293;
    a6 = v294;
    swift_unknownObjectRelease();
    v295 = (*(v396 + 24))();
    if (*(v24 + 16))
    {
      v297 = specialized __RawDictionaryStorage.find<A>(_:)(v295, v296);
      v28 = v298;

      v26 = v400;
      v25 = v398;
      if (v28)
      {
        v432 = a6;
        v433 = v14;
        outlined init with copy of AttributedString._AttributeValue(*(v24 + 56) + 72 * v297, &v462);
        outlined init with copy of Hashable & Sendable(&v462, v447);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        a6 = v371;
        v14 = v397;
        if (!swift_dynamicCast())
        {
          goto LABEL_405;
        }

        outlined destroy of AttributedString._AttributeValue(&v462);
        v299 = *(v14 - 8);
        v300 = v299;
        v301 = *(v299 + 56);
        v28 = v299 + 56;
        v301(a6, 0, 1, v14);
        a5 = v393;
        (*(v300 + 32))(v393, a6, v14);
        v301(a5, 0, 1, v14);
        v14 = v433;
        a6 = v432;
LABEL_281:
        v302 = (*(v392 + 24))();
        if (*(v24 + 16))
        {
          v304 = specialized __RawDictionaryStorage.find<A>(_:)(v302, v303);
          v28 = v305;

          if (v28)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v24 + 56) + 72 * v304, &v462);
            outlined init with copy of Hashable & Sendable(&v462, v447);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
            a5 = v394;
            if (!swift_dynamicCast())
            {
              goto LABEL_406;
            }

            outlined destroy of AttributedString._AttributeValue(&v462);
            v306 = *(a5 - 8);
            v307 = v306;
            v308 = *(v306 + 56);
            v28 = v306 + 56;
            v308(v25, 0, 1, a5);
            v309 = v25;
            v25 = v390;
            (*(v307 + 32))(v390, v309, a5);
            v308(v25, 0, 1, a5);
LABEL_287:
            v310 = (*(v387 + 24))();
            specialized Dictionary.subscript.getter(v310, v311, v24, &v462);

            v8 = v388;
            if (*(&v463 + 1))
            {
              v26 = a6;
              a6 = v14;
              outlined init with copy of Hashable & Sendable(&v462, v447);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
              v14 = v389;
              v312 = swift_dynamicCast();
              v25 = *(*(v14 - 8) + 56);
              if (!v312)
              {
                goto LABEL_403;
              }

              v313 = *(v14 - 8);
              (v25)(v8, 0, 1, v14);
              a5 = v385;
              (*(v313 + 32))(v385, v8, v14);
              outlined destroy of AttributedString._AttributeValue(&v462);
              (v25)(a5, 0, 1, v14);
              v14 = a6;
              a6 = v26;
              v26 = v400;
            }

            else
            {
              outlined destroy of TermOfAddress?(&v462, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              (*(*(v389 - 8) + 56))(v385, 1, 1);
            }

            v314 = (*(v383 + 24))();
            specialized Dictionary.subscript.getter(v314, v315, v24, &v462);

            v28 = AssociatedTypeWitness;
            if (*(&v463 + 1))
            {
              outlined init with copy of Hashable & Sendable(&v462, v447);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
              v316 = swift_dynamicCast();
              v24 = *(*(v28 - 8) + 56);
              if (!v316)
              {
                goto LABEL_404;
              }

              v317 = *(v28 - 8);
              (v24)(v26, 0, 1, v28);
              v318 = *(v317 + 32);
              a6 = v317 + 32;
              v8 = v381;
              v318(v381, v26, v28);
              outlined destroy of AttributedString._AttributeValue(&v462);
              result = (v24)(v8, 0, 1, v28);
            }

            else
            {
              outlined destroy of TermOfAddress?(&v462, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              result = (*(*(v28 - 8) + 56))(v381, 1, 1, v28);
            }

            v321 = v417;
            v320 = v418;
            v322 = v411;
            v324 = v405;
            v323 = v406;
            v326 = v415;
            v325 = v416;
            if (v418 >> 10 >= v408 >> 10)
            {
              v327 = v380;
              *v380 = v408;
              v327[1] = v322;
              v327[2] = v323;
              v327[3] = v324;
              v327[4] = v379;
              v327[5] = v320;
              v327[6] = v321;
              v327[7] = v325;
              v327[8] = v326;
              v327[9] = v14;
              return result;
            }

LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
            goto LABEL_374;
          }
        }

        else
        {
        }

        (*(*(v394 - 8) + 56))(v390, 1, 1);
        goto LABEL_287;
      }
    }

    else
    {

      v26 = v400;
      v25 = v398;
    }

    (*(*(v397 - 8) + 56))(v393, 1, 1);
    goto LABEL_281;
  }

  v156 = v433[15];
  v25 = v424;
  v157 = v414;
  v378 = v24;
  if (v424 == v156)
  {
    v158 = v433[22];
    if (v433[26] == 2)
    {
      if (v158 != 2)
      {
        goto LABEL_183;
      }
    }

    else if (v158 == 2 || (v433[19] ^ v433[23]) >= 0x400)
    {
      goto LABEL_183;
    }
  }

  if (v424 >= v156)
  {
LABEL_386:
    __break(1u);
    goto LABEL_387;
  }

  v370 = v156;
  v171 = *(v14 + 72);
  v172 = *(v14 + 80);
  v173 = *(v14 + 88);
  v8 = *(v14 + 96);
  swift_unknownObjectRetain();
  v26 = v413;
  v28 = v402;
  specialized Rope.subscript.getter(v414, v413, v402, v171, v172, v173, v8);
  a6 = v174;
  v360 = v175;
  swift_unknownObjectRelease();
  v157 = v414;
  v176 = *(v14 + 72);
  v24 = *(v14 + 80);
  v177 = v25 + 1;
  v25 = *(v14 + 88);
  v178 = *(v14 + 96);
  v369 = v426 + 40;
  v448 = v414;
  v449 = v26;
  v450 = v28;
  v419 = a6;
  while (2)
  {
    if (v157 != v178)
    {
      goto LABEL_376;
    }

    v373 = v177;
    v399 = v178;
    v402 = v28;
    if (v28)
    {
      v179 = (v28 + 24 * ((v413 >> ((4 * *(v28 + 18) + 8) & 0x3C)) & 0xF));
      v180 = v179[3];
      v26 = v179[4];
      a5 = v179[5];
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v180 = specialized Rope._Node.subscript.getter(v413, v176);
      v26 = v181;
      a5 = v182;
    }

    v183 = __OFADD__(v401, v180);
    v8 = v401 + v180;
    if (v183)
    {
      goto LABEL_377;
    }

    specialized Rope.formIndex(after:)(&v448, v176, v24, v25, v399);
    swift_unknownObjectRelease();
    if (v370 < v373)
    {
LABEL_188:

      goto LABEL_189;
    }

    v359 = v8;
    v25 = v449;
    v28 = &v448;
    v26 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    a5 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v373 == v370)
    {
      v184 = v433[22];
      if (v433[26] == 2)
      {
        if (v184 == 2)
        {
          goto LABEL_188;
        }
      }

      else if (v184 != 2 && (v433[19] ^ v433[23]) < 0x400)
      {
        goto LABEL_188;
      }
    }

    if (v448 != *(v14 + 96))
    {
      goto LABEL_378;
    }

    v414 = v448;
    v357 = v450;
    v358 = v449;
    if (v450)
    {
      v185 = v450 + 24 * ((v449 >> ((4 * *(v450 + 18) + 8) & 0x3C)) & 0xF);
      v24 = *(v185 + 32);
      v186 = *(v185 + 40);

      v372 = v186;
    }

    else
    {
      v187 = *(v14 + 72);
      v8 = *(v14 + 88);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v25, v187);
      v24 = v188;
      v372 = v189;
      swift_unknownObjectRelease();
    }

    v190 = 0;
    v191 = v369;
    v422 = v24;
    while (2)
    {
      if (v190 >= *(v426 + 2))
      {
        goto LABEL_357;
      }

      v432 = v190;
      v8 = *(v191 - 1);
      v25 = *v191;
      v431 = v191;
      if (*(a6 + 16))
      {

        v192 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v25);
        if (v193)
        {
          outlined init with copy of AttributedString._AttributeValue(*(a6 + 56) + 72 * v192, &v475);
          if (!*(v24 + 16))
          {
LABEL_173:

LABEL_174:
            v466 = 0;
            v464 = 0u;
            v465 = 0u;
            v462 = 0u;
            v463 = 0u;
            goto LABEL_175;
          }
        }

        else
        {
          v479 = 0;
          v478 = 0u;
          v477 = 0u;
          v476 = 0u;
          v475 = 0u;
          if (!*(v24 + 16))
          {
            goto LABEL_173;
          }
        }
      }

      else
      {
        v479 = 0;
        v478 = 0u;
        v477 = 0u;
        v476 = 0u;
        v475 = 0u;

        if (!*(v24 + 16))
        {
          goto LABEL_173;
        }
      }

      v194 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v25);
      v8 = v195;

      if ((v8 & 1) == 0)
      {
        goto LABEL_174;
      }

      outlined init with copy of AttributedString._AttributeValue(*(v24 + 56) + 72 * v194, &v462);
LABEL_175:
      outlined init with copy of AttributedString._AttributeValue?(&v475, &v448);
      outlined init with copy of AttributedString._AttributeValue?(&v462, &v457);
      if (v451)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v448, &v439);
        if (!*(&v458 + 1))
        {
          outlined destroy of TermOfAddress?(&v462, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v475, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v439);
LABEL_185:
          outlined destroy of TermOfAddress?(&v448, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_187:

          goto LABEL_188;
        }

        v436 = v459;
        v437 = v460;
        v438 = v461;
        v434 = v457;
        v435 = v458;
        v196 = v442;
        v428 = v443;
        v424 = __swift_project_boxed_opaque_existential_1(&v439, v442);
        v26 = *(&v435 + 1);
        v197 = __swift_project_boxed_opaque_existential_1(&v434, *(&v435 + 1));
        v430 = &v356;
        v25 = *(v196 - 8);
        MEMORY[0x1EEE9AC00](v197);
        a5 = &v356 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
        v429 = &v356;
        v200 = MEMORY[0x1EEE9AC00](v199);
        (*(v202 + 16))(&v356 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0), v200);
        v203 = type metadata accessor for Optional();
        v204 = *(v203 - 8);
        MEMORY[0x1EEE9AC00](v203);
        v206 = &v356 - v205;
        v207 = swift_dynamicCast();
        v208 = *(v25 + 56);
        if (!v207)
        {
          v208(v206, 1, 1, v196);
          v28 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
          outlined destroy of TermOfAddress?(&v462, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v475, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v204 + 8))(v206, v203);
          outlined destroy of AttributedString._AttributeValue(&v434);
          outlined destroy of AttributedString._AttributeValue(&v439);
          outlined destroy of TermOfAddress?(&v448, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v14 = v425;
          goto LABEL_187;
        }

        v208(v206, 0, 1, v196);
        (*(v25 + 32))(a5, v206, v196);
        v8 = dispatch thunk of static Equatable.== infix(_:_:)();
        v209 = *(v25 + 8);
        v25 += 8;
        v209(a5, v196);
        v26 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        a5 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v462, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v475, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v434);
        outlined destroy of AttributedString._AttributeValue(&v439);
        outlined destroy of TermOfAddress?(&v448, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v14 = v425;
        a6 = v419;
        v28 = &v448;
        v24 = v422;
        if ((v8 & 1) == 0)
        {
          goto LABEL_187;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v462, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v475, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v458 + 1))
        {
          goto LABEL_185;
        }

        outlined destroy of TermOfAddress?(&v448, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v190 = v432 + 1;
      v191 = v431 + 2;
      if (v423 != v432 + 1)
      {
        continue;
      }

      break;
    }

    v176 = *(v14 + 72);
    v24 = *(v14 + 80);
    v25 = *(v14 + 88);
    v178 = *(v14 + 96);
    v401 = v359;
    v157 = v414;
    v448 = v414;
    v449 = v358;
    v28 = v357;
    v413 = v358;
    v450 = v357;
    v177 = v373 + 1;
    if (!__OFADD__(v373, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_183:
  v399 = v157;
LABEL_189:
  v210 = *(v14 + 72);
  v211 = *(v14 + 80);
  v212 = *(v14 + 88);
  v213 = *(v14 + 96);
  swift_unknownObjectRetain();
  v24 = specialized Rope.subscript.getter(v399, v413, v402, v210, v211, v212, v213);
  a6 = v214;
  v8 = v215;
  swift_unknownObjectRelease();

  v216 = v401 + v24;
  if (__OFADD__(v401, v24))
  {
LABEL_379:
    __break(1u);
LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
LABEL_382:
    __break(1u);
LABEL_383:
    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
    goto LABEL_386;
  }

  v217 = *(v14 + 40);
  v500 = *(v14 + 24);
  v501 = v217;
  v502 = *(v14 + 56);
  a6 = v377;
  v24 = v216 - (v377 >> 11);
  if (__OFSUB__(v216, v377 >> 11))
  {
    goto LABEL_380;
  }

  swift_unknownObjectRetain();
  a6 = BigString.UTF8View.index(_:offsetBy:)();
  v8 = v218;
  v28 = v219;
  v25 = v220;
  swift_unknownObjectRelease();
  v221 = a6 >> 10;
  v222 = *(v14 + 24);
  v429 = *(v14 + 32);
  v223 = *(v14 + 48);
  v430 = *(v14 + 40);
  v431 = v223;
  v224 = *(v14 + 64);
  v432 = *(v14 + 56);
  v433 = v224;
  if (a6 >> 10 >= v378)
  {
    v226 = v412;
    v439 = v412;
    v28 = v407;
    v440 = v407;
    v8 = v403;
    v227 = v404;
    v441 = v403;
    v442 = v404;
    v228 = v417;
    v14 = v418;
    v443 = v418;
    v444 = v417;
    v229 = v415;
    a5 = v416;
    v445 = v416;
    v446 = v415;
    v230 = v222;
    swift_unknownObjectRetain();
    v231 = specialized Set.contains(_:)(0, 0, v421);
    v428 = v230;
    if (v231)
    {
      v494 = v230;
      v495 = v429;
      v496 = v430;
      v497 = v431;
      v498 = v432;
      v499 = v433;
      BigString.UTF8View.subscript.getter();
      *&v434 = v226;
      *(&v434 + 1) = v28;
      *&v435 = v8;
      *(&v435 + 1) = v227;
      *&v436 = v226;
      *(&v436 + 1) = v28;
      *&v437 = v8;
      *(&v437 + 1) = v227;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v434, &v448);
      outlined destroy of BigSubstring.UTF8View(&v475);
      v26 = v417;
      v14 = v418;
      a6 = v229;
      v24 = v378;
      v25 = v421;
      if (v455 != 2)
      {
        v14 = v452;
        if (v427 > v452 >> 10)
        {
          goto LABEL_393;
        }

        v26 = v453;
        a5 = v454;
        a6 = v455;
      }
    }

    else
    {
      v26 = v228;
      a6 = v229;
      v24 = v378;
      v25 = v421;
    }

    v486 = v412;
    v487 = v407;
    v488 = v403;
    v489 = v404;
    v490 = v14;
    v491 = v26;
    v492 = a5;
    v493 = a6;
    if ((specialized Collection<>._containsScalarConstraint.getter(v25) & 1) == 0)
    {
      swift_unknownObjectRelease();
LABEL_223:
      if (v14 >> 10 == v24)
      {
        v250 = v418;
      }

      else
      {
        v250 = v14;
      }

      v251 = v417;
      if (v14 >> 10 != v24)
      {
        v251 = v26;
      }

      v417 = v251;
      v418 = v250;
      if (v14 >> 10 == v24)
      {
        v252 = v416;
      }

      else
      {
        v252 = a5;
      }

      v253 = v415;
      if (v14 >> 10 != v24)
      {
        v253 = a6;
      }

      v415 = v253;
      v416 = v252;
      goto LABEL_275;
    }

    v8 = v25 + 56;
    v232 = 1 << *(v25 + 32);
    v233 = -1;
    if (v232 < 64)
    {
      v233 = ~(-1 << v232);
    }

    v234 = v233 & *(v25 + 56);
    v28 = (v232 + 63) >> 6;

    v25 = 0;
    v426 = MEMORY[0x1E69E7CC0];
    while (v234)
    {
LABEL_212:
      v236 = __clz(__rbit64(v234));
      v234 &= v234 - 1;
      v237 = (*(v421 + 48) + ((v25 << 10) | (16 * v236)));
      v238 = v237[1];
      if (v238 >= 2)
      {
        v239 = specialized Collection.first.getter(*v237, v238);
        if ((v239 & 0x100000000) == 0)
        {
          v424 = v239;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v426 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v426 + 2) + 1, 1, v426);
          }

          v241 = *(v426 + 2);
          v240 = *(v426 + 3);
          v242 = v241 + 1;
          v243 = v424;
          if (v241 >= v240 >> 1)
          {
            v423 = v241 + 1;
            v422 = v241;
            v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v240 > 1), v241 + 1, 1, v426);
            v242 = v423;
            v241 = v422;
            v426 = v245;
            v243 = v424;
          }

          v244 = v426;
          *(v426 + 2) = v242;
          *&v244[4 * v241 + 32] = v243;
        }
      }
    }

    while (1)
    {
      v235 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v235 >= v28)
      {

        v8 = a6;
        v480 = v428;
        v481 = v429;
        v482 = v430;
        v483 = v431;
        v484 = v432;
        v485 = v433;
        BigString.UnicodeScalarView.subscript.getter();
        v28 = v426;
        v246 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v426);
        v433 = v247;
        v432 = v248;
        v25 = v249;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v448);
        if (v25 == 2)
        {
          goto LABEL_223;
        }

        if (v427 <= v246 >> 10)
        {
          v14 = v246;
          v26 = v433;
          a5 = v432;
          a6 = v25;
          goto LABEL_223;
        }

        goto LABEL_394;
      }

      v234 = *(v8 + 8 * v235);
      ++v25;
      if (v234)
      {
        v25 = v235;
        goto LABEL_212;
      }
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
    goto LABEL_365;
  }

  v26 = v427;
  v14 = v403;
  a5 = v404;
  if (v221 < v427)
  {
LABEL_387:
    __break(1u);
    goto LABEL_388;
  }

  v439 = v412;
  v440 = v407;
  v441 = v403;
  v442 = v404;
  v443 = a6;
  v444 = v8;
  v445 = v28;
  v446 = v25;
  if (v427 == v221)
  {
LABEL_273:
    v418 = a6;
LABEL_274:
    v416 = v28;
    v417 = v8;
    v415 = v25;
    goto LABEL_275;
  }

  v225 = v222;
  swift_unknownObjectRetain();
  if ((specialized Set.contains(_:)(0, 0, v421) & 1) == 0)
  {
    v24 = v225;
LABEL_256:
    v486 = v412;
    v487 = v407;
    v488 = v14;
    v489 = a5;
    v490 = a6;
    v491 = v8;
    v492 = v28;
    v493 = v25;
    v274 = v421;
    if (specialized Collection<>._containsScalarConstraint.getter(v421))
    {
      v26 = v274 + 56;
      v275 = 1 << *(v274 + 32);
      v276 = -1;
      if (v275 < 64)
      {
        v276 = ~(-1 << v275);
      }

      v277 = v276 & *(v274 + 56);
      a5 = (v275 + 63) >> 6;

      v14 = 0;
      v426 = MEMORY[0x1E69E7CC0];
      while (v277)
      {
LABEL_265:
        v279 = __clz(__rbit64(v277));
        v277 &= v277 - 1;
        v280 = (*(v421 + 48) + ((v14 << 10) | (16 * v279)));
        v281 = v280[1];
        if (v281 >= 2)
        {
          v282 = specialized Collection.first.getter(*v280, v281);
          if ((v282 & 0x100000000) == 0)
          {
            v424 = v282;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v426 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v426 + 2) + 1, 1, v426);
            }

            v284 = *(v426 + 2);
            v283 = *(v426 + 3);
            v285 = v284 + 1;
            v286 = v424;
            if (v284 >= v283 >> 1)
            {
              v423 = v284 + 1;
              v422 = v284;
              v288 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v283 > 1), v284 + 1, 1, v426);
              v285 = v423;
              v284 = v422;
              v426 = v288;
              v286 = v424;
            }

            v287 = v426;
            *(v426 + 2) = v285;
            *&v287[4 * v284 + 32] = v286;
          }
        }
      }

      while (1)
      {
        v278 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v278 >= a5)
        {

          v480 = v24;
          v481 = v429;
          v482 = v430;
          v483 = v431;
          v484 = v432;
          v485 = v433;
          BigString.UnicodeScalarView.subscript.getter();
          a5 = v426;
          v328 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v426);
          v433 = v329;
          v14 = v330;
          v26 = v331;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v448);
          v417 = v8;
          v418 = a6;
          v415 = v25;
          v416 = v28;
          if (v26 == 2)
          {
            goto LABEL_275;
          }

          if (v427 <= v328 >> 10)
          {
            v417 = v433;
            v418 = v328;
            v415 = v26;
            v416 = v14;
            goto LABEL_275;
          }

          goto LABEL_399;
        }

        v277 = *(v26 + 8 * v278);
        ++v14;
        if (v277)
        {
          v14 = v278;
          goto LABEL_265;
        }
      }

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
      swift_unknownObjectRelease();
      __break(1u);
LABEL_371:
      __break(1u);
      goto LABEL_372;
    }

    swift_unknownObjectRelease();
    goto LABEL_273;
  }

  v24 = v225;
  v494 = v225;
  v495 = v429;
  v496 = v430;
  v497 = v431;
  v498 = v432;
  v499 = v433;
  BigString.UTF8View.subscript.getter();
  *&v434 = v412;
  *(&v434 + 1) = v407;
  *&v435 = v14;
  *(&v435 + 1) = a5;
  *&v436 = v412;
  *(&v436 + 1) = v407;
  *&v437 = v14;
  *(&v437 + 1) = a5;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v434, &v448);
  outlined destroy of BigSubstring.UTF8View(&v475);
  if (v455 == 2)
  {
    goto LABEL_256;
  }

  a6 = v452;
  if (v26 <= v452 >> 10)
  {
    v8 = v453;
    v28 = v454;
    v25 = v455;
    goto LABEL_256;
  }

LABEL_398:
  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:
  __break(1u);
LABEL_401:
  __break(1u);
LABEL_402:
  __break(1u);
LABEL_403:
  (v25)(v8, 1, 1, v14);
  (*(v365 + 8))(v8, v366);
  __break(1u);
LABEL_404:
  (v24)(v26, 1, 1, v28);
  (*(v367 + 8))(v26, v368);
  __break(1u);
LABEL_405:
  (*(*(v14 - 8) + 56))(a6, 1, 1, v14);
  (*(v361 + 8))(a6, v362);
  __break(1u);
LABEL_406:
  (*(*(a5 - 8) + 56))(v25, 1, 1, a5);
  result = (*(v363 + 8))(v25, v364);
  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice4<A, B, C, D>(uint64_t *a1, unint64_t a2, unint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  *v8 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[1] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[2] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[3] = type metadata accessor for Optional();
  v8[4] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8[9] = TupleTypeMetadata;
  v10 = *(TupleTypeMetadata - 1);
  v8[10] = v10;
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = v11;
  v8[11] = v11;
  v13 = AttributedString.Runs.AttributesSlice4.subscript.read(v8 + 5, a2, a3);
  v15 = v14;
  v17 = v16;
  v8[12] = v13;
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 16))(v12, v15, v22);
  v23 = TupleTypeMetadata[12];
  v24 = type metadata accessor for Optional();
  (*(*(v24 - 8) + 16))(v12 + v23, v17, v24);
  v25 = TupleTypeMetadata[16];
  v26 = type metadata accessor for Optional();
  (*(*(v26 - 8) + 16))(v12 + v25, v20, v26);
  v27 = TupleTypeMetadata[20];
  v28 = type metadata accessor for Optional();
  (*(*(v28 - 8) + 16))(v12 + v27, v19, v28);
  memmove((v12 + TupleTypeMetadata[24]), v21, 0x50uLL);
  return protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice4<A, B, C, D>;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice4<A, B, C, D>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 40;
  (*(*(*a1 + 80) + 8))(*(*a1 + 88), *(*a1 + 72));
  v5 = *(v3 + 88);
  (*(v3 + 96))(v4, a2);
  free(v5);

  free(v3);
}

void (*AttributedString.Runs.AttributesSlice4.subscript.read(uint64_t *a1, unint64_t a2, unint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  *v8 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[1] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[2] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[3] = type metadata accessor for Optional();
  v8[4] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8[8] = TupleTypeMetadata;
  v10 = *(TupleTypeMetadata - 1);
  v8[9] = v10;
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v8[10] = v11;
  v12 = TupleTypeMetadata[12];
  v13 = v11 + TupleTypeMetadata[16];
  v14 = v11 + TupleTypeMetadata[20];
  v15 = v11 + TupleTypeMetadata[24];
  AttributedString.Runs.AttributesSlice4.subscript.getter(v11, v11 + v12, v13, v14, v15, a2, a3);
  v8[5] = v13;
  v8[6] = v14;
  v8[7] = v15;
  return AttributedString.Runs.AttributesSlice4.subscript.read;
}

void AttributedString.Runs.AttributesSlice4.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  (*(*(*a1 + 72) + 8))(v2, *(*a1 + 64));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AttributedString.Runs.AttributesSlice4<A, B, C, D>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AttributedString.Runs.AttributesSlice4<A, B, C, D>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:limitedBy:)();
}

void protocol witness for Collection.distance(from:to:) in conformance AttributedString.Runs.AttributesSlice4<A, B, C, D>()
{
  swift_getWitnessTable();

  JUMPOUT(0x1865CAD30);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AttributedString.Runs.AttributesSlice4<A, B, C, D>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v60 = a8;
  v61 = a9;
  v14 = *a1;
  v15 = *a2;
  v16 = *a3;
  v62 = *a4;
  v17 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v9, v19, type metadata accessor for AttributedString.Runs);
  v59 = v19;
  outlined init with copy of AttributedString.Runs(v19, a9, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18121D6C0;
  v21 = MEMORY[0x1E69E77B0];
  v22 = *(v14 + *MEMORY[0x1E69E77B0] + 8);
  *(v20 + 32) = (*(a5 + 24))(v22, a5);
  *(v20 + 40) = v23;
  v24 = *(v15 + *v21 + 8);
  *(v20 + 48) = (*(a6 + 24))(v24, a6);
  *(v20 + 56) = v25;
  v26 = *(v16 + *v21 + 8);
  *(v20 + 64) = (*(a7 + 24))(v26, a7);
  *(v20 + 72) = v27;
  v28 = *(v62 + *v21 + 8);
  v29 = v60;
  *(v20 + 80) = (*(v60 + 24))(v28, v60);
  *(v20 + 88) = v30;
  v63 = v22;
  v64 = v24;
  v65 = v26;
  v66 = v28;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v70 = v29;
  v58 = type metadata accessor for AttributedString.Runs.AttributesSlice4();
  *(v61 + *(v58 + 84)) = v20;
  v31 = *(a5 + 32);
  v62 = &v71;
  v31(v22, a5);
  (*(a6 + 32))(v24, a6);
  (*(a7 + 32))(v26, a7);
  (*(v29 + 32))(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v32 = static _SetStorage.allocate(capacity:)();
  v33 = 0;
  v34 = v32 + 56;
  while (1)
  {
    v37 = &v62[2 * v33];
    v38 = *v37;
    v39 = v37[1];
    Hasher.init(_seed:)();
    if (v39 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v39)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    result = Hasher._finalize()();
    v41 = ~(-1 << *(v32 + 32));
    v42 = result & v41;
    v43 = (result & v41) >> 6;
    v44 = *(v34 + 8 * v43);
    v45 = 1 << (result & v41);
    if ((v45 & v44) == 0)
    {
      break;
    }

    while (1)
    {
      v46 = (*(v32 + 48) + 16 * v42);
      v47 = *v46;
      v48 = v46[1];
      if (v48 == 1)
      {
        if (v39 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v46, 1);
          v35 = v47;
          v36 = 1;
          goto LABEL_2;
        }

LABEL_14:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v46, v46[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v39);
        outlined consume of AttributedString.AttributeRunBoundaries?(v47, v48);
        v49 = v38;
        v50 = v39;
LABEL_15:
        result = outlined consume of AttributedString.AttributeRunBoundaries?(v49, v50);
        goto LABEL_16;
      }

      if (v39 == 1)
      {
        goto LABEL_14;
      }

      if (!v48)
      {
        break;
      }

      if (!v39)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v46, v46[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v47, v48);

        v49 = v47;
        v50 = v48;
        goto LABEL_15;
      }

      if (v47 == v38 && v48 == v39)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v39);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v39);

LABEL_33:
        v35 = v38;
        v36 = v39;
        goto LABEL_2;
      }

      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v47, v48);
      outlined copy of AttributedString.AttributeRunBoundaries?(v38, v39);
      outlined copy of AttributedString.AttributeRunBoundaries?(v47, v48);

      if (v52)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v38, v39);
        v38 = v47;
        v39 = v48;
        goto LABEL_33;
      }

      result = outlined consume of AttributedString.AttributeRunBoundaries?(v47, v48);
LABEL_16:
      v42 = (v42 + 1) & v41;
      v43 = v42 >> 6;
      v44 = *(v34 + 8 * (v42 >> 6));
      v45 = 1 << v42;
      if ((v44 & (1 << v42)) == 0)
      {
        goto LABEL_29;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v46, 0);
    if (v39)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v38, v39);

      v49 = v47;
      v50 = 0;
      goto LABEL_15;
    }

    swift_bridgeObjectRelease_n();
    v35 = v47;
    v36 = 0;
LABEL_2:
    outlined consume of AttributedString.AttributeRunBoundaries?(v35, v36);
LABEL_3:
    if (++v33 == 4)
    {
      outlined destroy of AttributedString.Runs(v59, type metadata accessor for AttributedString.Runs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
      result = swift_arrayDestroy();
      *(v61 + *(v58 + 88)) = v32;
      return result;
    }
  }

LABEL_29:
  *(v34 + 8 * v43) = v44 | v45;
  v53 = (*(v32 + 48) + 16 * v42);
  *v53 = v38;
  v53[1] = v39;
  v54 = *(v32 + 16);
  v55 = __OFADD__(v54, 1);
  v56 = v54 + 1;
  if (!v55)
  {
    *(v32 + 16) = v56;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void AttributedString.Runs.AttributesSlice1.startIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 88);
    v4 = *(*v1 + 16);
    *a1 = *(v1 + 72);
    *(a1 + 16) = v3;
    *(a1 + 24) = v2;
    *(a1 + 32) = v4;
  }
}

void AttributedString.Runs.AttributesSlice1.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 200);
    v4 = *(*v1 + 16);
    *a1 = *(v1 + 184);
    *(a1 + 16) = v3;
    *(a1 + 24) = v2;
    *(a1 + 32) = v4;
  }
}

void AttributedString.Runs.AttributesSlice5.index(after:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v227 - v10;
  *(&v264 + 1) = *&v3[*(a2 + 100)];
  v258 = *(*(&v264 + 1) + 16);
  if (!v258)
  {
    goto LABEL_177;
  }

  v243 = a3;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v255 = *&v3[*(a2 + 104)];
  v16 = v3;
  v17 = *v3;
  v253 = v12;
  v247 = v15;
  v248 = v13;
  v251 = v14;
  AttributedString.Guts.findRun(at:)(v12, v15, &v290);
  v254 = v291;
  v252 = v292;
  v18 = v293;
  v249 = v290;
  v250 = v294;
  v238 = v296;
  v239 = v295;
  v236 = v297;
  v237 = *(&v296 + 1);
  v19 = *(type metadata accessor for AttributedString.Runs() + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v272 = v16;
  v269 = v20;
  v270 = v19;
  RangeSet.ranges.getter();
  v21 = RangeSet.Ranges.count.getter();
  v22 = *(v9 + 8);
  v267 = v11;
  v268 = v9 + 8;
  v271 = v22;
  (v22)(v11, v8);
  if (v21 < 1)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v23 = 0;
  v24 = v253 >> 10;
  while (1)
  {
    if (__OFADD__(v23, v21))
    {
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v4 = (v23 + v21) / 2;
    v25 = v267;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v271)(v25, v8);
    if (v24 >= v290 >> 10)
    {
      break;
    }

LABEL_4:
    v21 = v4;
    if (v23 >= v4)
    {
      goto LABEL_170;
    }
  }

  v26 = v294;
  if (v24 >= v294 >> 10)
  {
    v23 = v4 + 1;
    v4 = v21;
    goto LABEL_4;
  }

  v246 = v294 >> 10;
  v244 = v295;
  v245 = v296;
  v27 = v255;
  v28 = *(v255 + 16);
  v257 = v17;
  v240 = v294;
  v241 = v24;
  v231 = v8;
  if (v28 == 1 && (specialized Set.contains(_:)(0, 1, v255) & 1) == 0)
  {
    v31 = v17[3];
    v32 = v17[4];
    v33 = v17[6];
    *(&v264 + 1) = v17[5];
    v265 = v32;
    v34 = v17[8];
    v263 = v17[7];
    *&v264 = v33;
    v262 = v34;
    *&v303 = v253;
    v35 = v247;
    *(&v303 + 1) = v248;
    v36 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    *&v305 = v26;
    v38 = v244;
    v37 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v266 = v31;
    swift_unknownObjectRetain();
    v40 = specialized Set.contains(_:)(0, 0, v27);
    v41 = v38;
    v42 = v37;
    v43 = v35;
    v44 = v36;
    v45 = v248;
    if (v40)
    {
      *&v323 = v266;
      *(&v323 + 1) = v265;
      *&v324 = *(&v264 + 1);
      *(&v324 + 1) = v264;
      *&v325 = v263;
      *(&v325 + 1) = v262;
      BigString.UTF8View.subscript.getter();
      v278 = v253;
      v279 = v45;
      v280 = v44;
      v281 = v43;
      v282 = v253;
      v283 = v45;
      v284 = v44;
      v285 = v43;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      outlined destroy of BigSubstring.UTF8View(&v308);
      v26 = v240;
      v41 = v244;
      v39 = *(&v245 + 1);
      v42 = v245;
      if (*(&v296 + 1) != 2)
      {
        v26 = v294;
        if (v24 > v294 >> 10)
        {
          goto LABEL_189;
        }

        v41 = v295;
        v39 = *(&v296 + 1);
        v42 = v296;
        v43 = v247;
        v45 = v248;
        v44 = v251;
      }
    }

    *&v273 = v253;
    *(&v273 + 1) = v45;
    *&v274 = v44;
    *(&v274 + 1) = v43;
    *&v275 = v26;
    *(&v275 + 1) = v41;
    v261 = v41;
    *&v276 = v42;
    *(&v276 + 1) = v39;
    v46 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v47 = v46 + 56;
      v48 = 1 << *(v46 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v46 + 56);
      v51 = (v48 + 63) >> 6;

      v52 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      while (v50)
      {
LABEL_28:
        v55 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v56 = (*(v255 + 48) + ((v52 << 10) | (16 * v55)));
        v57 = v56[1];
        if (v57 >= 2)
        {
          v58 = specialized Collection.first.getter(*v56, v57);
          if ((v58 & 0x100000000) == 0)
          {
            v260 = v58;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
            }

            v60 = *(v53 + 2);
            v59 = *(v53 + 3);
            v61 = v60 + 1;
            v62 = v260;
            if (v60 >= v59 >> 1)
            {
              v259 = v60 + 1;
              v63 = v53;
              v64 = v60;
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v63);
              v61 = v259;
              v62 = v260;
              v60 = v64;
              v53 = v65;
            }

            *(v53 + 2) = v61;
            *&v53[4 * v60 + 32] = v62;
          }
        }
      }

      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_175;
        }

        if (v54 >= v51)
        {

          v318 = v266;
          v319 = v265;
          *&v320 = *(&v264 + 1);
          *(&v320 + 1) = v264;
          v321 = v263;
          v322 = v262;
          BigString.UnicodeScalarView.subscript.getter();
          v189 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v53);
          v265 = v190;
          v192 = v191;
          v194 = v193;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v194 == 2)
          {
            goto LABEL_140;
          }

          if (v241 <= v189 >> 10)
          {
            v26 = v189;
            v261 = v265;
            v42 = v192;
            v39 = v194;
            goto LABEL_140;
          }

          goto LABEL_190;
        }

        v50 = *(v47 + 8 * v54);
        ++v52;
        if (v50)
        {
          v52 = v54;
          goto LABEL_28;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_140:
    if (v246 == v26 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v195 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v195 - 1;
      v39 = v243;
      if (__OFSUB__(v195, 1))
      {
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
        goto LABEL_191;
      }

LABEL_142:
      v196 = v257;
      if (v4 == v186)
      {
        v197 = v257[2];
        v199 = v244;
        v198 = v245;
        *v39 = v240;
        v39[1] = v199;
        *(v39 + 1) = __PAIR128__(*(&v245 + 1), v198);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v271)(v151, v184);
        v197 = v196[2];
        v200 = v287;
        *v39 = v286;
        *(v39 + 1) = v200;
      }

      v39[4] = v197;
      return;
    }

    v187 = v257[2];
    v188 = v243;
    v201 = v261;
    *v243 = v26;
    v188[1] = v201;
    v188[2] = v42;
LABEL_147:
    v188[3] = v39;
    v188[4] = v187;
    return;
  }

  v29 = *(v272 + 15);
  if (v18 != v29)
  {
LABEL_37:
    if (v18 >= v29)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v232 = *(v272 + 15);
    v66 = v17[9];
    v67 = v17[10];
    v68 = v17[11];
    v69 = v17[12];
    v266 = v18;
    swift_unknownObjectRetain();
    v70 = v249;
    v71 = v254;
    v72 = v252;
    specialized Rope.subscript.getter(v249, v254, v252, v66, v67, v68, v69);
    v256 = v73;
    v229 = v74;
    swift_unknownObjectRelease();
    v75 = v70;
    v76 = v17[9];
    v77 = v266 + 1;
    v18 = v72;
    v230 = *(&v264 + 1) + 40;
    v79 = v17[11];
    v78 = v17[12];
    v290 = v75;
    v291 = v71;
    v292 = v72;
LABEL_39:
    if (v75 != v78)
    {
      goto LABEL_178;
    }

    v235 = v77;
    v242 = v78;
    v266 = v79;
    if (v18)
    {
      v80 = *(v18 + 24 * ((v254 >> ((4 * *(v18 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v80 = specialized Rope._Node.subscript.getter(v254, v76);
    }

    if (__OFADD__(v250, v80))
    {
      goto LABEL_179;
    }

    if (v76)
    {
      v81 = ((-15 << ((4 * *(v76 + 18) + 8) & 0x3C)) - 1) & *(v76 + 18) | (*(v76 + 16) << ((4 * *(v76 + 18) + 8) & 0x3C));
    }

    else
    {
      v81 = 0;
    }

    if (v254 >= v81)
    {
      goto LABEL_180;
    }

    v228 = v250 + v80;
    if (v18 && (v82 = (4 * *(v18 + 18) + 8) & 0x3C, v83 = ((v254 >> v82) & 0xF) + 1, v83 < *(v18 + 16)))
    {
      v234 = (v83 << v82) | ((-15 << v82) - 1) & v254;
      swift_unknownObjectRelease();
    }

    else
    {
      if ((specialized Rope._Node.formSuccessor(of:)(&v290, v76) & 1) == 0)
      {
        v84 = v256;
        if (v76)
        {
          v87 = *(v76 + 18);
          v88 = *(v76 + 16);
          swift_unknownObjectRelease();
          v85 = 0;
          v234 = ((-15 << ((4 * v87 + 8) & 0x3C)) - 1) & v87 | (v88 << ((4 * v87 + 8) & 0x3C));
        }

        else
        {
          v234 = 0;
          v85 = 0;
        }

        v86 = v242;
LABEL_58:
        if (v232 >= v235)
        {
          if (v235 == v232)
          {
            v89 = *(v272 + 22);
            if (*(v272 + 26) == 2)
            {
              if (v89 == 2)
              {
                goto LABEL_171;
              }
            }

            else if (v89 != 2 && (*(v272 + 19) ^ *(v272 + 23)) < 1024)
            {
              goto LABEL_171;
            }
          }

          if (v86 != v17[12])
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v249 = v86;
          v252 = v18;
          v227 = v85;
          if (v85)
          {
            v90 = v85 + 24 * ((v234 >> ((4 * *(v85 + 18) + 8) & 0x3C)) & 0xF);
            v92 = *(v90 + 32);
            v91 = *(v90 + 40);

            v233 = v91;
          }

          else
          {
            v93 = v17[9];
            swift_unknownObjectRetain();
            specialized Rope._Node.subscript.getter(v234, v93);
            v92 = v94;
            v233 = v95;
            swift_unknownObjectRelease();
          }

          v96 = 0;
          v97 = v230;
          v259 = v92;
          while (1)
          {
            if (v96 >= *(*(&v264 + 1) + 16))
            {
              goto LABEL_173;
            }

            v265 = v97;
            v266 = v96;
            v99 = *(v97 - 1);
            v98 = *v97;
            if (*(v84 + 16))
            {

              v100 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
              if (v101)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v84 + 56) + 72 * v100, &v308);
                if (!*(v92 + 16))
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v312 = 0;
                v310 = 0u;
                v311 = 0u;
                v308 = 0u;
                v309 = 0u;
                if (!*(v92 + 16))
                {
LABEL_82:

LABEL_83:
                  v307 = 0;
                  v305 = 0u;
                  v306 = 0u;
                  v303 = 0u;
                  v304 = 0u;
                  goto LABEL_84;
                }
              }
            }

            else
            {
              v312 = 0;
              v310 = 0u;
              v311 = 0u;
              v308 = 0u;
              v309 = 0u;

              if (!*(v92 + 16))
              {
                goto LABEL_82;
              }
            }

            v102 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
            v104 = v103;

            if ((v104 & 1) == 0)
            {
              goto LABEL_83;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v92 + 56) + 72 * v102, &v303);
LABEL_84:
            outlined init with copy of AttributedString._AttributeValue?(&v308, &v290);
            outlined init with copy of AttributedString._AttributeValue?(&v303, &v298);
            if (v293)
            {
              outlined init with copy of AttributedString._AttributeValue?(&v290, &v278);
              if (!*(&v299 + 1))
              {
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(&v278);
LABEL_94:
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_96:

                goto LABEL_97;
              }

              v275 = v300;
              v276 = v301;
              v277 = v302;
              v273 = v298;
              v274 = v299;
              v105 = v281;
              v261 = v282;
              v260 = __swift_project_boxed_opaque_existential_1(&v278, v281);
              v106 = __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
              *&v264 = &v227;
              v107 = *(v105 - 8);
              MEMORY[0x1EEE9AC00](v106);
              v109 = &v227 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
              v263 = &v227;
              v111 = MEMORY[0x1EEE9AC00](v110);
              (*(v113 + 16))(&v227 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0), v111);
              v114 = type metadata accessor for Optional();
              v262 = &v227;
              v115 = *(v114 - 8);
              MEMORY[0x1EEE9AC00](v114);
              v117 = &v227 - v116;
              v118 = swift_dynamicCast();
              v119 = *(v107 + 56);
              if (!v118)
              {
                v119(v117, 1, 1, v105);
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                (*(v115 + 8))(v117, v114);
                outlined destroy of AttributedString._AttributeValue(&v273);
                outlined destroy of AttributedString._AttributeValue(&v278);
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                v17 = v257;
                goto LABEL_96;
              }

              v119(v117, 0, 1, v105);
              (*(v107 + 32))(v109, v117, v105);
              v120 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v107 + 8))(v109, v105);
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(&v273);
              outlined destroy of AttributedString._AttributeValue(&v278);
              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v84 = v256;
              v17 = v257;
              if ((v120 & 1) == 0)
              {
                goto LABEL_96;
              }
            }

            else
            {
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (*(&v299 + 1))
              {
                goto LABEL_94;
              }

              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            v96 = v266 + 1;
            v97 = v265 + 2;
            v92 = v259;
            if (v258 == v266 + 1)
            {

              v76 = v17[9];
              v79 = v17[11];
              v78 = v17[12];
              v250 = v228;
              v75 = v249;
              v290 = v249;
              v291 = v234;
              v18 = v227;
              v254 = v234;
              v292 = v227;
              v77 = v235 + 1;
              if (!__OFADD__(v235, 1))
              {
                goto LABEL_39;
              }

              __break(1u);
              goto LABEL_92;
            }
          }
        }

LABEL_171:

        goto LABEL_98;
      }

      swift_unknownObjectRelease();
      v234 = v291;
    }

    v84 = v256;
    v85 = v292;
    v86 = v290;
    goto LABEL_58;
  }

  v30 = *(v272 + 22);
  if (*(v272 + 26) != 2)
  {
    if (v30 == 2 || (*(v272 + 19) ^ *(v272 + 23)) >= 1024)
    {
      goto LABEL_92;
    }

    goto LABEL_37;
  }

  if (v30 == 2)
  {
    goto LABEL_37;
  }

LABEL_92:
  v242 = v249;
LABEL_97:
  v18 = v252;
LABEL_98:
  v121 = v17[9];
  v122 = v17[10];
  v123 = v17[11];
  v124 = v17[12];
  swift_unknownObjectRetain();
  v125 = specialized Rope.subscript.getter(v242, v254, v18, v121, v122, v123, v124);
  swift_unknownObjectRelease();

  if (__OFADD__(v250, v125))
  {
    goto LABEL_182;
  }

  v126 = *(v17 + 5);
  v323 = *(v17 + 3);
  v324 = v126;
  v325 = *(v17 + 7);
  if (__OFSUB__(v250 + v125, v239 >> 11))
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  swift_unknownObjectRetain();
  v127 = BigString.UTF8View.index(_:offsetBy:)();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  swift_unknownObjectRelease();
  v134 = v127 >> 10;
  v135 = v17[3];
  v137 = v17[5];
  v136 = v17[6];
  v263 = v17[4];
  *&v264 = v137;
  *(&v264 + 1) = v136;
  v138 = v17[8];
  v265 = v17[7];
  v266 = v138;
  if (v127 >> 10 >= v246)
  {
    v147 = v253;
    *&v303 = v253;
    v149 = v247;
    v148 = v248;
    *(&v303 + 1) = v248;
    v150 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    v151 = v240;
    *&v305 = v240;
    v152 = v244;
    v153 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v262 = v135;
    swift_unknownObjectRetain();
    v154 = specialized Set.contains(_:)(0, 0, v255);
    v155 = v152;
    v156 = v241;
    if (v154)
    {
      v318 = v262;
      v319 = v263;
      v320 = v264;
      v321 = v265;
      v322 = v266;
      BigString.UTF8View.subscript.getter();
      v278 = v147;
      v279 = v148;
      v280 = v251;
      v281 = v149;
      v282 = v147;
      v283 = v148;
      v284 = v251;
      v285 = v149;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      v150 = v251;
      outlined destroy of BigSubstring.UTF8View(&v308);
      v151 = v240;
      v155 = v244;
      v39 = *(&v245 + 1);
      v153 = v245;
      if (*(&v296 + 1) != 2)
      {
        v151 = v294;
        if (v156 > v294 >> 10)
        {
          goto LABEL_187;
        }

        v155 = v295;
        v39 = *(&v296 + 1);
        v153 = v296;
        v148 = v248;
        v147 = v253;
      }
    }

    *&v273 = v147;
    *(&v273 + 1) = v148;
    *&v274 = v150;
    *(&v274 + 1) = v149;
    *&v275 = v151;
    *(&v275 + 1) = v155;
    v261 = v155;
    *&v276 = v153;
    *(&v276 + 1) = v39;
    v157 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v158 = v157 + 56;
      v159 = 1 << *(v157 + 32);
      v160 = -1;
      if (v159 < 64)
      {
        v160 = ~(-1 << v159);
      }

      v161 = v160 & *(v157 + 56);
      v162 = (v159 + 63) >> 6;

      v163 = 0;
      v164 = MEMORY[0x1E69E7CC0];
      while (v161)
      {
LABEL_120:
        v166 = __clz(__rbit64(v161));
        v161 &= v161 - 1;
        v167 = (*(v255 + 48) + ((v163 << 10) | (16 * v166)));
        v168 = v167[1];
        if (v168 >= 2)
        {
          v169 = specialized Collection.first.getter(*v167, v168);
          if ((v169 & 0x100000000) == 0)
          {
            v260 = v169;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
            }

            v171 = *(v164 + 2);
            v170 = *(v164 + 3);
            v172 = v171 + 1;
            v173 = v260;
            if (v171 >= v170 >> 1)
            {
              v259 = v171 + 1;
              v174 = v164;
              v175 = v171;
              v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v174);
              v172 = v259;
              v173 = v260;
              v171 = v175;
              v164 = v176;
            }

            *(v164 + 2) = v172;
            *&v164[4 * v171 + 32] = v173;
          }
        }
      }

      while (1)
      {
        v165 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          break;
        }

        if (v165 >= v162)
        {

          v313 = v262;
          v314 = v263;
          v315 = v264;
          v316 = v265;
          v317 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v178 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v164);
          v266 = v179;
          v181 = v180;
          v183 = v182;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          v177 = v261;
          if (v183 == 2)
          {
            goto LABEL_131;
          }

          if (v241 <= v178 >> 10)
          {
            v151 = v178;
            v177 = v266;
            v153 = v181;
            v39 = v183;
            goto LABEL_131;
          }

          goto LABEL_188;
        }

        v161 = *(v158 + 8 * v165);
        ++v163;
        if (v161)
        {
          v163 = v165;
          goto LABEL_120;
        }
      }

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

    swift_unknownObjectRelease();
    v177 = v261;
LABEL_131:
    if (v246 == v151 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v185 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v185 - 1;
      v39 = v243;
      if (!__OFSUB__(v185, 1))
      {
        goto LABEL_142;
      }

      __break(1u);
    }

    v187 = v257[2];
    v188 = v243;
    *v243 = v151;
    v188[1] = v177;
    v188[2] = v153;
    goto LABEL_147;
  }

  v139 = v241;
  v140 = v255;
  v141 = v251;
  v142 = v248;
  if (v134 < v241)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  *&v303 = v253;
  *(&v303 + 1) = v248;
  *&v304 = v251;
  *(&v304 + 1) = v247;
  *&v305 = v127;
  v143 = v129;
  *(&v305 + 1) = v129;
  *&v306 = v131;
  *(&v306 + 1) = v133;
  if (v241 == v134)
  {
    goto LABEL_169;
  }

  v144 = v135;
  swift_unknownObjectRetain();
  v145 = specialized Set.contains(_:)(0, 0, v140);
  v262 = v144;
  if ((v145 & 1) == 0)
  {
    v146 = v143;
LABEL_149:
    *&v273 = v253;
    *(&v273 + 1) = v142;
    *&v274 = v141;
    *(&v274 + 1) = v247;
    *&v275 = v127;
    *(&v275 + 1) = v146;
    v143 = v146;
    *&v276 = v131;
    *(&v276 + 1) = v133;
    if (specialized Collection<>._containsScalarConstraint.getter(v140))
    {
      v202 = v140 + 56;
      v203 = 1 << *(v140 + 32);
      v204 = -1;
      if (v203 < 64)
      {
        v204 = ~(-1 << v203);
      }

      v205 = v204 & *(v140 + 56);
      v206 = (v203 + 63) >> 6;

      v207 = 0;
      v272 = MEMORY[0x1E69E7CC0];
      while (v205)
      {
LABEL_158:
        v209 = __clz(__rbit64(v205));
        v205 &= v205 - 1;
        v210 = (*(v140 + 48) + ((v207 << 10) | (16 * v209)));
        v211 = v210[1];
        if (v211 >= 2)
        {
          v212 = specialized Collection.first.getter(*v210, v211);
          if ((v212 & 0x100000000) == 0)
          {
            v271 = v212;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v272 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v272 + 2) + 1, 1, v272);
            }

            v213 = v271;
            v215 = *(v272 + 2);
            v214 = *(v272 + 3);
            v216 = v215 + 1;
            if (v215 >= v214 >> 1)
            {
              v270 = v215 + 1;
              v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v215 + 1, 1, v272);
              v216 = v270;
              v213 = v271;
              v272 = v218;
            }

            v217 = v272;
            *(v272 + 2) = v216;
            *&v217[4 * v215 + 32] = v213;
            v140 = v255;
          }
        }
      }

      while (1)
      {
        v208 = v207 + 1;
        if (__OFADD__(v207, 1))
        {
          goto LABEL_176;
        }

        if (v208 >= v206)
        {

          v318 = v262;
          v319 = v263;
          v320 = v264;
          v321 = v265;
          v322 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v219 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v272);
          v271 = v220;
          v222 = v221;
          v224 = v223;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v224 == 2)
          {
            goto LABEL_169;
          }

          if (v241 <= v219 >> 10)
          {
            v127 = v219;
            v143 = v271;
            v131 = v222;
            v133 = v224;
            goto LABEL_169;
          }

          goto LABEL_192;
        }

        v205 = *(v202 + 8 * v208);
        ++v207;
        if (v205)
        {
          v207 = v208;
          goto LABEL_158;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_169:
    v225 = v257[2];
    v226 = v243;
    *v243 = v127;
    v226[1] = v143;
    v226[2] = v131;
    v226[3] = v133;
    v226[4] = v225;
    return;
  }

  *&v286 = v144;
  *(&v286 + 1) = v263;
  v287 = v264;
  v288 = v265;
  v289 = v266;
  BigString.UTF8View.subscript.getter();
  v278 = v253;
  v279 = v142;
  v280 = v251;
  v281 = v247;
  v282 = v253;
  v283 = v142;
  v284 = v251;
  v285 = v247;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
  v141 = v251;
  outlined destroy of BigSubstring.UTF8View(&v308);
  v146 = v143;
  if (*(&v296 + 1) == 2)
  {
    goto LABEL_149;
  }

  v127 = v294;
  if (v139 <= v294 >> 10)
  {
    v146 = v295;
    v133 = *(&v296 + 1);
    v131 = v296;
    goto LABEL_149;
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
}

uint64_t AttributedString.Runs.AttributesSlice5.index(before:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v282 - v10;
  v313 = *(v4 + *(a2 + 100));
  v311 = *(v313 + 16);
  if (!v311)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v299 = a3;
  v12 = *a1;
  v314 = a1[1];
  v309 = *(v4 + *(a2 + 104));
  v13 = v4[23];
  v14 = v4[26];
  v310 = v12;
  v15 = v12;
  v16 = *(type metadata accessor for AttributedString.Runs() + 24);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v317 = v16;
  RangeSet.ranges.getter();
  v17 = v11;
  v18 = RangeSet.Ranges.count.getter();
  v19 = v8;
  v20 = v18;
  v22 = *(v9 + 8);
  v21 = (v9 + 8);
  v318 = v19;
  v319 = v22;
  (v22)(v11);
  v25 = v21;
  if (v14 == 2 || (v13 ^ v15) >= 0x400)
  {
    v315 = v21;
    if (v20 >= 1)
    {
      v25 = v4;
      v26 = 0;
      v27 = v15 >> 10;
      while (!__OFADD__(v26, v20))
      {
        v14 = (v26 + v20) / 2;
        RangeSet.ranges.getter();
        v28 = v318;
        v17 = v11;
        RangeSet.Ranges.subscript.getter();
        (v319)(v11, v28);
        v23 = v331;
        if (v27 < v331 >> 10)
        {
          v20 = (v26 + v20) / 2;
          if (v26 >= v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v24 = v314;
          if (v27 < v334 >> 10)
          {
            goto LABEL_13;
          }

          v26 = v14 + 1;
          if (v14 + 1 >= v20)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v4 = v25;
    if ((v23 ^ v15) > 0x3FF)
    {
      v304 = v23;
      v297 = v332;
      v30 = v333;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = v20;
  }

  if (v14 < 1)
  {
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
    goto LABEL_250;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v29 = v318;
  RangeSet.Ranges.subscript.getter();
  (v319)(v11, v29);
  v297 = v332;
  v304 = v331;
  v30 = v333;
  v24 = v335;
  v310 = v334;
LABEL_17:
  v314 = v24;
  v31 = v309;
  if (*(v309 + 16) == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v309);
    if ((result & 1) == 0)
    {
      v62 = *v4;
      v63 = *(*v4 + 24);
      v64 = *(*v4 + 56);
      v365 = *(*v4 + 40);
      v366 = v64;
      v364 = v63;
      v65 = v310 >> 10;
      v66 = v304;
      if (v310 >> 10 < v304 >> 10)
      {
LABEL_255:
        __break(1u);
        goto LABEL_256;
      }

      v67 = v62[3];
      v68 = v62[4];
      v69 = v62[5];
      v70 = v62[6];
      v71 = v62[7];
      v72 = v62[8];
      *&v341[1] = v297;
      v341[0] = v304;
      v341[3] = v30;
      v73 = v297;
      v342 = v310;
      v343 = v314;
      v74 = *(&v297 + 1);
      if (v304 >> 10 == v65)
      {
        goto LABEL_225;
      }

      v316 = v72;
      v317 = v71;
      v318 = v70;
      v319 = v69;
      v75 = *(v62 + 5);
      v354 = *(v62 + 3);
      v355 = v75;
      v308 = v62;
      v356 = v62[7];
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v354, &v331);
      if ((specialized Set.contains(_:)(0, 0, v31) & 1) != 0 && v65 > BigString.startIndex.getter() >> 10)
      {
        v315 = v67;
        *&v361 = v67;
        *(&v361 + 1) = v68;
        v313 = v68;
        *&v362 = v319;
        *(&v362 + 1) = v318;
        *&v363 = v317;
        *(&v363 + 1) = v316;
        v76 = BigString.UTF8View.index(before:)();
        v78 = v77;
        v80 = v79;
        v82 = v81;
        result = BigString.UTF8View.subscript.getter();
        if (v65 < v76 >> 10)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v325 = v76;
        v326 = v78;
        v327 = v80;
        v328 = v82;
        v329 = v310;
        v330 = v314;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
        result = outlined destroy of BigSubstring.UTF8View(&v345);
        v83 = v304;
        v31 = v309;
        v84 = v314;
        v67 = v315;
        v68 = v313;
        if (v333 != 2)
        {
          v83 = v331;
          if (v65 < v331 >> 10)
          {
            goto LABEL_265;
          }

          v74 = *(&v332 + 1);
          v73 = v332;
          v30 = v333;
        }
      }

      else
      {
        v83 = v304;
        v84 = v314;
      }

      v304 = v83;
      *&v320 = v83;
      *(&v320 + 1) = v73;
      *&v321 = v74;
      *(&v321 + 1) = v30;
      v322 = v310;
      v323 = v84;
      if (specialized Collection<>._containsScalarConstraint.getter(v31))
      {
        v313 = v68;
        v315 = v67;
        v85 = v31;
        v88 = *(v31 + 56);
        v87 = v31 + 56;
        v86 = v88;
        v89 = 1 << *(v85 + 32);
        v90 = -1;
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        v91 = v90 & v86;
        v92 = (v89 + 63) >> 6;

        v93 = 0;
        v94 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v91)
          {
            goto LABEL_62;
          }

          do
          {
            v95 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_243;
            }

            if (v95 >= v92)
            {

              *&v358 = v315;
              *(&v358 + 1) = v313;
              *&v359 = v319;
              *(&v359 + 1) = v318;
              *&v360 = v317;
              *(&v360 + 1) = v316;
              BigString.UnicodeScalarView.subscript.getter();
              v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v94);
              v272 = v279;
              v274 = v280;
              v276 = v281;
              outlined destroy of BigString(&v364);

              result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
              if (v276 != 2)
              {
                v62 = v308;
                if (v65 >= v66 >> 10)
                {
LABEL_228:
                  v73 = v272;
                  v74 = v274;
                  v30 = v276;
                  goto LABEL_225;
                }

LABEL_262:
                __break(1u);
                goto LABEL_263;
              }

LABEL_224:
              v62 = v308;
              v66 = v304;
LABEL_225:
              v277 = v62[2];
              v278 = v299;
              *v299 = v66;
              v278[1] = v73;
              v278[2] = v74;
              v278[3] = v30;
              v278[4] = v277;
              return result;
            }

            v91 = *(v87 + 8 * v95);
            ++v93;
          }

          while (!v91);
          v93 = v95;
LABEL_62:
          v96 = __clz(__rbit64(v91));
          v91 &= v91 - 1;
          v97 = (*(v309 + 48) + ((v93 << 10) | (16 * v96)));
          v98 = v97[1];
          if (v98 >= 2)
          {
            v99 = specialized Collection.first.getter(*v97, v98);
            if ((v99 & 0x100000000) == 0)
            {
              *&v314 = v99;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
              }

              v101 = *(v94 + 2);
              v100 = *(v94 + 3);
              v102 = (v101 + 1);
              v103 = v314;
              if (v101 >= v100 >> 1)
              {
                v312 = (v101 + 1);
                v104 = v94;
                v105 = v101;
                v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v104);
                v102 = v312;
                v101 = v105;
                v94 = v106;
                v103 = v314;
              }

              *(v94 + 2) = v102;
              *&v94[4 * v101 + 32] = v103;
            }
          }
        }
      }

LABEL_222:
      v265 = &v364;
      goto LABEL_223;
    }
  }

  v298 = v30;
  v33 = *v4;
  v34 = *(*v4 + 24);
  v295 = (*v4 + 24);
  v35 = *(v33 + 40);
  v364 = v34;
  v365 = v35;
  v366 = *(v33 + 56);
  swift_unknownObjectRetain();
  v285 = *(&v310 + 1);
  v296 = v310;
  v286 = v314;
  v36 = BigString.UTF8View.index(before:)();
  v38 = v37;
  v40 = v39;
  v293 = v41;
  swift_unknownObjectRelease();
  v42 = *(v33 + 72);
  v43 = *(v33 + 88);
  if (v42)
  {
    v44 = *(v33 + 88);
  }

  else
  {
    v44 = 0;
  }

  v301 = v36 >> 11;
  if (v44 < (v36 >> 11))
  {
    goto LABEL_246;
  }

  v290 = v40;
  v291 = v38;
  v45 = *(v33 + 80);
  v307 = *(v33 + 96);
  v308 = v33;
  v292 = v36;
  if (v42)
  {
    if (v301 < v43)
    {
      v17 = (v42 + 16);
      LODWORD(v46) = *(v42 + 16);
      if (*(v42 + 16))
      {
        v319 = v4;
        v47 = *(v42 + 18);
        swift_unknownObjectRetain_n();
        if (!v47)
        {
          v49 = 0;
          v48 = v301;
          v53 = v42;
          v4 = v319;
          goto LABEL_70;
        }

        v318 = v45;
        v48 = v301;
        v49 = v47;
        v50 = v42;
        while (1)
        {
          v51 = *v17;
          if (*v17)
          {
            break;
          }

          v57 = v48;
LABEL_38:
          if (v57)
          {
            goto LABEL_242;
          }

          v48 = 0;
LABEL_29:
          v49 = (v51 << ((4 * v47 + 8) & 0x3C)) | ((-15 << ((4 * v47 + 8) & 0x3C)) - 1) & v49;
          v52 = *(v50 + 24 + 24 * v51);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v53 = v52;
          v17 = (v52 + 16);
          LOBYTE(v47) = *(v53 + 18);
          v50 = v53;
          if (!v47)
          {
            LODWORD(v46) = *v17;
            if (*v17)
            {
              v45 = v318;
              v4 = v319;
LABEL_70:
              v107 = 0;
              v108 = 24;
              v61 = v48;
              v46 = v46;
              while (1)
              {
                v109 = *(v53 + v108);
                v110 = v61 - v109;
                if (__OFSUB__(v61, v109))
                {
                  goto LABEL_240;
                }

                if (__OFADD__(v110, 1))
                {
                  goto LABEL_241;
                }

                if (v110 + 1 < 1)
                {
                  break;
                }

                ++v107;
                v108 += 24;
                v61 -= v109;
                if (v46 == v107)
                {
                  if (!v110)
                  {
                    goto LABEL_76;
                  }

LABEL_232:
                  __break(1u);
LABEL_233:
                  __break(1u);
                  goto LABEL_234;
                }
              }

              v46 = v107;
            }

            else
            {
              v46 = 0;
              v45 = v318;
              v4 = v319;
              if (v48)
              {
                goto LABEL_232;
              }

LABEL_76:
              v61 = 0;
            }

            v111 = v53;
            swift_unknownObjectRelease();
            v60 = v111;
            v59 = v49 & 0xFFFFFFFFFFFFF0FFLL | (v46 << 8);
            v303 = v111;
LABEL_41:
            v302 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v307, v59, v60, v42, v45);
            swift_unknownObjectRelease();
            goto LABEL_80;
          }
        }

        v54 = 0;
        v55 = (v50 + 40);
        while (1)
        {
          v56 = *v55;
          v55 += 3;
          v57 = v48 - v56;
          if (__OFSUB__(v48, v56))
          {
            goto LABEL_233;
          }

          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v57 + 1 < 1)
          {
            v51 = v54;
            goto LABEL_29;
          }

          ++v54;
          v48 = v57;
          if (v51 == v54)
          {
            goto LABEL_38;
          }
        }

LABEL_234:
        __break(1u);
        goto LABEL_235;
      }
    }
  }

  v58 = swift_unknownObjectRetain();
  v59 = specialized Rope._endPath.getter(v58);
  v60 = 0;
  v61 = 0;
  v303 = 0;
  if (v42)
  {
    goto LABEL_41;
  }

  v302 = 0;
LABEL_80:
  v112 = (v301 - v61);
  if (__OFSUB__(v301, v61))
  {
    goto LABEL_247;
  }

  v113 = v308[9];
  v114 = v308[10];
  v115 = v308[11];
  v116 = v308[12];
  swift_unknownObjectRetain();
  v300 = v59;
  specialized Rope.subscript.getter(v307, v59, v303, v113, v114, v115, v116);
  v117 = v4;
  v119 = v118;
  v121 = v120;
  result = swift_unknownObjectRelease();
  v122 = v117[1];
  if (v122 >= v302)
  {

    goto LABEL_162;
  }

  v287 = v121;
  v288 = (v313 + 40);
  v305 = v119;
  v283 = v122;
  while (2)
  {
    v123 = v308[9];
    v124 = v308[12];
    v331 = v307;
    *&v332 = v300;
    v125 = v303;
    *(&v332 + 1) = v303;
    if (v307 != v124)
    {
      goto LABEL_248;
    }

    if (v123)
    {
      v126 = *(v123 + 18);
      result = swift_unknownObjectRetain();
      v125 = v303;
    }

    else
    {
      v126 = 0;
    }

    if (v126 >= v300)
    {
      goto LABEL_249;
    }

    v294 = v112;
    if (v125)
    {
      v127 = (4 * *(v125 + 18) + 8) & 0x3C;
      if (((v300 >> v127) & 0xF) != 0)
      {
        v128 = ((((v300 >> v127) & 0xF) - 1) << v127) | ((-15 << v127) - 1) & v300;
        *&v332 = v128;
LABEL_116:
        v148 = (v128 >> ((4 * *(v125 + 18) + 8) & 0x3C)) & 0xF;
        v303 = v125;
        v142 = *(v125 + 24 * v148 + 24);

        swift_unknownObjectRelease();
        v143 = 0;
        goto LABEL_117;
      }
    }

    v129 = (4 * *(v123 + 18) + 8) & 0x3C;
    v130 = (v300 >> v129) & 0xF;
    if (*(v123 + 18))
    {
      if (v130 >= *(v123 + 16))
      {
        swift_unknownObjectRetain();
        if (!v130)
        {
          goto LABEL_256;
        }

LABEL_113:
        *&v332 = v332 & ((-15 << v129) - 1) | ((v130 - 1) << v129);
        v146 = *(v123 + 24 * v130);
        swift_unknownObjectRetain();
        v147 = specialized Rope._Node.descendToLastItem(under:)(&v332, v146);
        swift_unknownObjectRelease();
        v125 = v147;
        *(&v332 + 1) = v147;
        goto LABEL_114;
      }

      v125 = *(v123 + 24 * ((v300 >> v129) & 0xF) + 24);
      v131 = (4 * *(v125 + 18) + 8) & 0x3C;
      v132 = (v300 >> v131) & 0xF;
      if (!*(v125 + 18))
      {
        if (v132)
        {
          *&v332 = ((v132 - 1) << v131) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v125;
          swift_unknownObjectRetain();
          goto LABEL_114;
        }

        swift_unknownObjectRetain();
LABEL_112:
        if (!v130)
        {
LABEL_256:
          result = swift_unknownObjectRelease();
          __break(1u);
          goto LABEL_257;
        }

        goto LABEL_113;
      }

      v133 = *(v125 + 16);
      v319 = *(v123 + 24 * ((v300 >> v129) & 0xF) + 24);
      if (v132 >= v133)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_108:
        if (v132)
        {
          *&v332 = v332 & ((-15 << v131) - 1) | ((v132 - 1) << v131);
          v144 = *(v125 + 24 * v132);
          swift_unknownObjectRetain();
          v145 = specialized Rope._Node.descendToLastItem(under:)(&v332, v144);
          swift_unknownObjectRelease();
          v125 = v145;
          *(&v332 + 1) = v145;
          swift_unknownObjectRelease();
          goto LABEL_114;
        }

        swift_unknownObjectRelease();
        goto LABEL_112;
      }

      v125 = *(v125 + 24 * ((v300 >> v131) & 0xF) + 24);
      v134 = ((4 * *(v125 + 18) + 8) & 0x3C);
      v135 = (v300 >> v134) & 0xF;
      if (!*(v125 + 18))
      {
        if (v135)
        {
          *&v332 = ((v135 - 1) << v134) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v125;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_154:
          v119 = v305;
          goto LABEL_155;
        }

        swift_unknownObjectRetain();
        v125 = v319;
        swift_unknownObjectRetain();
        v119 = v305;
        goto LABEL_108;
      }

      v136 = *(v125 + 16);
      v318 = v125;
      if (v135 < v136)
      {
        v137 = *(v125 + 24 * ((v300 >> v134) & 0xF) + 24);
        v138 = *(v137 + 18);
        v139 = (4 * v138 + 8) & 0x3C;
        v140 = (v300 >> v139) & 0xF;
        *&v345 = v140;
        if (v138)
        {
          v317 = v134;
          v141 = v137;
          LODWORD(v316) = v138;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          LODWORD(v316) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v141 + 16), v141 + 24, &v345, &v331, v316);
          swift_unknownObjectRelease();
          if (v316)
          {
            v125 = *(&v332 + 1);
LABEL_153:
            swift_unknownObjectRelease();
            goto LABEL_154;
          }

          goto LABEL_147;
        }

        if (v140)
        {
          *&v332 = ((v140 - 1) << v139) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v137;
          v125 = v137;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_153;
        }
      }

      v317 = v134;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
LABEL_147:
      if (v135)
      {
        *&v332 = v332 & ((-15 << v317) - 1) | ((v135 - 1) << v317);
        v180 = v318[3 * v135];
        swift_unknownObjectRetain();
        v181 = specialized Rope._Node.descendToLastItem(under:)(&v332, v180);
        swift_unknownObjectRelease();
        v125 = v181;
        *(&v332 + 1) = v181;
        swift_unknownObjectRelease();
        v119 = v305;
LABEL_155:
        swift_unknownObjectRelease();
LABEL_114:
        swift_unknownObjectRelease();
        if (v331 != v307)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v128 = v332;
        if (v125)
        {
          goto LABEL_116;
        }

        goto LABEL_102;
      }

      swift_unknownObjectRelease();
      v119 = v305;
      v125 = v319;
      goto LABEL_108;
    }

    if (!v130)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v128 = ((v130 - 1) << v129) | v300 & 0xFFFFFFFFFFFFF0FFLL;
    *&v332 = v128;
    *(&v332 + 1) = v123;
    v125 = v123;
    if (v123)
    {
      goto LABEL_116;
    }

LABEL_102:
    v142 = specialized Rope._Node.subscript.getter(v128, v123);
    swift_unknownObjectRelease();
    v303 = 0;
    v143 = 1;
LABEL_117:

    if (__OFSUB__(v294, v142))
    {
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    if (v307 != v308[12])
    {
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    v284 = (v294 - v142);
    v300 = v128;
    if (v143)
    {
      v149 = v308[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v128, v149);
      v151 = v150;
      v289 = v152;
      swift_unknownObjectRelease();
    }

    else
    {
      v153 = v303 + 24 * ((v128 >> ((4 * *(v303 + 18) + 8) & 0x3C)) & 0xF);
      v151 = *(v153 + 32);
      v154 = *(v153 + 40);

      v289 = v154;
    }

    v155 = 0;
    --v302;
    v156 = v288;
    v306 = v151;
    do
    {
      if (v155 >= *(v313 + 16))
      {
        __break(1u);
        goto LABEL_238;
      }

      v158 = *(v156 - 1);
      v157 = *v156;
      v319 = v156;
      if (*(v119 + 16))
      {

        v159 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
        if (v160)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v119 + 56) + 72 * v159, &v345);
          if (!*(v151 + 16))
          {
            goto LABEL_133;
          }
        }

        else
        {
          v349 = 0;
          v347 = 0u;
          v348 = 0u;
          v345 = 0u;
          v346 = 0u;
          if (!*(v151 + 16))
          {
LABEL_133:

            goto LABEL_134;
          }
        }
      }

      else
      {
        v349 = 0;
        v347 = 0u;
        v348 = 0u;
        v345 = 0u;
        v346 = 0u;

        if (!*(v151 + 16))
        {
          goto LABEL_133;
        }
      }

      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
      v163 = v162;

      if (v163)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v151 + 56) + 72 * v161, v341);
        goto LABEL_135;
      }

LABEL_134:
      v344 = 0;
      v342 = 0u;
      v343 = 0u;
      memset(v341, 0, sizeof(v341));
LABEL_135:
      outlined init with copy of AttributedString._AttributeValue?(&v345, &v331);
      outlined init with copy of AttributedString._AttributeValue?(v341, &v336);
      if (v333)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v331, &v325);
        if (!*(&v337 + 1))
        {
          outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v325);
LABEL_159:
          outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_161:

          v112 = v294;
          goto LABEL_162;
        }

        v322 = v338;
        v323 = v339;
        v324 = v340;
        v320 = v336;
        v321 = v337;
        v164 = v328;
        v315 = v329;
        v316 = v155;
        v312 = __swift_project_boxed_opaque_existential_1(&v325, v328);
        v165 = __swift_project_boxed_opaque_existential_1(&v320, *(&v321 + 1));
        v318 = &v282;
        v166 = *(v164 - 8);
        MEMORY[0x1EEE9AC00](v165);
        v168 = &v282 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
        v317 = &v282;
        v170 = MEMORY[0x1EEE9AC00](v169);
        (*(v172 + 16))(&v282 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0), v170);
        v173 = type metadata accessor for Optional();
        v174 = *(v173 - 8);
        MEMORY[0x1EEE9AC00](v173);
        v176 = &v282 - v175;
        v177 = swift_dynamicCast();
        v178 = *(v166 + 56);
        if (!v177)
        {
          v178(v176, 1, 1, v164);
          outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v174 + 8))(v176, v173);
          outlined destroy of AttributedString._AttributeValue(&v320);
          outlined destroy of AttributedString._AttributeValue(&v325);
          outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_161;
        }

        v178(v176, 0, 1, v164);
        (*(v166 + 32))(v168, v176, v164);
        v179 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v166 + 8))(v168, v164);
        outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v320);
        outlined destroy of AttributedString._AttributeValue(&v325);
        outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v119 = v305;
        v151 = v306;
        v155 = v316;
        if ((v179 & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v337 + 1))
        {
          goto LABEL_159;
        }

        outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      ++v155;
      v156 = v319 + 2;
    }

    while (v311 != v155);

    v17 = v284;
    v112 = v284;
    result = v287;
    if (v283 < v302)
    {
      continue;
    }

    break;
  }

LABEL_236:

  v112 = v17;
LABEL_162:
  v66 = v304;
  v62 = v308;
  if (v112 >= (v304 >> 11))
  {
    v192 = *(v308 + 5);
    v361 = *(v308 + 3);
    v362 = v192;
    v363 = *(v308 + 7);
    v193 = v308;
    swift_unknownObjectRetain();
    v66 = BigString.UTF8View.index(_:offsetBy:)();
    v73 = v194;
    v74 = v195;
    v30 = v196;
    result = swift_unknownObjectRelease();
    v197 = *v295;
    v198 = v295[2];
    v359 = v295[1];
    v360 = v198;
    v358 = v197;
    v199 = v296 >> 10;
    if (v296 >> 10 < v66 >> 10)
    {
LABEL_254:
      __break(1u);
      goto LABEL_255;
    }

    v201 = v193[3];
    v200 = v193[4];
    v202 = v193[5];
    v203 = v193[6];
    v204 = v193[7];
    v205 = v193[8];
    v341[0] = v66;
    v341[1] = v73;
    v341[2] = v74;
    v341[3] = v30;
    v342 = v310;
    v343 = v314;
    if (v66 >> 10 == v199)
    {
      v62 = v193;
      goto LABEL_225;
    }

    v315 = v205;
    v316 = v204;
    v317 = v203;
    v318 = v202;
    v319 = v200;
    v216 = v30;
    v217 = v66;
    v218 = v295[1];
    v367[0] = *v295;
    v367[1] = v218;
    v368 = *(v295 + 4);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v367, &v331);
    v219 = v309;
    if ((specialized Set.contains(_:)(0, 0, v309) & 1) != 0 && v199 > BigString.startIndex.getter() >> 10)
    {
      v313 = v201;
      *&v354 = v201;
      *(&v354 + 1) = v319;
      *&v355 = v318;
      *(&v355 + 1) = v317;
      v356 = v316;
      v357 = v315;
      v220 = BigString.UTF8View.index(before:)();
      v222 = v221;
      v312 = v223;
      v225 = v224;
      result = BigString.UTF8View.subscript.getter();
      if (v199 < v220 >> 10)
      {
        goto LABEL_259;
      }

      v325 = v220;
      v326 = v222;
      v327 = v312;
      v328 = v225;
      v329 = v310;
      v330 = v314;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
      result = outlined destroy of BigSubstring.UTF8View(&v345);
      v226 = v314;
      v219 = v309;
      v201 = v313;
      if (v333 != 2)
      {
        v217 = v331;
        if (v199 < v331 >> 10)
        {
          goto LABEL_264;
        }

        v74 = *(&v332 + 1);
        v73 = v332;
        v216 = v333;
      }
    }

    else
    {
      v226 = v314;
    }

    v304 = v217;
    *&v320 = v217;
    *(&v320 + 1) = v73;
    *&v321 = v74;
    *(&v321 + 1) = v216;
    v30 = v216;
    v322 = v310;
    v323 = v226;
    if (specialized Collection<>._containsScalarConstraint.getter(v219))
    {
      v313 = v201;
      v246 = v219 + 56;
      v247 = 1 << *(v219 + 32);
      v248 = -1;
      if (v247 < 64)
      {
        v248 = ~(-1 << v247);
      }

      v249 = v248 & *(v219 + 56);
      v250 = (v247 + 63) >> 6;

      v251 = 0;
      v252 = MEMORY[0x1E69E7CC0];
      while (v249)
      {
LABEL_208:
        v254 = __clz(__rbit64(v249));
        v249 &= v249 - 1;
        v255 = (*(v309 + 48) + ((v251 << 10) | (16 * v254)));
        v256 = v255[1];
        if (v256 >= 2)
        {
          v257 = specialized Collection.first.getter(*v255, v256);
          if ((v257 & 0x100000000) == 0)
          {
            *&v314 = v257;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v252 + 2) + 1, 1, v252);
            }

            v259 = *(v252 + 2);
            v258 = *(v252 + 3);
            v260 = (v259 + 1);
            v261 = v314;
            if (v259 >= v258 >> 1)
            {
              v312 = (v259 + 1);
              v262 = v252;
              v263 = v259;
              v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v258 > 1), v259 + 1, 1, v262);
              v260 = v312;
              v259 = v263;
              v252 = v264;
              v261 = v314;
            }

            *(v252 + 2) = v260;
            *&v252[4 * v259 + 32] = v261;
          }
        }
      }

      while (1)
      {
        v253 = v251 + 1;
        if (__OFADD__(v251, 1))
        {
          goto LABEL_239;
        }

        if (v253 >= v250)
        {

          *&v350 = v313;
          *(&v350 + 1) = v319;
          *&v351 = v318;
          *(&v351 + 1) = v317;
          v352 = v316;
          v353 = v315;
          BigString.UnicodeScalarView.subscript.getter();
          v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v252);
          v272 = v271;
          v274 = v273;
          v276 = v275;
          outlined destroy of BigString(&v358);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
          if (v276 == 2)
          {
            goto LABEL_224;
          }

          v62 = v308;
          if (v199 < v66 >> 10)
          {
            __break(1u);
            goto LABEL_222;
          }

          goto LABEL_228;
        }

        v249 = *(v246 + 8 * v253);
        ++v251;
        if (v249)
        {
          v251 = v253;
          goto LABEL_208;
        }
      }
    }

    v265 = &v358;
LABEL_223:
    result = outlined destroy of BigString(v265);
    goto LABEL_224;
  }

  v182 = *v295;
  v183 = v295[2];
  v362 = v295[1];
  v363 = v183;
  v361 = v182;
  v184 = v296 >> 10;
  v185 = v309;
  if (v296 >> 10 < v304 >> 10)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v186 = v308[3];
  v187 = v308[4];
  v188 = v308[5];
  v189 = v308[6];
  v190 = v308[7];
  v191 = v308[8];
  *&v341[1] = v297;
  v341[0] = v304;
  v341[3] = v298;
  v73 = v297;
  v342 = v310;
  v343 = v314;
  v74 = *(&v297 + 1);
  if (v304 >> 10 == v184)
  {
    v30 = v298;
    goto LABEL_225;
  }

  v318 = v191;
  v319 = v190;
  v206 = v295[1];
  v350 = *v295;
  v351 = v206;
  v352 = *(v295 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v350, &v331);
  if ((specialized Set.contains(_:)(0, 0, v185) & 1) == 0 || v184 <= BigString.startIndex.getter() >> 10)
  {
    v215 = v304;
    v214 = v314;
LABEL_182:
    v304 = v215;
    *&v320 = v215;
    *(&v320 + 1) = v73;
    *&v321 = v74;
    *(&v321 + 1) = v298;
    v322 = v310;
    v323 = v214;
    if (specialized Collection<>._containsScalarConstraint.getter(v185))
    {
      v315 = v189;
      v316 = v188;
      v317 = v187;
      v227 = v185 + 56;
      v228 = 1 << *(v185 + 32);
      v229 = -1;
      if (v228 < 64)
      {
        v229 = ~(-1 << v228);
      }

      v230 = v229 & *(v185 + 56);
      v231 = (v228 + 63) >> 6;

      v232 = 0;
      v233 = MEMORY[0x1E69E7CC0];
      while (v230)
      {
LABEL_191:
        v235 = __clz(__rbit64(v230));
        v230 &= v230 - 1;
        v236 = (*(v309 + 48) + ((v232 << 10) | (16 * v235)));
        v237 = v236[1];
        if (v237 >= 2)
        {
          v238 = specialized Collection.first.getter(*v236, v237);
          if ((v238 & 0x100000000) == 0)
          {
            *&v314 = v238;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
            }

            v240 = *(v233 + 2);
            v239 = *(v233 + 3);
            v241 = v240 + 1;
            v242 = v314;
            if (v240 >= v239 >> 1)
            {
              v313 = v240 + 1;
              v243 = v233;
              v244 = v240;
              v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v239 > 1), v240 + 1, 1, v243);
              v241 = v313;
              v242 = v314;
              v240 = v244;
              v233 = v245;
            }

            *(v233 + 2) = v241;
            *&v233[4 * v240 + 32] = v242;
          }
        }
      }

      while (1)
      {
        v234 = v232 + 1;
        if (__OFADD__(v232, 1))
        {
          break;
        }

        if (v234 >= v231)
        {

          *&v354 = v186;
          *(&v354 + 1) = v317;
          *&v355 = v316;
          *(&v355 + 1) = v315;
          v356 = v319;
          v357 = v318;
          BigString.UnicodeScalarView.subscript.getter();
          v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v233);
          v267 = v266;
          v269 = v268;
          v30 = v270;
          outlined destroy of BigString(&v361);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
          if (v30 == 2)
          {
            v62 = v308;
            v66 = v304;
            v30 = v298;
            goto LABEL_225;
          }

          v62 = v308;
          if (v184 >= v66 >> 10)
          {
            v73 = v267;
            v74 = v269;
            goto LABEL_225;
          }

          goto LABEL_260;
        }

        v230 = *(v227 + 8 * v234);
        ++v232;
        if (v230)
        {
          v232 = v234;
          goto LABEL_191;
        }
      }

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
      goto LABEL_244;
    }

    v265 = &v361;
    v30 = v298;
    goto LABEL_223;
  }

  *&v358 = v186;
  v316 = v188;
  v317 = v187;
  *(&v358 + 1) = v187;
  *&v359 = v188;
  v315 = v189;
  *(&v359 + 1) = v189;
  *&v360 = v319;
  *(&v360 + 1) = v318;
  v207 = BigString.UTF8View.index(before:)();
  v209 = v208;
  v211 = v210;
  v213 = v212;
  result = BigString.UTF8View.subscript.getter();
  if (v184 < v207 >> 10)
  {
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v325 = v207;
  v326 = v209;
  v327 = v211;
  v328 = v213;
  v329 = v310;
  v330 = v314;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
  result = outlined destroy of BigSubstring.UTF8View(&v345);
  v214 = v314;
  v215 = v304;
  v185 = v309;
  v188 = v316;
  v187 = v317;
  v189 = v315;
  if (v333 == 2)
  {
    goto LABEL_182;
  }

  v215 = v331;
  if (v184 >= v331 >> 10)
  {
    v74 = *(&v332 + 1);
    v73 = v332;
    v298 = v333;
    goto LABEL_182;
  }

LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.AttributesSlice5.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v9 = a8;
  v381 = a5;
  v385 = a4;
  v388 = a3;
  v394 = a2;
  v398 = a1;
  v12 = *(a8 + 88);
  v13 = &associated type descriptor for AttributedStringKey.Value;
  v382 = *(a8 + 48);
  v383 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v367 = *(v14 - 8);
  v368 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v403 = (&v355 - v15);
  v16 = *(v9 + 80);
  v386 = *(v9 + 40);
  v387 = v16;
  v390 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v365 = *(v17 - 8);
  v366 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v389 = &v355 - v18;
  v19 = *(v9 + 72);
  v391 = *(v9 + 32);
  v392 = v19;
  v405 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v363 = *(v20 - 8);
  v364 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v393 = &v355 - v21;
  v22 = *(v9 + 64);
  v395 = *(v9 + 24);
  v396 = v22;
  v399 = swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for Optional();
  v361 = *(v23 - 8);
  v362 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v397 = &v355 - v24;
  v25 = *(v9 + 56);
  v400 = *(v9 + 16);
  v401 = v25;
  v402 = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for Optional();
  v359 = *(v26 - 8);
  v360 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v355 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v355 - v31);
  v431 = *(v8 + *(v9 + 100));
  v418 = *(v431 + 2);
  if (!v418)
  {
LABEL_368:
    __break(1u);
LABEL_369:
    swift_unknownObjectRelease();
    __break(1u);
LABEL_370:
    __break(1u);
    goto LABEL_371;
  }

  v380 = a6;
  v371 = v28;
  v33 = *a7;
  v34 = *(a7 + 8);
  v35 = *(a7 + 16);
  v36 = *(a7 + 24);
  v425 = *(v8 + *(v9 + 104));
  v37 = v8;
  a6 = *v8;
  v417 = v33;
  *(&v410 + 1) = v36;
  v411 = v34;
  *&v410 = v35;
  AttributedString.Guts.findRun(at:)(v33, v36, &v451);
  v13 = v451;
  v412 = v453;
  v413 = v452;
  v406 = v454;
  v427 = v455;
  v378 = v457;
  v379 = v456;
  v376 = v459;
  v377 = v458;
  v38 = *(type metadata accessor for AttributedString.Runs() + 24);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v437 = v37;
  v435 = v38;
  v434 = v39;
  RangeSet.ranges.getter();
  a7 = RangeSet.Ranges.count.getter();
  v40 = *(v30 + 8);
  v30 += 8;
  v436 = v29;
  v433 = v40;
  (v40)(v32, v29);
  if (a7 < 1)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v41 = 0;
  v29 = v417 >> 10;
  v432 = v30;
  while (1)
  {
    if (__OFADD__(v41, a7))
    {
      goto LABEL_119;
    }

    v9 = (v41 + a7) / 2;
    RangeSet.ranges.getter();
    v42 = v436;
    RangeSet.Ranges.subscript.getter();
    v43 = v42;
    v30 = v432;
    (v433)(v32, v43);
    if (v29 >= v451 >> 10)
    {
      break;
    }

LABEL_4:
    a7 = v9;
    if (v41 >= v9)
    {
      goto LABEL_118;
    }
  }

  if (v29 >= v455 >> 10)
  {
    v41 = v9 + 1;
    v9 = a7;
    goto LABEL_4;
  }

  v404 = v451 >> 10;
  v415 = v451;
  v416 = v452;
  v408 = v454;
  v409 = v453;
  v44 = *(v425 + 16);
  v430 = a6;
  v426 = v13;
  v414 = v29;
  if (v44 == 1 && (specialized Set.contains(_:)(0, 1, v425) & 1) == 0)
  {
    v28 = a6 + 24;
    v95 = *(a6 + 40);
    v96 = *(a6 + 56);
    v545 = *(a6 + 24);
    v546 = v95;
    v547 = v96;
    v9 = v545;
    swift_unknownObjectRetain();
    a7 = BigString.UnicodeScalarView.index(after:)();
    v13 = v97;
    a6 = v98;
    v30 = v99;
    swift_unknownObjectRelease();
    v100 = *v28;
    v101 = *(v28 + 32);
    v543 = *(v28 + 16);
    v544 = v101;
    v542 = v100;
    if (a7 >> 10 < v404)
    {
      goto LABEL_387;
    }

    v9 = *v28;
    v29 = *(v28 + 8);
    v102 = *(v28 + 16);
    v103 = *(v28 + 24);
    v104 = *(v28 + 32);
    v105 = *(v28 + 40);
    v106 = v415;
    v531 = v415;
    v532 = v416;
    v533 = v409;
    v534 = v408;
    v535 = a7;
    v536 = v13;
    v537 = a6;
    v538 = v30;
    if (v404 == a7 >> 10)
    {
      goto LABEL_138;
    }

    v428 = (a7 >> 10);
    v429 = v30;
    v421 = v105;
    v422 = v104;
    v423 = v103;
    v424 = v102;
    v107 = *(v28 + 16);
    v505 = *v28;
    v506 = v107;
    v507 = *(v28 + 32);
    outlined init with copy of Rope<BigString._Chunk>._Node?(&v505, &v451);
    if ((specialized Set.contains(_:)(0, 0, v425) & 1) == 0)
    {
LABEL_121:
      v509 = v106;
      v510 = v416;
      v511 = v409;
      v512 = v408;
      v513 = a7;
      v514 = v13;
      v515 = a6;
      v516 = v429;
      v28 = v425;
      v159 = specialized Collection<>._containsScalarConstraint.getter(v425);
      v415 = v106;
      if (v159)
      {
        v419 = v29;
        v420 = v9;
        v9 = v28 + 56;
        v160 = 1 << *(v28 + 32);
        v161 = -1;
        if (v160 < 64)
        {
          v161 = ~(-1 << v160);
        }

        a6 = v161 & *(v28 + 56);
        v13 = (v160 + 63) >> 6;

        v29 = 0;
        a7 = MEMORY[0x1E69E7CC0];
        while (a6)
        {
LABEL_130:
          v163 = __clz(__rbit64(a6));
          a6 &= a6 - 1;
          v164 = (*(v425 + 48) + ((v29 << 10) | (16 * v163)));
          v165 = v164[1];
          if (v165 >= 2)
          {
            v166 = specialized Collection.first.getter(*v164, v165);
            if ((v166 & 0x100000000) == 0)
            {
              v429 = v166;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a7 + 16) + 1, 1, a7);
              }

              v28 = *(a7 + 16);
              v167 = *(a7 + 24);
              v168 = v429;
              if (v28 >= v167 >> 1)
              {
                a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v28 + 1, 1, a7);
                v168 = v429;
              }

              *(a7 + 16) = v28 + 1;
              *(a7 + 4 * v28 + 32) = v168;
            }
          }
        }

        while (1)
        {
          v162 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_366;
          }

          if (v162 >= v13)
          {
            break;
          }

          a6 = *(v9 + 8 * v162);
          ++v29;
          if (a6)
          {
            v29 = v162;
            goto LABEL_130;
          }
        }

        v517 = v420;
        v518 = v419;
        v519 = v424;
        v520 = v423;
        v521 = v422;
        v522 = v421;
        BigString.UnicodeScalarView.subscript.getter();
        v178 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(a7);
        v9 = v179;
        v13 = v180;
        v29 = v181;
        outlined destroy of BigString(&v542);

        outlined destroy of BigSubstring.UnicodeScalarView(&v473);
        a6 = v430;
        if (v29 != 2)
        {
          if (v428 < v178 >> 10)
          {
            goto LABEL_400;
          }

          v415 = v178;
          v416 = v9;
          v408 = v29;
          v409 = v13;
        }

LABEL_139:
        v9 = v426;
        v451 = v426;
        v30 = v412;
        v13 = v413;
        v452 = v413;
        v453 = v412;
        v429 = (v415 >> 11);
        if ((v415 >> 11) >= v427)
        {
LABEL_174:
          v29 = v414;
LABEL_175:
          v158 = *(a6 + 16);
          goto LABEL_176;
        }

        while (1)
        {
          if (v9 != *(a6 + 96))
          {
            goto LABEL_358;
          }

          v169 = *(a6 + 72);
          a7 = *(a6 + 80);
          v29 = *(a6 + 88);
          if (v169)
          {
            v28 = *(v169 + 18);
            swift_unknownObjectRetain();
            if (v28 >= v13)
            {
              goto LABEL_361;
            }
          }

          else
          {
            v28 = 0;
            if (!v13)
            {
              goto LABEL_361;
            }
          }

          if (!v30)
          {
            break;
          }

          v170 = (4 * *(v30 + 18) + 8) & 0x3C;
          if (((v13 >> v170) & 0xF) == 0)
          {
            break;
          }

          v13 = ((((v13 >> v170) & 0xF) - 1) << v170) | ((-15 << v170) - 1) & v13;
          v452 = v13;
LABEL_161:
          v30 = v453;
LABEL_162:
          if (v451 != v9)
          {
            goto LABEL_362;
          }

          if (v30)
          {
            v28 = *(v30 + 24 * ((v13 >> ((4 * *(v30 + 18) + 8) & 0x3C)) & 0xF) + 24);

            swift_unknownObjectRelease();
            v29 = v414;
            if (__OFSUB__(v427, v28))
            {
              goto LABEL_365;
            }

            if (v429 >= &v427[-v28])
            {
              goto LABEL_175;
            }

            v427 -= v28;
          }

          else
          {
            v28 = v13;
            v9 = specialized Rope._Node.subscript.getter(v13, v169);
            a7 = v175;
            v13 = v176;
            swift_unknownObjectRelease();

            v177 = &v427[-v9];
            if (__OFSUB__(v427, v9))
            {
              goto LABEL_367;
            }

            v9 = v426;
            if (v429 >= v177)
            {
              v30 = 0;
              v13 = v28;
              goto LABEL_174;
            }

            v427 = v177;
            v13 = v28;
          }
        }

        v28 = (4 * *(v169 + 18) + 8) & 0x3C;
        a6 = (v13 >> v28) & 0xF;
        if (!*(v169 + 18))
        {
          if (!a6)
          {
            goto LABEL_372;
          }

          v13 = ((a6 - 1) << v28) | v13 & 0xFFFFFFFFFFFFF0FFLL;
          v452 = v13;
          v453 = v169;
          v30 = v169;
          a6 = v430;
          goto LABEL_162;
        }

        if (a6 < *(v169 + 16))
        {
          v9 = *(v169 + 24 * ((v13 >> v28) & 0xF) + 24);
          v30 = *(v9 + 18);
          v171 = (4 * v30 + 8) & 0x3C;
          v172 = (v13 >> v171) & 0xF;
          *&v478 = v172;
          if (v30)
          {
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v13 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v9 + 16), v9 + 24, &v478, &v451, v30);
            swift_unknownObjectRelease();
            if (v13)
            {
              goto LABEL_160;
            }

LABEL_158:
            if (!a6)
            {
              goto LABEL_369;
            }

            v452 = v452 & ((-15 << v28) - 1) | ((a6 - 1) << v28);
            v173 = *(v169 + 24 * a6);
            swift_unknownObjectRetain();
            v174 = specialized Rope._Node.descendToLastItem(under:)(&v452, v173);
            swift_unknownObjectRelease();
            v453 = v174;
            goto LABEL_160;
          }

          if (v172)
          {
            v452 = ((v172 - 1) << v171) | v13 & 0xFFFFFFFFFFFFF0FFLL;
            v453 = v9;
            swift_unknownObjectRetain();
LABEL_160:
            swift_unknownObjectRelease();
            v13 = v452;
            a6 = v430;
            v9 = v426;
            goto LABEL_161;
          }
        }

        swift_unknownObjectRetain();
        goto LABEL_158;
      }

      outlined destroy of BigString(&v542);
LABEL_138:
      a6 = v430;
      goto LABEL_139;
    }

    v108 = BigString.startIndex.getter();
    v28 = v428;
    if (v428 > v108 >> 10)
    {
      v420 = v9;
      *&v539 = v9;
      v419 = v29;
      *(&v539 + 1) = v29;
      *&v540 = v424;
      *(&v540 + 1) = v423;
      *&v541 = v422;
      *(&v541 + 1) = v421;
      v30 = v429;
      v9 = BigString.UTF8View.index(before:)();
      v418 = v109;
      v29 = v110;
      v407 = v111;
      BigString.UTF8View.subscript.getter();
      if (v28 < v9 >> 10)
      {
        goto LABEL_399;
      }

      v523 = v9;
      v524 = v418;
      v525 = v29;
      v526 = v407;
      v527 = a7;
      v528 = v13;
      v529 = a6;
      v530 = v30;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v523, &v451);
      outlined destroy of BigSubstring.UTF8View(v470);
      v106 = v415;
      v9 = v420;
      v29 = v419;
      if (v454 != 2)
      {
        v106 = v451;
        if (v428 < v451 >> 10)
        {
          goto LABEL_401;
        }

        v416 = v452;
        v408 = v454;
        v409 = v453;
      }

      goto LABEL_121;
    }

LABEL_120:
    v106 = v415;
    goto LABEL_121;
  }

  v45 = *(a6 + 72);
  v46 = *(a6 + 80);
  v47 = *(a6 + 88);
  v30 = *(a6 + 96);
  swift_unknownObjectRetain();
  v29 = v412;
  v28 = v413;
  specialized Rope.subscript.getter(v13, v413, v412, v45, v46, v47, v30);
  v9 = v48;
  a7 = v49;
  swift_unknownObjectRelease();
  v51 = v437[1];
  if (v51 >= v406)
  {

    goto LABEL_78;
  }

  v372 = v431 + 40;
  v52 = v28;
  v30 = v29;
  v407 = v9;
  v370 = a7;
  v358 = v51;
  while (2)
  {
    v53 = *(a6 + 72);
    a7 = *(a6 + 80);
    v55 = *(a6 + 88);
    v54 = *(a6 + 96);
    v451 = v13;
    v452 = v52;
    v453 = v30;
    if (v13 != v54)
    {
      goto LABEL_380;
    }

    v429 = v55;
    if (v53)
    {
      v28 = *(v53 + 18);
      v9 = v52;
      swift_unknownObjectRetain();
      v52 = v9;
    }

    else
    {
      v28 = 0;
    }

    v29 = &v451;
    if (v28 >= v52)
    {
      goto LABEL_381;
    }

    if (v30)
    {
      v56 = (4 * *(v30 + 18) + 8) & 0x3C;
      if (((v52 >> v56) & 0xF) != 0)
      {
        v57 = ((((v52 >> v56) & 0xF) - 1) << v56) | ((-15 << v56) - 1) & v52;
        v452 = v57;
        goto LABEL_36;
      }
    }

    v13 = (4 * *(v53 + 18) + 8) & 0x3C;
    v28 = (v52 >> v13) & 0xF;
    if (!*(v53 + 18))
    {
      if (!v28)
      {
        goto LABEL_389;
      }

      v57 = ((v28 - 1) << v13) | v52 & 0xFFFFFFFFFFFFF0FFLL;
      v452 = v57;
      v453 = v53;
      v30 = v53;
      v13 = v426;
      if (v53)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v28 >= *(v53 + 16))
    {
LABEL_31:
      swift_unknownObjectRetain();
      goto LABEL_32;
    }

    v30 = *(v53 + 24 * ((v52 >> v13) & 0xF) + 24);
    v9 = *(v30 + 18);
    v58 = (4 * v9 + 8) & 0x3C;
    v59 = (v52 >> v58) & 0xF;
    *&v478 = v59;
    if (!v9)
    {
      if (v59)
      {
        v452 = ((v59 - 1) << v58) | v52 & 0xFFFFFFFFFFFFF0FFLL;
        v453 = v30;
        swift_unknownObjectRetain();
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v9 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v30 + 16), v30 + 24, &v478, &v451, v9);
    swift_unknownObjectRelease();
    if (v9)
    {
      v30 = v453;
      goto LABEL_34;
    }

LABEL_32:
    if (!v28)
    {
      goto LABEL_388;
    }

    v452 = v452 & ((-15 << v13) - 1) | ((v28 - 1) << v13);
    v9 = *(v53 + 24 * v28);
    swift_unknownObjectRetain();
    v30 = specialized Rope._Node.descendToLastItem(under:)(&v452, v9);
    swift_unknownObjectRelease();
    v453 = v30;
LABEL_34:
    swift_unknownObjectRelease();
    v13 = v426;
    if (v451 != v426)
    {
      goto LABEL_382;
    }

    v57 = v452;
    if (!v30)
    {
LABEL_28:
      v375 = v57;
      v9 = specialized Rope._Node.subscript.getter(v57, v53);
      a7 = v60;
      v30 = v61;
      swift_unknownObjectRelease();
      v373 = 0;
      v62 = 1;
      goto LABEL_37;
    }

LABEL_36:
    v63 = (4 * *(v30 + 18) + 8) & 0x3C;
    v375 = v57;
    v373 = v30;
    v64 = (v30 + 24 * ((v57 >> v63) & 0xF));
    v9 = v64[3];
    a7 = v64[4];
    v30 = v64[5];

    swift_unknownObjectRelease();
    v62 = 0;
LABEL_37:

    if (__OFSUB__(v427, v9))
    {
      goto LABEL_383;
    }

    if (v13 != *(a6 + 96))
    {
      goto LABEL_384;
    }

    v369 = &v427[-v9];
    if (v62)
    {
      v65 = *(a6 + 72);
      v9 = *(a6 + 80);
      a7 = *(a6 + 88);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v375, v65);
      v421 = v66;
      v374 = v67;
      swift_unknownObjectRelease();
    }

    else
    {
      v68 = v373 + 24 * ((v375 >> ((4 * *(v373 + 18) + 8) & 0x3C)) & 0xF);
      v69 = *(v68 + 40);
      v421 = *(v68 + 32);

      v374 = v69;
    }

    v28 = v407;
    v70 = 0;
    --v406;
    v71 = v372;
LABEL_44:
    if (v70 >= *(v431 + 2))
    {
      goto LABEL_360;
    }

    v429 = v70;
    v72 = *(v71 - 1);
    a7 = *v71;
    v428 = v71;
    if (*(v28 + 16))
    {

      v73 = specialized __RawDictionaryStorage.find<A>(_:)(v72, a7);
      if (v74)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v28 + 56) + 72 * v73, &v478);
      }

      else
      {
        v482 = 0;
        v481 = 0u;
        v480 = 0u;
        v479 = 0u;
        v478 = 0u;
      }
    }

    else
    {
      v482 = 0;
      v481 = 0u;
      v480 = 0u;
      v479 = 0u;
      v478 = 0u;
    }

    if (v421[2])
    {
      v30 = v13;
      v75 = a6;
      v76 = v421;
      v77 = specialized __RawDictionaryStorage.find<A>(_:)(v72, a7);
      v79 = v78;

      if (v79)
      {
        outlined init with copy of AttributedString._AttributeValue(v76[7] + 72 * v77, &v473);
      }

      else
      {
        v477 = 0;
        v476 = 0u;
        v475 = 0u;
        v474 = 0u;
        v473 = 0u;
      }

      a6 = v75;
      v13 = v30;
    }

    else
    {

      v477 = 0;
      v476 = 0u;
      v475 = 0u;
      v474 = 0u;
      v473 = 0u;
    }

    outlined init with copy of AttributedString._AttributeValue?(&v478, &v451);
    outlined init with copy of AttributedString._AttributeValue?(&v473, &v460);
    if (!v454)
    {
      v9 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      outlined destroy of TermOfAddress?(&v473, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v478, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v461 + 1))
      {
        goto LABEL_75;
      }

      outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      goto LABEL_43;
    }

    outlined init with copy of AttributedString._AttributeValue?(&v451, v470);
    if (*(&v461 + 1))
    {
      v467 = v462;
      v468 = v463;
      v469 = v464;
      v465 = v460;
      v466 = v461;
      v80 = v471;
      v420 = v472;
      v419 = __swift_project_boxed_opaque_existential_1(v470, v471);
      v81 = __swift_project_boxed_opaque_existential_1(&v465, *(&v466 + 1));
      v424 = &v355;
      v82 = *(v80 - 8);
      MEMORY[0x1EEE9AC00](v81);
      v30 = &v355 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      v423 = &v355;
      v85 = MEMORY[0x1EEE9AC00](v84);
      (*(v87 + 16))(&v355 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v85);
      a7 = type metadata accessor for Optional();
      v422 = &v355;
      v88 = *(a7 - 8);
      MEMORY[0x1EEE9AC00](a7);
      v90 = &v355 - v89;
      v91 = swift_dynamicCast();
      v92 = *(v82 + 56);
      if (!v91)
      {
        v92(v90, 1, 1, v80);
        outlined destroy of TermOfAddress?(&v473, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v478, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v112 = *(v88 + 8);
        v29 = v88 + 8;
        v112(v90, a7);
        outlined destroy of AttributedString._AttributeValue(&v465);
        outlined destroy of AttributedString._AttributeValue(v470);
        outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        a6 = v430;
        goto LABEL_77;
      }

      v92(v90, 0, 1, v80);
      (*(v82 + 32))(v30, v90, v80);
      v9 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v82 + 8))(v30, v80);
      outlined destroy of TermOfAddress?(&v473, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v478, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of AttributedString._AttributeValue(&v465);
      outlined destroy of AttributedString._AttributeValue(v470);
      outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      a6 = v430;
      v13 = v426;
      v28 = v407;
      v29 = &v451;
      if ((v9 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_43:
      v70 = (v429 + 1);
      v71 = v428 + 2;
      if (v418 == (v429 + 1))
      {

        v93 = v369;
        v427 = v369;
        v30 = v373;
        v52 = v375;
        if (v358 >= v406)
        {

          v94 = v93;
          goto LABEL_79;
        }

        continue;
      }

      goto LABEL_44;
    }

    break;
  }

  outlined destroy of TermOfAddress?(&v473, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of TermOfAddress?(&v478, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of AttributedString._AttributeValue(v470);
LABEL_75:
  outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_77:

LABEL_78:

  v94 = v427;
LABEL_79:
  v28 = a6 + 24;
  v113 = *(a6 + 40);
  v114 = *(a6 + 56);
  v545 = *(a6 + 24);
  v546 = v113;
  v547 = v114;
  v13 = v379;
  v9 = &v94[-(v379 >> 11)];
  if (__OFSUB__(v94, v379 >> 11))
  {
    goto LABEL_373;
  }

  swift_unknownObjectRetain();
  v115 = BigString.UTF8View.index(_:offsetBy:)();
  v117 = v116;
  v119 = v118;
  v121 = v120;
  swift_unknownObjectRelease();
  a7 = v415;
  v122 = v416;
  if (v404 < v115 >> 10)
  {
    a7 = v115;
    v122 = v117;
  }

  v416 = v122;
  v29 = v409;
  if (v404 < v115 >> 10)
  {
    v29 = v119;
  }

  v13 = v408;
  if (v404 < v115 >> 10)
  {
    v13 = v121;
  }

  v123 = *(a6 + 40);
  v542 = *(a6 + 24);
  v543 = v123;
  v544 = *(a6 + 56);
  swift_unknownObjectRetain();
  v124 = BigString.UnicodeScalarView.index(after:)();
  v429 = v125;
  v30 = v126;
  v428 = v127;
  swift_unknownObjectRelease();
  v128 = *v28;
  v129 = *(a6 + 40);
  v541 = *(a6 + 56);
  v540 = v129;
  v539 = v128;
  v9 = v124 >> 10;
  if (v124 >> 10 < a7 >> 10)
  {
    goto LABEL_374;
  }

  v130 = *(a6 + 24);
  v131 = *(a6 + 32);
  v132 = *(a6 + 40);
  v133 = *(a6 + 48);
  v134 = *(a6 + 56);
  v135 = *(a6 + 64);
  v531 = a7;
  v532 = v416;
  v408 = v13;
  v409 = v29;
  v533 = v29;
  v534 = v13;
  v535 = v124;
  v536 = v429;
  v537 = v30;
  v538 = v428;
  v415 = a7;
  if (a7 >> 10 == v9)
  {
    a6 = v430;
    v13 = v413;
    goto LABEL_117;
  }

  v29 = v416;
  v427 = v124;
  v424 = v30;
  v418 = v135;
  v419 = v134;
  v420 = v133;
  v421 = v132;
  v422 = v131;
  v423 = v130;
  v136 = *(a6 + 40);
  v548[0] = *v28;
  v548[1] = v136;
  v549 = *(a6 + 56);
  outlined init with copy of Rope<BigString._Chunk>._Node?(v548, &v451);
  v137 = specialized Set.contains(_:)(0, 0, v425);
  a6 = v430;
  v13 = v413;
  if ((v137 & 1) == 0)
  {
    v142 = v427;
    v141 = v415;
    goto LABEL_97;
  }

  if (v9 <= BigString.startIndex.getter() >> 10)
  {
    v141 = v415;
    v142 = v427;
    goto LABEL_97;
  }

  v517 = v423;
  v518 = v422;
  v519 = v421;
  v520 = v420;
  v521 = v419;
  v522 = v418;
  a7 = v429;
  v30 = v424;
  v29 = v428;
  v28 = BigString.UTF8View.index(before:)();
  v406 = v138;
  v404 = v139;
  v379 = v140;
  BigString.UTF8View.subscript.getter();
  v407 = v124 >> 10;
  if (v9 < v28 >> 10)
  {
LABEL_390:
    __break(1u);
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
    goto LABEL_394;
  }

  v523 = v28;
  v524 = v406;
  v525 = v404;
  v526 = v379;
  v28 = v427;
  v527 = v427;
  v528 = a7;
  v529 = v30;
  v530 = v29;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v523, &v451);
  outlined destroy of BigSubstring.UTF8View(v470);
  v141 = v415;
  v29 = v416;
  v9 = v407;
  v142 = v28;
  if (v454 != 2)
  {
    v141 = v451;
    if (v407 >= v451 >> 10)
    {
      v29 = v452;
      v408 = v454;
      v409 = v453;
      goto LABEL_97;
    }

LABEL_396:
    __break(1u);
    goto LABEL_397;
  }

LABEL_97:
  v509 = v141;
  v416 = v29;
  v510 = v29;
  v511 = v409;
  v512 = v408;
  v513 = v142;
  v514 = v429;
  v515 = v424;
  v516 = v428;
  v28 = v425;
  v143 = v141;
  v144 = specialized Collection<>._containsScalarConstraint.getter(v425);
  v415 = v143;
  if ((v144 & 1) == 0)
  {
    outlined destroy of BigString(&v539);
    goto LABEL_117;
  }

  v407 = v9;
  v9 = v28 + 56;
  v145 = 1 << *(v28 + 32);
  v146 = -1;
  if (v145 < 64)
  {
    v146 = ~(-1 << v145);
  }

  a6 = v146 & *(v28 + 56);
  v30 = (v145 + 63) >> 6;

  v29 = 0;
  a7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (a6)
    {
      goto LABEL_106;
    }

LABEL_102:
    v147 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
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
      goto LABEL_364;
    }

    if (v147 < v30)
    {
      a6 = *(v9 + 8 * v147);
      ++v29;
      if (a6)
      {
        v29 = v147;
LABEL_106:
        v148 = __clz(__rbit64(a6));
        a6 &= a6 - 1;
        v149 = (*(v425 + 48) + ((v29 << 10) | (16 * v148)));
        v150 = v149[1];
        if (v150 >= 2)
        {
          v151 = specialized Collection.first.getter(*v149, v150);
          if ((v151 & 0x100000000) == 0)
          {
            v429 = v151;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a7 + 16) + 1, 1, a7);
            }

            v28 = *(a7 + 16);
            v152 = *(a7 + 24);
            v153 = v429;
            if (v28 >= v152 >> 1)
            {
              a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v28 + 1, 1, a7);
              v153 = v429;
            }

            *(a7 + 16) = v28 + 1;
            *(a7 + 4 * v28 + 32) = v153;
          }
        }

        continue;
      }

      goto LABEL_102;
    }

    break;
  }

  *&v505 = v423;
  *(&v505 + 1) = v422;
  *&v506 = v421;
  *(&v506 + 1) = v420;
  v507 = v419;
  v508 = v418;
  BigString.UnicodeScalarView.subscript.getter();
  v154 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(a7);
  v9 = v155;
  v30 = v156;
  v29 = v157;
  outlined destroy of BigString(&v539);

  outlined destroy of BigSubstring.UnicodeScalarView(&v473);
  a6 = v430;
  if (v29 == 2)
  {
    goto LABEL_117;
  }

  if (v407 < v154 >> 10)
  {
    goto LABEL_391;
  }

  v415 = v154;
  v416 = v9;
  v408 = v29;
  v409 = v30;
LABEL_117:
  v158 = *(a6 + 16);
  v30 = v412;
  v29 = v414;
LABEL_176:
  v428 = *(v431 + 2);
  if (!v428)
  {
    goto LABEL_370;
  }

  v379 = v158;
  v413 = v13;
  AttributedString.Guts.findRun(at:)(v417, *(&v410 + 1), &v451);
  v419 = v451;
  v418 = v452;
  v429 = v454;
  v406 = v455;
  v407 = v453;
  v376 = v457;
  v377 = v456;
  v374 = v459;
  v375 = v458;
  RangeSet.ranges.getter();
  v182 = v436;
  a7 = RangeSet.Ranges.count.getter();
  (v433)(v32, v182);
  if (a7 < 1)
  {
LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
    goto LABEL_355;
  }

  v183 = 0;
  while (1)
  {
    if (__OFADD__(v183, a7))
    {
      goto LABEL_354;
    }

    v9 = (v183 + a7) / 2;
    RangeSet.ranges.getter();
    v13 = v436;
    RangeSet.Ranges.subscript.getter();
    (v433)(v32, v13);
    if (v29 >= v451 >> 10)
    {
      break;
    }

LABEL_179:
    a7 = v9;
    if (v183 >= v9)
    {
      goto LABEL_353;
    }
  }

  v28 = v455 >> 10;
  if (v29 >= v455 >> 10)
  {
    v183 = v9 + 1;
    v9 = a7;
    goto LABEL_179;
  }

  v422 = v455;
  v421 = v456;
  v420 = v457;
  v423 = v458;
  v184 = v425;
  v185 = *(v425 + 16);
  v412 = v30;
  if (v185 == 1 && (specialized Set.contains(_:)(0, 1, v425) & 1) == 0)
  {
    v29 = *(a6 + 24);
    v189 = *(a6 + 32);
    v190 = *(a6 + 48);
    v437 = *(a6 + 40);
    v9 = *(a6 + 56);
    v435 = *(a6 + 64);
    v32 = v417;
    v443 = v417;
    a6 = *(&v410 + 1);
    v13 = v411;
    v444 = v411;
    a7 = v410;
    v445 = v410;
    v446 = v422;
    v447 = v421;
    v448 = v420;
    v449 = v423;
    swift_unknownObjectRetain();
    v191 = specialized Set.contains(_:)(0, 0, v184);
    v432 = v189;
    v434 = v190;
    v433 = v9;
    v436 = v29;
    if (v191)
    {
      *&v502 = v29;
      *(&v502 + 1) = v189;
      v30 = v437;
      *&v503 = v437;
      *(&v503 + 1) = v190;
      *&v504 = v9;
      v28 = v435;
      *(&v504 + 1) = v435;
      BigString.UTF8View.subscript.getter();
      *&v438 = v32;
      *(&v438 + 1) = v13;
      *&v439 = a7;
      *(&v439 + 1) = a6;
      *&v440 = v32;
      *(&v440 + 1) = v13;
      *&v441 = a7;
      *(&v441 + 1) = a6;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v438, &v451);
      outlined destroy of BigSubstring.UTF8View(&v478);
      v192 = v422;
      v193 = v421;
      v194 = v420;
      v195 = v423;
      if (v458 != 2)
      {
        v192 = v455;
        if (v414 > v455 >> 10)
        {
LABEL_394:
          __break(1u);
          goto LABEL_395;
        }

        v193 = v456;
        v194 = v457;
        v195 = v458;
      }
    }

    else
    {
      v192 = v422;
      v193 = v421;
      v194 = v420;
      v195 = v423;
      v30 = v437;
    }

    v489 = v417;
    v490 = v411;
    v491 = v410;
    v422 = v192;
    v492 = v192;
    v421 = v193;
    v493 = v193;
    v420 = v194;
    v494 = v194;
    v423 = v195;
    v495 = v195;
    v276 = v425;
    if ((specialized Collection<>._containsScalarConstraint.getter(v425) & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_326;
    }

    v32 = (v276 + 56);
    v277 = 1 << *(v276 + 32);
    v278 = -1;
    if (v277 < 64)
    {
      v278 = ~(-1 << v277);
    }

    v13 = v278 & *(v276 + 56);
    v279 = (v277 + 63) >> 6;

    a7 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v29 = v434;
    v28 = v436;
    a6 = v433;
LABEL_291:
    if (v13)
    {
      goto LABEL_296;
    }

    while (1)
    {
      v280 = a7 + 1;
      if (__OFADD__(a7, 1))
      {
        goto LABEL_363;
      }

      if (v280 >= v279)
      {
        break;
      }

      v13 = v32[v280];
      ++a7;
      if (v13)
      {
        a7 = v280;
LABEL_296:
        v281 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v282 = (*(v425 + 48) + ((a7 << 10) | (16 * v281)));
        v283 = v282[1];
        if (v283 >= 2)
        {
          v284 = specialized Collection.first.getter(*v282, v283);
          if ((v284 & 0x100000000) == 0)
          {
            v437 = v284;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
            }

            v286 = *(v9 + 16);
            v285 = *(v9 + 24);
            v287 = (v286 + 1);
            v288 = v437;
            if (v286 >= v285 >> 1)
            {
              v431 = (v286 + 1);
              v289 = v9;
              v290 = v286;
              v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v285 > 1), v286 + 1, 1, v289);
              v287 = v431;
              v286 = v290;
              v9 = v291;
              v288 = v437;
            }

            *(v9 + 16) = v287;
            *(v9 + 4 * v286 + 32) = v288;
          }
        }

        goto LABEL_291;
      }
    }

    v496 = v28;
    v497 = v432;
    v498 = v30;
    v499 = v29;
    v500 = a6;
    v501 = v435;
    BigString.UnicodeScalarView.subscript.getter();
    v292 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v9);
    a7 = v293;
    v13 = v294;
    v30 = v295;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v451);
    if (v30 != 2)
    {
      if (v414 > v292 >> 10)
      {
LABEL_395:
        __break(1u);
        goto LABEL_396;
      }

      v422 = v292;
      v421 = a7;
      v420 = v13;
      v423 = v30;
    }

    goto LABEL_326;
  }

  v186 = v437[15];
  v29 = v429;
  v187 = v419;
  v378 = v28;
  if (v429 == v186)
  {
    v188 = v437[22];
    if (v437[26] == 2)
    {
      if (v188 != 2)
      {
        goto LABEL_237;
      }
    }

    else if (v188 == 2 || (v437[19] ^ v437[23]) >= 0x400)
    {
      goto LABEL_237;
    }
  }

  if (v429 >= v186)
  {
LABEL_385:
    __break(1u);
    goto LABEL_386;
  }

  v370 = v186;
  v196 = *(a6 + 72);
  v197 = *(a6 + 80);
  v9 = *(a6 + 88);
  v198 = *(a6 + 96);
  swift_unknownObjectRetain();
  v30 = v418;
  v13 = v407;
  specialized Rope.subscript.getter(v419, v418, v407, v196, v197, v9, v198);
  a7 = v199;
  v358 = v200;
  swift_unknownObjectRelease();
  v187 = v419;
  v201 = *(a6 + 72);
  v28 = *(a6 + 80);
  v202 = v29 + 1;
  v32 = &v451;
  v203 = a6;
  a6 = *(a6 + 88);
  v204 = *(v203 + 96);
  v369 = v431 + 40;
  v451 = v419;
  v452 = v30;
  v453 = v13;
  v424 = a7;
  while (2)
  {
    if (v187 != v204)
    {
      goto LABEL_375;
    }

    v373 = v202;
    v404 = v204;
    v407 = v13;
    if (v13)
    {
      v205 = (v13 + 24 * ((v418 >> ((4 * *(v13 + 18) + 8) & 0x3C)) & 0xF));
      v206 = v205[3];
      v30 = v205[4];
      v29 = v205[5];
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v206 = specialized Rope._Node.subscript.getter(v418, v201);
      v30 = v207;
      v29 = v208;
    }

    v209 = __OFADD__(v406, v206);
    v9 = v406 + v206;
    if (v209)
    {
      goto LABEL_376;
    }

    specialized Rope.formIndex(after:)(&v451, v201, v28, a6, v404);
    swift_unknownObjectRelease();
    if (v370 < v373)
    {
LABEL_355:

      a6 = v430;
      goto LABEL_243;
    }

    v357 = v9;
    v30 = v452;
    a6 = v430;
    v13 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v29 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v373 == v370)
    {
      v210 = v437[22];
      if (v437[26] == 2)
      {
        if (v210 == 2)
        {
LABEL_242:

          goto LABEL_243;
        }
      }

      else if (v210 != 2 && (v437[19] ^ v437[23]) < 0x400)
      {
        goto LABEL_242;
      }
    }

    if (v451 != v430[12])
    {
      goto LABEL_377;
    }

    v419 = v451;
    v355 = v453;
    v356 = v452;
    if (v453)
    {
      v211 = v453 + 24 * ((v452 >> ((4 * *(v453 + 18) + 8) & 0x3C)) & 0xF);
      v28 = *(v211 + 32);
      v212 = *(v211 + 40);

      v372 = v212;
    }

    else
    {
      v213 = v430[9];
      v9 = v430[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v30, v213);
      v28 = v214;
      v372 = v215;
      swift_unknownObjectRelease();
    }

    v216 = 0;
    v217 = v369;
    v427 = v28;
    do
    {
      if (v216 >= *(v431 + 2))
      {
        __break(1u);
        goto LABEL_357;
      }

      v436 = v216;
      v9 = *(v217 - 1);
      v30 = *v217;
      v435 = v217;
      if (*(a7 + 16))
      {

        v218 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v30);
        if (v219)
        {
          outlined init with copy of AttributedString._AttributeValue(*(a7 + 56) + 72 * v218, &v478);
          if (!*(v28 + 16))
          {
            goto LABEL_225;
          }
        }

        else
        {
          v482 = 0;
          v481 = 0u;
          v480 = 0u;
          v479 = 0u;
          v478 = 0u;
          if (!*(v28 + 16))
          {
LABEL_225:

            goto LABEL_226;
          }
        }
      }

      else
      {
        v482 = 0;
        v481 = 0u;
        v480 = 0u;
        v479 = 0u;
        v478 = 0u;

        if (!*(v28 + 16))
        {
          goto LABEL_225;
        }
      }

      v220 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v30);
      v9 = v221;

      if (v9)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v28 + 56) + 72 * v220, &v465);
        goto LABEL_227;
      }

LABEL_226:
      v469 = 0;
      v468 = 0u;
      v467 = 0u;
      v465 = 0u;
      v466 = 0u;
LABEL_227:
      outlined init with copy of AttributedString._AttributeValue?(&v478, &v451);
      outlined init with copy of AttributedString._AttributeValue?(&v465, &v460);
      if (v454)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v451, &v443);
        if (!*(&v461 + 1))
        {
          outlined destroy of TermOfAddress?(&v465, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v478, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v443);
LABEL_239:
          outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_241:

          goto LABEL_242;
        }

        v440 = v462;
        v441 = v463;
        v442 = v464;
        v438 = v460;
        v439 = v461;
        v222 = *(&v445 + 1);
        v432 = v446;
        v429 = __swift_project_boxed_opaque_existential_1(&v443, *(&v445 + 1));
        v29 = *(&v439 + 1);
        v223 = __swift_project_boxed_opaque_existential_1(&v438, *(&v439 + 1));
        v434 = &v355;
        v224 = *(v222 - 8);
        MEMORY[0x1EEE9AC00](v223);
        v30 = &v355 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
        v433 = &v355;
        v227 = MEMORY[0x1EEE9AC00](v226);
        (*(v229 + 16))(&v355 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0), v227);
        v32 = type metadata accessor for Optional();
        v230 = *(v32 - 1);
        MEMORY[0x1EEE9AC00](v32);
        v232 = &v355 - v231;
        v233 = swift_dynamicCast();
        v234 = *(v224 + 56);
        if (!v233)
        {
          v234(v232, 1, 1, v222);
          v13 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
          outlined destroy of TermOfAddress?(&v465, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v478, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v230 + 8))(v232, v32);
          outlined destroy of AttributedString._AttributeValue(&v438);
          outlined destroy of AttributedString._AttributeValue(&v443);
          outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          a6 = v430;
          goto LABEL_241;
        }

        v234(v232, 0, 1, v222);
        (*(v224 + 32))(v30, v232, v222);
        v9 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v224 + 8))(v30, v222);
        v13 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        v29 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v465, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v478, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v438);
        outlined destroy of AttributedString._AttributeValue(&v443);
        outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        a6 = v430;
        a7 = v424;
        v32 = &v451;
        v28 = v427;
        if ((v9 & 1) == 0)
        {
          goto LABEL_241;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v465, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v478, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v461 + 1))
        {
          goto LABEL_239;
        }

        outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v216 = v436 + 1;
      v217 = v435 + 2;
    }

    while (v428 != (v436 + 1));

    v201 = *(a6 + 72);
    v28 = *(a6 + 80);
    v235 = a6;
    a6 = *(a6 + 88);
    v204 = *(v235 + 96);
    v406 = v357;
    v187 = v419;
    v451 = v419;
    v452 = v356;
    v13 = v355;
    v418 = v356;
    v453 = v355;
    v202 = v373 + 1;
    if (!__OFADD__(v373, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_237:
  v404 = v187;
LABEL_243:
  v236 = *(a6 + 72);
  v237 = *(a6 + 80);
  v238 = *(a6 + 88);
  v239 = *(a6 + 96);
  swift_unknownObjectRetain();
  v28 = specialized Rope.subscript.getter(v404, v418, v407, v236, v237, v238, v239);
  v9 = v240;
  a7 = v241;
  swift_unknownObjectRelease();

  v242 = v406 + v28;
  if (__OFADD__(v406, v28))
  {
    goto LABEL_378;
  }

  v243 = *(a6 + 40);
  v502 = *(a6 + 24);
  v503 = v243;
  v504 = *(a6 + 56);
  v9 = v377;
  v28 = v242 - (v377 >> 11);
  if (__OFSUB__(v242, v377 >> 11))
  {
    goto LABEL_379;
  }

  swift_unknownObjectRetain();
  v9 = BigString.UTF8View.index(_:offsetBy:)();
  a7 = v244;
  v13 = v245;
  v29 = v246;
  swift_unknownObjectRelease();
  v247 = v9 >> 10;
  v248 = *(a6 + 24);
  v434 = *(a6 + 32);
  v249 = *(a6 + 48);
  v435 = *(a6 + 40);
  v436 = v249;
  v32 = *(a6 + 64);
  v437 = *(a6 + 56);
  if (v9 >> 10 >= v378)
  {
    v433 = v32;
    v251 = v417;
    v443 = v417;
    v30 = *(&v410 + 1);
    v252 = v411;
    v444 = v411;
    v28 = v410;
    v445 = v410;
    v253 = v422;
    v446 = v422;
    v32 = v421;
    v447 = v421;
    a6 = v420;
    v448 = v420;
    v449 = v423;
    a7 = v248;
    swift_unknownObjectRetain();
    v13 = v425;
    v254 = specialized Set.contains(_:)(0, 0, v425);
    v432 = a7;
    if (v254)
    {
      v496 = a7;
      v497 = v434;
      v498 = v435;
      v499 = v436;
      v500 = v437;
      v501 = v433;
      BigString.UTF8View.subscript.getter();
      *&v438 = v251;
      *(&v438 + 1) = v252;
      *&v439 = v28;
      *(&v439 + 1) = v30;
      *&v440 = v251;
      *(&v440 + 1) = v252;
      *&v441 = v28;
      *(&v441 + 1) = v30;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v438, &v451);
      outlined destroy of BigSubstring.UTF8View(&v478);
      v29 = v422;
      v9 = v423;
      if (v458 != 2)
      {
        v29 = v455;
        if (v414 > v455 >> 10)
        {
          goto LABEL_392;
        }

        v32 = v456;
        a6 = v457;
        v9 = v458;
      }
    }

    else
    {
      v29 = v253;
      v9 = v423;
    }

    v489 = v417;
    v490 = v411;
    *&v491 = v28;
    *(&v491 + 1) = v30;
    v492 = v29;
    v493 = v32;
    v494 = a6;
    v495 = v9;
    if (specialized Collection<>._containsScalarConstraint.getter(v13))
    {
      a7 = v13 + 56;
      v255 = 1 << *(v13 + 32);
      v256 = -1;
      if (v255 < 64)
      {
        v256 = ~(-1 << v255);
      }

      v30 = v256 & *(v13 + 56);
      v13 = (v255 + 63) >> 6;

      v257 = 0;
      v431 = MEMORY[0x1E69E7CC0];
      while (v30)
      {
LABEL_266:
        v259 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v260 = (*(v425 + 48) + ((v257 << 10) | (16 * v259)));
        v261 = v260[1];
        if (v261 >= 2)
        {
          v262 = specialized Collection.first.getter(*v260, v261);
          if ((v262 & 0x100000000) == 0)
          {
            v429 = v262;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v431 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v431 + 2) + 1, 1, v431);
            }

            v28 = *(v431 + 2);
            v263 = *(v431 + 3);
            v264 = v28 + 1;
            v265 = v429;
            if (v28 >= v263 >> 1)
            {
              v428 = (v28 + 1);
              v267 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v263 > 1), v28 + 1, 1, v431);
              v264 = v428;
              v431 = v267;
              v265 = v429;
            }

            v266 = v431;
            *(v431 + 2) = v264;
            *&v266[4 * v28 + 32] = v265;
          }
        }
      }

      while (1)
      {
        v258 = v257 + 1;
        if (__OFADD__(v257, 1))
        {
          goto LABEL_359;
        }

        if (v258 >= v13)
        {

          a7 = v9;
          v28 = v432;
          v483 = v432;
          v484 = v434;
          v485 = v435;
          v486 = v436;
          v487 = v437;
          v488 = v433;
          BigString.UnicodeScalarView.subscript.getter();
          v13 = v431;
          v268 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v431);
          v437 = v269;
          v436 = v270;
          v30 = v271;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v451);
          if (v30 == 2)
          {
            goto LABEL_277;
          }

          if (v414 <= v268 >> 10)
          {
            v29 = v268;
            v32 = v437;
            a6 = v436;
            v9 = v30;
            goto LABEL_277;
          }

          goto LABEL_393;
        }

        v30 = *(a7 + 8 * v258);
        ++v257;
        if (v30)
        {
          v257 = v258;
          goto LABEL_266;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_277:
    v272 = v422;
    if (v29 >> 10 != v378)
    {
      v272 = v29;
    }

    v422 = v272;
    v273 = v421;
    if (v29 >> 10 != v378)
    {
      v273 = v32;
    }

    v421 = v273;
    v274 = v420;
    if (v29 >> 10 != v378)
    {
      v274 = a6;
    }

    v420 = v274;
    v275 = v423;
    if (v29 >> 10 != v378)
    {
      v275 = v9;
    }

    v423 = v275;
LABEL_326:
    v29 = v430[2];
    v310 = v430[9];
    v311 = v430[10];
    v312 = v430[11];
    a7 = v430[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v426, v413, v412, v310, v311, v312, a7);
    v28 = v313;
    v437 = v314;
    swift_unknownObjectRelease();
    v315 = (*(v401 + 24))();
    if (*(v28 + 16))
    {
      a7 = v316;
      v317 = specialized __RawDictionaryStorage.find<A>(_:)(v315, v316);
      v13 = v318;

      v32 = v403;
      v30 = v405;
      if (v13)
      {
        v436 = v29;
        outlined init with copy of AttributedString._AttributeValue(*(v28 + 56) + 72 * v317, &v465);
        outlined init with copy of Hashable & Sendable(&v465, v450);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        a6 = v371;
        v29 = v402;
        if (!swift_dynamicCast())
        {
          goto LABEL_406;
        }

        outlined destroy of AttributedString._AttributeValue(&v465);
        v319 = *(v29 - 8);
        v320 = v319;
        a7 = *(v319 + 56);
        v13 = v319 + 56;
        (a7)(a6, 0, 1, v29);
        v321 = v398;
        (*(v320 + 32))(v398, a6, v29);
        (a7)(v321, 0, 1, v29);
        v29 = v436;
LABEL_332:
        v322 = (*(v396 + 24))();
        specialized Dictionary.subscript.getter(v322, v323, v28, &v465);

        v9 = v397;
        if (*(&v466 + 1))
        {
          v30 = v32;
          v32 = v29;
          outlined init with copy of Hashable & Sendable(&v465, v450);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
          v324 = v399;
          v325 = swift_dynamicCast();
          v50 = v324;
          v29 = v9;
          a7 = *(*(v324 - 8) + 56);
          if (!v325)
          {
            goto LABEL_402;
          }

          v326 = *(v324 - 8);
          (a7)(v9, 0, 1);
          v327 = *(v326 + 32);
          v13 = v326 + 32;
          a6 = v394;
          v327(v394, v9, v324);
          outlined destroy of AttributedString._AttributeValue(&v465);
          (a7)(a6, 0, 1, v324);
          v29 = v32;
          v32 = v30;
          v30 = v405;
        }

        else
        {
          outlined destroy of TermOfAddress?(&v465, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(*(v399 - 8) + 56))(v394, 1, 1);
        }

        v328 = (*(v392 + 24))();
        specialized Dictionary.subscript.getter(v328, v329, v28, &v465);

        v9 = v393;
        if (*(&v466 + 1))
        {
          outlined init with copy of Hashable & Sendable(&v465, v450);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
          v330 = swift_dynamicCast();
          a7 = *(*(v30 - 8) + 56);
          if (!v330)
          {
            goto LABEL_403;
          }

          v331 = *(v30 - 8);
          (a7)(v9, 0, 1, v30);
          v332 = *(v331 + 32);
          v13 = v331 + 32;
          a6 = v30;
          v333 = v388;
          v332(v388, v9, a6);
          outlined destroy of AttributedString._AttributeValue(&v465);
          (a7)(v333, 0, 1, a6);
        }

        else
        {
          outlined destroy of TermOfAddress?(&v465, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(*(v30 - 8) + 56))(v388, 1, 1, v30);
        }

        v334 = (*(v387 + 24))();
        specialized Dictionary.subscript.getter(v334, v335, v28, &v465);

        v30 = v389;
        v9 = v390;
        if (*(&v466 + 1))
        {
          outlined init with copy of Hashable & Sendable(&v465, v450);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
          v336 = swift_dynamicCast();
          a7 = *(*(v9 - 8) + 56);
          if (!v336)
          {
            goto LABEL_404;
          }

          v337 = *(v9 - 8);
          (a7)(v30, 0, 1, v9);
          a6 = v385;
          (*(v337 + 32))(v385, v30, v9);
          outlined destroy of AttributedString._AttributeValue(&v465);
          (a7)(a6, 0, 1, v9);
        }

        else
        {
          outlined destroy of TermOfAddress?(&v465, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(*(v9 - 8) + 56))(v385, 1, 1, v9);
        }

        v338 = (*(v383 + 24))();
        specialized Dictionary.subscript.getter(v338, v339, v28, &v465);

        v13 = AssociatedTypeWitness;
        v30 = v416;
        if (*(&v466 + 1))
        {
          outlined init with copy of Hashable & Sendable(&v465, v450);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
          v340 = swift_dynamicCast();
          v28 = *(*(v13 - 8) + 56);
          if (!v340)
          {
            goto LABEL_405;
          }

          v341 = *(v13 - 8);
          (v28)(v32, 0, 1, v13);
          v342 = *(v341 + 32);
          v9 = v341 + 32;
          a7 = v381;
          v342(v381, v32, v13);
          outlined destroy of AttributedString._AttributeValue(&v465);
          result = (v28)(a7, 0, 1, v13);
        }

        else
        {
          outlined destroy of TermOfAddress?(&v465, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          result = (*(*(v13 - 8) + 56))(v381, 1, 1, v13);
        }

        v344 = v422;
        v346 = v408;
        v345 = v409;
        v347 = v421;
        v348 = v420;
        v349 = v423;
        if (v422 >> 10 >= v415 >> 10)
        {
          v350 = v380;
          *v380 = v415;
          v350[1] = v30;
          v350[2] = v345;
          v350[3] = v346;
          v350[4] = v379;
          v350[5] = v344;
          v350[6] = v347;
          v350[7] = v348;
          v350[8] = v349;
          v350[9] = v29;
          return result;
        }

LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
LABEL_381:
        __break(1u);
LABEL_382:
        __break(1u);
LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
        goto LABEL_385;
      }
    }

    else
    {

      v32 = v403;
      v30 = v405;
    }

    (*(*(v402 - 8) + 56))(v398, 1, 1);
    goto LABEL_332;
  }

  v30 = v425;
  a6 = v411;
  if (v247 < v414)
  {
LABEL_386:
    __break(1u);
LABEL_387:
    __break(1u);
LABEL_388:
    swift_unknownObjectRelease();
    __break(1u);
LABEL_389:
    __break(1u);
    goto LABEL_390;
  }

  v443 = v417;
  v444 = v411;
  v445 = v410;
  v446 = v9;
  v447 = a7;
  v448 = v13;
  v449 = v29;
  if (v414 == v247)
  {
LABEL_325:
    v422 = v9;
    v421 = a7;
    v420 = v13;
    v423 = v29;
    goto LABEL_326;
  }

  v250 = v248;
  swift_unknownObjectRetain();
  if ((specialized Set.contains(_:)(0, 0, v30) & 1) == 0)
  {
    v28 = v250;
LABEL_308:
    v489 = v417;
    v490 = a6;
    v491 = v410;
    v492 = v9;
    v493 = a7;
    v494 = v13;
    v495 = v29;
    if (specialized Collection<>._containsScalarConstraint.getter(v30))
    {
      v433 = v32;
      a6 = v30 + 56;
      v296 = 1 << *(v30 + 32);
      v297 = -1;
      if (v296 < 64)
      {
        v297 = ~(-1 << v296);
      }

      v30 = v297 & *(v30 + 56);
      v32 = ((v296 + 63) >> 6);

      v298 = 0;
      v431 = MEMORY[0x1E69E7CC0];
      while (v30)
      {
LABEL_317:
        v300 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v301 = (*(v425 + 48) + ((v298 << 10) | (16 * v300)));
        v302 = v301[1];
        if (v302 >= 2)
        {
          v303 = specialized Collection.first.getter(*v301, v302);
          if ((v303 & 0x100000000) == 0)
          {
            v429 = v303;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v431 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v431 + 2) + 1, 1, v431);
            }

            v305 = *(v431 + 2);
            v304 = *(v431 + 3);
            v306 = (v305 + 1);
            v307 = v429;
            if (v305 >= v304 >> 1)
            {
              v428 = (v305 + 1);
              v427 = v305;
              v309 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v304 > 1), v305 + 1, 1, v431);
              v306 = v428;
              v305 = v427;
              v431 = v309;
              v307 = v429;
            }

            v308 = v431;
            *(v431 + 2) = v306;
            *&v308[4 * v305 + 32] = v307;
          }
        }
      }

      while (1)
      {
        v299 = v298 + 1;
        if (__OFADD__(v298, 1))
        {
          break;
        }

        if (v299 >= v32)
        {

          v483 = v28;
          v484 = v434;
          v485 = v435;
          v486 = v436;
          v487 = v437;
          v488 = v433;
          BigString.UnicodeScalarView.subscript.getter();
          v30 = v431;
          v351 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v431);
          v437 = v352;
          v32 = v353;
          a6 = v354;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v451);
          v422 = v9;
          v421 = a7;
          v420 = v13;
          v423 = v29;
          if (a6 == 2)
          {
            goto LABEL_326;
          }

          if (v414 <= v351 >> 10)
          {
            v422 = v351;
            v421 = v437;
            v420 = v32;
            v423 = a6;
            goto LABEL_326;
          }

          goto LABEL_398;
        }

        v30 = *(a6 + 8 * v299);
        ++v298;
        if (v30)
        {
          v298 = v299;
          goto LABEL_317;
        }
      }

LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
      goto LABEL_368;
    }

    swift_unknownObjectRelease();
    goto LABEL_325;
  }

  v28 = v250;
  v496 = v250;
  v497 = v434;
  v498 = v435;
  v499 = v436;
  v500 = v437;
  v501 = v32;
  BigString.UTF8View.subscript.getter();
  *&v438 = v417;
  *(&v438 + 1) = a6;
  v439 = v410;
  *&v440 = v417;
  *(&v440 + 1) = a6;
  v441 = v410;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v438, &v451);
  outlined destroy of BigSubstring.UTF8View(&v478);
  if (v458 == 2)
  {
    goto LABEL_308;
  }

  v9 = v455;
  if (v414 <= v455 >> 10)
  {
    a7 = v456;
    v13 = v457;
    v29 = v458;
    goto LABEL_308;
  }

LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:
  __break(1u);
LABEL_401:
  __break(1u);
LABEL_402:
  (a7)(v29, 1, 1, v50);
  (*(v361 + 8))(v29, v362);
  __break(1u);
LABEL_403:
  (a7)(v9, 1, 1, v30);
  (*(v363 + 8))(v9, v364);
  __break(1u);
LABEL_404:
  (a7)(v30, 1, 1, v9);
  (*(v365 + 8))(v30, v366);
  __break(1u);
LABEL_405:
  (v28)(v32, 1, 1, v13);
  (*(v367 + 8))(v32, v368);
  __break(1u);
LABEL_406:
  (*(*(v29 - 8) + 56))(a6, 1, 1, v29);
  result = (*(v359 + 8))(a6, v360);
  __break(1u);
  return result;
}