uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, unint64_t a2, unsigned int a3, char *a4)
{
  v281 = *MEMORY[0x1E69E9840];
  v214 = type metadata accessor for OSSignpostID();
  v210 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  Counter = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v195 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v212 = (&v195 - v14);
  MEMORY[0x1EEE9AC00](v15);
  *&v209 = &v195 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v213 = &v195 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v203 = &v195 - v20;
  v21 = *(a4 + 13);
  v215 = a2;
  if (v21)
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  v25 = v271;
  v26 = &v245;
  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 86) = 1;
  }

  else if (*(a1 + 86) != 1)
  {
    goto LABEL_121;
  }

  v28 = *(a1 + 48);
  v29 = *(a1 + 16);
  v272 = *(a1 + 32);
  v273 = v28;
  v30 = *(a1 + 48);
  v274[0] = *(a1 + 64);
  v31 = *(a1 + 16);
  v271[0] = *a1;
  v271[1] = v31;
  v252 = v272;
  v253 = v30;
  v254[0] = *(a1 + 64);
  *(v274 + 14) = *(a1 + 78);
  *(v254 + 14) = *(a1 + 78);
  v250 = v271[0];
  v251 = v29;
  outlined init with copy of _ShapeStyle_Pack.Fill(v271, &v245);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(&v250, &v263);
  v270 = a4[96];
  v32 = *(a4 + 4);
  v269[2] = *(a4 + 3);
  v269[3] = v32;
  v269[4] = *(a4 + 5);
  v33 = *(a4 + 2);
  v269[0] = *(a4 + 1);
  v269[1] = v33;
  if (v270 == 255)
  {
    goto LABEL_120;
  }

  v34 = *(a4 + 4);
  v259 = *(a4 + 3);
  v260 = v34;
  v261 = *(a4 + 5);
  v262 = a4[96];
  v35 = *(a4 + 2);
  v257 = *(a4 + 1);
  v258 = v35;
  outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(v269, &v250, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for HitTestableEvent?);
  if ((specialized static _ShapeStyle_Pack.Fill.AnimatableData.== infix(_:_:)(&v263, &v257) & 1) == 0)
  {
    v211 = Counter;
    v202 = a1;
    AGGraphClearUpdate();
    v37 = *(a4 + 5);
    v254[0] = *(a4 + 4);
    v254[1] = v37;
    v255 = *(a4 + 6);
    v256 = *(a4 + 28);
    v38 = *(a4 + 1);
    v250 = *a4;
    v251 = v38;
    v39 = *(a4 + 2);
    v40 = *(a4 + 3);
    v201 = a4;
    v252 = v39;
    v253 = v40;
    Counter = &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Fill>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v250, &v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Fill>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill, type metadata accessor for AnimatableAttributeHelper);
    v41 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v250, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Fill>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v42 = Transaction.effectiveAnimation.getter(v41);
    if (v42)
    {
      v43 = v42;
      v199 = v12;
      v197 = a3;
    }

    else
    {
      v43 = v215;
      if (!v215)
      {
        v26 = &v245;
        v247 = v259;
        v248 = v260;
        v249[0] = v261;
        LOBYTE(v249[1]) = v262;
        v245 = v257;
        v246 = v258;
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v245);

        a4 = v201;
        a1 = v202;
        v25 = v271;
        goto LABEL_120;
      }

      v199 = v12;
      v197 = a3;
    }

    v44 = v202;
    v45 = *(&v255 + 1);
    v243[2] = v265;
    v243[3] = v266;
    v243[4] = v267;
    v244 = v268;
    v243[0] = v263;
    v243[1] = v264;
    v242 = v268;
    v240 = v266;
    v241 = v267;
    v238 = v264;
    v239 = v265;
    v237 = v263;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v243, &v245);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(&v237, &v257);
    v24 = *AGGraphGetValue();
    v195 = v43;
    v196 = v41;
    if (v45)
    {
      v277 = v239;
      v278 = v240;
      v279 = v241;
      v280 = v242;
      v275 = v237;
      v276 = v238;

      LOBYTE(v245) = 0;
      v198 = v45;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v43, &v275, v41, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(Counter) = CurrentAttribute;
      LODWORD(v215) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == v215)
      {
        v47 = 0;
      }

      else
      {
        v47 = CurrentAttribute;
      }

      LODWORD(v211) = v47;
      v48 = *(v44 + 48);
      v234 = *(v44 + 32);
      v235 = v48;
      v236[0] = *(v44 + 64);
      v49 = v236[0];
      *(v236 + 14) = *(v44 + 78);
      v50 = *(v44 + 16);
      v232 = *v44;
      v233 = v50;
      v248 = v48;
      v249[0] = v49;
      v246 = v50;
      v247 = v234;
      *(v249 + 14) = *(v236 + 14);
      v245 = v232;
      outlined init with copy of _ShapeStyle_Pack.Fill(&v232, &v226);
      v51 = outlined destroy of _ShapeStyle_Pack.Fill(&v245);
      (*(*v43 + 96))(&v220, v51);
      v53 = v220;
      v52 = v221;
      v54 = v222;
      v55 = v224;
      LOBYTE(v56) = v225;
      v218 = 0x7FF8000000000000;
      v219 = 0x7FF8000000000000;
      v216 = NAN;
      v217 = 1.0;
      v226 = v220;
      v227 = v221;
      v228 = v222;
      v229 = v223;
      v57 = v223;
      v230 = *&v224;
      LOBYTE(v231) = v225;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v226, &v219, &v218, &v217, &v216);
      v58 = v218;
      v59 = v219;
      v60 = v216;
      v61 = v217;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_187;
      }

      goto LABEL_21;
    }

    v277 = v239;
    v278 = v240;
    v279 = v241;
    v280 = v242;
    v275 = v237;
    v276 = v238;
    *&v232 = &type metadata for _ShapeStyle_Pack.Fill;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v275, &v245);
    type metadata accessor for _ShapeStyle_Pack.Fill.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _ShapeStyle_Pack.Fill.AnimatableData>.Type);
    v82 = swift_dynamicCast();
    if (v82)
    {
      v83 = v245;
    }

    else
    {
      v83 = 0;
    }

    if (v82)
    {
      v84 = *(&v245 + 1);
    }

    else
    {
      v84 = 0;
    }

    v198 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16_ShapeStyle_PackV4FillO14AnimatableDataO_Tt4B5(v85, &v275, v41, v83, v84, v24);
    v86 = AGGraphGetCurrentAttribute();
    LODWORD(Counter) = v86;
    v87 = *MEMORY[0x1E698D3F8];
    if (v86 == *MEMORY[0x1E698D3F8])
    {
      v88 = 0;
    }

    else
    {
      v88 = v86;
    }

    v89 = *(v44 + 48);
    v234 = *(v44 + 32);
    v235 = v89;
    v236[0] = *(v44 + 64);
    v90 = v236[0];
    *(v236 + 14) = *(v44 + 78);
    v91 = *(v44 + 16);
    v232 = *v44;
    v233 = v91;
    v248 = v89;
    v249[0] = v90;
    v246 = v91;
    v247 = v234;
    *(v249 + 14) = *(v236 + 14);
    v245 = v232;
    outlined init with copy of _ShapeStyle_Pack.Fill(&v232, &v226);
    v92 = outlined destroy of _ShapeStyle_Pack.Fill(&v245);
    (*(*v43 + 96))(&v220, v92);
    v94 = v220;
    v93 = v221;
    v95 = v222;
    v96 = v223;
    v97 = v224;
    v218 = 0x7FF8000000000000;
    v219 = 0x7FF8000000000000;
    v216 = NAN;
    v217 = 1.0;
    v226 = v220;
    v227 = v221;
    v228 = v222;
    v229 = v223;
    v230 = *&v224;
    LODWORD(v215) = v225;
    LOBYTE(v231) = v225;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v226, &v219, &v218, &v217, &v216);
    v98 = v218;
    v99 = v219;
    v100 = v216;
    v101 = v217;
    if (one-time initialization token for enabledCategories != -1)
    {
      v212 = v219;
      v208 = v218;
      v209 = v217;
      *&v207 = v216;
      swift_once();
      v100 = *&v207;
      v98 = v208;
      v101 = v209;
      v99 = v212;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v102 = static CustomEventTrace.recorder) != 0)
      {
        v212 = v96;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v103 = v88;
        v104 = v97;
        v105 = *(v102 + 16);
        LODWORD(v226) = v103;
        BYTE4(v226) = Counter == v87;
        v227 = &type metadata for _ShapeStyle_Pack.Fill;
        v228 = v99;
        v229 = v98;
        v230 = v101;
        v231 = v100;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v209 = v106;

        Counter = v105;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v94, v93, v95, v212, v104, v215);
      }

      else
      {
        outlined consume of Animation.Function(v94, v93, v95, v96, v97, v215);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
        goto LABEL_52;
      }
    }

    swift_once();
LABEL_52:
    v67 = *(&static Signpost.animationState + 1);
    v57 = static Signpost.animationState;
    v68 = word_1ED5283E8;
    LOBYTE(v76) = HIBYTE(word_1ED5283E8);
    v108 = byte_1ED5283EA;
    v109 = static os_signpost_type_t.begin.getter();
    v226 = v57;
    v227 = v67;
    LOBYTE(v228) = v68;
    BYTE1(v228) = v76;
    BYTE2(v228) = v108;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v119 = v198;

      goto LABEL_59;
    }

    LODWORD(v215) = v109;
    LODWORD(Counter) = v87;
    v110 = one-time initialization token for _signpostLog;

    if (v110 != -1)
    {
      goto LABEL_194;
    }

    goto LABEL_54;
  }

  v252 = v259;
  v253 = v260;
  v254[0] = v261;
  LOBYTE(v254[1]) = v262;
  v250 = v257;
  v251 = v258;
  for (i = &v250; ; i = &v245)
  {
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(i);
LABEL_120:
    v152 = *(a4 + 4);
    v252 = *(a4 + 3);
    v253 = v152;
    v254[0] = *(a4 + 5);
    LOBYTE(v254[1]) = a4[96];
    v153 = *(a4 + 2);
    v250 = *(a4 + 1);
    v251 = v153;
    result = outlined destroy of HitTestableEvent?(&v250, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?);
    v154 = v266;
    *(a4 + 3) = v265;
    *(a4 + 4) = v154;
    *(a4 + 5) = v267;
    a4[96] = v268;
    v155 = v264;
    *(a4 + 1) = v263;
    *(a4 + 2) = v155;
LABEL_121:
    v156 = *(a4 + 13);
    if (!v156)
    {
      return result;
    }

    v157 = *(a1 + 48);
    v158 = *(a1 + 16);
    v252 = *(a1 + 32);
    v253 = v157;
    v159 = *(a1 + 48);
    v254[0] = *(a1 + 64);
    v160 = *(a1 + 16);
    v250 = *a1;
    v251 = v160;
    v247 = v252;
    v248 = v159;
    v249[0] = *(a1 + 64);
    *(v254 + 14) = *(a1 + 78);
    *(v249 + 14) = *(a1 + 78);
    v245 = v250;
    v246 = v158;

    outlined init with copy of _ShapeStyle_Pack.Fill(&v250, v271);
    _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(&v245, v271);
    LOBYTE(v245) = 0;
    v204 = v156;
    v161 = specialized AnimatorState.update(_:at:environment:)(v271, a3, v24);
    v123 = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (v123 == v57)
    {
      LODWORD(v120) = 0;
    }

    else
    {
      LODWORD(v120) = v123;
    }

    v55 = &type metadata instantiation cache for TupleTypeDescription;
    if (v161)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v173 = *(v55 + 616);
    if (*(v173 + 16) >= 0x43uLL)
    {
      if (*(v173 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v245) = v120;
        BYTE4(v245) = v123 == v57;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v56 = *(&static Signpost.animationState + 1);
    v55 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v164 = HIBYTE(word_1ED5283E8);
    v165 = byte_1ED5283EA;
    v166 = static os_signpost_type_t.end.getter();
    v245 = __PAIR128__(v56, v55);
    LOBYTE(v246) = v53;
    BYTE1(v246) = v164;
    BYTE2(v246) = v165;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    LODWORD(v215) = v166;
    v167 = one-time initialization token for _signpostLog;
    v54 = v204;

    if (v167 != -1)
    {
      swift_once();
    }

    v52 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v168 = swift_allocObject();
    *(v168 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v57)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    *&v207 = v61;
    v208 = v59;
    v205 = v60;
    v206 = v58;
    swift_once();
    v60 = v205;
    v58 = v206;
    v61 = *&v207;
    v59 = v208;
LABEL_21:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_27;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v62 = static CustomEventTrace.recorder, v63 = v215, static CustomEventTrace.recorder))
    {
      v207 = *(static CustomEventTrace.recorder + 24);
      v208 = v55;
      *(v207 + 4) = 1602;
      v64 = *(v62 + 16);
      LODWORD(v226) = v211;
      BYTE4(v226) = Counter == v63;
      v227 = &type metadata for _ShapeStyle_Pack.Fill;
      v228 = v59;
      v229 = v58;
      v230 = v61;
      v231 = v60;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v211 = v65;

      Counter = v64;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v53, v52, v54, v57, v208, v56);
    }

    else
    {
      outlined consume of Animation.Function(v53, v52, v54, v57, v55, v56);
    }

    v66 = one-time initialization token for animationState;

    if (v66 != -1)
    {
      goto LABEL_189;
    }

LABEL_27:
    v67 = *(&static Signpost.animationState + 1);
    v57 = static Signpost.animationState;
    v68 = word_1ED5283E8;
    v69 = HIBYTE(word_1ED5283E8);
    v70 = byte_1ED5283EA;
    v71 = static os_signpost_type_t.event.getter();
    v226 = v57;
    v227 = v67;
    LOBYTE(v228) = v68;
    BYTE1(v228) = v69;
    BYTE2(v228) = v70;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_89:
      a4 = v201;
      a1 = v202;
      goto LABEL_118;
    }

    LODWORD(v211) = v71;
    v72 = one-time initialization token for _signpostLog;

    if (v72 != -1)
    {
      swift_once();
    }

    v73 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v74 = COERCE_DOUBLE(swift_allocObject());
    *(v74 + 16) = xmmword_18DDAF080;
    v75 = AGGraphGetCurrentAttribute();
    v76 = v215;
    if (v75 == v215)
    {
      __break(1u);
    }

    else
    {
      v77 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v78 = MEMORY[0x1E69E6870];
      *(v74 + 56) = MEMORY[0x1E69E6810];
      *(v74 + 64) = v78;
      *(v74 + 32) = Counter;
      v79 = AGGraphGetCurrentAttribute();
      if (v79 != v76)
      {
        Counter = v74;
        v80 = MEMORY[0x1E69E76D0];
        *(v74 + 96) = MEMORY[0x1E69E7668];
        *(v74 + 104) = v80;
        *(v74 + 72) = v79;
        *(v74 + 136) = MEMORY[0x1E69E6158];
        *(v74 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v74 + 112) = 1819044166;
        *(v74 + 120) = 0xE400000000000000;
        if (v69)
        {
          LOBYTE(v216) = v211;
          v218 = v73;
          v219 = &dword_18D018000;
          v226 = v57;
          v227 = v67;
          LOBYTE(v228) = v68;
          v220 = "Animation: (%p) [%d] %{public}@ updated";
          v221 = 39;
          LOBYTE(v222) = 2;
          v217 = *&v74;
          v81 = v209;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v210 + 8))(COERCE_DOUBLE(*&v81), v214);
        }

        else
        {
          if (v57 == 20)
          {
            a1 = 3;
          }

          else
          {
            a1 = 4;
          }

          LODWORD(v120) = bswap32(v57) | (4 * WORD1(v57));
          LODWORD(v215) = v211;
          v121 = (v210 + 16);
          v199 = *(v210 + 16);
          v122 = v199(v212, *&v209, v214);
          v55 = 0;
          LOBYTE(v220) = 1;
          v200 = v121;
          v207 = 16 * a1;
          v208 = (v121 - 8);
          *&v205 = v57;
          v206 = (Counter + 32);
          v204 = a1;
          do
          {
            v211 = &v195;
            MEMORY[0x1EEE9AC00](v122);
            a4 = &v195 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
            v25 = a4 + 8;
            v125 = a1;
            v126 = a4 + 8;
            do
            {
              *(v126 - 1) = 0;
              *v126 = 0;
              v126 += 16;
              --v125;
            }

            while (v125);
            v26 = (v206 + 40 * v55);
            while (1)
            {
              v127 = *(Counter + 2);
              if (v55 == v127)
              {
                break;
              }

              if (v55 >= v127)
              {
                goto LABEL_178;
              }

              ++v55;
              outlined init with copy of AnyTrackedValue(v26, &v226);
              v57 = Counter;
              v128 = v229;
              __swift_project_boxed_opaque_existential_1(&v226, v229);
              *(v25 - 1) = CVarArg.kdebugValue(_:)(v120 | v215, v128);
              *v25++ = v129 & 1;
              v123 = __swift_destroy_boxed_opaque_existential_1(&v226);
              v26 = (v26 + 40);
              if (!--a1)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v220) = 0;
LABEL_73:
            v130 = v205;
            if (*&v205 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (*&v130 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v131 = *v208;
            v132 = v212;
            v133 = v214;
            (*v208)(v212, v214);
            v134 = __swift_project_value_buffer(v133, static OSSignpostID.continuation);
            v122 = v199(v132, v134, v133);
            a1 = v204;
          }

          while ((v220 & 1) != 0);

          v135 = v214;
          v131(v212, v214);
          v131(*&v209, v135);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_54:
    v111 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v112 = COERCE_DOUBLE(swift_allocObject());
    *(v112 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == Counter)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v113 = AGGraphGetAttributeGraph();
    v114 = AGGraphGetCounter();

    v115 = MEMORY[0x1E69E6870];
    *(v112 + 56) = MEMORY[0x1E69E6810];
    *(v112 + 64) = v115;
    *(v112 + 32) = v114;
    v116 = AGGraphGetCurrentAttribute();
    if (v116 == Counter)
    {
      goto LABEL_196;
    }

    a1 = v112;
    v117 = MEMORY[0x1E69E76D0];
    *(v112 + 96) = MEMORY[0x1E69E7668];
    *(v112 + 104) = v117;
    *(v112 + 72) = v116;
    *(v112 + 136) = MEMORY[0x1E69E6158];
    *(v112 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v112 + 112) = 1819044166;
    *(v112 + 120) = 0xE400000000000000;
    if (v76)
    {
      LOBYTE(v216) = v215;
      v218 = v111;
      v219 = &dword_18D018000;
      v226 = v57;
      v227 = v67;
      LOBYTE(v228) = v68;
      v220 = "Animation: (%p) [%d] %{public}@ started";
      v221 = 39;
      LOBYTE(v222) = 2;
      v217 = *&v112;
      v118 = v199;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v119 = v198;

      (*(v210 + 8))(v118, v214);

LABEL_59:
      a4 = v201;
      *(v201 + 13) = v119;
    }

    else
    {
      *&v136 = v57;
      if (v57 == 20)
      {
        v137 = 3;
      }

      else
      {
        v137 = 4;
      }

      LODWORD(v120) = bswap32(v57) | (4 * WORD1(v57));
      v57 = v215;
      v138 = (v210 + 16);
      v200 = *(v210 + 16);
      v139 = v200(v211, v199, v214);
      v55 = 0;
      LOBYTE(v220) = 1;
      v212 = v137;
      v204 = v138;
      v205 = v136;
      v207 = 16 * v137;
      v208 = (v138 - 8);
      v215 = a1;
      v206 = a1 + 32;
      do
      {
        v209 = COERCE_DOUBLE(&v195);
        MEMORY[0x1EEE9AC00](v139);
        Counter = &v195 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = Counter + 8;
        v141 = v212;
        v142 = Counter + 8;
        do
        {
          *(v142 - 1) = 0;
          *v142 = 0;
          v142 += 16;
          --v141;
        }

        while (v141);
        v26 = (v206 + 40 * v55);
        v25 = v212;
        while (1)
        {
          v143 = *(v215 + 16);
          if (v55 == v143)
          {
            break;
          }

          if (v55 >= v143)
          {
            goto LABEL_179;
          }

          ++v55;
          outlined init with copy of AnyTrackedValue(v26, &v226);
          v144 = v229;
          a1 = *&v230;
          __swift_project_boxed_opaque_existential_1(&v226, v229);
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v120 | v57, v144);
          *a4 = v145 & 1;
          a4 += 16;
          v123 = __swift_destroy_boxed_opaque_existential_1(&v226);
          v26 = (v26 + 40);
          v25 = (v25 - 1);
          if (!v25)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v220) = 0;
LABEL_102:
        v146 = v205;
        if (*&v205 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (Counter[8] == 1)
        {
          kdebug_trace_string();
        }

        if (Counter[24] == 1)
        {
          kdebug_trace_string();
        }

        if (Counter[40] == 1)
        {
          kdebug_trace_string();
        }

        if (*&v146 != 20 && Counter[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v147 = *v208;
        v148 = v211;
        a1 = v214;
        (*v208)(v211, v214);
        v149 = __swift_project_value_buffer(a1, static OSSignpostID.continuation);
        v139 = v200(v148, v149, a1);
      }

      while ((v220 & 1) != 0);
      v150 = v198;

      v151 = v214;
      v147(v148, v214);
      v147(v199, v151);

      a4 = v201;
      *(v201 + 13) = v150;
    }

    a1 = v202;
LABEL_118:
    v26 = &v245;
    v25 = v271;
    a3 = v197;
    specialized AnimatorState.addListeners(transaction:)(v196);

    v234 = v239;
    v235 = v240;
    v236[0] = v241;
    LOBYTE(v236[1]) = v242;
    v232 = v237;
    v233 = v238;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v232);
    v247 = v259;
    v248 = v260;
    v249[0] = v261;
    LOBYTE(v249[1]) = v262;
    v245 = v257;
    v246 = v258;
  }

  v54 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v169 = MEMORY[0x1E69E6870];
  *(v168 + 56) = MEMORY[0x1E69E6810];
  *(v168 + 64) = v169;
  *(v168 + 32) = Counter;
  v170 = AGGraphGetCurrentAttribute();
  if (v170 == v57)
  {
    goto LABEL_186;
  }

  Counter = v168;
  v171 = MEMORY[0x1E69E76D0];
  *(v168 + 96) = MEMORY[0x1E69E7668];
  *(v168 + 104) = v171;
  *(v168 + 72) = v170;
  *(v168 + 136) = MEMORY[0x1E69E6158];
  *(v168 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v168 + 112) = 1819044166;
  *(v168 + 120) = 0xE400000000000000;
  if (v164)
  {
    LOBYTE(v243[0]) = v215;
    v226 = &dword_18D018000;
    *&v269[0] = v52;
    *&v245 = v55;
    *(&v245 + 1) = v56;
    LOBYTE(v246) = v53;
    *&v232 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v232 + 1) = 37;
    LOBYTE(v233) = 2;
    *&v257 = v168;
    v172 = v203;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v210 + 8))(v172, v214);
    goto LABEL_173;
  }

  if (v55 == 20)
  {
    v174 = 3;
  }

  else
  {
    v174 = 4;
  }

  v57 = bswap32(v55) | (4 * WORD1(v55));
  LODWORD(v215) = v215;
  v175 = v210 + 16;
  v205 = *(v210 + 16);
  v176 = (*&v205)(v213, v203, v214);
  a1 = 0;
  LOBYTE(v232) = 1;
  v212 = v174;
  v210 = v175;
  v208 = (16 * v174);
  *&v209 = v175 - 8;
  v206 = v55;
  v207 = v168 + 32;
  do
  {
    v211 = &v195;
    MEMORY[0x1EEE9AC00](v176);
    a4 = &v195 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
    v120 = a4 + 8;
    v178 = v212;
    v179 = a4 + 8;
    do
    {
      *(v179 - 1) = 0;
      *v179 = 0;
      v179 += 16;
      --v178;
    }

    while (v178);
    v26 = (v207 + 40 * a1);
    v25 = v212;
    while (1)
    {
      v180 = *(Counter + 2);
      if (a1 == v180)
      {
        break;
      }

      if (a1 >= v180)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v193 = v123;
        swift_once();
        v123 = v193;
LABEL_127:
        v162 = *(v55 + 616);
        if (*(v162 + 16) >= 0x43uLL)
        {
          if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v245) = v120;
            BYTE4(v245) = v123 == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v201 = a4;
          v202 = a1;
          v163 = one-time initialization token for animationState;

          if (v163 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v194 = v123;
        swift_once();
        v123 = v194;
        goto LABEL_140;
      }

      ++a1;
      outlined init with copy of AnyTrackedValue(v26, &v245);
      v181 = *(&v246 + 1);
      v55 = Counter;
      __swift_project_boxed_opaque_existential_1(&v245, *(&v246 + 1));
      *(v120 - 1) = CVarArg.kdebugValue(_:)(v57 | v215, v181);
      *v120 = v182 & 1;
      v120 += 16;
      v123 = __swift_destroy_boxed_opaque_existential_1(&v245);
      v26 = (v26 + 40);
      v25 = (v25 - 1);
      if (!v25)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v232) = 0;
LABEL_158:
    v183 = v206;
    if (v206 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v183 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v184 = **&v209;
    v186 = v213;
    v185 = v214;
    (**&v209)(v213, v214);
    v187 = __swift_project_value_buffer(v185, static OSSignpostID.continuation);
    v176 = (*&v205)(v186, v187, v185);
  }

  while ((v232 & 1) != 0);

  v188 = v214;
  v184(v213, v214);
  v184(v203, v188);
LABEL_173:

LABEL_174:
  specialized AnimatorState.removeListeners()();

  a1 = v202;
  *(v201 + 13) = 0;
  v26 = &v245;
  v25 = v271;
LABEL_175:
  v189 = v25[3];
  v26[2] = v25[2];
  v26[3] = v189;
  v26[4] = v25[4];
  LOBYTE(v249[1]) = v274[1];
  v190 = v25[1];
  *v26 = *v25;
  v26[1] = v190;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(a1);

  v191 = v25[3];
  v26[2] = v25[2];
  v26[3] = v191;
  v26[4] = v25[4];
  LOBYTE(v249[1]) = v274[1];
  v192 = v25[1];
  *v26 = *v25;
  v26[1] = v192;
  result = outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v245);
  *(a1 + 86) = 1;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__int128 *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v248 = *MEMORY[0x1E69E9840];
  v221 = type metadata accessor for OSSignpostID();
  v218 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v11 = &v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v197 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v219 = &v197 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v197 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v220 = &v197 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v209 = &v197 - v23;
  if (*(a4 + 64))
  {
    Value = AGGraphGetValue();
    if (v25)
    {
      v26 = *Value;
    }

    else
    {
      v26 = -INFINITY;
    }
  }

  else
  {
    v26 = -INFINITY;
  }

  v217 = a4;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 54) = 1;
  }

  else if (*(a1 + 54) != 1)
  {
    v35 = *(v217 + 64);
    if (!v35)
    {
      return;
    }

    goto LABEL_143;
  }

  v216 = v11;
  v27 = *(a1 + 53);
  if (v27)
  {
    v28 = 0uLL;
    v4 = 0.0;
    v29 = 0uLL;
  }

  else
  {
    v30 = a1[1];
    v242 = *a1;
    v243 = v30;
    v244[0] = a1[2];
    *(v244 + 13) = *(a1 + 45);
    ResolvedShadowStyle.animatableData.getter(v229);
    v28 = v229[0];
    v29 = v229[1];
    v4 = v230;
  }

  v31 = v217;
  if (*(v217 + 57))
  {
    goto LABEL_142;
  }

  v32 = *(v217 + 16);
  v33 = *(v217 + 32);
  v5 = *(v217 + 48);
  v34 = *(v217 + 56);
  if ((v27 & 1) == 0)
  {
    if ((*(v217 + 56) & 1) == 0 && *v28.i32 == *v32.i32 && *&v28.i32[1] == *&v32.i32[1] && *&v28.i32[2] == *&v32.i32[2] && *&v28.i32[3] == *&v32.i32[3])
    {
      v41 = vzip1q_s64(v29, v33);
      if (vmovn_s64(vceqq_f64(vdupq_laneq_s64(v41, 1), v41)).u8[0])
      {
        v42 = vzip2q_s64(v29, v33);
        if ((vmovn_s64(vceqq_f64(vdupq_laneq_s64(v42, 1), v42)).u32[0] & 1) != 0 && v4 == v5)
        {
          goto LABEL_142;
        }
      }
    }

LABEL_19:
    v215 = *(v217 + 32);
    v222 = v32;
    v214 = a2;
    v198 = v14;
    v199 = v19;
    v203 = v29;
    v204 = v28;
    v205 = v27;
    v206 = a3;
    AGGraphClearUpdate();
    v36 = *(v31 + 16);
    v242 = *v31;
    v243 = v36;
    v37 = *(v31 + 48);
    v244[0] = *(v31 + 32);
    v244[1] = v37;
    *(&v244[1] + 12) = *(v31 + 60);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v242, &v238, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
    v38 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v202 = v38;
    v39 = Transaction.effectiveAnimation.getter(v38);
    if (v39)
    {
      v40 = v39;
      LOBYTE(v27) = v205;
    }

    else
    {
      LOBYTE(v27) = v205;
      a3 = v206;
      v40 = v214;
      if (!v214)
      {

        v31 = v217;
        goto LABEL_141;
      }
    }

    v43 = v4;
    v44 = v27;
    v45 = v204;
    v46 = v203;
    if ((v34 & 1) == 0)
    {
      v44 = 0;
      if (v27)
      {
        v43 = v5;
        v45 = v222;
        v46 = v215;
      }

      else
      {
        v46 = vsubq_f64(v203, v215);
        v43 = v4 - v5;
        v47 = vsub_f32(vmovn_s64(v204), vmovn_s64(v222));
        v48.i64[0] = v47.u32[0];
        v48.i64[1] = v47.u32[1];
        v45 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v204, 0x20uLL), vshrn_n_s64(v222, 0x20uLL)), 0x20uLL), v48);
      }
    }

    v245[0] = v45;
    v245[1] = v46;
    v246 = v43;
    v247 = v44 & 1;
    v49 = *&v244[2];
    v26 = *AGGraphGetValue();
    v210 = a1;
    v200 = v40;
    if (v49)
    {
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v242, &v238, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v238) = 0;
      v201 = v49;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v40, v245[0].i8, v202, v26);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v51) = CurrentAttribute;
      v52 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        v53 = 0;
      }

      else
      {
        v53 = CurrentAttribute;
      }

      LODWORD(v216) = v53;
      (*(*v40 + 96))(&v234);
      v54 = *(&v234 + 1);
      v35 = v234;
      v55 = v235;
      LODWORD(v56) = v237;
      v223 = NAN;
      v224[0] = 0x7FF8000000000000;
      v226 = 1.0;
      v227 = NAN;
      v238 = v234;
      v239 = v235;
      v57 = *(&v235 + 1);
      v222.i64[0] = v236;
      v240 = *&v236;
      LOBYTE(v241) = v237;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v238, v224, &v227, &v226, &v223);
      v58 = v223;
      v5 = *v224;
      v59 = v226;
      v60 = v227;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_215;
      }

      goto LABEL_40;
    }

    *&v234 = &type metadata for _ShapeStyle_Pack.Effect.Kind;
    type metadata accessor for _ShapeStyle_Pack.Effect.Kind.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _ShapeStyle_Pack.Effect.Kind.AnimatableData>.Type);
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v238;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = *(&v238 + 1);
    }

    else
    {
      v69 = 0;
    }

    v74 = v202;

    v71 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16_ShapeStyle_PackV6EffectV4KindO14AnimatableDataO_Tt4B5(v70, v245, v74, v68, v69, v26);
    v72 = AGGraphGetCurrentAttribute();
    v73 = v72;
    LODWORD(v74) = *MEMORY[0x1E698D3F8];
    if (v72 == *MEMORY[0x1E698D3F8])
    {
      v75 = 0;
    }

    else
    {
      v75 = v72;
    }

    LODWORD(v219) = v75;
    (*(*v40 + 96))(&v234);
    v76 = v234;
    v77 = v235;
    v78 = v236;
    v223 = NAN;
    v224[0] = 0x7FF8000000000000;
    v226 = 1.0;
    v227 = NAN;
    v238 = v234;
    v239 = v235;
    v240 = *&v236;
    v222.i32[0] = v237;
    LOBYTE(v241) = v237;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v238, v224, &v227, &v226, &v223);
    *&v79 = v223;
    v5 = *v224;
    v80 = v226;
    v81 = v227;
    if (one-time initialization token for enabledCategories != -1)
    {
      v214 = *&v223;
      v215.f64[0] = v227;
      *&v213 = v226;
      swift_once();
      v80 = *&v213;
      v79 = v214;
      v81 = v215.f64[0];
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_219;
    }

    v82 = *(static CustomEventTrace.enabledCategories + 98);
    v201 = v71;
    if (v82 == 1)
    {
      v215.f64[0] = *(&v77 + 1);
      if (static CustomEventTrace.recorder)
      {
        v214 = v78;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v83 = *(*(&v77 + 1) + 16);
        LODWORD(v238) = v219;
        BYTE4(v238) = v73 == v74;
        *(&v238 + 1) = &type metadata for _ShapeStyle_Pack.Effect.Kind;
        *&v239 = v5;
        *(&v239 + 1) = v81;
        v240 = v80;
        v241 = *&v79;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v84 = v83;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v76, *(&v76 + 1), v77, *&v215.f64[0], v214, v222.u8[0]);

        goto LABEL_102;
      }

      v86 = *(&v76 + 1);
      v85 = v76;
      v87 = v77;
      v88 = *&v215.f64[0];
    }

    else
    {
      v86 = *(&v76 + 1);
      v85 = v76;
      v88 = *(&v77 + 1);
      v87 = v77;
    }

    outlined consume of Animation.Function(v85, v86, v87, v88, v78, v222.u8[0]);
LABEL_102:
    v123 = one-time initialization token for animationState;

    if (v123 == -1)
    {
LABEL_103:
      v90 = *(&static Signpost.animationState + 1);
      v89 = static Signpost.animationState;
      LOBYTE(v51) = word_1ED5283E8;
      v91 = HIBYTE(word_1ED5283E8);
      v124 = byte_1ED5283EA;
      v125 = static os_signpost_type_t.begin.getter();
      v238 = __PAIR128__(v90, v89);
      LOBYTE(v239) = v51;
      BYTE1(v239) = v91;
      BYTE2(v239) = v124;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v136 = v201;

        goto LABEL_139;
      }

      v222.i32[0] = v125;
      v126 = one-time initialization token for _signpostLog;

      if (v126 != -1)
      {
        goto LABEL_222;
      }

      goto LABEL_105;
    }

LABEL_219:
    swift_once();
    goto LABEL_103;
  }

  if ((*(v217 + 56) & 1) == 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
LABEL_142:
    *(v31 + 16) = v28;
    *(v31 + 32) = v29;
    *(v31 + 48) = v4;
    *(v31 + 56) = v27 & 1;
    *(v31 + 57) = 0;
    v35 = *(v31 + 64);
    if (!v35)
    {
      return;
    }

LABEL_143:
    v156 = *(a1 + 53);
    v210 = a1;
    if (v156)
    {

      v157 = 0;
      v158 = 0uLL;
      v159 = 0uLL;
    }

    else
    {
      v160 = a1[1];
      v242 = *a1;
      v243 = v160;
      v244[0] = a1[2];
      *(v244 + 13) = *(a1 + 45);

      ResolvedShadowStyle.animatableData.getter(&v234);
      v158 = v234;
      v159 = v235;
      v157 = v236;
    }

    v242 = v158;
    v243 = v159;
    *&v244[0] = v157;
    BYTE8(v244[0]) = v156 & 1;
    LOBYTE(v238) = 0;
    v161 = specialized AnimatorState.update(_:at:environment:)(&v242, a3, v26);
    v109 = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (v109 == v57)
    {
      v105 = 0;
    }

    else
    {
      v105 = v109;
    }

    v108 = &type metadata instantiation cache for TupleTypeDescription;
    if (v161)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_208;
      }

      goto LABEL_151;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_210;
    }

LABEL_164:
    v174 = *(v108 + 616);
    if (*(v174 + 16) >= 0x43uLL)
    {
      if (*(v174 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v238) = v105;
        BYTE4(v238) = v109 == v57;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_199;
    }

    __break(1u);
LABEL_212:
    swift_once();
LABEL_156:
    v164 = *(&static Signpost.animationState + 1);
    v56 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v52 = HIBYTE(word_1ED5283E8);
    v165 = byte_1ED5283EA;
    v166 = static os_signpost_type_t.end.getter();
    v238 = __PAIR128__(v164, v56);
    LOBYTE(v239) = v55;
    BYTE1(v239) = v52;
    BYTE2(v239) = v165;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_198;
    }

    v222.i32[0] = v166;
    v167 = one-time initialization token for _signpostLog;

    if (v167 != -1)
    {
      swift_once();
    }

    v54 = COERCE_DOUBLE(_signpostLog);
    v208 = v35;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v51 = COERCE_DOUBLE(swift_allocObject());
    *(v51 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v57)
    {
      break;
    }

    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    v215.f64[0] = v60;
    v212 = v59;
    *&v213 = v58;
    swift_once();
    v59 = v212;
    v58 = *&v213;
    v60 = v215.f64[0];
LABEL_40:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_217:
      swift_once();
      goto LABEL_64;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      LODWORD(v215.f64[0]) = v56;
      v61 = v52;
      v62 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        LODWORD(v214) = v61;
        v63 = v51 == v61;
        v51 = *(static CustomEventTrace.recorder + 24);
        *(v51 + 4) = 1602;
        v64 = *(v62 + 16);
        LODWORD(v238) = v216;
        BYTE4(v238) = v63;
        *(&v238 + 1) = &type metadata for _ShapeStyle_Pack.Effect.Kind;
        *&v239 = v5;
        *(&v239 + 1) = v60;
        v240 = v59;
        v241 = v58;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v216 = v65;

        v66 = v64;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v35, *&v54, v55, v57, v222.i64[0], LOBYTE(v215.f64[0]));
        v52 = v214;
      }

      else
      {
        outlined consume of Animation.Function(v35, *&v54, v55, v57, v222.i64[0], LOBYTE(v215.f64[0]));
        v52 = v61;
      }
    }

    else
    {
      outlined consume of Animation.Function(v35, *&v54, v55, v57, v222.i64[0], v56);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v242, &v238, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_217;
    }

LABEL_64:
    v74 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    v90 = word_1ED5283E8;
    v91 = HIBYTE(word_1ED5283E8);
    v92 = byte_1ED5283EA;
    v93 = static os_signpost_type_t.event.getter();
    v238 = __PAIR128__(v74, v89);
    LOBYTE(v239) = v90;
    BYTE1(v239) = v91;
    BYTE2(v239) = v92;
    if (Signpost.isEnabled.getter())
    {
      v222.i32[0] = v93;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v242, &v238, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for _signpostLog != -1)
      {
        swift_once();
      }

      v94 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v95 = COERCE_DOUBLE(swift_allocObject());
      *(v95 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v52)
      {
        __break(1u);
      }

      else
      {
        LODWORD(v51) = v52;
        v96 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v98 = MEMORY[0x1E69E6870];
        *(v95 + 56) = MEMORY[0x1E69E6810];
        *(v95 + 64) = v98;
        *(v95 + 32) = Counter;
        v99 = AGGraphGetCurrentAttribute();
        if (v99 != v51)
        {
          v100 = v95;
          v101 = MEMORY[0x1E69E76D0];
          *(v95 + 96) = MEMORY[0x1E69E7668];
          *(v95 + 104) = v101;
          *(v95 + 72) = v99;
          *(v95 + 136) = MEMORY[0x1E69E6158];
          *(v95 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(v95 + 112) = 1684957515;
          *(v95 + 120) = 0xE400000000000000;
          if (v91)
          {
            LOBYTE(v223) = v222.i8[0];
            v224[0] = &dword_18D018000;
            v226 = *&v95;
            v227 = v94;
            *&v238 = v89;
            *(&v238 + 1) = v74;
            LOBYTE(v239) = v90;
            *&v234 = "Animation: (%p) [%d] %{public}@ updated";
            *(&v234 + 1) = 39;
            LOBYTE(v235) = 2;
            v102 = v199;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
            (*(v218 + 8))(v102, v221);
          }

          else
          {
            *&v103 = v89;
            if (v89 == 20)
            {
              v104 = 3;
            }

            else
            {
              v104 = 4;
            }

            v105 = bswap32(v89) | (4 * WORD1(v89));
            v222.i32[0] = v222.u8[0];
            v106 = (v218 + 16);
            v207 = *(v218 + 16);
            v107 = v207(v219, v199, v221);
            v108 = 0;
            LOBYTE(v234) = 1;
            v208 = v106;
            v214 = 16 * v104;
            *&v215.f64[0] = v106 - 8;
            v212 = v103;
            v213 = v100 + 32;
            v211 = v104;
            do
            {
              v216 = &v197;
              MEMORY[0x1EEE9AC00](v107);
              v111 = &v197 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
              v57 = (v111 + 8);
              v112 = v104;
              v113 = v111 + 8;
              do
              {
                *(v113 - 1) = 0;
                *v113 = 0;
                v113 += 16;
                --v112;
              }

              while (v112);
              v35 = (v213 + 40 * v108);
              while (1)
              {
                v114 = *(v100 + 16);
                if (v108 == v114)
                {
                  break;
                }

                if (v108 >= v114)
                {
                  goto LABEL_206;
                }

                ++v108;
                outlined init with copy of AnyTrackedValue(v35, &v238);
                v115 = *(&v239 + 1);
                __swift_project_boxed_opaque_existential_1(&v238, *(&v239 + 1));
                *(v57 - 8) = CVarArg.kdebugValue(_:)(v105 | v222.i32[0], v115);
                *v57 = v116 & 1;
                v57 += 16;
                v109 = __swift_destroy_boxed_opaque_existential_1(&v238);
                v35 += 40;
                if (!--v104)
                {
                  goto LABEL_84;
                }
              }

              LOBYTE(v234) = 0;
LABEL_84:
              v117 = v212;
              if (*&v212 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v111[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v111[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v111[40] == 1)
              {
                kdebug_trace_string();
              }

              if (*&v117 != 20 && v111[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v118 = **&v215.f64[0];
              v119 = v219;
              v120 = v221;
              (**&v215.f64[0])(v219, v221);
              v121 = __swift_project_value_buffer(v120, static OSSignpostID.continuation);
              v107 = v207(v119, v121, v120);
              v104 = v211;
            }

            while ((v234 & 1) != 0);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
            v122 = v221;
            v118(v219, v221);
            v118(v199, v122);
          }

          goto LABEL_140;
        }
      }

      __break(1u);
LABEL_222:
      swift_once();
LABEL_105:
      v127 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v128 = COERCE_DOUBLE(swift_allocObject());
      *(v128 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v74)
      {
        __break(1u);
LABEL_224:
        __break(1u);
      }

      v129 = AGGraphGetAttributeGraph();
      v130 = AGGraphGetCounter();

      v131 = MEMORY[0x1E69E6870];
      *(v128 + 56) = MEMORY[0x1E69E6810];
      *(v128 + 64) = v131;
      *(v128 + 32) = v130;
      v132 = AGGraphGetCurrentAttribute();
      if (v132 == v74)
      {
        goto LABEL_224;
      }

      v133 = v128;
      v134 = MEMORY[0x1E69E76D0];
      *(v128 + 96) = MEMORY[0x1E69E7668];
      *(v128 + 104) = v134;
      *(v128 + 72) = v132;
      *(v128 + 136) = MEMORY[0x1E69E6158];
      *(v128 + 144) = lazy protocol witness table accessor for type String and conformance String();
      *(v128 + 112) = 1684957515;
      *(v128 + 120) = 0xE400000000000000;
      if (v91)
      {
        LOBYTE(v223) = v222.i8[0];
        v224[0] = &dword_18D018000;
        v226 = *&v128;
        v227 = v127;
        *&v238 = v89;
        *(&v238 + 1) = v90;
        LOBYTE(v239) = v51;
        *&v234 = "Animation: (%p) [%d] %{public}@ started";
        *(&v234 + 1) = 39;
        LOBYTE(v235) = 2;
        v135 = v198;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v136 = v201;

        (*(v218 + 8))(v135, v221);
      }

      else
      {
        v137 = v89;
        if (v89 == 20)
        {
          v138 = 3;
        }

        else
        {
          v138 = 4;
        }

        v105 = bswap32(v89) | (4 * WORD1(v89));
        v139 = v222.u8[0];
        v140 = (v218 + 16);
        v207 = *(v218 + 16);
        v141 = v207(v216, v198, v221);
        v108 = 0;
        LOBYTE(v234) = 1;
        v219 = v138;
        v208 = v140;
        v213 = 16 * v138;
        v214 = (v140 - 8);
        v222.i64[0] = v133;
        v211 = v137;
        *&v212 = v133 + 32;
        do
        {
          *&v215.f64[0] = &v197;
          MEMORY[0x1EEE9AC00](v141);
          v143 = &v197 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
          v57 = (v143 + 8);
          v144 = v219;
          v145 = v143 + 8;
          do
          {
            *(v145 - 1) = 0;
            *v145 = 0;
            v145 += 16;
            --v144;
          }

          while (v144);
          v35 = (*&v212 + 40 * v108);
          v146 = v219;
          while (1)
          {
            v147 = *(v222.i64[0] + 16);
            if (v108 == v147)
            {
              break;
            }

            if (v108 >= v147)
            {
              goto LABEL_207;
            }

            ++v108;
            outlined init with copy of AnyTrackedValue(v35, &v238);
            v148 = *(&v239 + 1);
            __swift_project_boxed_opaque_existential_1(&v238, *(&v239 + 1));
            *(v57 - 8) = CVarArg.kdebugValue(_:)(v105 | v139, v148);
            *v57 = v149 & 1;
            v57 += 16;
            v109 = __swift_destroy_boxed_opaque_existential_1(&v238);
            v35 += 40;
            if (!--v146)
            {
              goto LABEL_122;
            }
          }

          LOBYTE(v234) = 0;
LABEL_122:
          v150 = v211;
          if (v211 == 20)
          {
            v151 = v216;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v151 = v216;
          }

          if (v143[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v143[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v143[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v150 != 20 && v143[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v152 = *v214;
          v153 = v221;
          (*v214)(v151, v221);
          v154 = __swift_project_value_buffer(v153, static OSSignpostID.continuation);
          v141 = v207(v151, v154, v153);
        }

        while ((v234 & 1) != 0);
        v136 = v201;

        v155 = v221;
        v152(v151, v221);
        v152(v198, v155);
      }

LABEL_139:
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
      *(v217 + 64) = v136;
    }

    else
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
    }

LABEL_140:
    specialized AnimatorState.addListeners(transaction:)(v202);

    a1 = v210;
    v31 = v217;
    LOBYTE(v27) = v205;
    a3 = v206;
LABEL_141:
    v29 = v203;
    v28 = v204;
  }

  v35 = AGGraphGetAttributeGraph();
  v168 = AGGraphGetCounter();

  v169 = MEMORY[0x1E69E6870];
  *(v51 + 56) = MEMORY[0x1E69E6810];
  *(v51 + 64) = v169;
  *(v51 + 32) = v168;
  v170 = AGGraphGetCurrentAttribute();
  if (v170 == v57)
  {
    goto LABEL_214;
  }

  v171 = v51;
  v172 = MEMORY[0x1E69E76D0];
  *(v51 + 96) = MEMORY[0x1E69E7668];
  *(v51 + 104) = v172;
  *(v51 + 72) = v170;
  *(v51 + 136) = MEMORY[0x1E69E6158];
  *(v51 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v51 + 112) = 1684957515;
  *(v51 + 120) = 0xE400000000000000;
  if (v52)
  {
    v228 = v222.i8[0];
    v226 = v54;
    v227 = COERCE_DOUBLE(&dword_18D018000);
    *&v238 = v56;
    *(&v238 + 1) = v164;
    LOBYTE(v239) = v55;
    v224[0] = "Animation: (%p) [%d] %{public}@ ended";
    v224[1] = 37;
    v225 = 2;
    v223 = *&v51;
    v173 = v209;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v218 + 8))(v173, v221);
    goto LABEL_197;
  }

  *&v175 = v56;
  if (v56 == 20)
  {
    v176 = 3;
  }

  else
  {
    v176 = 4;
  }

  v105 = bswap32(v56) | (4 * WORD1(v56));
  v222.i32[0] = v222.u8[0];
  v177 = v218 + 16;
  v211 = *(v218 + 16);
  v178 = v211(v220, v209, v221);
  v108 = 0;
  LOBYTE(v224[0]) = 1;
  v218 = v177;
  v216 = (v177 - 8);
  v214 = v171 + 32;
  *&v215.f64[0] = 16 * v176;
  v212 = v175;
  v213 = v176;
  do
  {
    v219 = &v197;
    MEMORY[0x1EEE9AC00](v178);
    v180 = &v197 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = (v180 + 8);
    v181 = v176;
    v182 = v180 + 8;
    do
    {
      *(v182 - 1) = 0;
      *v182 = 0;
      v182 += 16;
      --v181;
    }

    while (v181);
    v35 = (v214 + 40 * v108);
    while (1)
    {
      v183 = *(v171 + 16);
      if (v108 == v183)
      {
        break;
      }

      if (v108 >= v183)
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        v195 = v109;
        swift_once();
        v109 = v195;
LABEL_151:
        v162 = *(v108 + 616);
        if (*(v162 + 16) >= 0x43uLL)
        {
          if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v238) = v105;
            BYTE4(v238) = v109 == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v163 = one-time initialization token for animationState;

          if (v163 != -1)
          {
            goto LABEL_212;
          }

          goto LABEL_156;
        }

        __break(1u);
LABEL_210:
        v196 = v109;
        swift_once();
        v109 = v196;
        goto LABEL_164;
      }

      ++v108;
      outlined init with copy of AnyTrackedValue(v35, &v238);
      v184 = *(&v239 + 1);
      __swift_project_boxed_opaque_existential_1(&v238, *(&v239 + 1));
      *(v57 - 8) = CVarArg.kdebugValue(_:)(v105 | v222.i32[0], v184);
      *v57 = v185 & 1;
      v57 += 16;
      v109 = __swift_destroy_boxed_opaque_existential_1(&v238);
      v35 += 40;
      --v176;
      if (*&v176 == 0.0)
      {
        goto LABEL_182;
      }
    }

    LOBYTE(v224[0]) = 0;
LABEL_182:
    v186 = v212;
    if (*&v212 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v176 = v213;
    if (v180[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v180[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v180[40] == 1)
    {
      kdebug_trace_string();
    }

    if (*&v186 != 20 && v180[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v187 = *v216;
    v189 = v220;
    v188 = v221;
    (*v216)(v220, v221);
    v190 = __swift_project_value_buffer(v188, static OSSignpostID.continuation);
    v178 = v211(v189, v190, v188);
  }

  while ((v224[0] & 1) != 0);

  v191 = v221;
  v187(v220, v221);
  v187(v209, v191);
LABEL_197:

LABEL_198:
  specialized AnimatorState.removeListeners()();

  *(v217 + 64) = 0;
LABEL_199:
  v192 = v210;
  if (*(v210 + 53) & 1) != 0 || (BYTE8(v244[0]))
  {

    LOBYTE(v238) = 1;
    *v192 = 0u;
    v192[1] = 0u;
    v192[2] = 0u;
    *(v192 + 45) = 0;
    *(v192 + 53) = 1;
  }

  else
  {
    v238 = v242;
    v239 = v243;
    v240 = *v244;
    v193 = v210[1];
    v231 = *v210;
    v232 = v193;
    v233[0] = v210[2];
    *(v233 + 13) = *(v210 + 45);
    ResolvedShadowStyle.animatableData.setter(&v238);

    LOBYTE(v224[0]) = 0;
    v194 = v232;
    *v192 = v231;
    v192[1] = v194;
    v192[2] = v233[0];
    *(v192 + 45) = *(v233 + 13);
    *(v192 + 53) = 0;
  }

  *(v192 + 54) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__int128 *a1, uint64_t a2, unsigned int a3, __int128 *a4)
{
  v284 = *MEMORY[0x1E69E9840];
  *&v232 = COERCE_DOUBLE(type metadata accessor for OSSignpostID());
  v229 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v13 = &v208 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v208 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v230 = &v208 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v208 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v231 = &v208 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v221 = &v208 - v25;
  if (*(a4 + 9))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 73) = 1;
  }

  else if (*(a1 + 73) != 1)
  {
    goto LABEL_133;
  }

  v228 = v16;
  v29 = *(a1 + 53);
  v30 = *(a1 + 14);
  if (v29)
  {
    v31 = 0uLL;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
  }

  else
  {
    v35 = a1[1];
    v263[0] = *a1;
    v263[1] = v35;
    v263[2] = a1[2];
    *(&v263[2] + 13) = *(a1 + 45);
    ResolvedShadowStyle.animatableData.getter(&v240);
    v31 = v240;
    v32 = v241;
    v33 = v242;
    v34 = v243;
  }

  v235 = v29 & 1;
  if (*(a4 + 65))
  {
    goto LABEL_132;
  }

  LODWORD(v5) = *(a4 + 4);
  v36 = *(a4 + 24);
  v4 = *(a4 + 5);
  v7 = *(a4 + 6);
  v6 = *(a4 + 7);
  v37 = a4;
  v38 = *(a4 + 64);
  v278 = LODWORD(v5);
  v233 = v36;
  v279 = v36;
  v280 = v4;
  v281 = v7;
  v282 = v6;
  v283 = v38 & 1;
  v272 = v30;
  v226 = v31;
  v273 = v31;
  v274 = v32;
  v275 = v33;
  v225 = v34;
  v276 = v34;
  v29 = v235;
  v277 = v235;
  if ((_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZSf_AA16_ShapeStyle_PackV6EffectV4KindO0C4DataOTt1B5(&v272, &v278) & 1) == 0)
  {
    v227 = a2;
    v224 = v13;
    v212 = v21;
    v215 = a3;
    AGGraphClearUpdate();
    v39 = v37[3];
    v263[2] = v37[2];
    v263[3] = v39;
    v264 = v37[4];
    v265 = *(v37 + 20);
    v40 = *v37;
    v41 = v37[1];
    v220 = v37;
    v263[0] = v40;
    v263[1] = v41;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v263, &v259, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
    v42 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v214 = v42;
    v43 = Transaction.effectiveAnimation.getter(v42);
    if (v43)
    {
      v13 = v43;
    }

    else
    {
      a3 = v215;
      v13 = v227;
      if (!v227)
      {

        a4 = v220;
        goto LABEL_131;
      }
    }

    v234 = v29;
    v210 = v33;
    v211 = v32;
    v44 = v32;
    v45 = v33;
    v46 = v225;
    v47 = v226;
    if ((v38 & 1) == 0)
    {
      if (v29)
      {
        v234 = 0;
        v44 = v4;
        v45 = v7;
        v46 = v6;
        v47 = v233;
      }

      else
      {
        v44 = v211 - v4;
        v45 = v210 - v7;
        v46 = v225 - v6;
        v48 = vsub_f32(vmovn_s64(v226), vmovn_s64(v233));
        v49.i64[0] = v48.u32[0];
        v49.i64[1] = v48.u32[1];
        v47 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v226, 0x20uLL), vshrn_n_s64(v233, 0x20uLL)), 0x20uLL), v49);
        v234 = 0;
      }
    }

    v233 = v47;
    v209 = v30;
    v50 = v30 - *&v5;
    v51 = *(&v264 + 1);
    v52 = *AGGraphGetValue();
    v222 = a1;
    v208 = v13;
    if (v51)
    {
      v266 = v50;
      v267 = v233;
      v268 = v44;
      v269 = v45;
      v270 = v46;
      v271 = v234;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v263, &v259, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v259) = 0;
      v213 = v51;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v13, &v266, v214, v52);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v54 = CurrentAttribute;
      v55 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = CurrentAttribute;
      }

      v233.i32[0] = v56;
      v57 = a1[3];
      v253 = a1[2];
      v254[0] = v57;
      *(v254 + 9) = *(a1 + 57);
      v58 = a1[1];
      v251 = *a1;
      v252 = v58;
      v257 = v253;
      v258[0] = v57;
      *(v258 + 9) = *(v254 + 9);
      v255 = v251;
      v256 = v58;
      outlined init with copy of _ShapeStyle_Pack.Effect(&v251, &v259);
      v59 = outlined destroy of _ShapeStyle_Pack.Effect(&v255);
      (*(*v13 + 96))(&v247, v59);
      v60 = *(&v247 + 1);
      v13 = *&v247;
      v61 = *(&v248 + 1);
      v62 = v248;
      v63 = v249;
      LODWORD(v64) = v250;
      v238 = NAN;
      *&v239 = NAN;
      v236 = NAN;
      v237 = 1.0;
      v259 = v247;
      v260 = v248;
      *&v261 = v249;
      BYTE8(v261) = v250;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v259, &v239, &v238, &v237, &v236);
      v5 = v238;
      v4 = *&v239;
      v7 = v236;
      v6 = v237;
      v28 = v52;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_206;
      }

      goto LABEL_28;
    }

    v266 = v50;
    v267 = v233;
    v268 = v44;
    v269 = v45;
    v270 = v46;
    v271 = v234;
    *&v255 = &type metadata for _ShapeStyle_Pack.Effect;
    type metadata accessor for _ShapeStyle_Pack.Effect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Type, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    v69 = swift_dynamicCast();
    if (v69)
    {
      v70 = v259;
    }

    else
    {
      v70 = 0;
    }

    if (v69)
    {
      v71 = *(&v259 + 1);
    }

    else
    {
      v71 = 0;
    }

    v72 = v214;

    v213 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAA16_ShapeStyle_PackV6EffectV4KindO0U4DataOG_Tt4B5(v73, &v266, v72, v70, v71, v52);
    v74 = AGGraphGetCurrentAttribute();
    v75 = v74;
    v76 = *MEMORY[0x1E698D3F8];
    if (v74 == *MEMORY[0x1E698D3F8])
    {
      v77 = 0;
    }

    else
    {
      v77 = v74;
    }

    LODWORD(v230) = v77;
    v78 = a1[3];
    v257 = a1[2];
    v258[0] = v78;
    *(v258 + 9) = *(a1 + 57);
    v79 = a1[1];
    v255 = *a1;
    v256 = v79;
    v261 = v257;
    v262[0] = v78;
    *(v262 + 9) = *(v258 + 9);
    v259 = v255;
    v260 = v79;
    outlined init with copy of _ShapeStyle_Pack.Effect(&v255, &v251);
    v80 = outlined destroy of _ShapeStyle_Pack.Effect(&v259);
    (*(*v13 + 96))(&v247, v80);
    v81 = v247;
    v82 = *(&v248 + 1);
    v83 = v249;
    v238 = NAN;
    *&v239 = NAN;
    v236 = NAN;
    v237 = 1.0;
    v251 = v247;
    v84 = v248;
    v252 = v248;
    *&v253 = v249;
    v233.i32[0] = v250;
    BYTE8(v253) = v250;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v251, &v239, &v238, &v237, &v236);
    v5 = v238;
    v4 = *&v239;
    v7 = v236;
    v6 = v237;
    v28 = v52;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    v30 = v209;
    v33 = v210;
    v32 = v211;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_210;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v85 = v230;
      v227 = v82;
      v86 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        LODWORD(v223) = v76;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v219 = v83;
        v87 = *(v86 + 16);
        LODWORD(v251) = v85;
        BYTE4(v251) = v75 == v76;
        *(&v251 + 1) = &type metadata for _ShapeStyle_Pack.Effect;
        *&v252 = v4;
        *(&v252 + 1) = v5;
        *&v253 = v6;
        *(&v253 + 1) = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v88 = v87;
        v76 = v223;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v81, *(&v81 + 1), v84, v227, v219, v233.u8[0]);

        goto LABEL_92;
      }

      v95 = *(&v81 + 1);
      v94 = v81;
      v96 = v84;
      v97 = v227;
    }

    else
    {
      v95 = *(&v81 + 1);
      v94 = v81;
      v96 = v84;
      v97 = v82;
    }

    outlined consume of Animation.Function(v94, v95, v96, v97, v83, v233.u8[0]);
LABEL_92:
    v133 = one-time initialization token for animationState;

    if (v133 == -1)
    {
LABEL_93:
      v99 = *(&static Signpost.animationState + 1);
      v98 = static Signpost.animationState;
      v100 = word_1ED5283E8;
      v13 = HIBYTE(word_1ED5283E8);
      v134 = byte_1ED5283EA;
      v135 = static os_signpost_type_t.begin.getter();
      v251 = __PAIR128__(v99, v98);
      LOBYTE(v252) = v100;
      BYTE1(v252) = v13;
      BYTE2(v252) = v134;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v145 = v213;

        goto LABEL_129;
      }

      v233.i32[0] = v135;
      v101 = v76;
      v136 = one-time initialization token for _signpostLog;

      if (v136 != -1)
      {
        goto LABEL_213;
      }

      goto LABEL_95;
    }

LABEL_210:
    swift_once();
    goto LABEL_93;
  }

  a4 = v37;
LABEL_131:
  while (1)
  {
    v31 = v226;
    v34 = v225;
LABEL_132:
    LOBYTE(v263[0]) = v29 & 1;
    LOBYTE(v259) = 0;
    *(a4 + 4) = v30;
    *(a4 + 24) = v31;
    *(a4 + 5) = v32;
    *(a4 + 6) = v33;
    *(a4 + 7) = v34;
    *(a4 + 64) = v29 & 1;
    *(a4 + 65) = 0;
LABEL_133:
    v124 = *(a4 + 9);
    if (*&v124 == 0.0)
    {
      return;
    }

    v165 = *(a1 + 53);
    LODWORD(v4) = *(a1 + 14);
    v222 = a1;
    v220 = a4;
    if (v165)
    {

      v166 = 0;
      v167 = 0uLL;
      v168 = 0uLL;
    }

    else
    {
      v169 = a1[1];
      v263[0] = *a1;
      v263[1] = v169;
      v263[2] = a1[2];
      *(&v263[2] + 13) = *(a1 + 45);

      ResolvedShadowStyle.animatableData.getter(&v255);
      v167 = v255;
      v168 = v256;
      v166 = v257;
    }

    LODWORD(v263[0]) = LODWORD(v4);
    *(v263 + 8) = v167;
    *(&v263[1] + 8) = v168;
    *(&v263[2] + 1) = v166;
    LOBYTE(v263[3]) = v165 & 1;
    LOBYTE(v259) = 0;
    v170 = specialized AnimatorState.update(_:at:environment:)(v263, a3, v28);
    v118 = AGGraphGetCurrentAttribute();
    v61 = *MEMORY[0x1E698D3F8];
    if (v118 == v61)
    {
      LODWORD(v115) = 0;
    }

    else
    {
      LODWORD(v115) = v118;
    }

    v113 = &type metadata instantiation cache for TupleTypeDescription;
    if (v170)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_199;
      }

      goto LABEL_142;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_201;
    }

LABEL_155:
    v181 = *(v113 + 616);
    if (*(v181 + 16) >= 0x43uLL)
    {
      if (*(v181 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v259) = v115;
        BYTE4(v259) = v118 == v61;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_190;
    }

    __break(1u);
LABEL_203:
    swift_once();
LABEL_147:
    v173 = *(&static Signpost.animationState + 1);
    v64 = static Signpost.animationState;
    v62 = word_1ED5283E8;
    v54 = HIBYTE(word_1ED5283E8);
    v174 = byte_1ED5283EA;
    v175 = static os_signpost_type_t.end.getter();
    v259 = __PAIR128__(v173, v64);
    LOBYTE(v260) = v62;
    BYTE1(v260) = v54;
    BYTE2(v260) = v174;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_189;
    }

    v233.i32[0] = v175;
    v176 = one-time initialization token for _signpostLog;
    v63 = v219;

    if (v176 != -1)
    {
      swift_once();
    }

    *&v60 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v61)
    {
      break;
    }

    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    swift_once();
LABEL_28:
    v30 = v209;
    v33 = v210;
    v32 = v211;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v228 = v63;
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v227) = v55;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          LODWORD(v224) = v64;
          v66 = *(v65 + 16);
          LODWORD(v259) = v233.i32[0];
          BYTE4(v259) = v54 == v55;
          *(&v259 + 1) = &type metadata for _ShapeStyle_Pack.Effect;
          *&v260 = v4;
          *(&v260 + 1) = v5;
          *&v261 = v6;
          *(&v261 + 1) = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v233.i64[0] = v67;

          v68 = v66;
          v55 = v227;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v13, v60, v62, v61, v228, v224);

          goto LABEL_52;
        }

        v89 = v13;
        v90 = v60;
        v91 = v62;
        v92 = v61;
        v93 = v228;
      }

      else
      {
        v89 = v13;
        v90 = v60;
        v91 = v62;
        v92 = v61;
        v93 = v63;
      }

      outlined consume of Animation.Function(v89, v90, v91, v92, v93, v64);
LABEL_52:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v263, &v259, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_53;
      }

      goto LABEL_208;
    }

    __break(1u);
LABEL_208:
    swift_once();
LABEL_53:
    v99 = *(&static Signpost.animationState + 1);
    v98 = static Signpost.animationState;
    v100 = word_1ED5283E8;
    v101 = HIBYTE(word_1ED5283E8);
    v102 = byte_1ED5283EA;
    v103 = static os_signpost_type_t.event.getter();
    v259 = __PAIR128__(v99, v98);
    LOBYTE(v260) = v100;
    BYTE1(v260) = v101;
    BYTE2(v260) = v102;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
LABEL_89:
      a1 = v222;
      a4 = v220;
      a3 = v215;
      goto LABEL_130;
    }

    v233.i32[0] = v103;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v263, &v259, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v104 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v105 = COERCE_DOUBLE(swift_allocObject());
    *(v105 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v55)
    {
      __break(1u);
    }

    else
    {
      v13 = v55;
      v106 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v108 = MEMORY[0x1E69E6870];
      *(v105 + 56) = MEMORY[0x1E69E6810];
      *(v105 + 64) = v108;
      *(v105 + 32) = Counter;
      v109 = AGGraphGetCurrentAttribute();
      if (v109 != v13)
      {
        v110 = v105;
        v111 = MEMORY[0x1E69E76D0];
        *(v105 + 96) = MEMORY[0x1E69E7668];
        *(v105 + 104) = v111;
        *(v105 + 72) = v109;
        *(v105 + 136) = MEMORY[0x1E69E6158];
        *(v105 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v105 + 112) = 0x746365666645;
        *(v105 + 120) = 0xE600000000000000;
        if (v101)
        {
          LOBYTE(v236) = v233.i8[0];
          v238 = *&v104;
          *&v239 = COERCE_DOUBLE(&dword_18D018000);
          *&v259 = v98;
          *(&v259 + 1) = v99;
          LOBYTE(v260) = v100;
          *&v247 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v247 + 1) = 39;
          LOBYTE(v248) = 2;
          v237 = *&v105;
          v112 = v212;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
          (*(v229 + 8))(v112, v232);
        }

        else
        {
          v113 = v98;
          if (v98 == 20)
          {
            v114 = 3;
          }

          else
          {
            v114 = 4;
          }

          LODWORD(v115) = bswap32(v98) | (4 * WORD1(v98));
          v233.i32[0] = v233.u8[0];
          v116 = v229 + 16;
          v216 = *(v229 + 16);
          v117 = v216(v230, v212, v232);
          v61 = 0;
          LOBYTE(v247) = 1;
          v228 = v114;
          v217 = v116;
          v218 = v113;
          v223 = (16 * v114);
          v224 = (v116 - 8);
          v219 = v110 + 4;
          do
          {
            v227 = &v208;
            MEMORY[0x1EEE9AC00](v117);
            v13 = &v208 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
            v120 = (v13 + 8);
            v121 = v228;
            v122 = (v13 + 8);
            do
            {
              *(v122 - 1) = 0;
              *v122 = 0;
              v122 += 16;
              v121 = (v121 - 1);
            }

            while (v121);
            v123 = &v219[5 * v61];
            v124 = v228;
            while (1)
            {
              v125 = v110[2];
              if (v61 == v125)
              {
                break;
              }

              if (v61 >= v125)
              {
                goto LABEL_197;
              }

              ++v61;
              outlined init with copy of AnyTrackedValue(v123, &v259);
              v126 = *(&v260 + 1);
              v113 = v110;
              __swift_project_boxed_opaque_existential_1(&v259, *(&v260 + 1));
              *(v120 - 1) = CVarArg.kdebugValue(_:)(v115 | v233.i32[0], v126);
              *v120 = v127 & 1;
              v120 += 16;
              v118 = __swift_destroy_boxed_opaque_existential_1(&v259);
              v123 += 40;
              --v124;
              if (*&v124 == 0.0)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v247) = 0;
LABEL_73:
            v113 = v218;
            if (v218 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(v13 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v13 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v13 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v113 != 20 && *(v13 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v128 = *v224;
            v129 = v230;
            v130 = v232;
            (*v224)(v230, v232);
            v131 = __swift_project_value_buffer(v130, static OSSignpostID.continuation);
            v117 = v216(v129, v131, v130);
          }

          while ((v247 & 1) != 0);
          *&v13 = COERCE_DOUBLE(type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
          v132 = v232;
          v128(v230, v232);
          v128(v212, v132);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_213:
    swift_once();
LABEL_95:
    v137 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v138 = COERCE_DOUBLE(swift_allocObject());
    *(v138 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v101)
    {
      __break(1u);
LABEL_215:
      __break(1u);
    }

    v139 = AGGraphGetAttributeGraph();
    v140 = AGGraphGetCounter();

    v141 = MEMORY[0x1E69E6870];
    *(v138 + 56) = MEMORY[0x1E69E6810];
    *(v138 + 64) = v141;
    *(v138 + 32) = v140;
    v142 = AGGraphGetCurrentAttribute();
    if (v142 == v101)
    {
      goto LABEL_215;
    }

    v124 = v138;
    v143 = MEMORY[0x1E69E76D0];
    *(v138 + 96) = MEMORY[0x1E69E7668];
    *(v138 + 104) = v143;
    *(v138 + 72) = v142;
    *(v138 + 136) = MEMORY[0x1E69E6158];
    *(v138 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v138 + 112) = 0x746365666645;
    *(v138 + 120) = 0xE600000000000000;
    if (v13)
    {
      LOBYTE(v236) = v233.i8[0];
      v238 = *&v137;
      *&v239 = COERCE_DOUBLE(&dword_18D018000);
      *&v251 = v98;
      *(&v251 + 1) = v99;
      LOBYTE(v252) = v100;
      *&v247 = "Animation: (%p) [%d] %{public}@ started";
      *(&v247 + 1) = 39;
      LOBYTE(v248) = 2;
      v237 = *&v138;
      v144 = v228;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v145 = v213;

      (*(v229 + 8))(v144, v232);
    }

    else
    {
      v146 = v98;
      if (v98 == 20)
      {
        v147 = 3;
      }

      else
      {
        v147 = 4;
      }

      LODWORD(v115) = bswap32(v98) | (4 * WORD1(v98));
      v113 = v233.u8[0];
      v148 = (v229 + 16);
      v212 = *(v229 + 16);
      v149 = v212(v224, v228, v232);
      v61 = 0;
      LOBYTE(v247) = 1;
      v230 = v147;
      v216 = v148;
      v217 = v146;
      v223 = v148 - 8;
      v233.i64[0] = v124;
      v218 = (v124 + 32);
      v219 = (16 * v147);
      do
      {
        v227 = &v208;
        MEMORY[0x1EEE9AC00](v149);
        v151 = &v208 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = (v151 + 8);
        v152 = v230;
        v153 = v151 + 8;
        do
        {
          *(v153 - 1) = 0;
          *v153 = 0;
          v153 += 16;
          --v152;
        }

        while (v152);
        v154 = v218 + 40 * v61;
        v155 = v230;
        while (1)
        {
          v156 = *(v233.i64[0] + 16);
          if (v61 == v156)
          {
            break;
          }

          if (v61 >= v156)
          {
            goto LABEL_198;
          }

          ++v61;
          outlined init with copy of AnyTrackedValue(v154, &v251);
          v157 = *(&v252 + 1);
          v124 = *&v253;
          __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
          *(v13 - 8) = CVarArg.kdebugValue(_:)(v115 | v113, v157);
          *v13 = v158 & 1;
          v13 += 16;
          v118 = __swift_destroy_boxed_opaque_existential_1(&v251);
          v154 += 40;
          if (!--v155)
          {
            goto LABEL_112;
          }
        }

        LOBYTE(v247) = 0;
LABEL_112:
        v159 = v217;
        if (v217 == 20)
        {
          v160 = v224;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v160 = v224;
        }

        if (v151[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v151[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v151[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v159 != 20 && v151[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v161 = *v223;
        v124 = v232;
        (*v223)(v160, v232);
        v162 = __swift_project_value_buffer(v124, static OSSignpostID.continuation);
        v149 = v212(v160, v162, v124);
      }

      while ((v247 & 1) != 0);
      v163 = v213;

      v164 = v232;
      v161(v160, v232);
      v161(v228, v164);
      v145 = v163;
    }

LABEL_129:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
    a4 = v220;
    *(v220 + 9) = v145;
    a1 = v222;
    a3 = v215;
LABEL_130:
    specialized AnimatorState.addListeners(transaction:)(v214);

    v29 = v235;
  }

  v63 = AGGraphGetAttributeGraph();
  *&v13 = COERCE_DOUBLE(AGGraphGetCounter());

  v177 = MEMORY[0x1E69E6870];
  *(v55 + 56) = MEMORY[0x1E69E6810];
  *(v55 + 64) = v177;
  *(v55 + 32) = *&v13;
  v178 = AGGraphGetCurrentAttribute();
  if (v178 == v61)
  {
    goto LABEL_205;
  }

  v13 = v55;
  v179 = MEMORY[0x1E69E76D0];
  *(v55 + 96) = MEMORY[0x1E69E7668];
  *(v55 + 104) = v179;
  *(v55 + 72) = v178;
  *(v55 + 136) = MEMORY[0x1E69E6158];
  *(v55 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v55 + 112) = 0x746365666645;
  *(v55 + 120) = 0xE600000000000000;
  if (v54)
  {
    LOBYTE(v237) = v233.i8[0];
    *&v247 = &dword_18D018000;
    v238 = *&v55;
    v239 = v60;
    *&v259 = v64;
    *(&v259 + 1) = v173;
    LOBYTE(v260) = v62;
    *&v251 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v251 + 1) = 37;
    LOBYTE(v252) = 2;
    v180 = v221;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v229 + 8))(v180, v232);
    goto LABEL_188;
  }

  v124 = v64;
  if (v64 == 20)
  {
    v182 = 3;
  }

  else
  {
    v182 = 4;
  }

  v113 = bswap32(v64) | (4 * WORD1(v64));
  v233.i32[0] = v233.u8[0];
  v183 = v229 + 16;
  v223 = *(v229 + 16);
  v184 = (v223)(v231, v221, v232);
  v61 = 0;
  LOBYTE(v251) = 1;
  v229 = v183;
  v227 = (16 * v182);
  v228 = (v183 - 8);
  v225 = *&v124;
  v226.i64[0] = v13 + 32;
  v224 = v182;
  do
  {
    v230 = &v208;
    MEMORY[0x1EEE9AC00](v184);
    v186 = &v208 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
    v115 = v186 + 8;
    v187 = v182;
    v188 = v186 + 8;
    do
    {
      *(v188 - 1) = 0;
      *v188 = 0;
      v188 += 16;
      --v187;
    }

    while (v187);
    v189 = v226.i64[0] + 40 * v61;
    while (1)
    {
      v190 = *(v13 + 16);
      if (v61 == v190)
      {
        break;
      }

      if (v61 >= v190)
      {
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        v206 = v118;
        swift_once();
        v118 = v206;
LABEL_142:
        v171 = *(v113 + 616);
        if (*(v171 + 16) >= 0x43uLL)
        {
          if (*(v171 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v259) = v115;
            BYTE4(v259) = v118 == v61;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v172 = one-time initialization token for animationState;
          v219 = v124;

          if (v172 != -1)
          {
            goto LABEL_203;
          }

          goto LABEL_147;
        }

        __break(1u);
LABEL_201:
        v207 = v118;
        swift_once();
        v118 = v207;
        goto LABEL_155;
      }

      ++v61;
      outlined init with copy of AnyTrackedValue(v189, &v259);
      v191 = *(&v260 + 1);
      v124 = v13;
      __swift_project_boxed_opaque_existential_1(&v259, *(&v260 + 1));
      *(v115 - 1) = CVarArg.kdebugValue(_:)(v113 | v233.i32[0], v191);
      *v115 = v192 & 1;
      v115 += 16;
      v118 = __swift_destroy_boxed_opaque_existential_1(&v259);
      v189 += 40;
      if (!--v182)
      {
        goto LABEL_173;
      }
    }

    LOBYTE(v251) = 0;
LABEL_173:
    *&v124 = v225;
    if (*&v225 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v182 = v224;
    if (v186[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v186[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v186[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v124 != 20 && v186[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v193 = *v228;
    v195 = v231;
    v194 = v232;
    (*v228)(v231, v232);
    v196 = __swift_project_value_buffer(v194, static OSSignpostID.continuation);
    v184 = (v223)(v195, v196, v194);
  }

  while ((v251 & 1) != 0);

  v197 = v232;
  v193(v231, v232);
  v193(v221, v197);
LABEL_188:

LABEL_189:
  specialized AnimatorState.removeListeners()();

  *(v220 + 9) = 0;
LABEL_190:
  v198 = v222;
  v199 = *(&v263[0] + 1);
  v200 = *&v263[1];
  v201 = *(&v263[1] + 8);
  v202 = *(&v263[2] + 1);
  v203 = v263[3];
  *(v222 + 14) = v263[0];
  if (*(v198 + 53) & 1) != 0 || (v203)
  {

    LOBYTE(v259) = 1;
    *v198 = 0u;
    v198[1] = 0u;
    v198[2] = 0u;
    *(v198 + 45) = 0;
    *(v198 + 53) = 1;
  }

  else
  {
    *&v259 = v199;
    *(&v259 + 1) = v200;
    v260 = v201;
    *&v261 = v202;
    v204 = v198[1];
    v244 = *v198;
    v245 = v204;
    v246[0] = v198[2];
    *(v246 + 13) = *(v198 + 45);
    ResolvedShadowStyle.animatableData.setter(&v259);

    LOBYTE(v251) = 0;
    v205 = v245;
    *v198 = v244;
    v198[1] = v205;
    v198[2] = v246[0];
    *(v198 + 45) = *(v246 + 13);
    *(v198 + 53) = 0;
  }

  *(v198 + 73) = 1;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t (*a9)(unsigned __int128 *), void (*a10)(void))
{
  v232 = a8;
  v240 = a6;
  v234 = *&a5;
  LODWORD(v12) = a3;
  v297 = *MEMORY[0x1E69E9840];
  v239 = type metadata accessor for OSSignpostID();
  v236 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v16 = &v216 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v216 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v216 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v216 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v238 = &v216 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v228 = &v216 - v29;
  v229 = a2;
  if (*(a4 + 72))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  v235 = a1;
  if (result)
  {
    *(a1 + 57) = 1;
  }

  else if (*(a1 + 57) != 1)
  {
    goto LABEL_94;
  }

  v224 = v19;
  v225 = *&v25;
  v34 = *(a1 + 8);
  v35 = *(a1 + 12);
  v36 = *(a1 + 16);
  v37 = *(a1 + 40);
  v38 = *(a1 + 48);
  v291.f64[0] = *a1;
  LOBYTE(v291.f64[1]) = v34;
  HIDWORD(v291.f64[1]) = v35;
  LOBYTE(v292) = v36;
  v237 = vmulq_f64(*(a1 + 24), vdupq_n_s64(0x4060000000000000uLL));
  ResolvedGradient.animatableData.getter(&v288);
  v39 = v288;
  v40 = v289;
  v241 = v289;
  v41 = *(a4 + 32);
  if (v41 == 0.0)
  {
    v50 = BYTE8(v288) | (HIDWORD(v288) << 32);
    goto LABEL_93;
  }

  v223 = a7;
  v233 = v22;
  v226 = v16;
  LODWORD(v230) = v12;
  v42 = *(a4 + 16);
  v43 = *(a4 + 49);
  v44 = *(a4 + 48);
  v45 = *(a4 + 40);
  v46 = a4 + 53;
  v47 = *(a4 + 53);
  a7 = a4;
  v48 = *(a4 + 56);
  v49 = *(a4 + 64);
  v222 = v42;
  v267 = v42;
  v268 = v41;
  v269 = v45;
  v270 = v44;
  v271 = v43;
  v272 = v47;
  v273 = *(v46 + 2);
  v274 = v48;
  v275 = v49;
  v261 = v237;
  v262 = v288;
  v231 = BYTE8(v288) | (HIDWORD(v288) << 32);
  v263 = v231;
  v264 = v289;
  v265 = v37;
  v266 = v38;
  if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAA22ResolvedGradientVectorVG_AITt1B5Tm(&v261, &v267))
  {
    a1 = v235;
    a4 = a7;
    LODWORD(v12) = v230;
    v50 = v231;
    goto LABEL_93;
  }

  v220 = v49;
  v221 = v48;
  v217 = v41;
  v218 = v39;

  AGGraphClearUpdate();
  v51 = *(a7 + 48);
  v293 = *(a7 + 32);
  v294 = v51;
  v295 = *(a7 + 64);
  v296 = *(a7 + 80);
  v52 = *a7;
  v53 = *(a7 + 16);
  v227 = a7;
  v291 = v52;
  v292 = v53;
  v54 = *&v234;
  v55 = v240;
  v56 = v223;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v291, &v288, *&v234, v240, v223, type metadata accessor for AnimatableAttributeHelper);
  a7 = v56;
  v57 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v291, v54, v55, a7, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v216 = v57;
  v219 = Transaction.effectiveAnimation.getter(v57);
  if (v219)
  {
    v58 = v218;
    v50 = v231;
  }

  else
  {
    v50 = v231;
    if (*&v229 == 0.0)
    {

      a1 = v235;
      a4 = v227;
      LODWORD(v12) = v230;
      goto LABEL_92;
    }

    v58 = v218;
  }

  *&v254 = v58;
  *(&v254 + 1) = v50;
  LOBYTE(v255) = v40;
  *(&v255 + 1) = v37;
  v251 = v255;
  v59 = *(&v295 + 1);
  v253 = v237;
  v256 = v38;
  v252 = v38;
  v249 = vsubq_f64(v237, v222);
  v250 = v254;
  v246.f64[0] = v217;
  LOBYTE(v246.f64[1]) = v45;
  HIDWORD(v246.f64[1]) = HIDWORD(v45);
  LOBYTE(v247) = v44 & 1;
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v253, &v288, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  ResolvedGradientVector.add(_:scaledBy:)(&v246, -1.0);
  *(&v251 + 1) = v37 - v221;
  v252 = v38 - v220;
  v32 = *AGGraphGetValue();
  if (v59 == 0.0)
  {
    v257 = v249;
    v258 = v250;
    v259 = v251;
    v260 = v252;
    a7 = v223;
    *&v246.f64[0] = v223;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v257, &v288, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    a10(0);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v84 = swift_dynamicCast();
    if (v84)
    {
      v85 = v288;
    }

    else
    {
      v85 = 0;
    }

    if (v84)
    {
      v86 = *(&v288 + 1);
    }

    else
    {
      v86 = 0;
    }

    v87 = v216;

    v88 = v219;

    v220 = COERCE_DOUBLE(_s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAA22ResolvedGradientVectorVGAZG_Tt4B5(v89, &v257, v87, v85, v86, v32));
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v50 = CurrentAttribute;
    v91 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v92 = 0;
    }

    else
    {
      v92 = CurrentAttribute;
    }

    v93 = *(v235 + 16);
    v246 = *v235;
    v247 = v93;
    v248[0] = *(v235 + 32);
    v94 = v248[0];
    *(v248 + 9) = *(v235 + 41);
    v288 = v246;
    v289 = v93;
    v290[0] = v94;
    *(v290 + 9) = *(v248 + 9);
    (v232)(&v246, &v282);
    v95 = a9(&v288);
    (*(*v88 + 96))(&v276, v95);
    v96 = v276;
    v97 = v277;
    v12 = v278;
    v98 = v279;
    v99 = v280;
    *&v244 = NAN;
    v245 = 0x7FF8000000000000;
    v242 = NAN;
    v243 = 1.0;
    v282 = v276;
    v283 = v277;
    v284 = v278;
    v285 = v279;
    v286 = *&v280;
    LODWORD(v240) = v281;
    LOBYTE(v287) = v281;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v282, &v245, &v244, &v243, &v242);
    v100 = v244;
    v101 = v245;
    v102 = v242;
    v103 = v243;
    if (one-time initialization token for enabledCategories != -1)
    {
      *&v232 = v243;
      v233 = v245;
      v229 = v244;
      v225 = v242;
      swift_once();
      v102 = v225;
      v103 = *&v232;
      v101 = v233;
      v100 = v229;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v104 = *(static CustomEventTrace.enabledCategories + 98);
      LODWORD(v234) = v91;
      if (v104 == 1 && (v105 = static CustomEventTrace.recorder) != 0)
      {
        v106 = v50 == LODWORD(v234);
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v107 = v92;
        v108 = v98;
        v109 = *(v105 + 16);
        LODWORD(v282) = v107;
        BYTE4(v282) = v106;
        v283 = a7;
        v284 = v101;
        v285 = v100;
        v286 = v103;
        v287 = v102;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v233 = v110;

        *&a7 = COERCE_DOUBLE(v109);
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v96, v97, v12, v108, v99, v240);
      }

      else
      {
        outlined consume of Animation.Function(v96, v97, v12, v98, v99, v240);
      }

      v111 = one-time initialization token for animationState;

      LODWORD(v12) = v230;
      v50 = v231;
      if (v111 == -1)
      {
LABEL_44:
        v112 = *(&static Signpost.animationState + 1);
        v68 = static Signpost.animationState;
        v113 = word_1ED5283E8;
        LOBYTE(v62) = HIBYTE(word_1ED5283E8);
        v114 = byte_1ED5283EA;
        LODWORD(v69) = static os_signpost_type_t.begin.getter();
        v282 = v68;
        v283 = v112;
        LOBYTE(v284) = v113;
        BYTE1(v284) = v62;
        BYTE2(v284) = v114;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v125 = v220;

          a4 = v227;
          *(v227 + 72) = v125;
          a1 = v235;
          goto LABEL_91;
        }

        v115 = one-time initialization token for _signpostLog;

        if (v115 != -1)
        {
          goto LABEL_196;
        }

        goto LABEL_46;
      }
    }

    swift_once();
    goto LABEL_44;
  }

  v257 = v249;
  v258 = v250;
  v259 = v251;
  v260 = v252;

  LOBYTE(v288) = 0;
  v60 = v219;
  v220 = v59;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v219, &v257, v216, v32);
  v61 = AGGraphGetCurrentAttribute();
  v50 = v61;
  LODWORD(v62) = *MEMORY[0x1E698D3F8];
  if (v61 == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v63) = 0;
  }

  else
  {
    LODWORD(v63) = v61;
  }

  v64 = *(v235 + 16);
  v246 = *v235;
  v247 = v64;
  v248[0] = *(v235 + 32);
  v65 = v248[0];
  *(v248 + 9) = *(v235 + 41);
  v288 = v246;
  v289 = v64;
  v290[0] = v65;
  *(v290 + 9) = *(v248 + 9);
  (v232)(&v246, &v282);
  v66 = a9(&v288);
  (*(*v60 + 96))(&v276, v66);
  v67 = v276;
  a7 = v277;
  v12 = v278;
  v68 = v279;
  v69 = *&v280;
  LODWORD(v60) = v281;
  *&v244 = NAN;
  v245 = 0x7FF8000000000000;
  v242 = NAN;
  v243 = 1.0;
  v282 = v276;
  v283 = v277;
  v284 = v278;
  v285 = v279;
  v286 = *&v280;
  LOBYTE(v287) = v281;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v282, &v245, &v244, &v243, &v242);
  v70 = v244;
  v71 = v245;
  v72 = v242;
  v73 = v243;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
      goto LABEL_54;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v74 = v63;
      v75 = v68;
      v76 = v62;
      v62 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        LODWORD(v240) = v60;
        v77 = v76;
        v78 = v50 == v76;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v79 = *(v62 + 16);
        LODWORD(v282) = v74;
        BYTE4(v282) = v78;
        v283 = v223;
        v284 = v71;
        v285 = v70;
        v286 = v73;
        v287 = v72;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v234 = *&v80;

        v81 = v79;
        v82 = *&v69;
        v83 = v81;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v67, a7, v12, v75, v82, v240);
        LODWORD(v62) = v77;
      }

      else
      {
        outlined consume of Animation.Function(v67, a7, v12, v75, *&v69, v60);
        LODWORD(v62) = v76;
      }
    }

    else
    {
      outlined consume of Animation.Function(v67, a7, v12, v68, *&v69, v60);
    }

    v126 = one-time initialization token for animationState;

    LODWORD(v12) = v230;
    v50 = v231;
    if (v126 != -1)
    {
      goto LABEL_191;
    }

LABEL_54:
    v112 = *(&static Signpost.animationState + 1);
    v68 = static Signpost.animationState;
    v113 = word_1ED5283E8;
    a7 = HIBYTE(word_1ED5283E8);
    v127 = byte_1ED5283EA;
    v128 = static os_signpost_type_t.event.getter();
    v282 = v68;
    v283 = v112;
    LOBYTE(v284) = v113;
    BYTE1(v284) = a7;
    BYTE2(v284) = v127;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_90;
    }

    LODWORD(v240) = v128;
    v129 = one-time initialization token for _signpostLog;

    if (v129 != -1)
    {
      swift_once();
    }

    v234 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v69 = COERCE_DOUBLE(swift_allocObject());
    *(*&v69 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v62)
    {
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      swift_once();
LABEL_46:
      LODWORD(v240) = LODWORD(v69);
      *&v233 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&a7 = COERCE_DOUBLE(swift_allocObject());
      *(a7 + 16) = xmmword_18DDAF080;
      v116 = AGGraphGetCurrentAttribute();
      v117 = LODWORD(v234);
      if (v116 == LODWORD(v234))
      {
        __break(1u);
      }

      else
      {
        v118 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v120 = MEMORY[0x1E69E6870];
        *(a7 + 56) = MEMORY[0x1E69E6810];
        *(a7 + 64) = v120;
        *(a7 + 32) = Counter;
        v121 = AGGraphGetCurrentAttribute();
        if (v121 != v117)
        {
          v122 = MEMORY[0x1E69E76D0];
          *(a7 + 96) = MEMORY[0x1E69E7668];
          *(a7 + 104) = v122;
          *(a7 + 72) = v121;
          *(a7 + 136) = MEMORY[0x1E69E6158];
          *(a7 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(a7 + 112) = 0x746E6961505FLL;
          *(a7 + 120) = 0xE600000000000000;
          if (v62)
          {
            LOBYTE(v242) = v240;
            v244 = v233;
            v245 = &dword_18D018000;
            v282 = v68;
            v283 = v112;
            LOBYTE(v284) = v113;
            v276 = "Animation: (%p) [%d] %{public}@ started";
            v277 = 39;
            LOBYTE(v278) = 2;
            v243 = *&a7;
            v123 = v224;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
            v124 = v220;

            (*(v236 + 1))(v123, v239);

            a4 = v227;
            *(v227 + 72) = v124;
            a1 = v235;
            LODWORD(v12) = v230;
            goto LABEL_91;
          }

          if (v68 == 20)
          {
            v198 = 3;
          }

          else
          {
            v198 = 4;
          }

          v137 = bswap32(v68) | (4 * WORD1(v68));
          LODWORD(v240) = v240;
          *&v199 = v236 + 16;
          v221 = *(v236 + 2);
          v200 = (*&v221)(v226, v224, v239);
          v140 = 0;
          LOBYTE(v276) = 1;
          v222.f64[0] = v199;
          v232 = 16 * v198;
          v233 = (*&v199 - 8);
          v229 = a7 + 32;
          *&v225 = v68;
          v223 = v198;
          while (1)
          {
            v234 = COERCE_DOUBLE(&v216);
            MEMORY[0x1EEE9AC00](v200);
            v202 = &v216 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v69 = v202 + 8;
            v203 = v198;
            v204 = v202 + 8;
            do
            {
              *(v204 - 1) = 0;
              *v204 = 0;
              v204 += 16;
              --v203;
            }

            while (v203);
            v205 = v229 + 40 * v140;
            while (1)
            {
              v206 = *(a7 + 16);
              if (v140 == v206)
              {
                break;
              }

              if (v140 >= v206)
              {
                goto LABEL_181;
              }

              ++v140;
              outlined init with copy of AnyTrackedValue(v205, &v282);
              v207 = v285;
              v68 = a7;
              __swift_project_boxed_opaque_existential_1(&v282, v285);
              *(*&v69 - 8) = CVarArg.kdebugValue(_:)(v137 | v240, v207);
              **&v69 = v208 & 1;
              *&v69 += 16;
              v141 = __swift_destroy_boxed_opaque_existential_1(&v282);
              v205 += 40;
              if (!--v198)
              {
                goto LABEL_162;
              }
            }

            LOBYTE(v276) = 0;
LABEL_162:
            v209 = v225;
            if (*&v225 == 20)
            {
              v182 = v226;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v182 = v226;
            }

            if (v202[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v202[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v202[40] == 1)
            {
              kdebug_trace_string();
            }

            if (*&v209 != 20 && v202[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v174 = *v233;
            v210 = v239;
            (*v233)(v182, v239);
            v211 = __swift_project_value_buffer(v210, static OSSignpostID.continuation);
            v200 = (*&v221)(v182, v211, v210);
            v198 = v223;
            if ((v276 & 1) == 0)
            {
LABEL_179:
              v212 = v220;

              v213 = v239;
              v174(v182, v239);
              v174(v224, v213);

              a4 = v227;
              *(v227 + 72) = v212;
              a1 = v235;
              LODWORD(v12) = v230;
              v50 = v231;
              goto LABEL_91;
            }
          }
        }
      }

      __break(1u);
    }

    v130 = v62;
    v131 = AGGraphGetAttributeGraph();
    v62 = AGGraphGetCounter();

    v132 = MEMORY[0x1E69E6870];
    *(*&v69 + 56) = MEMORY[0x1E69E6810];
    *(*&v69 + 64) = v132;
    *(*&v69 + 32) = v62;
    v133 = AGGraphGetCurrentAttribute();
    if (v133 == v130)
    {
      goto LABEL_195;
    }

    v134 = MEMORY[0x1E69E76D0];
    *(*&v69 + 96) = MEMORY[0x1E69E7668];
    *(*&v69 + 104) = v134;
    *(*&v69 + 72) = v133;
    *(*&v69 + 136) = MEMORY[0x1E69E6158];
    *(*&v69 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(*&v69 + 112) = 0x746E6961505FLL;
    *(*&v69 + 120) = 0xE600000000000000;
    if (a7)
    {
      LOBYTE(v242) = v240;
      *&v244 = v234;
      v245 = &dword_18D018000;
      v282 = v68;
      v283 = v112;
      LOBYTE(v284) = v113;
      v276 = "Animation: (%p) [%d] %{public}@ updated";
      v277 = 39;
      LOBYTE(v278) = 2;
      v243 = v69;
      v135 = v225;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

      (*(v236 + 1))(COERCE_DOUBLE(*&v135), v239);

      LODWORD(v12) = v230;
      goto LABEL_90;
    }

    if (v68 == 20)
    {
      v136 = 3;
    }

    else
    {
      v136 = 4;
    }

    v137 = bswap32(v68) | (4 * WORD1(v68));
    LODWORD(v240) = v240;
    *&v138 = v236 + 16;
    v221 = *(v236 + 2);
    v139 = (*&v221)(v233, COERCE_DOUBLE(*&v225), v239);
    v140 = 0;
    LOBYTE(v276) = 1;
    v229 = 16 * v136;
    v222.f64[0] = v138;
    v232 = *&v138 - 8;
    v226 = (*&v69 + 32);
    v223 = v136;
    v224 = v68;
LABEL_66:
    v234 = COERCE_DOUBLE(&v216);
    MEMORY[0x1EEE9AC00](v139);
    v143 = &v216 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
    a7 = (v143 + 8);
    v144 = v136;
    v145 = v143 + 8;
    do
    {
      *(v145 - 1) = 0;
      *v145 = 0;
      v145 += 16;
      --v144;
    }

    while (v144);
    v146 = &v226[40 * v140];
    while (1)
    {
      v147 = *(*&v69 + 16);
      if (v140 == v147)
      {
        LOBYTE(v276) = 0;
LABEL_74:
        a7 = v224;
        if (v224 == 20)
        {
          v150 = v233;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v150 = v233;
        }

        if (v143[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v143[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v143[40] == 1)
        {
          kdebug_trace_string();
        }

        if (a7 != 20 && v143[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v151 = *v232;
        v152 = v239;
        (*v232)(v150, v239);
        v153 = __swift_project_value_buffer(v152, static OSSignpostID.continuation);
        v139 = (*&v221)(v150, v153, v152);
        v136 = v223;
        if ((v276 & 1) == 0)
        {

          v154 = v239;
          v151(v150, v239);
          v151(*&v225, v154);

          LODWORD(v12) = v230;
          v50 = v231;
LABEL_90:
          a1 = v235;
          a4 = v227;
LABEL_91:
          specialized AnimatorState.addListeners(transaction:)(v216);

          v288 = v249;
          v289 = v250;
          v290[0] = v251;
          *&v290[1] = v252;
          outlined destroy of Slice<IndexSet>(&v288, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

          v40 = v241;
LABEL_92:
          v39 = v218;
LABEL_93:

          *(a4 + 16) = v237;
          *(a4 + 32) = v39;
          *(a4 + 40) = v50;
          *(a4 + 48) = v40;
          *(a4 + 56) = v37;
          *(a4 + 64) = v38;
LABEL_94:
          v69 = *(a4 + 72);
          if (v69 == 0.0)
          {
            return result;
          }

          v227 = a4;
          v155 = *(a1 + 8);
          v156 = *(a1 + 12);
          v157 = *(a1 + 16);
          v37 = *(a1 + 40);
          v38 = *(a1 + 48);
          v158 = *(a1 + 24) * 128.0;
          v159 = *(a1 + 32) * 128.0;
          v291.f64[0] = *a1;
          LOBYTE(v291.f64[1]) = v155;
          HIDWORD(v291.f64[1]) = v156;
          LOBYTE(v292) = v157;

          ResolvedGradient.animatableData.getter(&v288);
          v291.f64[0] = v158;
          v291.f64[1] = v159;
          *&v292 = v288;
          BYTE8(v292) = BYTE8(v288);
          HIDWORD(v292) = HIDWORD(v288);
          LOBYTE(v293) = v289;
          LOBYTE(v288) = 0;
          *(&v293 + 1) = v37;
          *&v294 = v38;
          v160 = specialized AnimatorState.update(_:at:environment:)(&v291, v12, v32);
          v141 = AGGraphGetCurrentAttribute();
          v68 = *MEMORY[0x1E698D3F8];
          if (v141 == v68)
          {
            v137 = 0;
          }

          else
          {
            v137 = v141;
          }

          v140 = &type metadata instantiation cache for TupleTypeDescription;
          if (v160)
          {
            if (one-time initialization token for enabledCategories != -1)
            {
              goto LABEL_182;
            }

            goto LABEL_100;
          }

          if (one-time initialization token for enabledCategories == -1)
          {
LABEL_113:
            v170 = *(v140 + 616);
            if (*(v170 + 16) >= 0x43uLL)
            {
              if (*(v170 + 98) == 1 && static CustomEventTrace.recorder)
              {
                *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
                LODWORD(v288) = v137;
                BYTE4(v288) = v141 == v68;
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
                AGGraphAddTraceEvent();
              }

              specialized AnimatorState.nextUpdate()();
              goto LABEL_148;
            }

            __break(1u);
LABEL_186:
            swift_once();
            goto LABEL_105;
          }

LABEL_184:
          v215 = v141;
          swift_once();
          v141 = v215;
          goto LABEL_113;
        }

        goto LABEL_66;
      }

      if (v140 >= v147)
      {
        break;
      }

      ++v140;
      outlined init with copy of AnyTrackedValue(v146, &v282);
      v148 = v285;
      v68 = *&v69;
      __swift_project_boxed_opaque_existential_1(&v282, v285);
      *(a7 - 8) = CVarArg.kdebugValue(_:)(v137 | v240, v148);
      *a7 = v149 & 1;
      a7 += 16;
      v141 = __swift_destroy_boxed_opaque_existential_1(&v282);
      v146 += 40;
      if (!--v136)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    v214 = v141;
    swift_once();
    v141 = v214;
LABEL_100:
    v161 = *(v140 + 616);
    if (*(v161 + 16) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_184;
    }

    if (*(v161 + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v288) = v137;
      BYTE4(v288) = v141 == v68;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v162 = one-time initialization token for animationState;

    if (v162 != -1)
    {
      goto LABEL_186;
    }

LABEL_105:
    v60 = *(&static Signpost.animationState + 1);
    v63 = static Signpost.animationState;
    v50 = word_1ED5283E8;
    LODWORD(v62) = HIBYTE(word_1ED5283E8);
    v163 = byte_1ED5283EA;
    v164 = static os_signpost_type_t.end.getter();
    v288 = __PAIR128__(v60, v63);
    LOBYTE(v289) = v50;
    BYTE1(v289) = v62;
    BYTE2(v289) = v163;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_147;
    }

    LODWORD(v240) = v164;
    v165 = one-time initialization token for _signpostLog;

    if (v165 != -1)
    {
      swift_once();
    }

    v67 = _signpostLog;
    v226 = *&v69;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v12 = COERCE_DOUBLE(swift_allocObject());
    *(v12 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v68)
    {
      __break(1u);
      goto LABEL_188;
    }

    v69 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
    *&a7 = COERCE_DOUBLE(AGGraphGetCounter());

    v166 = MEMORY[0x1E69E6870];
    *(v12 + 56) = MEMORY[0x1E69E6810];
    *(v12 + 64) = v166;
    *(v12 + 32) = *&a7;
    v167 = AGGraphGetCurrentAttribute();
    if (v167 != v68)
    {
      break;
    }

LABEL_188:
    __break(1u);
LABEL_189:
    v240 = v71;
    v232 = v70;
    v234 = v73;
    *&v229 = v72;
    swift_once();
    v72 = *&v229;
    v73 = v234;
    v70 = v232;
    v71 = v240;
  }

  a7 = v12;
  v168 = MEMORY[0x1E69E76D0];
  *(v12 + 96) = MEMORY[0x1E69E7668];
  *(v12 + 104) = v168;
  *(v12 + 72) = v167;
  *(v12 + 136) = MEMORY[0x1E69E6158];
  *(v12 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 112) = 0x746E6961505FLL;
  *(v12 + 120) = 0xE600000000000000;
  if (v62)
  {
    LOBYTE(v276) = v240;
    v282 = &dword_18D018000;
    *&v253.f64[0] = v67;
    *&v288 = v63;
    *(&v288 + 1) = v60;
    LOBYTE(v289) = v50;
    *&v246.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v246.f64[1] = 37;
    LOBYTE(v247) = 2;
    *&v249.f64[0] = v12;
    v169 = v228;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v236 + 1))(v169, v239);
  }

  else
  {
    v171 = v63;
    if (v63 == 20)
    {
      v172 = 3;
    }

    else
    {
      v172 = 4;
    }

    v173 = bswap32(v63) | (4 * WORD1(v63));
    LODWORD(v240) = v240;
    v174 = (v236 + 16);
    v229 = *(v236 + 2);
    v175 = (v229)(v238, v228, v239);
    v176 = 0;
    LOBYTE(v246.f64[0]) = 1;
    v236 = v174;
    v233 = (16 * v172);
    *&v234 = v174 - 8;
    v231 = v172;
    v232 = a7 + 32;
    v230 = v171;
    do
    {
      *&v237.f64[0] = &v216;
      MEMORY[0x1EEE9AC00](v175);
      v178 = &v216 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
      v179 = v178 + 8;
      v180 = v172;
      v181 = v178 + 8;
      do
      {
        *(v181 - 1) = 0;
        *v181 = 0;
        v181 += 16;
        --v180;
      }

      while (v180);
      v182 = v232 + 40 * v176;
      while (1)
      {
        v183 = *(a7 + 16);
        if (v176 == v183)
        {
          break;
        }

        if (v176 >= v183)
        {
          __break(1u);
          goto LABEL_179;
        }

        ++v176;
        outlined init with copy of AnyTrackedValue(v182, &v288);
        v184 = *(&v289 + 1);
        v185 = __swift_project_boxed_opaque_existential_1(&v288, *(&v289 + 1));
        v186 = v184;
        v174 = v185;
        *(v179 - 1) = CVarArg.kdebugValue(_:)(v173 | v240, v186);
        *v179 = v187 & 1;
        v179 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v288);
        v182 += 40;
        if (!--v172)
        {
          goto LABEL_131;
        }
      }

      LOBYTE(v246.f64[0]) = 0;
LABEL_131:
      v188 = v230;
      if (v230 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      v172 = v231;
      if (v178[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v178[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v178[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v188 != 20 && v178[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v174 = **&v234;
      v190 = v238;
      v189 = v239;
      (**&v234)(v238, v239);
      v191 = __swift_project_value_buffer(v189, static OSSignpostID.continuation);
      v175 = (v229)(v190, v191, v189);
    }

    while ((LOBYTE(v246.f64[0]) & 1) != 0);

    v192 = v239;
    v174(v238, v239);
    v174(v228, v192);
  }

LABEL_147:
  specialized AnimatorState.removeListeners()();

  *(v227 + 72) = 0;
LABEL_148:
  v193 = v235;
  v247 = v292;
  v248[0] = v293;
  v246 = v291;
  *&v248[1] = v294;
  v194 = v292;
  v195 = BYTE8(v292);
  v196 = HIDWORD(v292);
  v197 = v293;
  *(v235 + 24) = vmulq_f64(v291, vdupq_n_s64(0x3F80000000000000uLL));
  v282 = v194;
  LOBYTE(v283) = v195;
  HIDWORD(v283) = v196;
  LOBYTE(v284) = v197;
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v246, &v288, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  ResolvedGradient.animatableData.setter(&v282);

  *(v193 + 40) = *(v248 + 8);
  v288 = v291;
  v289 = v292;
  v290[0] = v293;
  *&v290[1] = v294;
  result = outlined destroy of Slice<IndexSet>(&v288, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  *(v193 + 57) = 1;
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, uint64_t a2, unsigned int a3, void *Counter)
{
  v303 = *MEMORY[0x1E69E9840];
  v222 = type metadata accessor for OSSignpostID();
  v219 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v218 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v201 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v220 = (&v201 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v201 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v221 = &v201 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v212 = &v201 - v20;
  if (Counter[35])
  {
    Value = AGGraphGetValue();
    if (v22)
    {
      v23 = *Value;
    }

    else
    {
      v23 = -INFINITY;
    }
  }

  else
  {
    v23 = -INFINITY;
  }

  v24 = &v227;
  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 384) = 1;
  }

  else if (*(a1 + 384) != 1)
  {
    goto LABEL_121;
  }

  v26 = *(a1 + 208);
  *&v284[192] = *(a1 + 192);
  *&v284[208] = v26;
  v27 = *(a1 + 240);
  *&v284[224] = *(a1 + 224);
  *&v284[240] = v27;
  v28 = *(a1 + 144);
  *&v284[128] = *(a1 + 128);
  *&v284[144] = v28;
  v29 = *(a1 + 176);
  *&v284[160] = *(a1 + 160);
  *&v284[176] = v29;
  v30 = *(a1 + 64);
  *&v284[80] = *(a1 + 80);
  v31 = *(a1 + 112);
  *&v284[96] = *(a1 + 96);
  *&v284[112] = v31;
  v32 = *(a1 + 16);
  *v284 = *a1;
  *&v284[16] = v32;
  v33 = *(a1 + 48);
  *&v284[32] = *(a1 + 32);
  *&v284[48] = v33;
  *&v284[64] = v30;
  v34 = *(a1 + 336);
  v247 = *(a1 + 320);
  v248 = v34;
  v35 = *(a1 + 368);
  v249 = *(a1 + 352);
  v250 = v35;
  v36 = *(a1 + 272);
  v243 = *(a1 + 256);
  v244 = v36;
  v37 = *(a1 + 304);
  v245 = *(a1 + 288);
  v246 = v37;
  RoundedRectangularShapeCorners.animatableData.getter(&v251);
  memcpy(v285, Counter + 2, sizeof(v285));
  memcpy(v286, Counter + 2, 0x101uLL);
  if (_s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOg(v286) == 1)
  {
    goto LABEL_120;
  }

  *&v284[80] = v248;
  *&v284[96] = v249;
  *&v284[112] = v250;
  *v284 = v243;
  *&v284[16] = v244;
  *&v284[32] = v245;
  *&v284[48] = v246;
  *&v284[64] = v247;
  v272 = *&v285[64];
  v273 = *&v285[80];
  v274 = *&v285[96];
  v275 = *&v285[112];
  v268 = *v285;
  v269 = *&v285[16];
  v270 = *&v285[32];
  v271 = *&v285[48];
  if (specialized static RoundedRectangularShapeCorners.AnimatableData.== infix(_:_:)(v284, &v268))
  {
    *&v284[80] = v256;
    *&v284[96] = v257;
    *&v284[112] = v258;
    *v284 = v251;
    *&v284[16] = v252;
    *&v284[32] = v253;
    *&v284[48] = v254;
    *&v284[64] = v255;
    v272 = *&v285[192];
    v273 = *&v285[208];
    v274 = *&v285[224];
    v275 = *&v285[240];
    v268 = *&v285[128];
    v269 = *&v285[144];
    v270 = *&v285[160];
    v271 = *&v285[176];
    if (specialized static RoundedRectangularShapeCorners.AnimatableData.== infix(_:_:)(v284, &v268))
    {
      goto LABEL_120;
    }
  }

  v223 = a2;
  v202 = v11;
  v203 = v16;
  v207 = a3;
  AGGraphClearUpdate();
  v211 = Counter;
  memcpy(v284, Counter, sizeof(v284));
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v284, &v268, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
  v38 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v39 = Transaction.effectiveAnimation.getter(v38);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v223;
    if (!v223)
    {

      v24 = &v227;
      Counter = v211;
      a3 = v207;
      goto LABEL_120;
    }
  }

  v240 = v256;
  v241 = v257;
  v242 = v258;
  v236 = v252;
  v237 = v253;
  v238 = v254;
  v239 = v255;
  v231 = v247;
  v232 = v248;
  v233 = v249;
  v234 = v250;
  v235 = v251;
  v227 = v243;
  v228 = v244;
  v229 = v245;
  v230 = v246;
  v272 = v247;
  v273 = v248;
  v274 = v249;
  v275 = v250;
  v268 = v243;
  v269 = v244;
  v270 = v245;
  v271 = v246;
  v264 = v255;
  v265 = v256;
  v266 = v257;
  v267 = v258;
  v260 = v251;
  v261 = v252;
  v262 = v253;
  v263 = v254;
  v291 = *&v285[64];
  v292 = *&v285[80];
  v293 = *&v285[96];
  v294 = *&v285[112];
  v287 = *v285;
  v288 = *&v285[16];
  v289 = *&v285[32];
  v41 = *&v284[280];
  v290 = *&v285[48];
  static ConcentricRectangle.Uniformity.- infix(_:_:)(&v268);
  v272 = *&v285[192];
  v273 = *&v285[208];
  v274 = *&v285[224];
  v275 = *&v285[240];
  v268 = *&v285[128];
  v269 = *&v285[144];
  v270 = *&v285[160];
  v271 = *&v285[176];
  static RoundedRectangularShapeCorners.AnimatableData.- infix(_:_:)(&v235, &v260, &v268);
  v23 = *AGGraphGetValue();
  v210 = a1;
  v204 = v40;
  v205 = v38;
  if (!v41)
  {
    v280 = v239;
    v281 = v240;
    v282 = v241;
    v283 = v242;
    v276 = v235;
    v277 = v236;
    v278 = v237;
    v279 = v238;
    v272 = v231;
    v273 = v232;
    v274 = v233;
    v275 = v234;
    v268 = v227;
    v269 = v228;
    v270 = v229;
    v271 = v230;
    *&v260 = &type metadata for ConcentricRectangle;
    type metadata accessor for ConcentricRectangle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == ConcentricRectangle.AnimatableData>.Type);
    v60 = swift_dynamicCast();
    if (v60)
    {
      v61 = v287;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = *(&v287 + 1);
    }

    else
    {
      v62 = 0;
    }

    v64 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA19ConcentricRectangleV14AnimatableDataV_Tt4B5(v63, &v268, v38, v61, v62, v23);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    a3 = CurrentAttribute;
    v66 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v67 = 0;
    }

    else
    {
      v67 = CurrentAttribute;
    }

    (*(*v40 + 96))(&v260);
    v68 = v260;
    v69 = v261;
    v70 = v262;
    v259 = 0x7FF8000000000000;
    v225 = 1.0;
    v226 = NAN;
    v224 = NAN;
    v287 = v260;
    v288 = v261;
    *&v289 = v262;
    LODWORD(v223) = BYTE8(v262);
    BYTE8(v289) = BYTE8(v262);
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v287, &v259, &v226, &v225, &v224);
    v71 = v259;
    v72 = v225;
    v73 = v226;
    v74 = v224;
    if (one-time initialization token for enabledCategories != -1)
    {
      v220 = v259;
      v216 = *&v226;
      v217 = *&v225;
      v215 = *&v224;
      swift_once();
      v74 = *&v215;
      v73 = *&v216;
      v72 = *&v217;
      v71 = v220;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v75 = v67, (v76 = static CustomEventTrace.recorder) != 0))
      {
        v77 = a3 == v66;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v220 = v70;
        v78 = v66;
        v79 = *(v76 + 16);
        LODWORD(v287) = v75;
        BYTE4(v287) = v77;
        *(&v287 + 1) = &type metadata for ConcentricRectangle;
        *&v288 = v71;
        *(&v288 + 1) = v73;
        *&v289 = v72;
        *(&v289 + 1) = v74;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v217 = v80;

        v81 = v79;
        v66 = v78;
        v82 = v64;
        v83 = v81;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v68, *(&v68 + 1), v69, *(&v69 + 1), v220, v223);

        v64 = v82;
      }

      else
      {
        outlined consume of Animation.Function(v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v223);
      }

      v90 = one-time initialization token for animationState;
      v206 = v64;

      a3 = v207;
      if (v90 == -1)
      {
LABEL_43:
        v92 = *(&static Signpost.animationState + 1);
        v91 = static Signpost.animationState;
        LOBYTE(v46) = word_1ED5283E8;
        LOBYTE(v93) = HIBYTE(word_1ED5283E8);
        v94 = byte_1ED5283EA;
        v95 = static os_signpost_type_t.begin.getter();
        v287 = __PAIR128__(v92, v91);
        LOBYTE(v288) = v46;
        BYTE1(v288) = v93;
        BYTE2(v288) = v94;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v107 = v206;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          Counter = v211;
          v211[35] = v107;
          goto LABEL_119;
        }

        LODWORD(v223) = v95;
        LODWORD(Counter) = v66;
        v96 = one-time initialization token for _signpostLog;

        if (v96 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_45;
      }
    }

    swift_once();
    goto LABEL_43;
  }

  v299 = v239;
  v300 = v240;
  v301 = v241;
  v302 = v242;
  v295 = v235;
  v296 = v236;
  v297 = v237;
  v298 = v238;
  v291 = v231;
  v292 = v232;
  v293 = v233;
  v294 = v234;
  v287 = v227;
  v288 = v228;
  v289 = v229;
  v290 = v230;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v284, &v268, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v268) = 0;
  v206 = v41;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v40, &v287, v38, v23);
  v42 = AGGraphGetCurrentAttribute();
  v43 = v42;
  LODWORD(v38) = *MEMORY[0x1E698D3F8];
  if (v42 == *MEMORY[0x1E698D3F8])
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  LODWORD(v223) = v44;
  (*(*v40 + 96))(&v260);
  Counter = *(&v260 + 1);
  v45 = v260;
  v47 = *(&v261 + 1);
  v46 = v261;
  v48 = v262;
  LODWORD(v49) = BYTE8(v262);
  v259 = 0x7FF8000000000000;
  v225 = 1.0;
  v226 = NAN;
  v224 = NAN;
  v268 = v260;
  v269 = v261;
  *&v270 = v262;
  BYTE8(v270) = BYTE8(v262);
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v268, &v259, &v226, &v225, &v224);
  v50 = v259;
  v51 = v225;
  v52 = v226;
  v53 = v224;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        LODWORD(v218) = v49;
        v54 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v55 = v43 == v38;
          v217 = *(static CustomEventTrace.recorder + 24);
          *(v217 + 4) = 1602;
          v56 = v38;
          v38 = *(v54 + 16);
          LODWORD(v268) = v223;
          BYTE4(v268) = v55;
          *(&v268 + 1) = &type metadata for ConcentricRectangle;
          *&v269 = v50;
          *(&v269 + 1) = v52;
          *&v270 = v51;
          *(&v270 + 1) = v53;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v223 = v57;

          v58 = v38;
          LODWORD(v38) = v56;
          v59 = v58;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v45, Counter, v46, v47, v48, v218);

          goto LABEL_53;
        }

        v84 = v45;
        v85 = Counter;
        v86 = v46;
        v87 = v47;
        v88 = v48;
        v89 = v218;
      }

      else
      {
        v84 = v45;
        v85 = Counter;
        v86 = v46;
        v87 = v47;
        v88 = v48;
        v89 = v49;
      }

      outlined consume of Animation.Function(v84, v85, v86, v87, v88, v89);
LABEL_53:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v284, &v268, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_189;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_54:
    v108 = *(&static Signpost.animationState + 1);
    v93 = static Signpost.animationState;
    v91 = word_1ED5283E8;
    v92 = HIBYTE(word_1ED5283E8);
    v109 = byte_1ED5283EA;
    v110 = static os_signpost_type_t.event.getter();
    v268 = __PAIR128__(v108, v93);
    LOBYTE(v269) = v91;
    BYTE1(v269) = v92;
    BYTE2(v269) = v109;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
LABEL_90:
      Counter = v211;
      a3 = v207;
      goto LABEL_119;
    }

    LODWORD(v223) = v110;
    v111 = v38;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v284, &v268, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v112 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v111)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v46) = v111;
      v114 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v115 = MEMORY[0x1E69E6870];
      *(v113 + 56) = MEMORY[0x1E69E6810];
      *(v113 + 64) = v115;
      *(v113 + 32) = Counter;
      v116 = AGGraphGetCurrentAttribute();
      if (v116 != v46)
      {
        Counter = v113;
        v117 = MEMORY[0x1E69E76D0];
        *(v113 + 96) = MEMORY[0x1E69E7668];
        *(v113 + 104) = v117;
        *(v113 + 72) = v116;
        *(v113 + 136) = MEMORY[0x1E69E6158];
        *(v113 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v113 + 112) = 0xD000000000000013;
        *(v113 + 120) = 0x800000018DD78EB0;
        if (v92)
        {
          LOBYTE(v224) = v223;
          v259 = &dword_18D018000;
          *&v225 = v113;
          *&v226 = v112;
          *&v268 = v93;
          *(&v268 + 1) = v108;
          LOBYTE(v269) = v91;
          *&v260 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v260 + 1) = 39;
          LOBYTE(v261) = 2;
          v118 = v203;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          (*(v219 + 8))(v118, v222);
        }

        else
        {
          v119 = v93;
          if (v93 == 20)
          {
            v120 = 3;
          }

          else
          {
            v120 = 4;
          }

          v121 = bswap32(v93) | (4 * WORD1(v93));
          LODWORD(v223) = v223;
          v122 = (v219 + 16);
          v208 = *(v219 + 16);
          v123 = v208(v220, v203, v222);
          v48 = 0;
          LOBYTE(v260) = 1;
          v218 = v120;
          v209 = v122;
          v215 = 16 * v120;
          v216 = v122 - 8;
          v213 = v119;
          v214 = v113 + 32;
          do
          {
            v217 = &v201;
            MEMORY[0x1EEE9AC00](v123);
            a1 = &v201 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
            v24 = (a1 + 8);
            v126 = v218;
            v127 = (a1 + 8);
            do
            {
              *(v127 - 1) = 0;
              *v127 = 0;
              v127 += 16;
              --v126;
            }

            while (v126);
            v128 = (v214 + 40 * v48);
            v46 = v218;
            while (1)
            {
              v129 = Counter[2];
              if (v48 == v129)
              {
                break;
              }

              if (v48 >= v129)
              {
                goto LABEL_178;
              }

              ++v48;
              outlined init with copy of AnyTrackedValue(v128, &v268);
              v130 = *(&v269 + 1);
              v92 = Counter;
              __swift_project_boxed_opaque_existential_1(&v268, *(&v269 + 1));
              *(v24 - 1) = CVarArg.kdebugValue(_:)(v121 | v223, v130);
              *v24++ = v131 & 1;
              v124 = __swift_destroy_boxed_opaque_existential_1(&v268);
              v128 += 5;
              if (!--v46)
              {
                goto LABEL_74;
              }
            }

            LOBYTE(v260) = 0;
LABEL_74:
            v132 = v213;
            if (v213 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v132 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v133 = *v216;
            v134 = v220;
            v135 = v222;
            (*v216)(v220, v222);
            v136 = __swift_project_value_buffer(v135, static OSSignpostID.continuation);
            v123 = v208(v134, v136, v135);
          }

          while ((v260 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          v137 = v222;
          v133(v220, v222);
          v133(v203, v137);
        }

        goto LABEL_90;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_45:
    v97 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == Counter)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v99 = Counter;
    v100 = AGGraphGetAttributeGraph();
    v101 = AGGraphGetCounter();

    v102 = MEMORY[0x1E69E6870];
    *(v98 + 56) = MEMORY[0x1E69E6810];
    *(v98 + 64) = v102;
    *(v98 + 32) = v101;
    v103 = AGGraphGetCurrentAttribute();
    if (v103 == v99)
    {
      goto LABEL_196;
    }

    Counter = v98;
    v104 = MEMORY[0x1E69E76D0];
    *(v98 + 96) = MEMORY[0x1E69E7668];
    *(v98 + 104) = v104;
    *(v98 + 72) = v103;
    *(v98 + 136) = MEMORY[0x1E69E6158];
    *(v98 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v98 + 112) = 0xD000000000000013;
    *(v98 + 120) = 0x800000018DD78EB0;
    if (v93)
    {
      LOBYTE(v224) = v223;
      v259 = &dword_18D018000;
      *&v225 = v98;
      *&v226 = v97;
      *&v287 = v91;
      *(&v287 + 1) = v92;
      LOBYTE(v288) = v46;
      *&v260 = "Animation: (%p) [%d] %{public}@ started";
      *(&v260 + 1) = 39;
      LOBYTE(v261) = 2;
      v105 = v202;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v106 = v206;

      (*(v219 + 8))(v105, v222);
    }

    else
    {
      v46 = v91;
      v121 = v91 == 20 ? 3 : 4;
      a1 = bswap32(v91) | (4 * WORD1(v91));
      LODWORD(v223) = v223;
      v138 = (v219 + 16);
      v208 = *(v219 + 16);
      v139 = v208(v218, v202, v222);
      v48 = 0;
      LOBYTE(v260) = 1;
      v209 = v138;
      v216 = 16 * v121;
      v217 = v138 - 8;
      v214 = v46;
      v215 = v98 + 32;
      v213 = v121;
      do
      {
        v220 = &v201;
        MEMORY[0x1EEE9AC00](v139);
        v92 = &v201 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = (v92 + 8);
        v141 = v121;
        v142 = v92 + 8;
        do
        {
          *(v142 - 1) = 0;
          *v142 = 0;
          v142 += 16;
          --v141;
        }

        while (v141);
        v128 = (v215 + 40 * v48);
        while (1)
        {
          v143 = Counter[2];
          if (v48 == v143)
          {
            break;
          }

          if (v48 >= v143)
          {
            goto LABEL_179;
          }

          ++v48;
          outlined init with copy of AnyTrackedValue(v128, &v287);
          v144 = *(&v288 + 1);
          LODWORD(v46) = Counter;
          __swift_project_boxed_opaque_existential_1(&v287, *(&v288 + 1));
          *(v24 - 1) = CVarArg.kdebugValue(_:)(a1 | v223, v144);
          *v24++ = v145 & 1;
          v124 = __swift_destroy_boxed_opaque_existential_1(&v287);
          v128 += 5;
          if (!--v121)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v260) = 0;
LABEL_103:
        v46 = v214;
        if (v214 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v121 = v213;
        if (v92[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v92[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v92[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v46 != 20 && v92[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v146 = v218;
        v147 = *v217;
        v148 = v222;
        (*v217)(v218, v222);
        v149 = __swift_project_value_buffer(v148, static OSSignpostID.continuation);
        v139 = v208(v146, v149, v148);
      }

      while ((v260 & 1) != 0);
      v106 = v206;

      v150 = v222;
      v147(v218, v222);
      v147(v202, v150);
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
    Counter = v211;
    v211[35] = v106;
    a3 = v207;
LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v205);

    a1 = v210;
    v24 = &v227;
LABEL_120:
    *&v284[192] = v255;
    *&v284[208] = v256;
    *&v284[224] = v257;
    *&v284[240] = v258;
    *&v284[128] = v251;
    *&v284[144] = v252;
    *&v284[160] = v253;
    *&v284[176] = v254;
    *&v284[80] = v248;
    *&v284[96] = v249;
    *&v284[112] = v250;
    *v284 = v243;
    *&v284[16] = v244;
    *&v284[32] = v245;
    *&v284[48] = v246;
    *&v284[64] = v247;
    _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOi_(v284);
    result = memcpy(Counter + 2, v284, 0x101uLL);
LABEL_121:
    v121 = Counter[35];
    if (!v121)
    {
      return result;
    }

    v151 = *(a1 + 208);
    v286[12] = *(a1 + 192);
    v286[13] = v151;
    v152 = *(a1 + 240);
    v286[14] = *(a1 + 224);
    v286[15] = v152;
    v153 = *(a1 + 144);
    v286[8] = *(a1 + 128);
    v286[9] = v153;
    v154 = *(a1 + 176);
    v286[10] = *(a1 + 160);
    v286[11] = v154;
    v155 = *(a1 + 80);
    v286[4] = *(a1 + 64);
    v286[5] = v155;
    v156 = *(a1 + 112);
    v286[6] = *(a1 + 96);
    v286[7] = v156;
    v157 = *(a1 + 16);
    v286[0] = *a1;
    v286[1] = v157;
    v158 = *(a1 + 48);
    v286[2] = *(a1 + 32);
    v286[3] = v158;
    v159 = *(a1 + 320);
    *&v284[80] = *(a1 + 336);
    v160 = *(a1 + 368);
    *&v284[96] = *(a1 + 352);
    *&v284[112] = v160;
    v161 = *(a1 + 272);
    *v284 = *(a1 + 256);
    *&v284[16] = v161;
    v162 = *(a1 + 304);
    v92 = v284;
    *&v284[32] = *(a1 + 288);
    *&v284[48] = v162;
    *&v284[64] = v159;
    RoundedRectangularShapeCorners.animatableData.getter(&v284[128]);

    LOBYTE(v286[0]) = 0;
    v163 = specialized AnimatorState.update(_:at:environment:)(v284, a3, v23);
    v124 = AGGraphGetCurrentAttribute();
    v48 = *MEMORY[0x1E698D3F8];
    if (v124 == v48)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      LODWORD(v46) = v124;
    }

    v128 = &type metadata instantiation cache for TupleTypeDescription;
    if (v163)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v174 = v128[77];
    if (*(v174 + 16) >= 0x43uLL)
    {
      if (*(v174 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v286[0]) = v46;
        BYTE4(v286[0]) = v124 == v48;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v47 = *(&static Signpost.animationState + 1);
    v46 = static Signpost.animationState;
    v166 = word_1ED5283E8;
    v167 = HIBYTE(word_1ED5283E8);
    v168 = byte_1ED5283EA;
    v43 = static os_signpost_type_t.end.getter();
    v286[0] = __PAIR128__(v47, v46);
    LOBYTE(v286[1]) = v166;
    BYTE1(v286[1]) = v167;
    BYTE2(v286[1]) = v168;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v169 = one-time initialization token for _signpostLog;
    v45 = v209;

    if (v169 != -1)
    {
      swift_once();
    }

    LODWORD(v223) = v166;
    v49 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v48)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v217 = *&v51;
    v218 = v50;
    v215 = *&v53;
    v216 = *&v52;
    swift_once();
    v53 = *&v215;
    v52 = *&v216;
    v51 = *&v217;
    v50 = v218;
  }

  v45 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v170 = MEMORY[0x1E69E6870];
  *(v38 + 56) = MEMORY[0x1E69E6810];
  *(v38 + 64) = v170;
  *(v38 + 32) = Counter;
  v171 = AGGraphGetCurrentAttribute();
  if (v171 == v48)
  {
    goto LABEL_186;
  }

  Counter = v38;
  v172 = MEMORY[0x1E69E76D0];
  *(v38 + 96) = MEMORY[0x1E69E7668];
  *(v38 + 104) = v172;
  *(v38 + 72) = v171;
  *(v38 + 136) = MEMORY[0x1E69E6158];
  *(v38 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v38 + 112) = 0xD000000000000013;
  *(v38 + 120) = 0x800000018DD78EB0;
  if (v167)
  {
    LOBYTE(v226) = v43;
    *&v227 = &dword_18D018000;
    *&v260 = v49;
    *&v286[0] = v46;
    *(&v286[0] + 1) = v47;
    LOBYTE(v286[1]) = v223;
    *&v243 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v243 + 1) = 37;
    LOBYTE(v244) = 2;
    v259 = v38;
    v173 = v212;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v219 + 8))(v173, v222);
    goto LABEL_173;
  }

  v48 = v46;
  v175 = v43;
  if (v46 == 20)
  {
    v121 = 3;
  }

  else
  {
    v121 = 4;
  }

  LODWORD(v46) = bswap32(v46) | (4 * WORD1(v46));
  LODWORD(v223) = v175;
  v176 = v219 + 16;
  v213 = *(v219 + 16);
  v177 = v213(v221, v212, v222);
  a1 = 0;
  LOBYTE(v243) = 1;
  v219 = v176;
  v217 = 16 * v121;
  v218 = (v176 - 8);
  v215 = v48;
  v216 = v38 + 32;
  v214 = v121;
  do
  {
    v220 = &v201;
    MEMORY[0x1EEE9AC00](v177);
    v92 = &v201 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = (v92 + 8);
    v179 = v121;
    v180 = v92 + 8;
    do
    {
      *(v180 - 1) = 0;
      *v180 = 0;
      v180 += 16;
      --v179;
    }

    while (v179);
    v128 = (v216 + 40 * a1);
    while (1)
    {
      v181 = Counter[2];
      if (a1 == v181)
      {
        break;
      }

      if (a1 >= v181)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v199 = v124;
        swift_once();
        v124 = v199;
LABEL_127:
        v164 = v128[77];
        if (*(v164 + 16) >= 0x43uLL)
        {
          if (*(v164 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v286[0]) = v46;
            BYTE4(v286[0]) = v124 == v48;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v210 = a1;
          v211 = Counter;
          v165 = one-time initialization token for animationState;
          v209 = v121;

          if (v165 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v200 = v124;
        swift_once();
        v124 = v200;
        goto LABEL_140;
      }

      ++a1;
      outlined init with copy of AnyTrackedValue(v128, v286);
      v182 = *(&v286[1] + 1);
      v48 = Counter;
      __swift_project_boxed_opaque_existential_1(v286, *(&v286[1] + 1));
      *(v24 - 1) = CVarArg.kdebugValue(_:)(v46 | v223, v182);
      *v24++ = v183 & 1;
      v124 = __swift_destroy_boxed_opaque_existential_1(v286);
      v128 += 5;
      if (!--v121)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v243) = 0;
LABEL_158:
    v48 = v215;
    if (v215 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v121 = v214;
    if (v92[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v92[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v92[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v48 != 20 && v92[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v184 = *v218;
    v186 = v221;
    v185 = v222;
    (*v218)(v221, v222);
    v187 = __swift_project_value_buffer(v185, static OSSignpostID.continuation);
    v177 = v213(v186, v187, v185);
  }

  while ((v243 & 1) != 0);

  v188 = v222;
  v184(v221, v222);
  v184(v212, v188);
LABEL_173:

LABEL_174:
  specialized AnimatorState.removeListeners()();

  a1 = v210;
  v211[35] = 0;
  v24 = &v227;
  v92 = v284;
LABEL_175:
  v189 = *(v92 + 13);
  v24[99] = *(v92 + 12);
  v24[100] = v189;
  v190 = *(v92 + 15);
  v24[101] = *(v92 + 14);
  v24[102] = v190;
  v191 = *(v92 + 9);
  v24[95] = *(v92 + 8);
  v24[96] = v191;
  v192 = *(v92 + 11);
  v24[97] = *(v92 + 10);
  v24[98] = v192;
  v193 = v24[60];
  v194 = v24[61];
  v195 = v24[63];
  *(a1 + 288) = v24[62];
  *(a1 + 304) = v195;
  *(a1 + 256) = v193;
  *(a1 + 272) = v194;
  v196 = v24[64];
  v197 = v24[65];
  v198 = v24[67];
  *(a1 + 352) = v24[66];
  *(a1 + 368) = v198;
  *(a1 + 320) = v196;
  *(a1 + 336) = v197;
  RoundedRectangularShapeCorners.animatableData.setter(v286);

  *(a1 + 384) = 1;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, uint64_t a2, int a3, unint64_t a4)
{
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x65766C6F7365525FuLL, 0xE900000000000064, _ColorMultiplyEffect._Resolved.animatableData.setter, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMultiplyEffect._Resolved>, lazy protocol witness table accessor for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved, &type metadata for _ColorMultiplyEffect._Resolved, type metadata accessor for _ColorMultiplyEffect._Resolved.Type);
}

{
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x6465766C6F736552uLL, 0xE800000000000000, Color.Resolved.animatableData.setter, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.Resolved>, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved, &type metadata for Color.Resolved, type metadata accessor for Color.Resolved.Type);
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(_BYTE *a1, uint64_t Counter, int a3, uint64_t a4)
{
  LODWORD(v9) = a3;
  v231 = *MEMORY[0x1E69E9840];
  v207 = type metadata accessor for OSSignpostID();
  v203 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v202 = &v183[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v200 = &v183[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v204 = &v183[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v183[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v206 = &v183[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v197 = &v183[-v23];
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v25)
    {
      v26 = *Value;
    }

    else
    {
      v26 = -INFINITY;
    }
  }

  else
  {
    v26 = -INFINITY;
  }

  v28 = &unk_1ED52E000;
  v29 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[20] = 1;
    goto LABEL_9;
  }

  if (a1[20] == 1)
  {
LABEL_9:
    v27.i32[0] = *a1;
    LODWORD(v6) = *(a1 + 1);
    v208 = v27;
    v27.i32[0] = *(a1 + 2);
    LODWORD(v5) = *(a1 + 3);
    v201 = v27;
    v27.i32[0] = *(a1 + 4);
    v205 = v27;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_205;
    }

    goto LABEL_10;
  }

LABEL_140:
  v148 = *(a4 + 40);
  if (!v148)
  {
    return;
  }

  v208 = *a1;
  LODWORD(v5) = *(a1 + 4);
  v149 = *(v28 + 487);

  if (v149 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*v29)
  {
    v150 = v208;
  }

  else
  {
    v217[0] = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(&v227, v208.f32[0], v208.u32[1], v208.f32[2], v208.f32[3]);
    v150 = v227;
  }

  v151.i64[0] = 0x4300000043000000;
  v151.i64[1] = 0x4300000043000000;
  *v217 = v5;
  *&v217[4] = vmulq_f32(v150, v151);
  LOBYTE(v227) = 0;
  v152 = specialized AnimatorState.update(_:at:environment:)(v217, v9, v26);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v49 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v154 = 0;
  }

  else
  {
    v154 = CurrentAttribute;
  }

  if (v152)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      v181 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v181;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
        LODWORD(v227) = v154;
        BYTE4(v227) = CurrentAttribute == v49;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      v195 = a4;
      v196 = a1;
      v155 = one-time initialization token for animationState;
      v194 = v148;

      if (v155 == -1)
      {
        goto LABEL_157;
      }

      goto LABEL_209;
    }

    __break(1u);
    goto LABEL_207;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
LABEL_207:
    v182 = CurrentAttribute;
    swift_once();
    CurrentAttribute = v182;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
      LODWORD(v227) = v154;
      BYTE4(v227) = CurrentAttribute == v49;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    specialized AnimatorState.nextUpdate()();
    goto LABEL_200;
  }

  __break(1u);
LABEL_209:
  swift_once();
LABEL_157:
  v156 = *(&static Signpost.animationState + 1);
  v54 = static Signpost.animationState;
  v56 = word_1ED5283E8;
  v52 = HIBYTE(word_1ED5283E8);
  v157 = byte_1ED5283EA;
  v158 = static os_signpost_type_t.end.getter();
  v227 = __PAIR128__(v156, v54);
  LOBYTE(v228) = v56;
  BYTE1(v228) = v52;
  BYTE2(v228) = v157;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {

    goto LABEL_199;
  }

  v208.i32[0] = v158;
  v159 = one-time initialization token for _signpostLog;
  LODWORD(v55) = v194;

  if (v159 != -1)
  {
    swift_once();
  }

  v51 = COERCE_DOUBLE(_signpostLog);
  OSSignpostID.init(log:object:)();
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  *&v53 = COERCE_DOUBLE(swift_allocObject());
  *(v53 + 16) = xmmword_18DDAF080;
  if (AGGraphGetCurrentAttribute() == v49)
  {
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    swift_once();
    goto LABEL_36;
  }

  v55 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v160 = MEMORY[0x1E69E6870];
  *(v53 + 56) = MEMORY[0x1E69E6810];
  *(v53 + 64) = v160;
  *(v53 + 32) = Counter;
  v161 = AGGraphGetCurrentAttribute();
  if (v161 == v49)
  {
    goto LABEL_211;
  }

  v162 = v53;
  v163 = MEMORY[0x1E69E76D0];
  *(v53 + 96) = MEMORY[0x1E69E7668];
  *(v53 + 104) = v163;
  *(v53 + 72) = v161;
  *(v53 + 136) = MEMORY[0x1E69E6158];
  *(v53 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v53 + 112) = 0x65766C6F7365525FLL;
  *(v53 + 120) = 0xE900000000000064;
  if (v52)
  {
    v214 = v208.i8[0];
    v212 = v51;
    v213 = &dword_18D018000;
    *&v227 = v54;
    *(&v227 + 1) = v156;
    LOBYTE(v228) = v56;
    v210[0] = "Animation: (%p) [%d] %{public}@ ended";
    v210[1] = 37;
    v211 = 2;
    v209 = *&v53;
    v164 = v197;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v203 + 8))(v164, v207);
    goto LABEL_198;
  }

  v165 = v54;
  if (v54 == 20)
  {
    v166 = 3;
  }

  else
  {
    v166 = 4;
  }

  v29 = bswap32(v54) | (4 * WORD1(v54));
  a1 = v208.u8[0];
  v167 = v203 + 16;
  v198 = *(v203 + 16);
  v168 = v198(v206, v197, v207);
  v9 = 0;
  LOBYTE(v210[0]) = 1;
  v205.i64[0] = v166;
  v202 = (v167 - 8);
  v203 = v167;
  v208.i64[0] = v162;
  v200 = (v162 + 32);
  v201.i64[0] = 16 * v166;
  v199 = v165;
  do
  {
    v204 = v183;
    MEMORY[0x1EEE9AC00](v168);
    v19 = &v183[-((v169 + 15) & 0xFFFFFFFFFFFFFFF0)];
    Counter = (v19 + 8);
    v170 = v205.i64[0];
    v171 = v19 + 8;
    do
    {
      *(v171 - 1) = 0;
      *v171 = 0;
      v171 += 16;
      --v170;
    }

    while (v170);
    v28 = &v200[40 * v9];
    a4 = v205.i64[0];
    while (1)
    {
      v172 = *(v208.i64[0] + 16);
      if (v9 == v172)
      {
        break;
      }

      if (v9 >= v172)
      {
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        swift_once();
LABEL_10:
        swift_beginAccess();
        if (*v29)
        {
          v31 = v208;
          v31.i32[1] = v201.i32[0];
        }

        else
        {
          LOBYTE(v221) = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v227, v208.f32[0], LODWORD(v6), v201.f32[0], *&v5);
          LODWORD(v6) = DWORD1(v227);
          v31.i64[0] = __PAIR64__(DWORD2(v227), v227);
          LODWORD(v5) = HIDWORD(v227);
        }

        *&v30 = *&v6 * 128.0;
        *v31.f32 = vmul_f32(*v31.f32, 0x4300000043000000);
        *&v5 = *&v5 * 128.0;
        if (*(a4 + 32))
        {
          goto LABEL_139;
        }

        v4 = v26;
        v32 = *(a4 + 24);
        LODWORD(v6) = *(a4 + 28);
        LODWORD(v7) = *(a4 + 12);
        v33 = *(a4 + 16);
        v34 = *(a4 + 20);
        v35 = v31.f32[1];
        if (v205.f32[0] == *&v7)
        {
          v36 = v31.f32[0] == v33 && *&v30 == v34;
          v37 = v36 && v31.f32[1] == v32;
          if (v37 && *&v5 == *&v6)
          {
            v26 = v4;
            goto LABEL_139;
          }
        }

        v187 = v19;
        v190 = v30;
        v191 = v31;
        v196 = a1;
        AGGraphClearUpdate();
        v39 = *(a4 + 16);
        v227 = *a4;
        v228 = v39;
        v229 = *(a4 + 32);
        v195 = a4;
        v230 = *(a4 + 48);
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v227, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        v40 = *AGGraphGetValue();

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        AGGraphSetUpdate();
        v41 = Transaction.effectiveAnimation.getter(v40);
        if (v41)
        {
          v42 = v41;
          v189 = *&v5;
          goto LABEL_31;
        }

        a1 = v196;
        v28 = &unk_1ED52E000;
        if (!Counter)
        {

          a4 = v195;
          v26 = v4;
          v29 = &static Color.Resolved.legacyInterpolation;
          goto LABEL_138;
        }

        v189 = *&v5;

        v42 = Counter;
LABEL_31:
        v43 = *(&v229 + 1);
        v44 = v205.f32[0] - *&v7;
        v45 = v191.f32[0] - v33;
        v46 = *&v190 - v34;
        v47 = v189 - *&v6;
        v26 = *AGGraphGetValue();
        v184 = v9;
        v185 = v42;
        v186 = v40;
        if (!v43)
        {
          *v217 = &type metadata for _AlphaThresholdEffect._Resolved;
          type metadata accessor for _AlphaThresholdEffect._Resolved.Type();
          type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Type, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
          v61 = swift_dynamicCast();
          if (v61)
          {
            v62 = v221;
          }

          else
          {
            v62 = 0;
          }

          if (v61)
          {
            v63 = v222;
          }

          else
          {
            v63 = 0;
          }

          v215.i64[0] = __PAIR64__(LODWORD(v45), LODWORD(v44));
          v215.f32[2] = v46;
          v215.f32[3] = v35 - v32;
          v216 = v47;

          v188 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVyS2fGGGG_Tt4B5(v64, &v215, v40, v62, v63, v26);
          v65 = AGGraphGetCurrentAttribute();
          v66 = v65;
          LODWORD(v67) = *MEMORY[0x1E698D3F8];
          if (v65 == *MEMORY[0x1E698D3F8])
          {
            v68 = 0;
          }

          else
          {
            v68 = v65;
          }

          (*(*v42 + 96))(v217);
          v70 = *v217;
          v69 = *&v217[8];
          v71 = *&v217[16];
          v72 = v218;
          v73 = v219;
          v209 = NAN;
          v210[0] = 0x7FF8000000000000;
          v212 = 1.0;
          v213 = 0x7FF8000000000000;
          v221 = *v217;
          v222 = *&v217[8];
          v223 = *&v217[16];
          v224 = v218;
          v225 = *&v219;
          v208.i32[0] = v220;
          LOBYTE(v226) = v220;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v221, v210, &v213, &v212, &v209);
          v7 = v209;
          v4 = *v210;
          v6 = v212;
          v5 = v213;
          if (one-time initialization token for enabledCategories != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
          {
            __break(1u);
          }

          else
          {
            if (*(static CustomEventTrace.enabledCategories + 98) == 1)
            {
              v74 = v68;
              v75 = v71;
              v76 = static CustomEventTrace.recorder;
              if (static CustomEventTrace.recorder)
              {
                v77 = v66 == v67;
                v201.i64[0] = v73;
                *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
                LODWORD(v204) = v67;
                v67 = v72;
                v78 = *(v76 + 16);
                LODWORD(v221) = v74;
                BYTE4(v221) = v77;
                v222 = &type metadata for _AlphaThresholdEffect._Resolved;
                v223 = v4;
                v224 = v5;
                v225 = v6;
                v226 = v7;
                type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

                v79 = v78;
                AGGraphAddTraceEvent();
                v80 = v67;
                LODWORD(v67) = v204;
                outlined consume of Animation.Function(v70, v69, v75, v80, v201.i64[0], v208.u8[0]);

                goto LABEL_100;
              }

              v87 = v70;
              v88 = v69;
              v89 = v75;
            }

            else
            {
              v87 = v70;
              v88 = v69;
              v89 = v71;
            }

            outlined consume of Animation.Function(v87, v88, v89, v72, v73, v208.u8[0]);
LABEL_100:
            v118 = one-time initialization token for animationState;

            *&v5 = v189;
            if (v118 == -1)
            {
LABEL_101:
              v95 = *(&static Signpost.animationState + 1);
              v90 = static Signpost.animationState;
              LOBYTE(v52) = word_1ED5283E8;
              LODWORD(Counter) = HIBYTE(word_1ED5283E8);
              v119 = byte_1ED5283EA;
              v120 = static os_signpost_type_t.begin.getter();
              v221 = v90;
              v222 = v95;
              LOBYTE(v223) = v52;
              BYTE1(v223) = Counter;
              BYTE2(v223) = v119;
              if (Signpost.isEnabled.getter())
              {
                v208.i32[0] = v120;
                v121 = one-time initialization token for _signpostLog;

                if (v121 != -1)
                {
                  goto LABEL_219;
                }

                goto LABEL_103;
              }

              v130 = v188;

LABEL_136:
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
              a4 = v195;
              *(v195 + 40) = v130;
              LODWORD(v9) = v184;
              goto LABEL_137;
            }
          }

          swift_once();
          goto LABEL_101;
        }

        v215.i64[0] = __PAIR64__(LODWORD(v45), LODWORD(v44));
        v215.f32[2] = v46;
        v215.f32[3] = v35 - v32;
        v216 = v47;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v227, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        LOBYTE(v221) = 0;
        v188 = v43;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v42, &v215, v40, v26);
        v48 = AGGraphGetCurrentAttribute();
        LODWORD(Counter) = v48;
        v49 = *MEMORY[0x1E698D3F8];
        if (v48 == *MEMORY[0x1E698D3F8])
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        v208.i32[0] = v50;
        (*(*v42 + 96))(v217);
        v52 = *v217;
        v51 = *&v217[8];
        v53 = *&v217[16];
        v54 = v219;
        LODWORD(v55) = v220;
        v209 = NAN;
        v210[0] = 0x7FF8000000000000;
        v212 = 1.0;
        v213 = 0x7FF8000000000000;
        v221 = *v217;
        v222 = *&v217[8];
        v223 = *&v217[16];
        v224 = v218;
        v56 = v218;
        v225 = *&v219;
        LOBYTE(v226) = v220;
        static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v221, v210, &v213, &v212, &v209);
        v7 = v209;
        v4 = *v210;
        v6 = v212;
        v5 = v213;
        if (one-time initialization token for enabledCategories != -1)
        {
          goto LABEL_212;
        }

LABEL_36:
        if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
        {
          __break(1u);
LABEL_214:
          swift_once();
          goto LABEL_61;
        }

        if (*(static CustomEventTrace.enabledCategories + 98) == 1)
        {
          LODWORD(v202) = v55;
          v57 = static CustomEventTrace.recorder;
          if (static CustomEventTrace.recorder)
          {
            v201.i32[0] = v49;
            *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
            v58 = *(v57 + 16);
            LODWORD(v221) = v208.i32[0];
            BYTE4(v221) = Counter == v49;
            v222 = &type metadata for _AlphaThresholdEffect._Resolved;
            v223 = v4;
            v224 = v5;
            v225 = v6;
            v226 = v7;
            type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
            v208.i64[0] = v59;

            v60 = v58;
            v49 = v201.i32[0];
            AGGraphAddTraceEvent();
            outlined consume of Animation.Function(v52, *&v51, v53, v56, v54, v202);

            goto LABEL_60;
          }

          v81 = v52;
          v82 = *&v51;
          v83 = v53;
          v84 = v56;
          v85 = v54;
          v86 = v202;
        }

        else
        {
          v81 = v52;
          v82 = *&v51;
          v83 = v53;
          v84 = v56;
          v85 = v54;
          v86 = v55;
        }

        outlined consume of Animation.Function(v81, v82, v83, v84, v85, v86);
LABEL_60:
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v227, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        *&v5 = v189;
        if (one-time initialization token for animationState != -1)
        {
          goto LABEL_214;
        }

LABEL_61:
        v90 = *(&static Signpost.animationState + 1);
        v67 = static Signpost.animationState;
        v91 = word_1ED5283E8;
        LODWORD(Counter) = HIBYTE(word_1ED5283E8);
        v92 = byte_1ED5283EA;
        v93 = static os_signpost_type_t.event.getter();
        v221 = v67;
        v222 = v90;
        LOBYTE(v223) = v91;
        BYTE1(v223) = Counter;
        BYTE2(v223) = v92;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          goto LABEL_97;
        }

        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v227, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        v208.i32[0] = v93;
        v94 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        *&v95 = COERCE_DOUBLE(swift_allocObject());
        *(v95 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v49)
        {
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          swift_once();
LABEL_103:
          v122 = _signpostLog;
          OSSignpostID.init(log:object:)();
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          *&v123 = COERCE_DOUBLE(swift_allocObject());
          *(v123 + 16) = xmmword_18DDAF080;
          if (AGGraphGetCurrentAttribute() == v67)
          {
            __break(1u);
          }

          else
          {
            v124 = AGGraphGetAttributeGraph();
            v125 = AGGraphGetCounter();

            v126 = MEMORY[0x1E69E6870];
            *(v123 + 56) = MEMORY[0x1E69E6810];
            *(v123 + 64) = v126;
            *(v123 + 32) = v125;
            v127 = AGGraphGetCurrentAttribute();
            if (v127 != v67)
            {
              v128 = MEMORY[0x1E69E76D0];
              *(v123 + 96) = MEMORY[0x1E69E7668];
              *(v123 + 104) = v128;
              *(v123 + 72) = v127;
              *(v123 + 136) = MEMORY[0x1E69E6158];
              *(v123 + 144) = lazy protocol witness table accessor for type String and conformance String();
              *(v123 + 112) = 0x65766C6F7365525FLL;
              *(v123 + 120) = 0xE900000000000064;
              if (Counter)
              {
                LOBYTE(v209) = v208.i8[0];
                v210[0] = &dword_18D018000;
                v212 = *&v123;
                v213 = v122;
                v221 = v90;
                v222 = v95;
                LOBYTE(v223) = v52;
                *v217 = "Animation: (%p) [%d] %{public}@ started";
                *&v217[8] = 39;
                v217[16] = 2;
                v129 = v200;
                specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
                v130 = v188;

                (*(v203 + 8))(v129, v207);
              }

              else
              {
                v131 = v90;
                if (v90 == 20)
                {
                  v132 = 3;
                }

                else
                {
                  v132 = 4;
                }

                v19 = (bswap32(v90) | (4 * (v90 >> 16)));
                v29 = v208.u8[0];
                v133 = (v203 + 16);
                v187 = *(v203 + 16);
                v134 = (v187)(v202, v200, v207);
                v9 = 0;
                v217[0] = 1;
                v204 = v132;
                v192 = v133;
                v193 = v131;
                v198 = (16 * v132);
                v199 = v133 - 8;
                v208.i64[0] = v123;
                v194 = v123 + 32;
                do
                {
                  v201.i64[0] = v183;
                  MEMORY[0x1EEE9AC00](v134);
                  Counter = &v183[-((v135 + 15) & 0xFFFFFFFFFFFFFFF0)];
                  a4 = Counter + 8;
                  v136 = v204;
                  v137 = (Counter + 8);
                  do
                  {
                    *(v137 - 1) = 0;
                    *v137 = 0;
                    v137 += 16;
                    --v136;
                  }

                  while (v136);
                  v28 = (v194 + 40 * v9);
                  a1 = v204;
                  while (1)
                  {
                    v138 = *(v208.i64[0] + 16);
                    if (v9 == v138)
                    {
                      break;
                    }

                    if (v9 >= v138)
                    {
                      goto LABEL_204;
                    }

                    ++v9;
                    outlined init with copy of AnyTrackedValue(v28, &v221);
                    v139 = v224;
                    __swift_project_boxed_opaque_existential_1(&v221, v224);
                    *(a4 - 8) = CVarArg.kdebugValue(_:)(v19 | v29, v139);
                    *a4 = v140 & 1;
                    a4 += 16;
                    __swift_destroy_boxed_opaque_existential_1(&v221);
                    v28 += 40;
                    if (!--a1)
                    {
                      goto LABEL_120;
                    }
                  }

                  v217[0] = 0;
LABEL_120:
                  v141 = v193;
                  if (v193 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (*(Counter + 8) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(Counter + 24) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(Counter + 40) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v141 != 20 && *(Counter + 56) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v142 = *v199;
                  v143 = v202;
                  v144 = v207;
                  (*v199)(v202, v207);
                  v145 = __swift_project_value_buffer(v144, static OSSignpostID.continuation);
                  v134 = (v187)(v143, v145, v144);
                }

                while ((v217[0] & 1) != 0);
                v130 = v188;

                v146 = v207;
                v142(v202, v207);
                v142(v200, v146);
              }

              goto LABEL_136;
            }
          }

          __break(1u);
        }

        LODWORD(v52) = v49;
        v96 = AGGraphGetAttributeGraph();
        v97 = AGGraphGetCounter();

        v98 = MEMORY[0x1E69E6870];
        *(v95 + 56) = MEMORY[0x1E69E6810];
        *(v95 + 64) = v98;
        *(v95 + 32) = v97;
        v99 = AGGraphGetCurrentAttribute();
        if (v99 == v52)
        {
          goto LABEL_218;
        }

        v100 = v95;
        v101 = MEMORY[0x1E69E76D0];
        *(v95 + 96) = MEMORY[0x1E69E7668];
        *(v95 + 104) = v101;
        *(v95 + 72) = v99;
        *(v95 + 136) = MEMORY[0x1E69E6158];
        *(v95 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v95 + 112) = 0x65766C6F7365525FLL;
        *(v95 + 120) = 0xE900000000000064;
        if (Counter)
        {
          LOBYTE(v209) = v208.i8[0];
          v210[0] = &dword_18D018000;
          v212 = *&v95;
          v213 = v94;
          v221 = v67;
          v222 = v90;
          LOBYTE(v223) = v91;
          *v217 = "Animation: (%p) [%d] %{public}@ updated";
          *&v217[8] = 39;
          v217[16] = 2;
          v102 = v187;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          (*(v203 + 8))(v102, v207);
        }

        else
        {
          v103 = v67;
          if (v67 == 20)
          {
            a4 = 3;
          }

          else
          {
            a4 = 4;
          }

          Counter = bswap32(v67) | (4 * WORD1(v67));
          v208.i32[0] = v208.u8[0];
          v104 = v203 + 16;
          v192 = *(v203 + 16);
          v105 = v192(v204, v187, v207);
          v9 = 0;
          v217[0] = 1;
          v193 = v104;
          v194 = a4;
          v200 = (16 * a4);
          v201.i64[0] = v104 - 8;
          v198 = v103;
          v199 = (v100 + 32);
          v29 = v100;
          do
          {
            v202 = v183;
            MEMORY[0x1EEE9AC00](v105);
            v19 = &v183[-((v106 + 15) & 0xFFFFFFFFFFFFFFF0)];
            a1 = v19 + 8;
            v107 = a4;
            v108 = v19 + 8;
            do
            {
              *(v108 - 1) = 0;
              *v108 = 0;
              v108 += 16;
              --v107;
            }

            while (v107);
            v28 = &v199[40 * v9];
            while (1)
            {
              v109 = *(v100 + 16);
              if (v9 == v109)
              {
                break;
              }

              if (v9 >= v109)
              {
                goto LABEL_203;
              }

              ++v9;
              outlined init with copy of AnyTrackedValue(v28, &v221);
              v110 = v224;
              __swift_project_boxed_opaque_existential_1(&v221, v224);
              v100 = v29;
              *(a1 - 1) = CVarArg.kdebugValue(_:)(Counter | v208.i32[0], v110);
              *a1 = v111 & 1;
              a1 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v221);
              v28 += 40;
              if (!--a4)
              {
                goto LABEL_81;
              }
            }

            v217[0] = 0;
LABEL_81:
            v112 = v198;
            if (v198 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            a4 = v194;
            if (v19[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v19[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v19[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v112 != 20 && v19[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v113 = *v201.i64[0];
            v114 = v204;
            v115 = v207;
            (*v201.i64[0])(v204, v207);
            v116 = __swift_project_value_buffer(v115, static OSSignpostID.continuation);
            v105 = v192(v114, v116, v115);
            v100 = v29;
          }

          while ((v217[0] & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          v117 = v207;
          v113(v204, v207);
          v113(v187, v117);
        }

LABEL_97:
        a4 = v195;
        LODWORD(v9) = v184;
LABEL_137:
        specialized AnimatorState.addListeners(transaction:)(v186);

        a1 = v196;
        v29 = &static Color.Resolved.legacyInterpolation;
        v28 = &unk_1ED52E000;
LABEL_138:
        LODWORD(v30) = v190;
        v31.i64[0] = v191.i64[0];
LABEL_139:
        v147.i64[0] = v205.u32[0];
        v147.i64[1] = v30;
        *(a4 + 12) = vorrq_s8(vshll_n_s32(*v31.f32, 0x20uLL), v147);
        *(a4 + 28) = v5;
        *(a4 + 32) = 0;
        goto LABEL_140;
      }

      ++v9;
      outlined init with copy of AnyTrackedValue(v28, &v227);
      v173 = *(&v228 + 1);
      __swift_project_boxed_opaque_existential_1(&v227, *(&v228 + 1));
      *(Counter - 8) = CVarArg.kdebugValue(_:)(v29 | a1, v173);
      *Counter = v174 & 1;
      Counter += 16;
      __swift_destroy_boxed_opaque_existential_1(&v227);
      v28 += 40;
      if (!--a4)
      {
        goto LABEL_183;
      }
    }

    LOBYTE(v210[0]) = 0;
LABEL_183:
    v175 = v199;
    if (v199 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v19[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v19[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v19[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v175 != 20 && v19[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v176 = *v202;
    v178 = v206;
    v177 = v207;
    (*v202)(v206, v207);
    v179 = __swift_project_value_buffer(v177, static OSSignpostID.continuation);
    v168 = v198(v178, v179, v177);
  }

  while ((v210[0] & 1) != 0);

  v180 = v207;
  v176(v206, v207);
  v176(v197, v180);
LABEL_198:

LABEL_199:
  specialized AnimatorState.removeListeners()();

  a1 = v196;
  *(v195 + 40) = 0;
LABEL_200:
  v227 = *v217;
  LODWORD(v228) = *&v217[16];
  _AlphaThresholdEffect._Resolved.animatableData.setter(&v227);

  a1[20] = 1;
}

{
  LODWORD(v9) = a3;
  v234 = *MEMORY[0x1E69E9840];
  v203 = type metadata accessor for OSSignpostID();
  v199 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v197 = &v177[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v196 = &v177[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v177[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v177[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v202 = &v177[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v177[-v23];
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v25)
    {
      v26 = *Value;
    }

    else
    {
      v26 = -INFINITY;
    }
  }

  else
  {
    v26 = -INFINITY;
  }

  v27 = &v222;
  v29 = &unk_1ED52E000;
  v30 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[24] = 1;
    goto LABEL_9;
  }

  if (a1[24] == 1)
  {
LABEL_9:
    v7 = *a1;
    LODWORD(v6) = *(a1 + 1);
    LODWORD(v5) = *(a1 + 2);
    LODWORD(v4) = *(a1 + 3);
    LODWORD(v28) = *(a1 + 4);
    v201 = v28;
    LODWORD(v28) = *(a1 + 5);
    v200 = v28;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_198;
    }

    goto LABEL_10;
  }

LABEL_133:
  v145 = *(a4 + 40);
  if (!v145)
  {
    return;
  }

  v204 = *a1;
  v59 = *(a1 + 2);
  v146 = *(v29 + 3896);

  if (v146 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*v30)
  {
    v147 = v204;
  }

  else
  {
    LOBYTE(v222) = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(&v227, v204.f32[0], v204.u32[1], v204.f32[2], v204.f32[3]);
    v147 = *(v27 + 56);
  }

  v148.i64[0] = 0x4300000043000000;
  v148.i64[1] = 0x4300000043000000;
  *&v222 = v59;
  *(v27 + 8) = vmulq_f32(v147, v148);
  LOBYTE(v227) = 0;
  v149 = specialized AnimatorState.update(_:at:environment:)(&v222, v9, v26);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v51 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v151 = 0;
  }

  else
  {
    v151 = CurrentAttribute;
  }

  if (v149)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      v175 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v175;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
        LODWORD(v227) = v151;
        BYTE4(v227) = CurrentAttribute == v51;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      v191 = a4;
      v192 = a1;
      v152 = one-time initialization token for animationState;
      v190 = v145;

      if (v152 == -1)
      {
        goto LABEL_150;
      }

      goto LABEL_202;
    }

    __break(1u);
    goto LABEL_200;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
LABEL_200:
    v176 = CurrentAttribute;
    swift_once();
    CurrentAttribute = v176;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
      LODWORD(v227) = v151;
      BYTE4(v227) = CurrentAttribute == v51;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    specialized AnimatorState.nextUpdate()();
    goto LABEL_193;
  }

  __break(1u);
LABEL_202:
  swift_once();
LABEL_150:
  v49 = *(&static Signpost.animationState + 1);
  v55 = static Signpost.animationState;
  v58 = word_1ED5283E8;
  v54 = HIBYTE(word_1ED5283E8);
  v153 = byte_1ED5283EA;
  v154 = static os_signpost_type_t.end.getter();
  v227 = v55;
  v228 = v49;
  LOBYTE(v229) = v58;
  BYTE1(v229) = v54;
  BYTE2(v229) = v153;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {

    goto LABEL_192;
  }

  v204.i32[0] = v154;
  v155 = one-time initialization token for _signpostLog;
  v57 = v190;

  if (v155 != -1)
  {
    swift_once();
  }

  v53 = _signpostLog;
  OSSignpostID.init(log:object:)();
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_18DDAF080;
  if (AGGraphGetCurrentAttribute() == v51)
  {
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    swift_once();
    goto LABEL_29;
  }

  v57 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v156 = MEMORY[0x1E69E6870];
  *(v56 + 56) = MEMORY[0x1E69E6810];
  *(v56 + 64) = v156;
  *(v56 + 32) = Counter;
  v157 = AGGraphGetCurrentAttribute();
  if (v157 == v51)
  {
    goto LABEL_204;
  }

  v158 = v56;
  v159 = MEMORY[0x1E69E76D0];
  *(v56 + 96) = MEMORY[0x1E69E7668];
  *(v56 + 104) = v159;
  *(v56 + 72) = v157;
  *(v56 + 136) = MEMORY[0x1E69E6158];
  *(v56 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v56 + 112) = 0x65766C6F7365525FLL;
  *(v56 + 120) = 0xE900000000000064;
  if (v54)
  {
    v210 = v204.i8[0];
    v208 = *&v53;
    *&v209 = COERCE_DOUBLE(&dword_18D018000);
    v227 = v55;
    v228 = v49;
    LOBYTE(v229) = v58;
    v206[0] = "Animation: (%p) [%d] %{public}@ ended";
    v206[1] = 37;
    v207 = 2;
    v205 = *&v56;
    v160 = v193;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v199 + 8))(v160, v203);
    goto LABEL_191;
  }

  v161 = v55;
  if (v55 == 20)
  {
    v30 = 3;
  }

  else
  {
    v30 = 4;
  }

  v29 = bswap32(v55) | (4 * WORD1(v55));
  a1 = v204.u8[0];
  v162 = v199 + 16;
  v194 = *(v199 + 16);
  v163 = (v194)(v202, v193, v203);
  v9 = 0;
  LOBYTE(v206[0]) = 1;
  *&v201 = v30;
  v199 = v162;
  v197 = (16 * v30);
  v198 = (v162 - 8);
  v204.i64[0] = v158;
  v195 = v161;
  v196 = (v158 + 32);
  do
  {
    *&v200 = v177;
    MEMORY[0x1EEE9AC00](v163);
    v19 = &v177[-((v164 + 15) & 0xFFFFFFFFFFFFFFF0)];
    Counter = (v19 + 8);
    v165 = v201;
    v166 = v19 + 8;
    do
    {
      *(v166 - 1) = 0;
      *v166 = 0;
      v166 += 16;
      --v165;
    }

    while (v165);
    v27 = &v196[40 * v9];
    a4 = v201;
    while (1)
    {
      v167 = *(v204.i64[0] + 16);
      if (v9 == v167)
      {
        break;
      }

      if (v9 >= v167)
      {
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        swift_once();
LABEL_10:
        swift_beginAccess();
        if ((*v30 & 1) == 0)
        {
          LOBYTE(v222) = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v227, v7, LODWORD(v6), *&v5, *&v4);
          LODWORD(v6) = HIDWORD(v227);
          v7 = *&v227;
          LODWORD(v4) = HIDWORD(v228);
          LODWORD(v5) = v228;
        }

        *&v31 = v7 * 128.0;
        *&v32 = *&v6 * 128.0;
        v33 = *&v5 * 128.0;
        *&v5 = *&v4 * 128.0;
        if (*(a4 + 36))
        {
          goto LABEL_132;
        }

        *&v4 = v26;
        LODWORD(v6) = *(a4 + 12);
        v7 = *(a4 + 16);
        v34 = *(a4 + 20);
        v35 = *(a4 + 24);
        v37 = *(a4 + 28);
        v36 = *(a4 + 32);
        if (*&v201 == *&v6 && *&v200 == v7 && *&v31 == v34 && *&v32 == v35 && v33 == v37 && *&v5 == v36)
        {
          v26 = *&v4;
          goto LABEL_132;
        }

        v181 = v19;
        v184 = v31;
        v185 = v32;
        v186 = v33;
        v192 = a1;
        AGGraphClearUpdate();
        v38 = *(a4 + 16);
        *(v27 + 56) = *a4;
        *(v27 + 72) = v38;
        *(v27 + 88) = *(a4 + 32);
        v191 = a4;
        v233 = *(a4 + 48);
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v227, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        v39 = *AGGraphGetValue();

        v40 = v39;
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        AGGraphSetUpdate();
        v41 = Transaction.effectiveAnimation.getter(v39);
        if (v41)
        {
          v42 = v41;
          v183 = *&v5;
          goto LABEL_24;
        }

        a1 = v192;
        if (!Counter)
        {

          a4 = v191;
          v27 = &v222;
          v26 = *&v4;
          v30 = &static Color.Resolved.legacyInterpolation;
          goto LABEL_131;
        }

        v183 = *&v5;

        v42 = Counter;
LABEL_24:
        v43 = v232;
        v44 = *&v201 - *&v6;
        v45 = *&v200 - v7;
        v46 = *&v184 - v34;
        v7 = *&v185 - v35;
        v47 = v186 - v37;
        v48 = v183 - v36;
        v26 = *AGGraphGetValue();
        v178 = v9;
        v179 = v42;
        v180 = v39;
        if (!v43)
        {
          *&v217 = &type metadata for _ColorMonochromeEffect._Resolved;
          type metadata accessor for _ColorMonochromeEffect._Resolved.Type();
          type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Type, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
          v65 = swift_dynamicCast();
          if (v65)
          {
            v66 = v222;
          }

          else
          {
            v66 = 0;
          }

          if (v65)
          {
            v67 = *(&v222 + 1);
          }

          else
          {
            v67 = 0;
          }

          v211 = v44;
          v212 = v45;
          v213 = v46;
          v214 = v7;
          v215 = v47;
          v216 = v48;

          v182 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVySfAVyS2fGGGGG_Tt4B5Tm(v68, &v211, v40, v66, v67, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>, v26);
          v69 = AGGraphGetCurrentAttribute();
          v70 = v69;
          LODWORD(v71) = *MEMORY[0x1E698D3F8];
          if (v69 == *MEMORY[0x1E698D3F8])
          {
            v72 = 0;
          }

          else
          {
            v72 = v69;
          }

          LODWORD(v198) = v72;
          (*(*v42 + 96))(&v217);
          v73 = v217;
          v74 = v218;
          v75 = v219;
          v76 = v220;
          v205 = NAN;
          v206[0] = 0x7FF8000000000000;
          v208 = 1.0;
          *&v209 = NAN;
          v222 = v217;
          v223 = v218;
          v224 = v219;
          v225 = v220;
          v204.i32[0] = v221;
          LOBYTE(v226) = v221;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v222, v206, &v209, &v208, &v205);
          v6 = v205;
          v77 = v206[0];
          v5 = v208;
          v4 = v209;
          if (one-time initialization token for enabledCategories != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
          {
            __break(1u);
          }

          else
          {
            if (*(static CustomEventTrace.enabledCategories + 98) == 1)
            {
              v195 = v75;
              v78 = static CustomEventTrace.recorder;
              if (static CustomEventTrace.recorder)
              {
                v194 = v76;
                *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
                v79 = *(v78 + 16);
                LODWORD(v222) = v198;
                BYTE4(v222) = v70 == v71;
                *(&v222 + 1) = &type metadata for _ColorMonochromeEffect._Resolved;
                v223 = v77;
                v224 = v4;
                v225 = *&v5;
                v226 = v6;
                type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

                v80 = v79;
                AGGraphAddTraceEvent();
                outlined consume of Animation.Function(v73, *(&v73 + 1), v74, v195, v194, v204.u8[0]);

                goto LABEL_93;
              }

              v87 = *(&v73 + 1);
              v86 = v73;
              v88 = v74;
              v89 = v195;
            }

            else
            {
              v87 = *(&v73 + 1);
              v86 = v73;
              v88 = v74;
              v89 = v75;
            }

            outlined consume of Animation.Function(v86, v87, v88, v89, v76, v204.u8[0]);
LABEL_93:
            v117 = one-time initialization token for animationState;

            *&v5 = v183;
            if (v117 == -1)
            {
LABEL_94:
              v95 = *(&static Signpost.animationState + 1);
              v90 = static Signpost.animationState;
              LOBYTE(v54) = word_1ED5283E8;
              LODWORD(Counter) = HIBYTE(word_1ED5283E8);
              v118 = byte_1ED5283EA;
              v119 = static os_signpost_type_t.begin.getter();
              v222 = __PAIR128__(v95, v90);
              LOBYTE(v223) = v54;
              BYTE1(v223) = Counter;
              BYTE2(v223) = v118;
              if (Signpost.isEnabled.getter())
              {
                v204.i32[0] = v119;
                v120 = one-time initialization token for _signpostLog;

                if (v120 != -1)
                {
                  goto LABEL_212;
                }

                goto LABEL_96;
              }

              v129 = v182;

LABEL_129:
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
              a4 = v191;
              *(v191 + 40) = v129;
              LODWORD(v9) = v178;
              goto LABEL_130;
            }
          }

          swift_once();
          goto LABEL_94;
        }

        v211 = v44;
        v212 = v45;
        v213 = v46;
        v214 = v7;
        v215 = v47;
        v216 = v48;
        v49 = &type metadata for _ColorMonochromeEffect._Resolved;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v227, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        LOBYTE(v222) = 0;
        v182 = v43;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v42, &v211, v39, v26);
        v50 = AGGraphGetCurrentAttribute();
        LODWORD(Counter) = v50;
        v51 = *MEMORY[0x1E698D3F8];
        if (v50 == *MEMORY[0x1E698D3F8])
        {
          v52 = 0;
        }

        else
        {
          v52 = v50;
        }

        v204.i32[0] = v52;
        (*(*v42 + 96))(&v217);
        v53 = *(&v217 + 1);
        v54 = v217;
        v56 = v218;
        v55 = v219;
        v57 = v220;
        v58 = v221;
        v205 = NAN;
        v206[0] = 0x7FF8000000000000;
        v208 = 1.0;
        *&v209 = NAN;
        v222 = v217;
        v223 = v218;
        v224 = v219;
        v225 = v220;
        LOBYTE(v226) = v221;
        static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v222, v206, &v209, &v208, &v205);
        v6 = v205;
        v59 = v206[0];
        v5 = v208;
        v4 = v209;
        if (one-time initialization token for enabledCategories != -1)
        {
          goto LABEL_205;
        }

LABEL_29:
        if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
        {
          __break(1u);
LABEL_207:
          swift_once();
          goto LABEL_54;
        }

        if (*(static CustomEventTrace.enabledCategories + 98) == 1)
        {
          v197 = v57;
          v60 = static CustomEventTrace.recorder;
          if (static CustomEventTrace.recorder)
          {
            LODWORD(v196) = v58;
            *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
            v61 = v49;
            v62 = *(v60 + 16);
            LODWORD(v222) = v204.i32[0];
            BYTE4(v222) = Counter == v51;
            *(&v222 + 1) = v61;
            v223 = v59;
            v224 = v4;
            v225 = *&v5;
            v226 = v6;
            type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
            v204.i64[0] = v63;

            v64 = v62;
            AGGraphAddTraceEvent();
            outlined consume of Animation.Function(v54, v53, v56, v55, v197, v196);

            goto LABEL_53;
          }

          v81 = v54;
          v82 = v53;
          v83 = v56;
          v84 = v55;
          v85 = v197;
        }

        else
        {
          v81 = v54;
          v82 = v53;
          v83 = v56;
          v84 = v55;
          v85 = v57;
        }

        outlined consume of Animation.Function(v81, v82, v83, v84, v85, v58);
LABEL_53:
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v227, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        *&v5 = v183;
        if (one-time initialization token for animationState != -1)
        {
          goto LABEL_207;
        }

LABEL_54:
        v90 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        v91 = word_1ED5283E8;
        LODWORD(Counter) = HIBYTE(word_1ED5283E8);
        v92 = byte_1ED5283EA;
        v93 = static os_signpost_type_t.event.getter();
        v222 = __PAIR128__(v90, v71);
        LOBYTE(v223) = v91;
        BYTE1(v223) = Counter;
        BYTE2(v223) = v92;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          goto LABEL_90;
        }

        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v227, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        v204.i32[0] = v93;
        v94 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v51)
        {
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          swift_once();
LABEL_96:
          v121 = _signpostLog;
          OSSignpostID.init(log:object:)();
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v122 = swift_allocObject();
          *(v122 + 16) = xmmword_18DDAF080;
          if (AGGraphGetCurrentAttribute() == v71)
          {
            __break(1u);
          }

          else
          {
            v123 = AGGraphGetAttributeGraph();
            v124 = AGGraphGetCounter();

            v125 = MEMORY[0x1E69E6870];
            *(v122 + 56) = MEMORY[0x1E69E6810];
            *(v122 + 64) = v125;
            *(v122 + 32) = v124;
            v126 = AGGraphGetCurrentAttribute();
            if (v126 != v71)
            {
              v127 = MEMORY[0x1E69E76D0];
              *(v122 + 96) = MEMORY[0x1E69E7668];
              *(v122 + 104) = v127;
              *(v122 + 72) = v126;
              *(v122 + 136) = MEMORY[0x1E69E6158];
              *(v122 + 144) = lazy protocol witness table accessor for type String and conformance String();
              *(v122 + 112) = 0x65766C6F7365525FLL;
              *(v122 + 120) = 0xE900000000000064;
              if (Counter)
              {
                LOBYTE(v205) = v204.i8[0];
                v206[0] = &dword_18D018000;
                v208 = *&v122;
                v209 = v121;
                *&v222 = v90;
                *(&v222 + 1) = v95;
                LOBYTE(v223) = v54;
                *&v217 = "Animation: (%p) [%d] %{public}@ started";
                *(&v217 + 1) = 39;
                LOBYTE(v218) = 2;
                v128 = v196;
                specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
                v129 = v182;

                (*(v199 + 8))(v128, v203);
              }

              else
              {
                v130 = v90;
                if (v90 == 20)
                {
                  v131 = 3;
                }

                else
                {
                  v131 = 4;
                }

                v19 = (bswap32(v90) | (4 * WORD1(v90)));
                v29 = v204.u8[0];
                v30 = v199 + 16;
                v181 = *(v199 + 16);
                v132 = (v181)(v197, v196, v203);
                v9 = 0;
                LOBYTE(v217) = 1;
                v198 = v131;
                v187 = v30;
                v188 = v130;
                v194 = (v30 - 8);
                v204.i64[0] = v122;
                v189 = v122 + 32;
                v190 = 16 * v131;
                do
                {
                  v195 = v177;
                  MEMORY[0x1EEE9AC00](v132);
                  Counter = &v177[-((v133 + 15) & 0xFFFFFFFFFFFFFFF0)];
                  a4 = Counter + 8;
                  v134 = v198;
                  v135 = (Counter + 8);
                  do
                  {
                    *(v135 - 1) = 0;
                    *v135 = 0;
                    v135 += 16;
                    --v134;
                  }

                  while (v134);
                  v27 = (v189 + 40 * v9);
                  a1 = v198;
                  while (1)
                  {
                    v136 = *(v204.i64[0] + 16);
                    if (v9 == v136)
                    {
                      break;
                    }

                    if (v9 >= v136)
                    {
                      goto LABEL_197;
                    }

                    ++v9;
                    outlined init with copy of AnyTrackedValue(v27, &v222);
                    v137 = v224;
                    v30 = v225;
                    __swift_project_boxed_opaque_existential_1(&v222, v224);
                    *(a4 - 8) = CVarArg.kdebugValue(_:)(v19 | v29, v137);
                    *a4 = v138 & 1;
                    a4 += 16;
                    __swift_destroy_boxed_opaque_existential_1(&v222);
                    v27 = (v27 + 40);
                    if (!--a1)
                    {
                      goto LABEL_113;
                    }
                  }

                  LOBYTE(v217) = 0;
LABEL_113:
                  v139 = v188;
                  if (v188 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (*(Counter + 8) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(Counter + 24) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(Counter + 40) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v139 != 20 && *(Counter + 56) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v140 = *v194;
                  v141 = v197;
                  v30 = v203;
                  (*v194)(v197, v203);
                  v142 = __swift_project_value_buffer(v30, static OSSignpostID.continuation);
                  v132 = (v181)(v141, v142, v30);
                }

                while ((v217 & 1) != 0);
                v129 = v182;

                v143 = v203;
                v140(v197, v203);
                v140(v196, v143);
              }

              goto LABEL_129;
            }
          }

          __break(1u);
        }

        LODWORD(v54) = v51;
        v96 = AGGraphGetAttributeGraph();
        v97 = AGGraphGetCounter();

        v98 = MEMORY[0x1E69E6870];
        *(v95 + 56) = MEMORY[0x1E69E6810];
        *(v95 + 64) = v98;
        *(v95 + 32) = v97;
        v99 = AGGraphGetCurrentAttribute();
        if (v99 == v54)
        {
          goto LABEL_211;
        }

        v30 = v95;
        v100 = MEMORY[0x1E69E76D0];
        *(v95 + 96) = MEMORY[0x1E69E7668];
        *(v95 + 104) = v100;
        *(v95 + 72) = v99;
        *(v95 + 136) = MEMORY[0x1E69E6158];
        *(v95 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v95 + 112) = 0x65766C6F7365525FLL;
        *(v95 + 120) = 0xE900000000000064;
        if (Counter)
        {
          LOBYTE(v205) = v204.i8[0];
          v206[0] = &dword_18D018000;
          v208 = *&v95;
          v209 = v94;
          *&v222 = v71;
          *(&v222 + 1) = v90;
          LOBYTE(v223) = v91;
          *&v217 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v217 + 1) = 39;
          LOBYTE(v218) = 2;
          v101 = v181;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          (*(v199 + 8))(v101, v203);
        }

        else
        {
          v102 = v71;
          if (v71 == 20)
          {
            a4 = 3;
          }

          else
          {
            a4 = 4;
          }

          Counter = bswap32(v71) | (4 * WORD1(v71));
          v204.i32[0] = v204.u8[0];
          v103 = v199 + 16;
          v187 = *(v199 + 16);
          v104 = v187(v198, v181, v203);
          v9 = 0;
          LOBYTE(v217) = 1;
          v188 = v103;
          v189 = a4;
          v195 = (16 * a4);
          v196 = (v103 - 8);
          v194 = (v30 + 32);
          v29 = v30;
          v190 = v102;
          do
          {
            v197 = v177;
            MEMORY[0x1EEE9AC00](v104);
            v19 = &v177[-((v105 + 15) & 0xFFFFFFFFFFFFFFF0)];
            a1 = v19 + 8;
            v106 = a4;
            v107 = v19 + 8;
            do
            {
              *(v107 - 1) = 0;
              *v107 = 0;
              v107 += 16;
              --v106;
            }

            while (v106);
            v27 = &v194[40 * v9];
            while (1)
            {
              v108 = *(v30 + 16);
              if (v9 == v108)
              {
                break;
              }

              if (v9 >= v108)
              {
                goto LABEL_196;
              }

              ++v9;
              outlined init with copy of AnyTrackedValue(v27, &v222);
              v109 = v224;
              __swift_project_boxed_opaque_existential_1(&v222, v224);
              v30 = v29;
              *(a1 - 1) = CVarArg.kdebugValue(_:)(Counter | v204.i32[0], v109);
              *a1 = v110 & 1;
              a1 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v222);
              v27 = (v27 + 40);
              if (!--a4)
              {
                goto LABEL_74;
              }
            }

            LOBYTE(v217) = 0;
LABEL_74:
            v111 = v190;
            if (v190 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            a4 = v189;
            if (v19[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v19[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v19[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v111 != 20 && v19[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v112 = *v196;
            v113 = v198;
            v114 = v203;
            (*v196)(v198, v203);
            v115 = __swift_project_value_buffer(v114, static OSSignpostID.continuation);
            v104 = v187(v113, v115, v114);
            v30 = v29;
          }

          while ((v217 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          v116 = v203;
          v112(v198, v203);
          v112(v181, v116);
        }

LABEL_90:
        a4 = v191;
        LODWORD(v9) = v178;
LABEL_130:
        specialized AnimatorState.addListeners(transaction:)(v180);

        a1 = v192;
        v27 = &v222;
        v30 = &static Color.Resolved.legacyInterpolation;
        v29 = &unk_1ED52E000;
LABEL_131:
        v33 = v186;
        LODWORD(v31) = v184;
        LODWORD(v32) = v185;
LABEL_132:
        v144.i64[0] = v201;
        v144.i64[1] = v31;
        *(a4 + 12) = vorrq_s8(vshll_n_s32(__PAIR64__(v32, v200), 0x20uLL), v144);
        *(a4 + 28) = LODWORD(v33) | (LODWORD(v5) << 32);
        *(a4 + 36) = 0;
        goto LABEL_133;
      }

      ++v9;
      outlined init with copy of AnyTrackedValue(v27, &v227);
      v168 = v230;
      v30 = v231;
      __swift_project_boxed_opaque_existential_1(&v227, v230);
      *(Counter - 8) = CVarArg.kdebugValue(_:)(v29 | a1, v168);
      *Counter = v169 & 1;
      Counter += 16;
      __swift_destroy_boxed_opaque_existential_1(&v227);
      v27 = (v27 + 40);
      if (!--a4)
      {
        goto LABEL_176;
      }
    }

    LOBYTE(v206[0]) = 0;
LABEL_176:
    v170 = v195;
    if (v195 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v19[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v19[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v19[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v170 != 20 && v19[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v171 = *v198;
    v172 = v202;
    v30 = v203;
    (*v198)(v202, v203);
    v173 = __swift_project_value_buffer(v30, static OSSignpostID.continuation);
    v163 = (v194)(v172, v173, v30);
  }

  while ((v206[0] & 1) != 0);

  v174 = v203;
  v171(v202, v203);
  v171(v193, v174);
LABEL_191:

LABEL_192:
  specialized AnimatorState.removeListeners()();

  a1 = v192;
  *(v191 + 40) = 0;
  v27 = &v222;
LABEL_193:
  *(v27 + 56) = v222;
  v229 = v223;
  _ColorMonochromeEffect._Resolved.animatableData.setter(&v227);

  a1[24] = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t Counter)
{
  v348 = *MEMORY[0x1E69E9840];
  v276 = type metadata accessor for OSSignpostID();
  v273 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v272 = &v253 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v253 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v274 = (&v253 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v253 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v275 = &v253 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v253 - v20;
  if (*(Counter + 120))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  v25 = &v284;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 224) = 1;
  }

  else if (*(a1 + 224) != 1)
  {
    goto LABEL_122;
  }

  CornerMaskingConfiguration.animatableData.getter(&v314);
  v310 = v316;
  v311 = v317;
  v312 = v318;
  v313 = v319;
  v308 = v314;
  v309 = v315;
  if (*(Counter + 112))
  {
    goto LABEL_121;
  }

  v26 = *(Counter + 64);
  v344 = *(Counter + 48);
  v345 = v26;
  v27 = *(Counter + 96);
  v346 = *(Counter + 80);
  v347 = v27;
  v28 = *(Counter + 32);
  v342 = *(Counter + 16);
  v343 = v28;
  v321[0] = v342;
  v321[1] = v28;
  v321[2] = v344;
  v321[3] = v26;
  v321[4] = v346;
  v321[5] = v27;
  if (_s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A11HQP_Tt1g5(&v314, v321))
  {
    goto LABEL_121;
  }

  v253 = v11;
  v265 = a1;
  v266 = v21;
  AGGraphClearUpdate();
  v29 = *(Counter + 64);
  v338 = *(Counter + 80);
  v30 = *(Counter + 112);
  v339 = *(Counter + 96);
  v340 = v30;
  v341 = *(Counter + 128);
  v31 = *(Counter + 48);
  v335 = *(Counter + 32);
  v336 = v31;
  v337 = v29;
  v33 = *Counter;
  v32 = *(Counter + 16);
  v264 = Counter;
  v333 = v33;
  v334 = v32;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v333, &v327, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v333, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v259 = v34;
  v260 = Transaction.effectiveAnimation.getter(v34);
  if (v260)
  {
    v254 = v16;
    v258 = a3;
  }

  else
  {
    if (!a2)
    {

      Counter = v264;
      a1 = v265;
      v25 = &v284;
      v21 = v266;
      goto LABEL_121;
    }

    v254 = v16;
    v258 = a3;

    v260 = a2;
  }

  LODWORD(v267) = DWORD1(v333);
  v261 = *(&v340 + 1);
  v293 = v317;
  v294 = v318;
  v295 = v319;
  v291 = v315;
  v292 = v316;
  v286 = v344;
  v287 = v345;
  v288 = v346;
  v289 = v347;
  v290 = v314;
  v284 = v342;
  v285 = v343;
  v35 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v263 = &v253;
  v36 = MEMORY[0x1E69E7DE0];
  v37 = *(MEMORY[0x1E69E7DE0] - 8);
  v38 = v37[8];
  v39 = MEMORY[0x1EEE9AC00](v35);
  v277 = v38;
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = v37[2];
  v42 = v41(&v253 - v40, &v290, v36, v39);
  v257 = &v253;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v41(&v253 - v40, &v284, v36, v43);
  v270 = *(v35 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v44 = v37[1];
  v44(&v253 - v40, v36);
  v45 = (v44)(&v253 - v40, v36);
  v263 = &v253;
  v326[0] = &v296;
  v46 = MEMORY[0x1EEE9AC00](v45);
  v271 = v40;
  v47 = v41(&v253 - v40, (&v290 + 8), v36, v46);
  v257 = &v253;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v41(&v253 - v40, (&v284 + 8), v36, v48);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v44(&v253 - v40, v36);
  v49 = (v44)(&v253 - v40, v36);
  v263 = &v253;
  v326[1] = &v297;
  v255 = &v298;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v51 = v271;
  v52 = &v253 - v271;
  v53 = v41(&v253 - v271, &v291, v36, v50);
  v257 = &v253;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v41(&v253 - v51, &v285, v36, v54);
  v55 = v255;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v44(&v253 - v51, v36);
  v56 = (v44)(v52, v36);
  v263 = &v253;
  v326[2] = v55;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v58 = v271;
  v59 = &v253 - v271;
  v262 = (v37 + 2);
  v60 = v41(&v253 - v271, (&v291 + 8), v36, v57);
  v257 = &v253;
  v61 = MEMORY[0x1EEE9AC00](v60);
  v62 = &v253 - v58;
  v41(&v253 - v58, (&v285 + 8), v36, v61);
  v63 = v41;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v269 = v44;
  v44(v62, v36);
  v64 = (v44)(v59, v36);
  v263 = &v253;
  v326[3] = &v299;
  v65 = MEMORY[0x1EEE9AC00](v64);
  v66 = v271;
  v67 = &v253 - v271;
  v68 = v63(&v253 - v271, &v292, v36, v65);
  v257 = &v253;
  v69 = MEMORY[0x1EEE9AC00](v68);
  v70 = &v253 - v66;
  v71 = &v253 - v66;
  v72 = v63;
  v63(v71, &v286, v36, v69);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v73 = v269;
  (v269)(v70, v36);
  v74 = v73(v67, v36);
  v75 = v37 + 1;
  v263 = &v253;
  v326[4] = &v300;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v77 = v271;
  v78 = v72(&v253 - v271, &v292 + 8, v36, v76);
  v257 = &v253;
  v79 = MEMORY[0x1EEE9AC00](v78);
  v72(&v253 - v77, &v286 + 8, v36, v79);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v268 = v75;
  v73(&v253 - v77, v36);
  v80 = v73(&v253 - v77, v36);
  v263 = &v253;
  v326[5] = &v301;
  v81 = MEMORY[0x1EEE9AC00](v80);
  v82 = v72(&v253 - v77, &v293, v36, v81);
  v257 = &v253;
  v83 = MEMORY[0x1EEE9AC00](v82);
  v72(&v253 - v77, &v287, v36, v83);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v73(&v253 - v77, v36);
  v84 = v73(&v253 - v77, v36);
  v263 = &v253;
  v326[6] = &v302;
  v85 = MEMORY[0x1EEE9AC00](v84);
  v86 = v72(&v253 - v77, &v293 + 8, v36, v85);
  v257 = &v253;
  v87 = MEMORY[0x1EEE9AC00](v86);
  v72(&v253 - v77, &v287 + 8, v36, v87);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v73(&v253 - v77, v36);
  v88 = v73(&v253 - v77, v36);
  v263 = &v253;
  v326[7] = &v303;
  v89 = MEMORY[0x1EEE9AC00](v88);
  v90 = v271;
  v91 = &v253 - v271;
  v92 = v72(&v253 - v271, &v294, v36, v89);
  v257 = &v253;
  v93 = MEMORY[0x1EEE9AC00](v92);
  v72(&v253 - v90, &v288, v36, v93);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v94 = &v253 - v90;
  v95 = v269;
  (v269)(v94, v36);
  v96 = v95(v91, v36);
  v263 = &v253;
  v326[8] = &v304;
  v97 = MEMORY[0x1EEE9AC00](v96);
  v98 = v271;
  v256 = v72;
  v99 = v72(&v253 - v271, &v294 + 8, v36, v97);
  v257 = &v253;
  v100 = MEMORY[0x1EEE9AC00](v99);
  v72(&v253 - v98, &v288 + 8, v36, v100);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v95(&v253 - v98, v36);
  v101 = v95(&v253 - v98, v36);
  v263 = &v253;
  v326[9] = &v305;
  v102 = MEMORY[0x1EEE9AC00](v101);
  v103 = v256;
  v104 = (v256)(&v253 - v98, &v295, v36, v102);
  v257 = &v253;
  v105 = MEMORY[0x1EEE9AC00](v104);
  v103(&v253 - v98, &v289, v36, v105);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v106 = v269;
  (v269)(&v253 - v98, v36);
  v107 = v106(&v253 - v98, v36);
  v263 = &v253;
  v326[10] = &v306;
  v108 = MEMORY[0x1EEE9AC00](v107);
  v109 = v271;
  v110 = &v253 - v271;
  v111 = (v103)(&v253 - v271, &v295 + 8, v36, v108);
  v257 = &v253;
  v112 = MEMORY[0x1EEE9AC00](v111);
  v113 = &v253 - v109;
  v103(v113, (&v289 + 8), v36, v112);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v106(v113, v36);
  v106(v110, v36);
  v114 = v261;
  v326[11] = &v307;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v326, v320);
  v24 = *AGGraphGetValue();
  if (!v114)
  {
    v283 = &type metadata for CornerMaskingConfiguration;
    type metadata accessor for CornerMaskingConfiguration.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Type, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    v136 = swift_dynamicCast();
    if (v136)
    {
      v137 = v282[0];
    }

    else
    {
      v137 = 0;
    }

    if (v136)
    {
      v138 = v282[1];
    }

    else
    {
      v138 = 0;
    }

    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    swift_allocObject();
    v118 = v259;

    v139 = v260;

    v141 = specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(v140, v320, v118, v137, v138, v24);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v143 = CurrentAttribute;
    LODWORD(v118) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v144 = 0;
    }

    else
    {
      v144 = CurrentAttribute;
    }

    LODWORD(v277) = v144;
    (*(*v139 + 96))(&v322);
    v145 = v322;
    v146 = v323;
    v147 = v324;
    v148 = v325;
    v280 = NAN;
    v281 = 0x7FF8000000000000;
    v278 = NAN;
    v279 = 1.0;
    v327 = v322;
    v328 = v323;
    *&v329 = v324;
    BYTE8(v329) = v325;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v327, &v281, &v280, &v279, &v278);
    v149 = v280;
    v150 = v281;
    v151 = v278;
    v152 = v279;
    if (one-time initialization token for enabledCategories != -1)
    {
      v274 = v281;
      v270 = *&v280;
      v271 = *&v279;
      v269 = *&v278;
      swift_once();
      v151 = *&v269;
      v149 = *&v270;
      v152 = *&v271;
      v150 = v274;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v153 = *(static CustomEventTrace.enabledCategories + 98);
      v261 = v141;
      if (v153 == 1)
      {
        v274 = v147;
        v154 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v155 = v143 == v118;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v156 = *(v154 + 16);
          LODWORD(v327) = v277;
          BYTE4(v327) = v155;
          *(&v327 + 1) = &type metadata for CornerMaskingConfiguration;
          *&v328 = v150;
          *(&v328 + 1) = v149;
          *&v329 = v152;
          *(&v329 + 1) = v151;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          LODWORD(v277) = v148;

          v157 = v156;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v145, *(&v145 + 1), v146, *(&v146 + 1), v274, v277);
        }

        else
        {
          outlined consume of Animation.Function(v145, *(&v145 + 1), v146, *(&v146 + 1), v274, v148);
        }
      }

      else
      {
        outlined consume of Animation.Function(v145, *(&v145 + 1), v146, *(&v146 + 1), v147, v148);
      }

      v192 = one-time initialization token for animationState;

      if (v192 == -1)
      {
        goto LABEL_84;
      }
    }

    swift_once();
LABEL_84:
    Counter = *(&static Signpost.animationState + 1);
    v163 = static Signpost.animationState;
    v21 = word_1ED5283E8;
    v165 = HIBYTE(word_1ED5283E8);
    v193 = byte_1ED5283EA;
    v194 = static os_signpost_type_t.begin.getter();
    v327 = __PAIR128__(Counter, v163);
    LOBYTE(v328) = v21;
    BYTE1(v328) = v165;
    BYTE2(v328) = v193;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v204 = v261;

      goto LABEL_119;
    }

    LODWORD(v277) = v194;
    v195 = one-time initialization token for _signpostLog;

    if (v195 != -1)
    {
      goto LABEL_195;
    }

    goto LABEL_86;
  }

  Counter = &type metadata for CornerMaskingConfiguration;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v333, &v327, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v327) = 0;
  v115 = v260;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v260, v320, v259, v24);
  v116 = AGGraphGetCurrentAttribute();
  v117 = v116;
  LODWORD(v277) = *MEMORY[0x1E698D3F8];
  if (v116 == v277)
  {
    LODWORD(v118) = 0;
  }

  else
  {
    LODWORD(v118) = v116;
  }

  (*(*v115 + 96))(&v322);
  v120 = *(&v322 + 1);
  v119 = v322;
  v121 = *(&v323 + 1);
  v122 = v323;
  v123 = v324;
  LODWORD(v124) = v325;
  v283 = 0x7FF8000000000000;
  v281 = 0x3FF0000000000000;
  v282[0] = 0x7FF8000000000000;
  v280 = NAN;
  v327 = v322;
  v328 = v323;
  *&v329 = v324;
  BYTE8(v329) = v325;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v327, v282, &v283, &v281, &v280);
  v125 = v281;
  v126 = v282[0];
  v127 = v283;
  v128 = v280;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v129 = v118;
        v118 = v123;
        v130 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v131 = v117 == v277;
          v132 = Counter;
          Counter = *(static CustomEventTrace.recorder + 24);
          *(Counter + 4) = 1602;
          LODWORD(v272) = v124;
          v133 = *(v130 + 16);
          LODWORD(v327) = v129;
          BYTE4(v327) = v131;
          *(&v327 + 1) = v132;
          *&v328 = v126;
          *(&v328 + 1) = v127;
          *&v329 = v125;
          *(&v329 + 1) = v128;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v271 = v134;

          v135 = v133;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v119, v120, v122, v121, v118, v272);

          goto LABEL_44;
        }

        v158 = v119;
        v159 = v120;
        v160 = v122;
        v161 = v121;
        v162 = v118;
      }

      else
      {
        v158 = v119;
        v159 = v120;
        v160 = v122;
        v161 = v121;
        v162 = v123;
      }

      outlined consume of Animation.Function(v158, v159, v160, v161, v162, v124);
LABEL_44:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v333, &v327, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_190;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_45:
    v163 = *(&static Signpost.animationState + 1);
    v164 = static Signpost.animationState;
    v21 = word_1ED5283E8;
    v165 = HIBYTE(word_1ED5283E8);
    v166 = byte_1ED5283EA;
    v167 = static os_signpost_type_t.event.getter();
    v327 = __PAIR128__(v163, v164);
    LOBYTE(v328) = v21;
    BYTE1(v328) = v165;
    BYTE2(v328) = v166;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v333, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v333, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
LABEL_81:
      Counter = v264;
      goto LABEL_120;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v333, &v327, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v272) = v167;
    v168 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v169 = swift_allocObject();
    *(v169 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v277)
    {
      __break(1u);
    }

    else
    {
      v170 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v171 = MEMORY[0x1E69E6870];
      *(v169 + 56) = MEMORY[0x1E69E6810];
      *(v169 + 64) = v171;
      *(v169 + 32) = Counter;
      v172 = AGGraphGetCurrentAttribute();
      if (v172 != v277)
      {
        Counter = v169;
        v173 = MEMORY[0x1E69E76D0];
        *(v169 + 96) = MEMORY[0x1E69E7668];
        *(v169 + 104) = v173;
        *(v169 + 72) = v172;
        *(v169 + 136) = MEMORY[0x1E69E6158];
        *(v169 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v169 + 112) = 0xD00000000000001ALL;
        *(v169 + 120) = 0x800000018DD7ECD0;
        if (v165)
        {
          LOBYTE(v280) = v272;
          v281 = v169;
          v282[0] = &dword_18D018000;
          v283 = v168;
          *&v327 = v164;
          *(&v327 + 1) = v163;
          LOBYTE(v328) = v21;
          *&v322 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v322 + 1) = 39;
          LOBYTE(v323) = 2;
          v174 = v254;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v333, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v333, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
          (*(v273 + 8))(v174, v276);
        }

        else
        {
          v118 = v164;
          if (v164 == 20)
          {
            a1 = 3;
          }

          else
          {
            a1 = 4;
          }

          v21 = bswap32(v164) | (4 * WORD1(v164));
          LODWORD(v277) = v272;
          v175 = (v273 + 16);
          v262 = *(v273 + 16);
          v176 = v262(v274, v254, v276);
          v25 = 0;
          LOBYTE(v322) = 1;
          v263 = v175;
          v270 = 16 * a1;
          v271 = (v175 - 1);
          v268 = v118;
          v269 = Counter + 32;
          v267 = a1;
          do
          {
            v272 = &v253;
            MEMORY[0x1EEE9AC00](v176);
            v179 = &v253 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
            v180 = (v179 + 8);
            v181 = a1;
            v182 = v179 + 8;
            do
            {
              *(v182 - 1) = 0;
              *v182 = 0;
              v182 += 16;
              --v181;
            }

            while (v181);
            v183 = (v269 + 40 * v25);
            while (1)
            {
              v184 = *(Counter + 16);
              if (v25 == v184)
              {
                break;
              }

              if (v25 >= v184)
              {
                goto LABEL_179;
              }

              ++v25;
              outlined init with copy of AnyTrackedValue(v183, &v327);
              v185 = *(&v328 + 1);
              LODWORD(v118) = Counter;
              __swift_project_boxed_opaque_existential_1(&v327, *(&v328 + 1));
              *(v180 - 8) = CVarArg.kdebugValue(_:)(v21 | v277, v185);
              *v180 = v186 & 1;
              v180 += 16;
              v177 = __swift_destroy_boxed_opaque_existential_1(&v327);
              v183 += 5;
              if (!--a1)
              {
                goto LABEL_65;
              }
            }

            LOBYTE(v322) = 0;
LABEL_65:
            v118 = v268;
            if (v268 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            a1 = v267;
            if (v179[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v179[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v179[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v118 != 20 && v179[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v187 = *v271;
            v188 = v274;
            v189 = v276;
            (*v271)(v274, v276);
            v190 = __swift_project_value_buffer(v189, static OSSignpostID.continuation);
            v176 = v262(v188, v190, v189);
          }

          while ((v322 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v333, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v333, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
          v191 = v276;
          v187(v274, v276);
          v187(v254, v191);
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_195:
    swift_once();
LABEL_86:
    v196 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v197 = swift_allocObject();
    *(v197 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v118)
    {
      __break(1u);
LABEL_197:
      __break(1u);
    }

    v198 = AGGraphGetAttributeGraph();
    v199 = AGGraphGetCounter();

    v200 = MEMORY[0x1E69E6870];
    *(v197 + 56) = MEMORY[0x1E69E6810];
    *(v197 + 64) = v200;
    *(v197 + 32) = v199;
    v201 = AGGraphGetCurrentAttribute();
    if (v201 == v118)
    {
      goto LABEL_197;
    }

    a1 = v197;
    v202 = MEMORY[0x1E69E76D0];
    *(v197 + 96) = MEMORY[0x1E69E7668];
    *(v197 + 104) = v202;
    *(v197 + 72) = v201;
    *(v197 + 136) = MEMORY[0x1E69E6158];
    *(v197 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v197 + 112) = 0xD00000000000001ALL;
    *(v197 + 120) = 0x800000018DD7ECD0;
    if (v165)
    {
      LOBYTE(v278) = v277;
      *&v280 = v196;
      v281 = &dword_18D018000;
      *&v327 = v163;
      *(&v327 + 1) = Counter;
      LOBYTE(v328) = v21;
      *&v322 = "Animation: (%p) [%d] %{public}@ started";
      *(&v322 + 1) = 39;
      LOBYTE(v323) = 2;
      *&v279 = v197;
      v203 = v253;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v204 = v261;

      (*(v273 + 8))(v203, v276);
    }

    else
    {
      v205 = v163;
      v206 = v163 == 20 ? 3 : 4;
      Counter = bswap32(v163) | (4 * WORD1(v163));
      LODWORD(v277) = v277;
      v207 = (v273 + 16);
      v262 = *(v273 + 16);
      v208 = v262(v272, v253, v276);
      v180 = 0;
      LOBYTE(v322) = 1;
      v274 = v206;
      v263 = v207;
      v269 = 16 * v206;
      v270 = (v207 - 1);
      v267 = v205;
      v268 = a1 + 32;
      do
      {
        v271 = &v253;
        MEMORY[0x1EEE9AC00](v208);
        v179 = &v253 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
        v118 = (v179 + 8);
        v210 = v274;
        v211 = v179 + 8;
        do
        {
          *(v211 - 1) = 0;
          *v211 = 0;
          v211 += 16;
          --v210;
        }

        while (v210);
        v183 = (v268 + 40 * v180);
        v25 = v274;
        while (1)
        {
          v212 = *(a1 + 16);
          if (v180 == v212)
          {
            break;
          }

          if (v180 >= v212)
          {
            goto LABEL_180;
          }

          ++v180;
          outlined init with copy of AnyTrackedValue(v183, &v327);
          v213 = *(&v328 + 1);
          v21 = a1;
          __swift_project_boxed_opaque_existential_1(&v327, *(&v328 + 1));
          *(v118 - 8) = CVarArg.kdebugValue(_:)(Counter | v277, v213);
          *v118 = v214 & 1;
          v118 += 16;
          v177 = __swift_destroy_boxed_opaque_existential_1(&v327);
          v183 += 5;
          if (!--v25)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v322) = 0;
LABEL_103:
        v215 = v267;
        if (v267 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v179[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v179[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v179[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v215 != 20 && v179[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v216 = *v270;
        v217 = v272;
        v218 = v276;
        (*v270)(v272, v276);
        v219 = __swift_project_value_buffer(v218, static OSSignpostID.continuation);
        v208 = v262(v217, v219, v218);
      }

      while ((v322 & 1) != 0);
      v204 = v261;

      v220 = v276;
      v216(v272, v276);
      v216(v253, v220);
    }

LABEL_119:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v333, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
    Counter = v264;
    *(v264 + 120) = v204;
LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v259);

    a1 = v265;
    v21 = v266;
    v25 = &v284;
    a3 = v258;
LABEL_121:
    LOBYTE(v333) = 0;
    v221 = v311;
    *(Counter + 48) = v310;
    *(Counter + 64) = v221;
    v222 = v313;
    *(Counter + 80) = v312;
    *(Counter + 96) = v222;
    v223 = v309;
    *(Counter + 16) = v308;
    *(Counter + 32) = v223;
    *(Counter + 112) = 0;
LABEL_122:
    v179 = *(Counter + 120);
    if (!v179)
    {
      return;
    }

    CornerMaskingConfiguration.animatableData.getter(&v327);
    LOBYTE(v333) = 0;
    v224 = specialized AnimatorState.update(_:at:environment:)(&v327, a3, v24);
    v177 = AGGraphGetCurrentAttribute();
    LODWORD(v118) = *MEMORY[0x1E698D3F8];
    if (v177 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v180) = 0;
    }

    else
    {
      LODWORD(v180) = v177;
    }

    v183 = &type metadata instantiation cache for TupleTypeDescription;
    if (v224)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v234 = v183[77];
    if (*(v234 + 16) >= 0x43uLL)
    {
      if (*(v234 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v333) = v180;
        BYTE4(v333) = v177 == v118;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v122 = *(&static Signpost.animationState + 1);
    v121 = static Signpost.animationState;
    v123 = word_1ED5283E8;
    v117 = HIBYTE(word_1ED5283E8);
    v227 = byte_1ED5283EA;
    v228 = static os_signpost_type_t.end.getter();
    v333 = __PAIR128__(v122, v121);
    LOBYTE(v334) = v123;
    BYTE1(v334) = v117;
    BYTE2(v334) = v227;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    LODWORD(v277) = v228;
    v229 = one-time initialization token for _signpostLog;
    v120 = v263;

    if (v229 != -1)
    {
      swift_once();
    }

    v119 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v118)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v271 = v125;
    v272 = v126;
    v269 = *&v128;
    v270 = v127;
    swift_once();
    v128 = *&v269;
    v127 = v270;
    v125 = v271;
    v126 = v272;
  }

  v120 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v230 = MEMORY[0x1E69E6870];
  *(v124 + 56) = MEMORY[0x1E69E6810];
  *(v124 + 64) = v230;
  *(v124 + 32) = Counter;
  v231 = AGGraphGetCurrentAttribute();
  if (v231 == v118)
  {
    goto LABEL_187;
  }

  Counter = v124;
  v232 = MEMORY[0x1E69E76D0];
  *(v124 + 96) = MEMORY[0x1E69E7668];
  *(v124 + 104) = v232;
  *(v124 + 72) = v231;
  *(v124 + 136) = MEMORY[0x1E69E6158];
  *(v124 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v124 + 112) = 0xD00000000000001ALL;
  *(v124 + 120) = 0x800000018DD7ECD0;
  if (v117)
  {
    LOBYTE(v284) = v277;
    v326[0] = &dword_18D018000;
    v296 = v119;
    *&v333 = v121;
    *(&v333 + 1) = v122;
    LOBYTE(v334) = v123;
    *&v342 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v342 + 1) = 37;
    LOBYTE(v343) = 2;
    *&v290 = v124;
    v233 = v266;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v273 + 8))(v233, v276);
    goto LABEL_174;
  }

  a1 = v121;
  if (v121 == 20)
  {
    v25 = 3;
  }

  else
  {
    v25 = 4;
  }

  v21 = bswap32(v121) | (4 * WORD1(v121));
  LODWORD(v277) = v277;
  v235 = v273 + 16;
  v267 = *(v273 + 16);
  v236 = v267(v275, v266, v276);
  v180 = 0;
  LOBYTE(v342) = 1;
  v273 = v235;
  v271 = 16 * v25;
  v272 = (v235 - 8);
  v269 = a1;
  v270 = Counter + 32;
  v268 = v25;
  do
  {
    v274 = &v253;
    MEMORY[0x1EEE9AC00](v236);
    v179 = &v253 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
    v118 = (v179 + 8);
    v238 = v25;
    v239 = v179 + 8;
    do
    {
      *(v239 - 1) = 0;
      *v239 = 0;
      v239 += 16;
      --v238;
    }

    while (v238);
    v183 = (v270 + 40 * v180);
    while (1)
    {
      v240 = *(Counter + 16);
      if (v180 == v240)
      {
        break;
      }

      if (v180 >= v240)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v251 = v177;
        swift_once();
        v177 = v251;
LABEL_128:
        v225 = v183[77];
        if (*(v225 + 16) >= 0x43uLL)
        {
          if (*(v225 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v333) = v180;
            BYTE4(v333) = v177 == v118;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v265 = a1;
          v266 = v21;
          v263 = v179;
          v264 = Counter;
          v226 = one-time initialization token for animationState;

          if (v226 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v252 = v177;
        swift_once();
        v177 = v252;
        goto LABEL_141;
      }

      ++v180;
      outlined init with copy of AnyTrackedValue(v183, &v333);
      v241 = *(&v334 + 1);
      a1 = Counter;
      __swift_project_boxed_opaque_existential_1(&v333, *(&v334 + 1));
      *(v118 - 8) = CVarArg.kdebugValue(_:)(v21 | v277, v241);
      *v118 = v242 & 1;
      v118 += 16;
      v177 = __swift_destroy_boxed_opaque_existential_1(&v333);
      v183 += 5;
      if (!--v25)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v342) = 0;
LABEL_159:
    a1 = v269;
    if (v269 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v25 = v268;
    if (v179[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v179[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v179[40] == 1)
    {
      kdebug_trace_string();
    }

    if (a1 != 20 && v179[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v243 = *v272;
    v245 = v275;
    v244 = v276;
    (*v272)(v275, v276);
    v246 = __swift_project_value_buffer(v244, static OSSignpostID.continuation);
    v236 = v267(v245, v246, v244);
  }

  while ((v342 & 1) != 0);

  v247 = v276;
  v243(v275, v276);
  v243(v266, v247);
LABEL_174:

LABEL_175:
  specialized AnimatorState.removeListeners()();

  a1 = v265;
  *(v264 + 120) = 0;
  v25 = &v284;
LABEL_176:
  v248 = v330;
  *(v25 + 992) = v329;
  *(v25 + 1008) = v248;
  v249 = v332;
  *(v25 + 1024) = v331;
  *(v25 + 1040) = v249;
  v250 = v328;
  *(v25 + 960) = v327;
  *(v25 + 976) = v250;
  CornerMaskingConfiguration.animatableData.setter(&v333);

  *(a1 + 224) = 1;
}